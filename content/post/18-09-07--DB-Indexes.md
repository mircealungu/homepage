+++
date = "2018-09-06T10:00:00"
draft = false
tags = ["Teaching"]
title = "Using a Performance Monitor to Illustrate the Power of DB Indexes"
math = true
summary = """

	This is a case study in which i show two things that might be useful for junior and senior software engineers alike: 

	- DB indexes are powerful tools in the performance toolkit
	- An internal performance monitor enables quick analysis of service performance

"""

+++


	TL;DR;

	- Database indexes are easy and powerful tools for performance enginering 
	- An internal performance monitor enables quick insights into service performance


&nbsp;


## Prologue: Two Research Projects

Project #1 - In [Zeeguu](http://zeeguu.org) we research how we 
can make learning a foreign language more fun. We monitor
a learners interactions with foreign texts and based on this 
we recommend further personalized reading and personalized 
vocabulary exercises. 

The Zeeguu web application has a classical client-server 
architecture with the backend being implemnted with Flask 
-- one of the most popular web application frameworks 
for Python. 

Project #2: The [Flask Monitoring Dashboard](https://github.com/flask-dashboard/Flask-MonitoringDashboard/) 
(FMD) is an advanced internal monitor that tracks the evolution of 
performance and utilization of web applications. It can 
be deployed with near zero effort for Flask-based apps
and APIs. The main developers of the FMD are Bogdan Petre and 
Patrick Vogel, two of my past master students in Groningen. 


In the long tradition of *eating your own dogfood* 
the FMD is used to monitor the performance evolution
of the Zeeguu API. 


&nbsp;

## Context: Why Computing Reading Sessions Is Not So Easy


Zeeguu contains a module that computes the length of user reading sessions, which are periods of time in which a reader is focused while reading a text. 


Computing reading sessions is not easy, because users might be reading an article 
and then leave it open while chatting with their friends on WhatsApp 
or maybe *crushing it* at Candy Crush.
Trying to predict when the user stopped paying attention requires 
complicated heuristics that 
are based all the actions that a user performed while interacting
with a text. 


The Screenshot bellow is from the Zeeguu web app and 
shows the reading sessions that were inferred 
based on my interactions with the reader yesterday and today.

If you look at the article titles. you see that today I read two 
French articles and yesterday I read a German one.

If you look at the session lengths,you see that this morning I was
not very focused: it took me multiple focused sessions to read 
the article about the Coca Cola bottle size... might be a problem
with my attention span, but might also be a problem with the 
interestingness of the article... 




<img src=/img/db-indexes-1.png style="border: 1px solid #ccddcc; padding: 6px; margin: 36px; margin-left: auto; margin-right: auto;" />





&nbsp;

&nbsp;

## The First Step Towards Solution is Admitting You Have a Problem

&nbsp;

This morning I realized that this endpoint which provides the information
about the user sessions to the front-end web application is as slow as this sloth: 

<img src=/img/sloth.gif style="border: 1px solid #ccddcc; padding: 6px; margin: 36px; margin-left: auto; margin-right: auto;" />


Remember that I told you that FMD is alredy deployed with the Zeeguu API.

Thus, to find out why is the endpoint so slow, I opened the FMD dashboard and enabled the Profiler for the 
 endpoint. When the profiler is enabled, for every
call to the endpoint the FMD samples continuously the Python
call stack in such a way that it can present where the time
is being spent during the computations associated with the endpoint. 

After enabling the profiler for the endpoint, I made sure to call
the endpoint one more time. Then I went to the Profiler tab  to discover the information presented in the following figure which shows the time spent every one of the
code lines that are being called from the endpoint. 


<img src=/img/db-indexes-2.png style="border: 1px solid #ccddcc; margin: 0 auto; padding: 0 20; width: 100%; " />

&nbsp;


The first line shows us that the endpoint was computing stuff for 43 seconds! 

The last line shows that 98% of the the 43 seconds is spent 
in the following code (which is not fully visible in the image):

&nbsp;

    cls.query.filter(UserActivityData.time < self.last_action_time).all()

&nbsp;


This is Python code that uses SQLAlchemy. 
Sqlalchemy is  a very powerful ORM which will convert this Python code to SQL and 
send the correponding queries to MySQL. At least in theory
we do not need to know MySQL if we use SQLAlchemy. (But
because of something that Joel Spolsky calls [the law of 
leaky abstractions](https://www.joelonsoftware.com/2002/11/11/the-law-of-leaky-abstractions/), 
most of the times we still need to understand some SQL anyway... )

So we now know that the slowness of our endpoint is due to the SQL query
that is generated by the SQLAlchemy code in the above-mentioned
line. And we also know that, due to the SQLAlchemy naming conventions,
the very slow SQL query must work with the `user_activity_data` table 
and its `time` column (this is given away by the `UserActivityData.time` part of the
code above).

Looking at the table structure
in the database and at the session computation algorithm we 
observe two things: 

- the table has not been designed with the session computation 
algorithm in mind, and the algorithm iterates many times through 
all the table rows
- the `user_activity_data` table is a very large table with 
hundreds of thousands of records


# Fixing the Problem Without Touching the Algorithm

The first thing that comes to my mind is a recent discussion with 
my sister about DB indexes and how they are very powerful performance tools. So I'm thinking, maybe 
this is an opportunity to show with a case study the 
impact of an index. 

I thus go to the database and I add a new index that is 
inspired by the `UserActivityData.time` that appears 
in the very slow code line above: 

&nbsp;

    CREATE INDEX index_uadtime ON user_activity_data(time)

&nbsp;

This will make MySQL create additional internal structures
that will allow it to optimize queries that involve 
in their condition the `user_activity_data` 
table and the `time` column. 

I redeploy the API, request again the endpoint 
and then I visit again the Profiler page, and lo and behold!
Instead of 43 seconds now my endpoint takes 1.6 seconds. 

<img src=/img/db-indexes-3.png style="border: 1px solid #ccddcc; margin: 0 auto; padding: 0 20; width: 100%; " />


I now have a nice example to show to my sister about
the huge impact indexes have on database performance. 



&nbsp;

# The Morales of this Story 

**For the Beginner:** Indexes are very important for 
the performance of your database. Also, profiling 
the performance of your code is a skill you will have
to learn. The FMD is a good starting point if you
are a Flask developer. 

**For the Advanced:** An internal monitor for your 
API can be a wonderful and much faster way of getting
insight into the workings of your service. Sure, you
can also deploy a profiler from your development 
environment, but having the profiler available to be
deployed in production with a single click has the 
huge advantage of you getting information about the
**real** data. 

**For the Flask/Python Developer:** FMD is an awesome 
tool. So grab it while it's still
a research project and is free. In exchange we might
ask you some questions at some point. But hey, that's
nothing for the easy insights you get with it.


# References

- Zeeguu -- [scientific paper](https://www.researchgate.net/publication/322489283_As_We_May_Study_Towards_the_Web_as_a_Personalized_Language_Textbook), [website](https://zeeguu.org)
- FMD -- [paper](https://github.com/flask-dashboard/Vissoft-17-Paper/blob/master/FlaskDashboard-Preprint.pdf), [website](https://github.com/flask-dashboard/Flask-MonitoringDashboard/)








