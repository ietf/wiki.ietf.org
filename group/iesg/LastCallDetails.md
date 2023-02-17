---
title: Last Call Details
description: 
published: true
date: 2023-02-17T21:24:14.356Z
tags: 
editor: markdown
dateCreated: 2023-02-17T21:22:14.955Z
---

 To request a Last Call,

 -   Pull up the document in the Tracker
 -   Click "Prepare for Last Call"
 -   Make sure the version number in the Last Call Announcement Text is correct.
 -   Add the document's abstract to the announcement text
 -   Make other changes to the announcement text if necessary (see below)
 -   Use the "Request Last Call" button. 

The secretariat will later send the announcement text to IETF-Announce, often on the next business day.

RFC 2026 and RFC 2418 discuss the two-week and four-week IETF Last Call for documents. All IETF documents should be last called (even [Informational](/group/iesg/LastCallInformational) documents).

   The AD can decide to combine several documents in one Last Call, if they have a strong interdependency. This should be weighed against complexity later when Discuss comments are confusing (to which documents do they apply, which documents are clear?).

   The AD should review the document for downward references which need to be called out in the Last Call according to RFC xxxx, and edit these into the announcement that goes out - this task can be shared with the WG chair shepherd. More detail on this is found in [DownrefRegistry](/group/iesg/downrefregistryobsolete)).

   Note: in few cases the ADs have placed a document on the telechat agenda before the Last Call has expired and holding off actual approval to the end of the Last Call period. The experience has been that it is very likely that review feedback comes on the last days, and that tracking this, allowing other IESG members to evaluate their position based on the late feedback, and so on is complicated. As a result, this approach is not recommended.

## Custom Announcement Text

The method of adding the custom text is press the button for regenerating the Last Call text in the tracker, then to edit the text, then press the button to Request Last Call.
### IPR Statements

If an IPR statement has been submitted against the I-D, then the Datatracker will automatically include a link the the IPR statement. If the AD is aware of relevant IPR statements that have been submitted but are not associated with the I-D filename, then the Datatracker will not automatically find them and the AD should modify the Last Call announcement to include them.
### Some other cases where the announcement text should be modified

   - When the document contains a downref, and is being moved forward on the Standards Track anyway, the AD must clearly note this in the Last Call.
  -  To do an extended Last Call to give extra time, e.g. when a Last Call overlaps a meeting.
  -  To explain unusual actions, such as a move to Historic status, or mention of review of a non-WG document by a WG or WGs.
  -  To reference relevant IPR statements that the Datatracker does not locate automatically. 

## Custom requests

The secretariat will also handle custom tickets requesting Last Call, but let the Secretariat know if there's custom text in the Datatracker already.

---

FUTURE: change so both paths generate a ticket.

FUTURE: is the Secretariat checking of the message (handling of the ticket) needed, or should this be fully automated?

FUTURE: make it easier to add custom text

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2011-08-18. It was migrated from the old Trac wiki on 2023-02-17.*