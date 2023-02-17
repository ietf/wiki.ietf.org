---
title: TracWiki
description: 
published: true
date: 2023-01-09T00:53:30.217Z
tags: 
editor: markdown
dateCreated: 2022-12-22T18:56:17.369Z
---

**The Trac Wiki System**

Trac has a built-in wiki system which you can use for organizing knowledge and information in a very flexible way by [creating pages](/group/rtgwg/WikiNewPage) containing an intuitive and easy to learn textual markup. The wiki markup is used throughout Trac, so not only in wiki pages, but also in [ticket](/group/rtgwg/TracTickets) description and comments, [version control log messages](/group/rtgwg/TracChangeSet), [milestone](/group/rtgwg/TracRoadmap) descriptions, [report](/group/rtgwg/TracReports) descriptions and even in third-party extensions. It allows for formatted text and hyperlinks in and between all Trac modules.

Editing wiki text is easy, as compared to complex markup languages like HTML, using any web browser and simple [formatting](/group/rtgwg/WikiFormatting). The motivation for wiki markup is that [HTML](/group/rtgwg/WikiHTML), with its large collection of nestable tags, is too complicated to allow fast-paced editing, and distracts from the actual content of the pages. Note that Trac also supports HTML, [reStructuredText](/group/rtgwg/WikiRestructuredText) and Textile as alternative markup formats, which can be used in parts of a page, so called wiki blocks.

The main goal of the wiki is to make editing text easy in order to encourage people to contribute to a project. Trac also provides a simple toolbar to make formatting text even easier, and supports the [universal edit button](http://universaleditbutton.org/Universal_Edit_Button/) of your browser.

The wiki itself does not enforce any structure, but rather resembles a stack of empty sheets of paper, where you can organize information and documentation as you see fit, and later reorganize if necessary. As contributing to a wiki is essentially building hypertext, general advice regarding HTML authoring apply here as well. For example, the [Style Guide for online hypertext](https://www.w3.org/Provider/Style/) explains how to think about the [overall structure](https://www.w3.org/Provider/Style/Structure.html) of a work and how to organize information [within each document](https://www.w3.org/Provider/Style/WithinDocument.html). One of the most important tips is to "make your HTML page such that you can read it, even if you don't follow any links".

Learn more about:

- [WikiFormatting](/group/rtgwg/WikiFormatting) rules, including advanced topics like [WikiMacros](/group/rtgwg/WikiMacros) and [WikiProcessors](/group/rtgwg/WikiProcessors).
- How to use [WikiPageNames](/group/rtgwg/WikiPageNames) and other forms of [TracLinks](/group/rtgwg/TracLinks) which are used to refer to any resource within Trac.

If you want to practice editing, please use the [SandBox](/group/rtgwg/SandBox). Note that not all Trac wiki pages are editable by anyone, this depends on the local policy; check with your Trac administrators.

Before saving your changes, you can Preview the page or Review Changes you have made. You can get an automatic preview of the formatting as you type when you activate the Edit Side-by-side mode. There is a [configurable delay](/group/rtgwg/TracIni) between when you make your edit and when the automatic preview will update.

Some more information about wikis on the web:

- A definition of [Wiki](https://en.wikipedia.org/wiki/Wiki) according to Wikipedia.
- The [history](http://wiki.c2.com/?WikiHistory) behind the original wiki.
- A wiki page explaining [why](http://meatballwiki.org/wiki/WhyWikiWorks) wiki works.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-05-11. It was migrated from the old Trac wiki on 2022-12-21.*