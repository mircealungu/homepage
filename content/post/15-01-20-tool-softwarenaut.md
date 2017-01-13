+++
date = "2015-01-20T12:00:00"
draft = true
tags = ["Tools","Software Evolution"]
title = "Softwarenaut - Tool for Architecture Evolution"
math = true
summary = """
> "[...] supports architecture recovery through interactive exploration and visualization. Interactive exploration, filtering and contextual details, are enhanced with evolutionary capabilities when versioning information is available. The tool allows sharing and discovering the results of previous analysis sessions through a global repository of architectural views indexed by systems." (Lungu et al., [Evolutionary and Collaborative Software Architecture Recovery with Softwarenaut](http://scg.unibe.ch/scgbib?query=Lung14a&display=abstract))

"""
+++

> "[...] supports architecture recovery through interactive exploration and visualization. Interactive exploration, filtering and contextual details, are enhanced with evolutionary capabilities when versioning information is available. The tool allows sharing and discovering the results of previous analysis sessions through a global repository of architectural views indexed by systems." (Lungu et al., [Evolutionary and Collaborative Software Architecture Recovery with Softwarenaut](http://scg.unibe.ch/scgbib?query=Lung14a&display=abstract))

<br/><br/>
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
There are many module detail views which present information about a particular module. The Module Evolution presents a compressed version of the module history. The module is represented in every analyzed version as a treemap. When a new class is introduced it is marked with yellow. When a class changes it is colored with a shade of blue which is darker for larger changes. The figure presents the history of the cognitive package in ArgoUML.

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

Softwarenaut is built on top of [Cincom VisualWorks](http://www.cincomsmalltalk.com/) a of which, a Personal Use Licensed version you can [download](http://www.cincomsmalltalk.com/main/developer-community/trying-cincom-smalltalk/try-cincom-smalltalk/) from the Cincom website. 

Once you start VisualWorks: 

- Select the System->Settings and make sure that 
-- under the System settings you have the VisualWorks home directory set correctly to the place where you installed VW
-- under the Store>Prerequisites you have Load latest version option selected (if you don't do this, you'll have to do about 15 extra selections of package versions as you're loading the code. and you don't want that, do you?)

- Select the menu option Store->Connect to repository... then punch in the following information to connect to the Bern Store: 

  -- Environment: db.iam.unibe.ch:5432_scgStore
  -- Username: storeguest (or your bern store username) 
  -- Password: storeguest (or your bern store password)

- Select the "Connect" button
- Select the menu option Store->Published Items which now should be enabled. 
- Find in the Bundles and Packages list the one named SoftwarenautDevelopment. Select it. In the list of versions on the right select Load from the contextual of the most recent version. As the code is loading you might get some Unloadable Definitions warnings. Don't worry and don't despair. Just wait. 


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
