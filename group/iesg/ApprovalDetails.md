---
title: Approval Details
description: 
published: true
date: 2023-02-20T19:42:06.049Z
tags: 
editor: markdown
dateCreated: 2023-02-20T19:42:06.049Z
---

 If a document is approved during an IESG Telechat (i.e. there are no Discusses and there are sufficient Yes or No Objection ballots), the Secretariat handles the approval automatically.

If the AD can confirm on the Telechat that all the notes are in place, the Secretariat will move the document into "Approved Announcement to be Sent" state. In the next few days, the Secretariat will send out the approval announcement and put the document on the RFC Editor Queue (with those state changes noted in the tracker).

However, sometimes the AD needs to follow a few extra steps.

  -  If the AD needs to update the notes after the Telechat (e.g., to add an RFC Editor Note to handle an IESG Comment) then the Secretariat will place the document in "Approved Announcement to be Sent :: Point Raised Writeup Needed" state.
  -  If some other follow-up is needed (e.g., checking on some fact) then the Secretariat will place the document in "Approved Announcement to be Sent :: Point Raised Writeup Needed" state.
  -  If another revision of the document is necessary (e.g., to address a number of IESG Comments that are too many or complicated to be covered in an RFC Editor Note) the the Secretariat will place the document in "Approved Announcement to be Sent :: Revised I-D Needed" state. 

If a document revision is produced, the responsible AD is expected to check the changes in a manner similar to how AUTH48 changes are being checked, and if substantial changes occur, brings the document back to the IESG review.

In all of these cases, the document is only advanced when the responsible AD considers that all changes and notes are in place. The AD needs to push the document onward by changing the state in the ID-Tracker to "Approved Announcement to be Sent", and must **also** by send a ticket to the IESG Secretariat to inform them. (This latter is usually done by sending an email to the IESG and the document alias, and **BCC'ing** the Secretariat. It is useful to note the fact of the BCC in the text of the email.)

If for any reason a document makes it to the RFC Editor Queue but then is pushed back to the IESG, the responsible AD will need to resolve whatever the issue is then decide what to do next.

 -   If a document is pulled from the RFC Editor Queue for major changes, the document might need to go back to some much earlier state, such as "AD is Watching", and then go through IETF Last Call, IESG Evaluation and approval all over again.
 -   Small changes might not need such drastic measures; it's a judgement call that your fellow ADs can help with.
 -   Very small changes (or no changes, e.g. clearing up a misunderstanding), don't require more approval steps. Push the document back to the RFC Editor Queue by changing the document state and sending separate instructions to the IESG Secretariat. 
 
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-05-19. It was migrated from the old Trac wiki on 2023-02-17.* 