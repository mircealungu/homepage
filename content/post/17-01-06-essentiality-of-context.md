+++
date = "2017-01-06T12:00:00"
draft = true
tags = []
title = "The Essentiality of Context in Software Analytics"
math = true
summary = """


"""
+++

I am preparing a talk for the SE symposium. 
This is the yearly meeting of the SE researchers 
in the Netherlands. Since this is one of the first
times that I get the chance to talk in front of the 
community, I'd like to report on some of the work
that I've been involved in doing. Thus, I spent some
time thinking about ways in which I can look 
at my past work to present it in a cohesive way. 

One perspective that I have found is arguing about 
the usefulness of taking the context into account 
in software analytics. 

I paste below the transcript of my talk for those
who will have not been able to attend. 

--- 

Opening story: at some point, I became concerned about
privacy. and I realized that so I give away so much of
my information to one single gompany: Google. At the 
spur of the moment, I decided to start using an alternative
search engine. 

I do not necessarily think that the algorithms of google
are better. It is only that google has so much information 
about my context, and me, that 


# What is Software Analytics? 

Let me tell you the story of my students whom I asked once what do they prefer to be reading: the source code of ArgoUML or *War and Peace*. It turns out that they don't want to read either. I guess they prefer to be writing their own code, and tweet their own tweets. Millenials... 

If you listen to Stephen King, he will tell you clearly -- there are two things that you must do in order to become a good writer. To read a lot. And to write a lot. Why is it there that in software we don't read code? Why is it that 

Truth is, nobody wants to read so much source code. Thus, one of the goals of software analytics is to automatically extract a high-level view of a software system. To help us gather insights into a given software system. This brings me to a challenge for the youngsters in the audience: why don't you find a way of detecting good code. I, personally, have been involved in detecting bad code since I was 22 and I first started working with my mentor at the time Radu Marinescu. I'm 36 now, and all the people around me have been automatically detecting bad code since ages. Maybe it's time for one of you, youngsters to come up and discover good code. Maybe in that case, we'd be more prone to wanting to read it... 

But I digress. Untill that person comes who will detect good code, and let us all read code for pleasure, I think we're stuck with not wanting to read code because it is a very hard endeavour. 

One of my favorite science fiction writers is Vernor Vinge. He is a retired computer science professor from California. One really memorable book that he wrote is A Deepness in the Sky. One of the quotations in that book is: 

    nobody knew what the system was doing. 
    the programmers were long time dead. 

