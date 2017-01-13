+++
date = "2014-01-01T12:00:00"
draft = false
tags = ["Papers", "Software Evolution", "Software Architecture", "Visualization"]
title = "Evolutionary and Collaborative Software Architecture Recovery 📝"
math = true
summary = """

Our work on Softwarenaut has finally been published in the Science 
of Computer Programming. The paper 
([pdf](http://scg.unibe.ch/archive/papers/Lung14a.pdf), [bibtex](http://scg.unibe.ch/scgbib?query=lung14a&display=bibtex),[citations](https://scholar.google.nl/scholar?cites=16074008290934254937&as_sdt=2005&sciodt=0,5&hl=en)) 
introduces Softwarenaut, a visual, interactive architecture recovery tool which 
leverages evolutionary analysis to support source code understanding. 
"""
+++

Our work on Softwarenaut has finally been published in the Science 
of Computer Programming. The paper 
([pdf](http://scg.unibe.ch/archive/papers/Lung14a.pdf), [bibtex](http://scg.unibe.ch/scgbib?query=lung14a&display=bibtex),[citations](https://scholar.google.nl/scholar?cites=16074008290934254937&as_sdt=2005&sciodt=0,5&hl=en)) 
introduces Softwarenaut, a visual, interactive architecture recovery tool which 
leverages evolutionary analysis to support source code understanding. 


This page contains a very high level description of the tool. 
For details and case studies, see 

1. the journal article that describes the tool ([preprint pdf](http://scg.unibe.ch/archive/papers/Lung14a.pdf), [bibtex](http://scg.unibe.ch/scgbib?_k=mhZxW1Pf&query=Lung14a&display=bibtex))

1. the conference paper that describes the way we visualized hierarchical clusterings of software systems ([preprint pdf](http://scg.unibe.ch/archive/papers/Lung05aExploreSemanticClusters.pdf), [bibtex](http://scg.unibe.ch/scgbib?_k=v0zYApEK&query=Lung05a&display=bibtex))



### Aggregating low-level relations along a hierarchical decomposition of a system
Softwarenaut aggregates low-level relations along a hierarcical decomposition of a system (e.g. the package structure in Java). Softwarenaut can thus present a high-level overview of the architectural relationships between the modules in a system. 

The figure presents the architecture of Softwarenaut visualized in Softwarenaut. The module sizes are proportional to their LOC and the relationships are proportional to the number of low-level relationships abstracted.

![architecture-of-softwarenaut](https://cloud.githubusercontent.com/assets/464519/21022444/eb463a12-bd7c-11e6-9a37-f6925f371eff.png)


### Augmenting The Big Picture With Evolutionary Information
The following view presents Softwarenaut visualizing itself but this time, augmenting the structure with evolutionary information. On top of the architectural view we have highlighted the classes that have the most activity in the recent evolution of the system (as of February 2011). One can see that it is a minority of classes that have been changing. 

![evolution screenshot](https://cloud.githubusercontent.com/assets/464519/21022349/9ec2f748-bd7c-11e6-87ad-29c5332caba9.png)


<!-- ### Details About Relationship Evolution

The following figure presents the evolution filmstrip for the relationship between the uml and kernel modules in ArgoUML between 2003 and 2007. Inheritance relationships are represented with red and invocation relationships are represented with black. One can see that in 2004 a reverse dependency was introduced between kernel and uml and it remained in the system until its latest analyzed version

![screen-shot-2011-10-10-at-5 27 36-pm](https://cloud.githubusercontent.com/assets/464519/21023545/4c41a97e-bd81-11e6-81b1-fb038bd3b156.png)
 -->
### Details About Module Evolution
There are mahy module detail views which present information about a particular module. The Module Evolution presents a compressed version of the module history. The module is represented in every analyzed version as a treemap. When a new class is introduced it is marked with yellow. When a class changes it is colored with a shade of blue which is darker for larger changes. The figure presents the history of the cognitive package in ArgoUML.

![screen-shot-2011-10-14-at-1 56 14-am](https://cloud.githubusercontent.com/assets/464519/21023626/9cffc058-bd81-11e6-906f-4f62c440717a.png)

### Coping with the explosion of information through filtering

Filters help coping with the explosion of information during exploration. There are two types of filters: entity filters and relationship filters. The Filters Panel allows the user to add and remove various filters during exploration. The filters panel appears instead of the Detail Panel when no entity is selected in the Architectural View.

Two categories of **entity filters** are:

- Size Related: Filters all the modules that are under a certain threshold (Small Modules) or above a certain threshold (Large modules).
- Evolution Related:

Two categories of **relationship filters** are:

- Dependency Strength: they filters the relationships based on the number of low-level explicit relationships that are abstracted in the visible relationships (e.g. Weak dependencies, Strong dependencies). These are useful when starting the analysis of systems that have a large number of modules and dependencies between them.
- Evolutionary: they filter relationships based on the evolution of the relationships during the lifetime of the system. Examples are: lifetime, newborn, old, new. They are available only when multiple versions of a system are loaded. They are useful for either limiting the amount of information at the first encounter with a system (e.g. lifetime) or trying to find problems (e.g. newborn combined with bidirectional).


### A Screencast of Softwarenaut in Action
In 2012 I prepared a screencast of the way the 
tool looked at the time. I think screencasts are very important
for research tools since they may give ideas to new toolmakers
long after they tool does not compile anymore :)


<iframe src="https://player.vimeo.com/video/62767181" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>


### Further Reading

For details and case studies, see 

1. the journal article that describes the tool ([preprint pdf](http://scg.unibe.ch/archive/papers/Lung14a.pdf), [bibtex](http://scg.unibe.ch/scgbib?_k=mhZxW1Pf&query=Lung14a&display=bibtex))

1. the conference paper that describes the way we visualized hierarchical clusterings of software systems ([preprint pdf](http://scg.unibe.ch/archive/papers/Lung05aExploreSemanticClusters.pdf), [bibtex](http://scg.unibe.ch/scgbib?_k=v0zYApEK&query=Lung05a&display=bibtex))


### Code and Installation

The [Softwarenaut GitHub repo](https://github.com/mircealungu/Softwarenaut/) contains instructions on how to [obtain the code 
and install the system](https://github.com/mircealungu/Softwarenaut/blob/master/INSTALLATION.md).

