---
title: Early External Reviews
description: 
published: true
date: 2023-02-20T18:52:26.865Z
tags: 
editor: markdown
dateCreated: 2023-02-20T18:49:45.969Z
---

# Early External Reviews
 The IETF is building the capability of doing extensive early review outside of a WG, by building volunteer teams of area experts. These are the known volunteer review teams. 
 
 | Team and link                     |  Address to request review  |  Description                                                                                                                                                                                                              |
|-----------------------------------|-----------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|  Applications Expert Review team  |  app-review@ietf.org               |  Experts in XML, HTTP, URIs and URNs, i18n, messaging and other Apps topics.                                                                                                                                              |
|  MIB Doctors                      |  dromasca@avaya.com                 |  Experts in Mangement Information Bases (MIBs)                                                                                                                                                                            |
|  AAA Doctors                      |  dromasca@avaya.com                 |  Experts in AAA protocols issues                                                                                                                                                                                          |
|  Security Area Directorate        |  secdir@mit.edu                   |   Security experts who normally look at documents in IETF Last Call or  before IESG Evaluation finishes, but who may be able to do early review  if it's specifically asked.                                              |
|  General Area Review Team         |  gen-art@ietf.org                  |   Primarily designed to improve the odds that somebody outside the WG  looks at each document.  GenART usually starts tracking documents at  IETF Last Call, however earlier reviews can be requested.  See [queue here](http://www.alvestrand.no/ietf/gen/art/gen-art.html).   |
|  TSV-Directorate                  |  tsv-dir@ietf.org                  |   Experts in transport related questions, QoS (Diffserv, Intserv, RSVP,  NSIS), Transport Protocols (TCP, UDP, SCTP, DCCP), MTU, etc.                                                                                     |
{.dense}

 Today, the way to submit a document for early review is to mail these teams and ask for early review. Include a summary:

 -   What state the document is in
 -   Brief explanation of the next steps or work to do, or a pointer to a set of open issues
 -   Particular things worth looking at (e.g. use of XML if sending to XML experts) 

Why do we attempt to do early external or architectural review? Nobody likes late surprises, when these surprises take the form of important issues in documents that a WG considers to be long done. It can take so long for a WG document to make it to IESG Evaluation, and there are a number of issues that are raised during that last phase, combining to cause great frustration in many cases. Area Directors often don't have time to review external documents any earlier than IESG Evaluation, but perhaps volunteers can fill the gap. There's no guarantee that a pass by the Security Directorate or Apps Expert Review Team will lead to approval by the Security or Apps ADs, but we hope that the process will improve communication outside the WG and make such approval smoother.

When is early external review appropriate? If the document can't be understood by somebody not involved in the WG, then it's too early. The basic pieces should be in place. It's fine to have some TODOs, and comments about the TODOs in the draft itself can help external reviewers understand the missing pieces. At the other extreme, waiting until after WG Last Call is no longer early review. A WG chair might well suggest early external review around the time the WG starts making noises about when to do WG Last Call, because at this point any good issues raised in the review can still have a reasonable effect on the document.

Other guidelines and suggestions:

 -   We don't intend to make external review a blocking process step at this point. Though it might make it harder to track where a document is at and what checks it's had, the duration of an external review can overlap with WG last call, IETF last call or even IESG Evaluation in some cases.
 -   The content of an external review should go to the reviewer's own review team list (so they can share experience on doing useful reviews) and to the WG where the document is chartered. Discussion thereafter might narrow to just the WG and the reviewer, or just the WG.
 -   It would be good to track which documents have been submitted for external review -- see table below. Even better would be to note the results so we can have some way of evaluating this experiment. Email to ldusseault@… will result in the table below getting filled in. 
    
    
| Draft name/version                 |  Review teams submitted to  |  Date submitted       |  Fill in later: notes on results   |
|------------------------------------|-----------------------------|-----------------------|------------------------------------|
|  draft-ietf-widex-requirements-03  |  Apps review team           |  Oct 06               |  mnot@… reviewed and okayed.       |
|  draft-ietf-keyprov-dskpp-00       |  Apps review team           |  Sep 13 07 by Hannes  |                                    |
{.dense}

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2007-10-01. It was migrated from the old Trac wiki on 2023-02-17.*