This is where we are going with the software. There is already nobody that can 
understand the full stack of software that is running on a single machine... 
And this is not that bad, it's bad when people don't understand the codebase 
in their own company. It's bad when people don't understand their own code
that was written six months ago. (This reminds me of a wonderful talk by 
Armstrong: when I write code, I'm a differnt person than when I read code.)

 tangential: the complexity of the software systems is the highest in all 
 the human creation. https://www.reddit.com/r/AskScienceDiscussion/comments/3q2hd3/what_are_the_most_complex_humanbuilt_works/


So one of the best things that we can do to improve the quality of the 
software out there is to teach the next generation how to write better
code. But because, this is too slow, and because not all of them will 
follow the advice, and because they will be working with managers who
will blindly put pressure and ask for features, without we have to do 
something at the moment. 

And here, I think as educators, we must remind them that the goal of
writing software has shifted to writing it for people not for machines. 
And here, I think we must also learn from other domains, when you write
for people, you have editors. And you let some people write because 
you know they write better than others. When it comes to software - 
everybody can write. There's no need for editors. I'm reminded of the 
way I once described the way one of my colleagues was writing code: 
- this is Sparta. 


Data analytics is the discipline of making sense of data, then software 
analytics 

 (official definition: describing, predicting, and improving development, maintenance, and management of complex software systems. Methods and techniques of software analytics typically rely on gathering, analyzing, and visualizing information found in the manifold data sources in the scope of software systems and their software development processes---software analytics "turns it into actionable insight to inform better decisions related to software) [https://en.wikipedia.org/wiki/Software_analytics#cite_note-1]

Or, if we like to call it today, big data should probably be called 
big software. And Data science should be correctly adapted to be named
Software Science. But they are awkward terms, so this is why we're stuck
with software analytics I think. 


But let me tell you one more story. 

There was this movie called Moneyball that some of you have seen. 
In it we see how the domain of baseball discovers the knapsack problem.
They discover that their old approach of greedy heuristic in selecting
a soccer team is inferior to an approach which finds a global optimum
by selecting a team instead of individual players. 

Show brief clip of the old farts in the Moneyball, and how Pitt destroys
them. Then argue that the equivalent is today the folk wisdom that 
permeats the domain. People jump to conclusions, before seing the data.
They are swayed this way by a good talk by this guy. They are swayed 
that way by a convincing book by that other guy. 

What's the equivalent of this in today's world? 

A few years ago already, I was attending a conference where a software
producer was showing a demo of the analytics software they provide to 
their soccer team partners. They track every individual characteristic
of all the players in play, in order to discover the best combinations
of players, and data mine their own teams and the other teams 

One of my friends works in finance, and they have been heavily applying
data analysis on the information from the italian Guardia di Financia in 
order to detect people who are evading taxes. It seems that their project
has been cancelled half-way through... which you can interpret in multiple
ways.

Also about finance, in 2014, more than 75% of the stock traded in the US was 
traded by automated trading systems. 

In a world where software empowers and makes possible the optimization
of all these other domains, we need to make sure that the domain of 
building software itself is not left behding, especially since software
is underlying all these other domains.



# Who Am I? 

I have been working for several years in the domain of software 
analytics. I am currently working for the University of Groningen
as assistant professor in the SEARCH research group. Before joinig
the  north here in groningen, I was with the University
of Bern in Switzerland, and with the University of Lugano, also in 
Switzerland. 

Today, in the remaining time, I would like to talk to you about
some of the things that we can do to improve our processes in 
software engineering by the use of software analytics. 


---

 (tangential)
 When I started working in this domain, about 10 years ago, I started working with Radu Marinescu on detection strategies. These were formulas for detecting problems in software systems. They were smart formulas, and they encoded a lot of individual expertise. They would tell you when a class was not good enough based on thresholds and metrics. My diploma thesis was to discover a way of softening those thresholds. I introduced what was called Fuzzy Detection Strategies which would be using Fuzzy logic...




# The Most Basic Insight in Software Analytics?
The most basic insight in software analytics is as new as the Lisp programming language... That is, it is not new at all. But it is a surprisingly powerful approach nevertheless. That the source code is data too. (cite the paper of mcCarthy)

To provide insights into the system, we must first move away from one of the models that most of the people have in their mind: that of the separation of the source code and data. Usually the source code is in the IDE and the data is in the Database.

However, every one of us, once we have taken a compiler construction course, knows that software is data too. Sure, it is a special kind of data, since it is very dense and non-repetitive. 
 (or as brooks says: Brooks 1995 Software entities are more complex for their size than perhaps any other human construct because no two parts are alike (at least above the statement level). If they are, we make the two similar parts into a subroutine — open or closed. In this respect, software systems differ profoundly from computers, buildings, or automobiles, where repeated elements abound. (Brooks 1995, p 82)
 )


Once we look at the source code as pure data, we can start applying all the tools of data analytics. And these tools are: 
- visualization and exploration
- clustering
- data mining
- machine learning
- time series analysis


Let us start with the beginning. Visualizing software systems. 
Visualization is an important first step in any data analysis 
context. The importance of this step in software analyitcs is 
given by the longevity of the software visualization conference
which has been live and kicking for many years now. 

 (tangential: interesting exercise -- software visualization riddles.
   - the duplicated code in the big casestudy
   - the code that appears suddenly and never changes in Azureus
   - etc.
   )

# Let me give you an example of how we would visualize a software system
Let us look at one example software system. Show screenshot of Softwarenaut. Animation zooms in to show us that under the hood, there is a complex structure of dependencies. 
 (tangential: a project for automatically extracting architectural views that present parts of the system...)

If we are to read the source code it would take us... many days. And we would probably not understand too much. 

Another one that I like, because I implemented it during my PhD is this automatically generated  interactive visualization that is extracted directly from the source code. It shows modules in the system and dependencies between them. Visually, the size of the modules is proportional with the size of the modules. The width of the dependency relations is also proportional to the strength of the dependency. 

So if we look now at a system that I worked once on,  we can see that it is at the highest level structured as a collection of modules ... (discuss a bit about the modules and their relationshps) 

In software, we have something that very few other types of data have, and that is, we like to keep track of the evolution of our "data". This is why, we can, look at a given system, in the context of it's past. 


# The Long Term Evolutionary Context 

The most intimate context of a software system is its past. It's history. 
As software engineers we have learned over the years its importance.


But as manny lehman, argued, a system that does not change is dead. And a version of the system that we look at without taking into account its broader history is dead. In our case, if we augment our analysis with more context we can learn many useful things about this system. 
 
In fact, we often think about software systems in terms of their architecture. This is a very useful metaphor that serves us very well. 

At this point, I would like to suggest another metaphor, and that is, the metaphor of a plant. A plant is ever evolving. And you must take care of it, or it will die. 

So the first context that we have learned in our work that is important is the historical context. And just as the real history, if we take the long view, we must summarize heavily. But when we take the short term view, we can go into more details. And the two are useful for different goals. Take for example the long term view. 

If we look at the context, we see that some parts of a software system are evolving much more than the others. Knowing the long term evolutionary context in which the system became what it is, can help us steer it in the future. 



# The Short-Term Evolutionary Context

And just as the long term context can help us steer the system towards the long term future, the short term context can help us steer it towards the short term future. Quite obvious you'll say. And you'd be right. 

This is what we showed with my colleague Lille Hattori at the Univerisy of Lugano, to which I contributed a little bit. In this case, the goal was to be able to replay past development sessions to give context to somebody trying to understand a piece of code. 

One of the ways in which this worked very well for us was ... 


# The Very Long Term? 
-- I remember a keynote by a biologist ...
-- Who is looking at the very long view? 
-- There is the work of Stewart Brand and the Long Now Foundation who are working on thinking really long term. What are the equivalent software projects? How do we ensure that our systems will be running 1000 years later? 

# The Ecosystem Context

No man is an island, entirely of itself says the poet John Donne. 

Any useful non-trivial system is part of a larger ecosystem. 

As Vernor Vinge says, 

And just as a sociologist, or a historian, when trying to understand somebody, they need to understand them in context, as a software analyst one must take the broader ecosystem in context. The system that we looked at earlier, if we zoom out we learn that is part of a larger ecosystem in which it interacts with other systems.

This is the software context. 

Surely, we can zoom out even more and look at all the systems that are written in a given language. If we do that however, there are often challenges in extracting dependencies. And also the analysis can often become less reliable because it is hard to verify that the data is actually correct in some cases (can point to a later example with antarctica...)


# The Social Context of an Ecosystem
And then, there is the social context. 

Some organizational ecosystems can however be large. Google is famously storing all their code in one place. 2billion lines of code all together. This is orders of magnitude larger than the Linux kernel.


Some very interesting work can be done if we analyze an ecosystem in its broader context, and some very interesting statistics can be derived if we understand the ecosystem in itself. 

The ecosystem policies, the rules written or unwritten determine the long term survival of the ecosystem. E.g. 
- the R community enforces all the published packages to depend on the latest version of every other package. 
- At the opposite spectrum seems to me to be the Mathlab ecosystem, where reuse is based on some files on a website that can be downloaded. No version control. No history. No dependency management.
- the Google ecosystem has a billion lines of code that are available to everybody. You can load all the projects in eclipse. and in this huge forrest of projects, automated bots float around and make a large number of commits to the version repository. 
- at the same time while Backward Inc. which employs thousands of software professionals can not reproduce an earlier version of their system in A.D. 2014
- tell me the rules of your ecosystem, and I can tell you whether it's meant to be healthy or not.

This is why designing the rules of the game for an ecosystem is a tricky business.
The examples I gave are large, huge, ecosystems that very few of us will ever start. 

But, on the other hand, even a smaller ecosystem requires a "constitution", a basic set of rules by which it functions if it is to survive. And why would you want an ecosystem? Take for example one of the projects that I've started recently which aims to model the knowledge of a learner in order to help them improve. Learner tracing through a knowledge field. We want to track him in every place in which he encounters knowledge. But in the days in which everyone has so many devices in which one can interact with knowledge, tablets, phones, phablets, smartwatches, laptops, smart TVs, etc. it becomes increasingly unlikely that a single player can provide all the tracking. We thus need an ecosystem of independent players who can collaborate. 
- what should the platform 

## -- Remove Stupid Limitations from Developer Tools! 

Alphabetical ordering in any software system is a sign of lazyness. 

Take for example an API. You can look at it as much as you want, and you can analyze it in the context too, but as long as you don't start to look at it in the broader Java ecosystem in which it is used there are things that you will never learn about it.

For example, only if you look at the way the clients of the JDK, or the downstream as we call them use the JDK will you be able to learn about what are the most important parts of it. And if you did, you could probably improve the way documentation is being generated and code is being navigated. 

This is something that we did together with my colleague Boris. We augmented the documentation browser based on the usage of the APIs. 

This is a general problem, it does not happen only with the JDK. I am reminded of 

We once did a study on what are the developer needs in software ecosystems. 


## -- The Knowledge Context
What about our metrics which talk about 


The long tail of software analytics 
- the long tail of music
- the long tail of software analysis tools
- context -- to have a powerful analysis tool, you need context, the feedback that you can provide to the generic Java system is not that interesting. what we need is people who sit down and write analysis bots. this is work that we are doing togehter with Ivan Bestchastnik from UBC



The More Context You Have 
-- 


# What Does Google Say About Context?

The future is contextualization.


take this system here: 
- we look at it: looks quite simple and metrics look quite good (happy)
- a lot of dead code, code that is not used by any other part of the system (sad)
- we look at it's evolution: it's been evolving for years, refining, and refining: must be important. 
- we look at the dependencies: a lot of dead code???  (sad)
- we zoom out in the organization - we see a system that everybody depends on (happy)(must be important)
- we look at the organization - it's an organization which moves too fast, and people can not keep up, they make breaking changes ... so, it's going to be hard to keep up. do we want (sad)
- still, the community has been supporting this project and similar ones for many years, and we can trust that they will do it in the future. (happy)





Understanding the context where you want to make a change
- we all build tools, and then we want to effect change in the world
- but you must understand the world before attempting to make changes
- people resist change [the donkey picture]
- you must be as big a psychologist as a software engineer in order to effect change
- I remember many stories where understanding the organizational context and the organizational forces was important. 



Idea - ecosystems that are dying. This is important. 
As a company, you want to realize as soon as possible 
that you're in an ecosystem that's dying, and move away. 
Otherwise, it's going to be a slow pain... and you won't 
find people who want to work for you.. .etc boh. not necessarily
true. depends on the ... context!




