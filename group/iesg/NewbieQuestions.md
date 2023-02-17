---
title: IESG Newbie FAQ
description: 
published: true
date: 2023-02-17T21:02:51.390Z
tags: 
editor: markdown
dateCreated: 2023-02-17T21:01:48.145Z
---

# IESG Newbie FAQ
 This page collects answers to the questions IESG newbies have asked on everything that is in the widest sense IESG- or IETF-related. Feel free to add/edit as needed! We may also think about restructuring this by topic at some point in the future.
## How can I change the ballot write-up after it's been issued?

For example, to add a note to the RFC editor. Change the ballot text in the tracker and save it. No need to re-issue the ballot.
What are the steps to initiate MIB doctor review for a draft?

Basically, do it before IETF Last Call by contacting the OPS AD. See [MibDoctor](/group/iesg/MibDoctor).
## What are the steps to put a draft on the telechat agenda?

The steps to get a document on the agenda are:

 -   issue the ballot
 -   check the checkbox for "on agenda" and make sure the telechat date is right
 -   move the state to "IESG Evaluation" 

The last step isn't strictly necessary; a document can be on the agenda while Last Call is in progress, for example, but "Waiting for Writeup" means "Waiting for AD to issue ballot."

Also see the [DocumentOntoAgenda](/group/iesg/DocumentOntoAgenda) page.
## How do I get the tracker to list draft A as being replaced by draft B?

"Replaced-by" is currently set in the database only by the Secretariat. You file a ticket.
## How can I customize the announcement message after a draft passes the IESG?

For example, to remove things from the announcement email that were in the IESG-internal ballot write-up that aren't fit for external circulation.

The only safe way is to delete it yourself by editing the writeup. You can do this in the telechat, for example, by asking Amy to set the state to "Approved-announcement to be sent :: Point Raised - writeup needed" which holds it until you send a ticket telling her it's OK.
## What license should example source code in a draft use?

There doesn't appear to be a lawyer-proofed answer to this. RFC 3492 Appendix B and RFC 4027 Appendix A contain examples of what has been used in the past. Viral licenses, such as the GPL, restrict what can be done with example code and are hence strongly discouraged. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2006-05-02. It was migrated from the old Trac wiki on 2023-02-17.*