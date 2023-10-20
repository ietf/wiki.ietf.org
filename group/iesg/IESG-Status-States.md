---
title: Convention for IESG Status States in the Datatracker
description: 
published: true
date: 2023-10-20T17:05:18.421Z
tags: 
editor: markdown
dateCreated: 2023-10-20T16:29:31.689Z
---

# Convention for IESG Status States in the Datatracker

**** THIS IS A WORK IN PROGRESS WITH NO AGREEMENT FROM THE IESG ****

The datatracker provides significant flexibility in conveying document status in the "IESG Status" field (i.e., the status of a document after it has be sent from the WG to the IESG).  In the absense of a consistent definition and application of values in this status field, it is difficult for an outside observer to understand the disposition of a document without also having insight into the workflows of individual ADs.

The conventions described here are intended to harmonize the way ADs use these document states.  Adoption of these conventions would normalize the interpretation of the status field.

## Publication Requested

Background: the WG has completed the document and is asking the AD to advance it through the IESG Review process.

Substates
* *None* -- AD has done nothing with this document.  It awaits processing.
* *All Other States* -- Do not use


## AD Evaluation

Background: same as Publication Requested.

Substates
* *None* -- AD is actively reading the draft, but AD review is not complete
* *Revised I-D Needed* -- AD Review is complete.  In the assessment of the AD, a revised I-D is needed to address the AD Review or other feedback that has occured since the document was sent for publication.
* *AD Followup* -- AD Review is complete.  AD needs to re-review the document (e.g., based on a revised I-D) or further investigate something related to the draft.
* *External Party* -- AD Review is complete.  Another party needs to be consulted or the document is waiting for something from another group.  This other group could be another IETF WG or perhaps another SDO.

## Waiting for Writeup

Background: the document has seen AD Review and completed IETF LC

* *None* -- AD has not done anything with the document since it completed IETF LC
* *Revised I-D Needed* -- In the assessment of the AD, a revised I-D is needed to address IETF LC feedback
* *AD Followup* -- AD needs to re-review the document (e.g., based on a revised I-D) or further investigate something related to the draft per IETF LC feedback.
* *External Party* -- Another party needs to be consulted or the document is waiting for something from another group.  This other group could be another IETF WG or perhaps another SDO.

## IESG Review

Background: the document is awaiting IESG Review or has blocking feedback (DISCUSS) based on IESG Review

* *None* -- The document is scheduled for IESG Review/formal telechat
* *Revised I-D Needed* -- The document has a blocking DISCUSS or insufficient ballots to pass. A revised I-D is needed to address feedback from the IESG review
* *AD Followup* -- The document has a blocking DISCUSS or insufficient ballots to pass.  AD needs to review the feedback or a discussion is needed to resolve IESG feedback.
* *External Party* -- The document has a blocking DISCUSS or insufficient ballots to pass.  Some kind of coordination with another group needs to occur.

## Approved-announcement to be sent

Background: the document has enough positions to pass and no blocking DISCUSSes.  

* *None* -- The document is ready for publication.  
* *Revised I-D Needed* -- The AD has requested a revision of the document based on the non-blocking (COMMENT) feedback.
* *AD Followup* -- AD needs to review the non-blocking feedback and decide the resolution.
* *External Party* -- Some kind of coordination with another group needs to occur.

