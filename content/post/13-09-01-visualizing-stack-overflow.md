+++
date = "2013-11-20T12:00:00"
draft = false
tags = ["Papers", "Ecosystems"]
title = "Mapping the Open Information Economy 📝SSE'13"
math = true
summary = """

<img src=/img/stackoverflow-small.png style="box-shadow:none; float: left; width:192px; padding: 10px; padding-top:0px; margin-top: 0px; margin-left: 0px; padding-left: 0px; margin-bottom: 0px; border-width: 0px;" />
<div style="overflow:hidden; width: auto;">
<b>"A nobel prize is waiting for the one who visualizes the economy
of information"</b> (Steward Brand, Inventing the Future at MIT) 
<br/><br/>
In this paper ([pdf](http://scg.unibe.ch/archive/papers/Sche13a-GeolocatingStackOverflow.pdf), [Bibtex](http://scg.unibe.ch/scgbib?_k=dvvBNH0e&query=Sche13a&display=bibtex)) we look at StackOverflow as an information economy, a market for software engineering knowledge. We aggregate the transactions between individual users to geographical regions and learn that... EU beats the US! 
</div>


"""
+++

![visualizing-stack-overflow](/img/stackoverflow.png)

<b>"A nobel prize is waiting for the one who visualizes the economy
of information"</b> (Steward Brand, Inventing the Future at MIT) 

One of my current travelling companions is “The Media Lab – Inventing the Future at MIT” by Steward Brand. Like several other books about the history of computing in the 80s, this one is also fascinating and it shows again how much ahead of their time were people in those years… and how we are still reaping the ideas that they saw. The book reports on an anecdote by Harlan Cleveland :

> “I have wanted for some time to find a map of information flows around the world. The other day I had one hour to kill between appointments in new york city, so I dropped into the Rand-McNally shop to ask for such a map. My request created quite a stir, and virtually every employee was called into consultation. They brought out all sorts of maps showing flows of food and feedgrains, oil and coal, weapons and manufacturers – but finally admitted that they had no map of information flows and didn’t think their competitors had one either.” (Steward Brand, Inventing the Future at MIT, pp. 245)


### Software Engineering Information Flow Around the World
Can we make maps of information flow in the world today? Yes we can! In the article that we will present at SSE in Saint Petersburg this summer we show how can we do it for software engineering.

StackOverflow is the principal website for software engineers in search for answers to programming questions. The quality of the answers and the fact that the mean time to a question being answered is 11 minutes make it the *de facto* market for information regarding programming. In this virtual economy in exchange for information one receives *reputation points* from the askers of the question and those who found the answer useful.

Based on the geolocation information provided by the users in their profile pages and the almost ten million questions and answers published as a database dump provided by A. Bacchelli at U. Lugano we created a map that shows how software engineering information flows around the world. 

    
<div style="margin: 0 -48%; padding: 0 -48%;">
	<img src="/img/stackoverflow-full.png" />
</div>

The map is visualized using the following conventions: 

- The areas of countries and continents is proportional to the reputation of their users
- The thickness of an arrow indicating information flow between regions is proportional to the number of answers abstracted in it


The most straightforward observations based on this map are:

- EU is exporting more answers to the US
- US has more reputation than EU
- Several small countries like Switzerland or Netherland have surprisingly high reputation with respect to their population
- China is practically absent even if Joel [reports](https://stackoverflow.blog/2011/04/stack-overflow-around-the-world/) large numbers of visitors to the site from there
- Africa does not contribute much

The map is taken from our paper ([pdf](http://scg.unibe.ch/archive/papers/Sche13a-GeolocatingStackOverflow.pdf), [Bibtex](http://scg.unibe.ch/scgbib?_k=dvvBNH0e&query=Sche13a&display=bibtex)) which contains more details about the data collection and analysis (including details on geo-locating users, and the evolution over time of the data). 

Is the map representative of the way programming information is spread around the world? Are there other similar maps that you are aware of? 

If you want to talk more about this topic <a href="/#contact"> let me know</a>.




