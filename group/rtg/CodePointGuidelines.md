---
title: Code Point Guidelines
description: 
published: true
date: 2022-12-22T19:49:17.304Z
tags: 
editor: markdown
dateCreated: 2022-12-22T19:49:11.786Z
---

## This page is under construction

The page has been put here for discussion and improvements.

# IANA Code Point in RTG Area documents

This page should serve as a guideline to handle IANA protocol code points in Routing Area documents. For the sake of convenience we will follow a document life cycle from an Individual Document until the document become a RFC.

## Individual Document

Under normal circumstances the working groups or the working group chair can not prescribe what goes into an individual documents.

Authors might ask for advice and working groups can give advice on technical content and for IANA code points. Advice should on IANA Code Points should follow the guidelines in this Wiki.

## Individual documents considered to be adopted by a working group

In individual documents for which the authors request that they should be considered for working group adoption, all Code Points for which IANA actions are requested should have the format TBA (To Be Assigned), if there are more than one such Code Point the format is TBA1, TBA2 ... TBAn.

### Exceptions

There is one exception to the general rule above.

### First Exception

Some registries have a First Come First Serve (FCFS) allocation policy. Anyone can request a Code Point from such a registry and it can appear in an Individual Document as soon as it has been allocated.

Note that Code Points assigned through the FCFS policy are pretty much cut in stone and can not easily be changed, nor should the assignment date or the referenced document be changed.

### Second Exception

The second exception is when a new registry is created in such cases the registry may be populated the actual Code Point values that should be in the registry.

Note: If Code Points are requested from the new registry from a second document, the same rules apply as if the registry already existed.

## Working Group documents

The rules are the for IANA Code Points in working group documents as they are for Individual Documents being considered for working group adoption.

### Exception

There is one exception to this rule.

Under certain circumstances "Early Allocation" is possible see RFC 7120.

Code points allocated by the Early Allocation process can be entered in to the document as soon as they have been entered into the IANA registry.

Please not that Code Points allocated through the Early Allocation process has a life time of one year, if the document has not made it to RFC in that time the Working Group Chairs will have to either remove the the code point or ask for an extension.

## Publication Request

As soon as the publication has been requested for a document the Code Points can not be changed by the working group. Any changes has to be made according to the IESG review process or based on suggestions from the RFC Editor.

## RFC Editor editing

The IANA Protocol Code Points are assigned by IANA when the document has been approved by the IESG. When a feasible combination of authors, working group chairs, document shepherd and responsible AD have approved the IANA review of the document the Code Points are entered into the IANA registry.

The IANA Code Points are entered by the RFC Editor in the version of the document that is sent for AUTH48 review.

## Code Points in RFC's

Code Point that are specified in RFCs may not be changed or removed, with less than that a new RFC that is published.

## Suggested or requested Code Point Values

Sometimes we see "suggested" or "requested" values in document. These should be removed prior to running the working group adoption poll and they should not be entered into a working group document. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-09-24. It was migrated from the old Trac wiki on 2022-12-22.*