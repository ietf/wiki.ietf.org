---
title: Routing Directorate Last Call Review draft-ietf-rift-rift
description: draft-ietf-rift-rift-20 RTG-DIR review 
published: true
date: 2024-03-19T07:25:50.693Z
tags: 
editor: markdown
dateCreated: 2022-12-21T19:18:39.154Z
---


To:
* rtg-ads@ietf.org

Cc:
* rtg-dir@ietf.org;
* draft-ietf-rift-rift.all@ietf.org;
* wg-mailing-list;
* last-call@ietf.org

Subject:
* [RtgDir](/group/rtg/RtgDir) Last Call review: draft-name-version

Hello,

I have been selected as the Routing Directorate reviewer for this draft. 
The Routing Directorate seeks to review all routing or routing-related 
drafts as they pass through IETF last call and IESG review, and 
sometimes on special request. The purpose of the review is to provide 
assistance to the Routing ADs. For more information about the Routing 
Directorate, please see https://wiki.ietf.org/en/group/rtg/RtgDir

Although these comments are primarily for the use of the Routing ADs, it 
would be helpful if you could consider them along with any other IETF 
Last Call comments that you receive, and strive to resolve them through 
discussion or by updating the draft.

Document: draft-ietf-rift-rift-20 (the current version is -20)
Reviewer: Loa Andersson
Review Date: 2024-03-19
IETF LC End Date:
Intended Status: Standards Track

Summary:

This document is basically ready for publication (with nits) ; though I found it a bit
hard to read.

- at least for me the appendixes contain info that was useful when it
  came to understand the document. This could be mentioned early in the 
  document. Admittedly the Readers Digest does a good work, but it is 
  quite a bit into the document.


Document Overview:

This document defines a routing protocol for Clos and fat tree network
topologies optimized towards control plane state efficiency and a 
minimum of configuration and operational complexity.

Note: One have to get far into the document (even into appindixes) before
you understand the specification of that protocol

Comments:

The draft is long (189 pages), and it takes time to get through all the
details. That said the authors does a good job, it is more that the 
topic is new and fairly complicated. Especially the "Readers Disgest"
section is useful and I had to return to it serval times,


Major Issues:

None

Minor Issues

Abstract 

The abstract of a bit thin, I can't really get what it is asll about
from just reading the abstract, and that it what is there for, right?

Nits:

There is a long list of nits found by the nits-tool (not running 
verbose), please fix those!

In the abstract you say "clos and fat tree topologies", in the the
Terminology section you say "This document uses the terms Clos and 
Fat Tree interchangeably".
Should the abstract asy "clos or fat tree topologies"?
Caveat: This is a grammar comment and I do not normally make grammar
comments :)!

You mixed "terms" and "abbreviations", have concidered two lists?

In section 5.3.1 you use "acronym", I think the preferred word is 
"abbreviation".
All acronyms are abbreviations, but not all abbreviations are acronyms.


One question on the policy defintion in the IANA registries, can you
have a reference to an Appendix in the IANA registry?

I have not found any other nits.


/Loa


-- 
Loa Andersson                        email: loa@pi.nu
Senior MPLS Expert                          loa.pi.nu@gmail.com
Bronze Dragon Consulting             phone: +46 739 81 21 64