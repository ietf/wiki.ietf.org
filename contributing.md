---
title: Contributing to this wiki
description: This page provides details and guides about how to contribute to this wiki, or how to transition content from other wikis.
published: true
date: 2022-11-02T15:03:42.010Z
tags: 
editor: markdown
dateCreated: 2022-09-21T01:06:42.448Z
---

# General guidance
This wiki is for the IETF Community - any IETF participant is welcome to edit it.

> This page covers the mechanics of *how* to contribute. When making contributions, please be aware these [guidelines for content on wiki.ietf.org](/guidelines) about *what* to contribute.
{.is-info}

> **NOTE**:  To contribute to this wiki you must first log in (icon in the upper right corner) using your [Datatracker](https://datatracker.ietf.org/) credentials.
{.is-warning}

Once you are logged in, you can create or edit pages on this wiki. Only administrators can delete pages, create private pages, and add custom CSS/scripts to pages.

# Basics
## Editing language
All pages are written in the WikiJS [flavour](https://docs.requarks.io/en/editors/markdown) of **Markdown**.

Please aim for a consistent style as follows:
1. Start your headings at level 1 (single #).
2. Use backticks for code blocks - single backticks for inline and triple backticks for a standalone block.

## Page and path naming convention
Generally, this is one of the following forms: 
```
/group/{{group acronym}}/{{additional structure}}/{{page name}}
/meeting/{{meeting number}}//{{additional structure}}/{{page name}}
```
* The **{{group acronym}}** is the same as that assigned by Datatracker. This ensures there are no name collisions and that we use a consistent naming scheme.
* You can optionally add one or more path elements as **{{additional structure}}**.
* The **{{page name}}** should be reasonably descriptive and consistent with the title that you will later give the page. 

## Known limitations
The wiki product we are using has the following known limitations:
1. The page menu (the one that appears in the middle when the screen is wide enough, is auto-generated and auto-placed and this cannot be changed.
1. The code highlighting library uses a low contrast theme by default and currently this cannot be changed.
1. The URL of all pages starts /en/ (the language code) and this cannot be changed.

## Sandbox
If you want to try out the new wiki platform without creating a page of your own, there's a [sandbox](/sandbox) to play in.

# Step-by-step instructions
## Editing a page
You can edit a page in one of two ways:
1.  By selecting Edit from the Page Actions menu. If you can't see that menu then you are not logged in.
1.  By submitting a pull request against the [GitHub repository](https://github.com/ietf/wiki.ietf.org).  See below for more details.

Some online tools ease the initial creation of tables in Markdown ([Table generator](https://www.tablesgenerator.com/markdown_tables); [for copy/paste from spreadsheets](https://tabletomarkdown.com/convert-spreadsheet-to-markdown/)).

TIP: If you are editing a very long page then you can turn off live rendering to speed up page editing, with the split screen icon above the live render.

## Creating a page
To create a page, you use the new Page icon in the upper right.  If you cannot see it then you are not logged in.

The first question you are asked is to provide a path for the page - please see the Page and path naming convention above.

Then you are asked what Editor type you want to use - please choose a new **Markdown** page not one of the other types (code, wysiwyg, etc).

Finally you are asked for a title for the page. Please make this consistent with the page name you chose earlier.

## Adding an asset
If you need to add an image or other assent (PDF) for your wiki, you can do that by using the "Insert Asset" folder icon in the left side of the editor view. From there you will be prompted to browse for the file to upload. After uploading, you will be able to perform various actions on the asset using the '...' link in the Action column of the asset list.

# Migrating from Trac and other legacy wikis
If you are responsible for content on an existing IETF wiki there are a number of resources available to help transition content from an existing Wiki.

> If you are an IETF or IRTF group chair and would like to initial help or additional information about transitioning your group's wiki to this platform, please contact: support@ietf.org.
{.is-success}

**Quick start**
1. Group pages are created on a FCFS basis using the path "/group/{{acronym}}"
> If a page doesn't already exist for your group, you can create it by simply navigating to:
> 	``https://wiki.ietf.org/group/{{group acronym}}``
> 
> e.g., the main wiki page for the the [6man Working Group](https://datatracker.ietf.org/group/6man/about/) is at https://wiki.ietf.org/group/6man
{.is-info}

2. Subpages for any particular group can be created using the same method as described above.
> When linking to subpage from a group page, you can use the syntax: ``[link text](page_name)``
> e.g. the markdown for linking to the main IDR page at https://wiki.ietf.org/group/idr to the subpage at https://wiki.ietf.org/group/idr/idr-draft-status looks like: ``[idr-draft-status](idr-draft-status)``
{.is-info}

3. When the new wiki is ready, you can send email to support@ietf.org for the group wiki to be added to the [index of group wikis](/group) and confirm transition from the old wiki is in place. Please also remember to update your group's "About" page in the IETF Datatracker.

> If you are an IETF or IRTF group chair and would like additional information about transitioning your group's wiki to this platform, please contact: support@ietf.org.
{.is-info}

# Content sprint at IETF 115
If you have responsibility for any active IETF-related wiki (e.g. working group or directorate wiki), and are looking to get help or a head start on moving content, you are encouraged to participate in the next content sprint, which is open to anyone who wants a focused time to work on and get help with setting up content at wiki.ietf.org, covering topics such as:
+ New wiki set up
+ Documentation and tools for wiki maintainers
+ Platform-wide features and content

**Hybrid Content-o-thon on 5 November during [IETF 115](https://www.ietf.org/how/meeting/115/)**

This hybrid content-sprint will take place from 1400-1800 GMT on 5 November in the [Mezzanine 9](https://datatracker.ietf.org/meeting/115/floor-plan?room=mezzanine-9) room.

# GitHub and this wiki
The wiki is bi-directionally mirrored with a [GitHub repository](https://github.com/ietf/wiki.ietf.org), which you are welcome to clone.

As noted above, pull requests are accepted against the repository, though initially direct editing is preferred. Any change made directly on Wiki.js becomes a commit (attributed to your email) on GitHub.
