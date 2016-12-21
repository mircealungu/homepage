+++
date = "2013-11-20T12:00:00"
draft = false
tags = ["Papers", "Ecosystems"]
title = "Visualizing Stack Overflow @ SSE'13"
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


### The Software Engineering Information Flow
Can we make maps of information flow in the world today? In the article about StackOverflow that we will present at SSE in Saint Petersburg this summer we show that we can.

Indeed StackOverflow has information about how information flows between users in the form of answers to questions. Since a large number of users have provided their geolocation information in their profiles we can build a hierarchical graph of this data and visualize it with Quicksilver. We grabbed thus a public dump of the SO data curated by Alberto Bacchellii and Luca Ponzanelli at the University of Lugano.

With this data we created the following map of the software engineering information flow in the world through the medium of StackOverflow:

[![stackoverflow-full](/img/stackoverflow-full.png)](/img/stackoverflow-full.png)

The map is built using the following conventions:

- Countries and continents are represented using treemaps. Their areas are proportional to the aggregated reputation received by their corresponding users (e.g. UK has 10x more reputation than Switzerland)
- The thickness of an arrow indicating information flow between regions is proportional to the number of answers abstracted in it (e.g. Australia imports three times more information than it exports)

Several observations on this map:

- America and Europe are the main contributors
- Some small countries like Switzerland or Netherland have disproportionately high reputation
- Africa does not contribute much
- China is practically absent even if Joel [reports](https://stackoverflow.blog/2011/04/stack-overflow-around-the-world/) large numbers of visitors to the site from there

The map is taken from our paper ([pdf](http://scg.unibe.ch/archive/papers/Sche13a-GeolocatingStackOverflow.pdf), [Bibtex](http://scg.unibe.ch/scgbib?_k=dvvBNH0e&query=Sche13a&display=bibtex)) which contains more details about the data collection and analysis (including details on geo-locating users, and the evolution over time of the data). 

If you read it we would love to get your feedback.

In the meantime think about the following questions:

- Could the SO Knowledge Flow map be representative of the way computing knowledge is distributed in the world? What does it say about our world?
- Could the fact that SO is in English be the main reason for US and UK to be so much ahead of the other countries in terms of reputation?


