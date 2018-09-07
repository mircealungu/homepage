+++
date = "2018-09-06T10:00:00"
draft = false
tags = ["Teaching"]
title = "Using a Performance Monitor to Illustrate the Power of DB Indexes"
math = true
summary = """

	TL;DR;

	- For the Junior: DB indexes are powerful things.
	- For the Senior: An internal performance monitor is a sweet tool.

"""

+++

&nbsp;


## Prologue: Two Research Projects

1 - One of my active research projects is Zeeguu: exploring
new ways of augmenting learning by monitoring learners
interactions with foreign texts and based on their 
interactions recommending adequate personalized reading 
vocabulary exercises. 

The Zeeguu web application has a classical client-server 
architecture with the backend being implemnted with Flask 
-- one of the most popular web application frameworks 
based on Python. 

2 - The other project is the Flask Monitoring Dashboard (FMD), 
an advanced internal monitor that tracks the evolution of 
performance and utilization of web applications. It can 
be deployed with almost zero effort for Flask-based apps
and APIs. The main developers of the FMD are Bogdan Petre and 
Patrick Vogel, two master students in Groningen. 


In the long tradition of *eating your own dogfood* 
the FMD is deployed in the Zeeguu API. 


&nbsp;

## Context: Computing Reading Sessions


One my master students added to Zeeguu a module 
that computes detailed information about reading sessions. 
We compute this time based on telemetry that is collected 
while the learner is reading texts. 


This is how the information looks for two recent days for me:



<img src=/img/db-indexes-1.png style="border: 1px solid #ccddcc; padding: 6px; margin: 36px; margin-left: auto; margin-right: auto;" />


You see that I read in French and German.
What you see is that I've been reading a few articles 
in French and German. (You can also see that this morning I've 
not been very focused: it took me one long 6 minutes
session and several other mini-sessions before I finished
the article. Eh, sometimes we have to multi-task.



&nbsp;

&nbsp;

## The First Step Towards Solution is Admitting You Have a Problem

&nbsp;

This morning I had a bit of time and I wanted
to create a new API endpoint to export this 
information such that the web interface can present
it to the reader. But lo and behold: my endpoint was 
horribly slow. So slow that I wanted to know why, 
and how can I speed it up.

I open the FMD and I open its Profile page for the
endpoint that I have just created. The profile page
shows the entire Python "call tree" that is triggered
by the endpoint, and in it we see how the 43 seconds 
(!?!) required by the analysis are being spent.


<img src=/img/db-indexes-2.png style="border: 1px solid #ccddcc; margin: 0 auto; padding: 0 20; width: 100%; " />

&nbsp;


The last line, although not fully visible in the image is: 

&nbsp;

    cls.query.filter(UserActivityData.time < self.last_action_time).all()

&nbsp;

98% of the the 43 seconds is spent in this query. 

This is Python code that uses SQLAlchemy a very powerful
ORM. Sqlalchemy will convert this Python code to SQL and 
send the correponding queries to MySQL. 


Now I understand a bit better why the problem: 
- the user_activity_data table is a very large table with 
hundreds of thousands of records
- the table has not been designed with this 
kind of analysis in mind so computing the sessions
has to iterate quite a bit through the table


# Fixing the Problem Without Touching the Algorithm

The first thing I remember is a recent discussion with 
my sister about DB indexes. So I'm thinking, maybe 
this is an opportunity to show with a case study the 
impact of an index. 

So I go to the database and I add a new index:

&nbsp;

    CREATE INDEX uad_time ON user_activity_data(time)

&nbsp;

This will make MySQL create additional internal structures
that will allow it to optimize queries that involve 
in their condition the **user_activity_data** 
table and the **time** column. 

Then I re-hit the endpoint and I get new measurements. 
This better than I had ever hoped :)
I now have a nice example to show to my sister about
the huge potential impact indexes have on databases. 

<img src=/img/db-indexes-3.png style="border: 1px solid #ccddcc; margin: 0 auto; padding: 0 20; width: 100%; " />


&nbsp;

# Lessons

**For the Beginner:** Indexes are very important for 
the performance of your database. Also, profiling 
is something you must learn about.

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


# Reference

- FMD -- paper, website
- Zeeguu -- paper, website








