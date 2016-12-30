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
is summarized
with the following highlights:

➡ Softwarenaut is a visual, interactive architecture recovery tool which 
➡ leverages evolution to support advanced filters and detailed views and 
➡ enables sharing architectural views through an online view repository. 
➡ We illustrate the functionality of Softwarenaut through examples of its application. 
➡ We discuss architectural and tool-building aspects, and report on a usability study.
"""
+++

Our work on Softwarenaut has finally been published in the Science 
of Computer Programming. The paper ([pdf](http://scg.unibe.ch/archive/papers/Lung14a.pdf), [bibtex](http://scg.unibe.ch/scgbib?query=lung14a&display=bibtex),[citations](https://scholar.google.nl/scholar?cites=16074008290934254937&as_sdt=2005&sciodt=0,5&hl=en)) is summarized
with the following highlights:

➡ Softwarenaut is a visual, interactive architecture recovery tool which 
➡ leverages evolution to support advanced filters and detailed views and 
➡ enables sharing architectural views through an online view repository. 
➡ We illustrate the functionality of Softwarenaut through examples of its application. 
➡ We discuss architectural and tool-building aspects, and report on a usability study.


This page contains a tutorial-like description of the tool. For a more detailed discussion see the paper
([pdf](http://scg.unibe.ch/archive/papers/Lung14a.pdf), [bibtex](http://scg.unibe.ch/scgbib?query=lung14a&display=bibtex),[citations](https://scholar.google.nl/scholar?cites=16074008290934254937&as_sdt=2005&sciodt=0,5&hl=en)) 


### Aggregating low-level relations along a hierarcical decomposition of a system
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


### For Further Reading See Our Article from 2014

The description on this page is a summary of the details presented in our article: 

- [Evolutionary and Collaborative Software Architecture Recovery with Softwarenaut](http://scg.unibe.ch/archive/papers/Lung14a.pdf)

To cite the article, use the following bibtex: 

> @article{Lung14a,
	Annote = {internationaljournal},
	Author = {Mircea Lungu and Michele Lanza and Oscar Nierstrasz},
	Doi = {10.1016/j.scico.2012.04.007},
	Journal = {Science of Computer Programming},
	Medium = {2},
	Number = {0},
	Pages = {204 - 223},
	Peerreview = {yes},
	Publisher = {Elsevier},
	Title = {Evolutionary and Collaborative Software Architecture Recovery with {Softwarenaut}},
	Volume = {79},
	Year = {2014}}


# Installation

Softwarenaut is built on top of the Cincom distribution of Smalltalk for historical reasons. This means that in order to run the tool you also need Cincom Smalltalk. 

To download the source code you need to have an installation of Cincom VisualWorks. It seems that recently the only way you can do that is by ordering a CD from Cincom. They are very quick in sending it, but it is still a nuissance and a very archaic way of distributing software! Once you have your VisualWorks installed you are ready to download the sources.

Connecting to the Bern Store

In the Store menu of the launcher, choose ’Connect to Repository’. A dialog pops up where you have to fill in information for connecting to a Store database. Provide the following information:

Interface: select PostgreSql from the dropdown box
Environment: db.iam.unibe.ch:5432_scgStore
User Name: storeguest (if you have one, use it)
Password: storeguest (if you have one, use it)

To access the SCG Store do the following: in the Store menu of the launcher: Store -> Published Items.

Once there, load the MetaDBDevelopment bundle followed by the SoftwarenautDevelopment bundle. Every time you are asked to select a prerequisite, select the latest version that is available. (You can avoid clicking through a zillion of Ok's if you go to Settings>Store>Prerequisites and select the "Load latest version..." option.)

### Importing a System

In order to make Softwarenaut independent of the language that your system is written in, we have made it work on an intermediate representation that can work with any object-oriented language. That representation is the FAMIX meta-model.

There are a few ways in which you can obtain a FAMIX model of your system:

For Smalltalk systems, the importer is in the same image with Softwarenaut
Using a third-party tool that can analyze your source-code and export it into FAMIX
Importing a system from the SourcererDB (work in progress)
Download one of the sample systems that are available online (work in progress)

When you run Softwarenaut, it runs out of a Smalltalk "image", a full smalltalk system whose source code co-exists with that of Softwarenaut and is interpreted by a Smalltalk VM. This means that the tool has access to its own source code together with a few other thousand classes that make up a basic Smalltalk distribution.

You can import and analyze any system from smalltalk by selecting the menu option Import->From Smalltalk...

Once you select the option, you are presented with a list of namespaces that you can import. One special namespace is SN - the namespace of the Softwarenaut itself. If you load it you can analyze the system with itself.

### Importing Multiple Versions

Softwarenaut provides also multi-version analysis support. For this one needs to have multiple models of the same system.

To load multiple models of the same system for multi-version analysis choose the option File>Import History of FAMIX (2.1) Models and in the pop-up dialog select a directory where you have already prepared models for several versions of the system that you are analyzing.

Warning: For large systems, importing a single version can take a few minutes. Consequently importing multiple versions will take proportionally more time. This means that you want to keep the number of versions that you analyze small. Select the versions that you want to analyze accordingly.

Once all your versions are loaded, you are presented with a Model History builder. From the left panel select the versions that constitute your history and add them to the right panel. Then select "Build History" and give a name to your history (usually the name of the system).

After this Softwarenaut builds the internal hierarchical graphs for every version and you are ready to proceed to analysis. The models for all the versions will now know that they are part of the same history.

Multi-Version views will be enabled in the detail view tab. One such example is the Relationship Evolution detail view for dependencies.