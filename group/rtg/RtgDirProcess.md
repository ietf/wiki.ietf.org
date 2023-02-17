---
title: RtgDirProcess
description: 
published: true
date: 2022-12-22T19:45:13.974Z
tags: 
editor: markdown
dateCreated: 2022-12-22T19:45:08.181Z
---

This wiki page describes the document review management process used by the rtg-dir secretaries.

In the routing area, documents are always hand-picked for review by the directorate.  We don’t blanket review all documents that meet certain criteria.

In order to make full use of the directorate members, and to be in line with other IETF directorates, the routing directorate coordinators use a round-robin algorithm to assign reviewers to documents.  This means that documents will have the benefit of cross-area review, but it also means that reviewers will sometimes to be assigned to documents that they have no background in.  This is OK as the reviewer can always review for readability, and it is very important that the document is readable (this often delays documents at the IESG stage).

Occasionally, the person requesting the review may ask for someone with specific expertise to do the review.  If this happens, please ask them to recommend some names by pointing them at the list of directorate members.

The rtg-dir secretaries use the [Area Review Team (ART) tool](https://art.tools.ietf.org/tools/art/rtgdir/index.cgi ) to manage document reviews.  The usage of this tool is described in the process below.  Use of this tool is restricted to the rtg-dir secretaries.  If you think you need access to this tool then please [contact](/group/rtg/RtgDirContacts) one of the secretaries.

The process used by the rtg-dir secretaries is event-driven.  It is not robust in that it explicitly does not include chasing people up to complete their reviews.  If a reviewer accepts an assignment and then fails to deliver a review to their deadline then this failure is handled by the review requester (usually, the AD or a WG chair).


## Event: document review request is received 

Document review requests can come from two sources.

A. One of the RTGAREA ADs may request a review of a document.  This is often triggered by an IETF last call, but not all documents that reach IETF last call are reviewed (not even all routing area documents), and the ADs may request any document be reviewed for any reason.

B. A WG chair may request that the directorate does a [QA review](/group/rtg/RtgDirDocQa) of a document.  This is usually requested for WG documents that the chairs believe could do with having a wider review.  This is triggered by the chair and could be requested at any point in the document’s lifecycle as a working group document.

The rtg-dir secretaries process a document review request as follows.

1. Add the document to the ART tool.
  a. Click "Queue".
  b. Type in the document name.
  c. Click "Add doc".
  d. Change status to "Working - Active".
  e. Click "Save".
2. Assign a reviewer. To do an automatic round-robin assignment, click "Auto" then "Save".
3. The tool will warn you with hover-over text if the next auto-assignment is actually an author of the document.  In this case, do a manual assignment instead (see next step), to the next person after the reviewer that would be auto-assigned.
4. Sometimes (rarely), the person that makes a review request will request a reviewer with a specific skill set.  If they do this, please ask them to suggest some suitable reviewers.  If they can't, then choose a suitable reviewer based on their [expertise](/group/rtg/RtgDirExpertise) and assign them to the document manually, as follows.
  a. Click "Queue".
  b. Find the draft in the list and click "Assign".
  c. Select the reviewer's surname in the ReviewId dropdown.
  d. Click "Save". 
5. Email the chosen reviewer with the following details.  (There is a [template](/group/rtg/RtgDirAssignEmailTemplate) email available.)
  a. The document name.
  b. The reason for the review.
  c. The deadline.
  d. An instruction to copy their comments to the rtg-dir@ietf.org mailing list.
  e. A reference to the [guidance](/group/rtg/RtgDirGuidance) for document reviews.
  f. An instruction to explicitly accept, or refuse, their assignment in a timely manner.

## Event: reviewer accepts assignment

1. Update the ART tool.
  a. Click "Queue".
  b. Find the draft in the list and click "Accept".

## Event: reviewer declines assignment 

1. Update the ART tool.
  a. Click "Queue".
  b. Find the draft in the list and click "Reject".
2. Repeat the process for a new document review request, to choose another reviewer.

## Event (timer expiry): a few days pass and the selected reviewer has not accepted their assignment 

1. Update the ART tool.
  a. Click "Queue".
  b. Find the draft in the list and click "NR" (means No Response).
2. Repeat the process for a new document review request, to choose another reviewer.

## Event: document review request is cancelled 

1. Email the assigned reviewer to let them know the assignment is cancelled.
2. Update the ART tool.
  a. Click "Queue".
  b. Find the draft in the list and click "WD" (means Withdrawn).

## Event (timer expiry): the review deadline passes and the assigned reviewer has not delivered comments 

1. Update the ART tool.
  a. Click "Queue".
  b. Find the draft in the list and click "NR" (means No Response).
2. Email the person that requested the review to let them know that the directorate has failed to provide a review - and ask if they would like us to try again.

## Event: the assigned reviewer delivers their comments 

1. Update the ART tool.
  a. Click "Queue".
  b. Find the draft in the list and click "Done".
  c. Read the comments and ascertain their severity.  Update the "Summary" dropdown to reflect their severity.
  d. Find the comments in the rtg-dir mailing list [archives](http://www.ietf.org/mail-archive/web/rtg-dir/current/maillist.html) and paste a URL to the comments into the Review URL field.
  e. If the reviewer did not copy rtg-dir, they may have copied some other list and you can find the link in its archive.
  f. If they did not copy any archived list then mutter darkly to yourself and leave the URL field blank.
  g. Click "Save".
  h. Click "Queue" and find the document in the list, then click "Finished"

## Event (timer expiry): once a week or so 

Email rtg-dir@ietf.org to let them know which documents came in for review during the past week, and the deadlines.  This encourages further review of those documents - which some directorate members have explicitly requested.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-04-11. It was migrated from the old Trac wiki on 2022-12-22.*
