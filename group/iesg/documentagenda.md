---
title: Getting a Document on the Agenda
description: 
published: true
date: 2023-02-20T18:37:46.615Z
tags: 
editor: markdown
dateCreated: 2023-02-19T20:34:54.536Z
---

# Getting a Document on the Agenda
## Deadline for adding a document

When an AD is going to add a document to the IESG agenda, they must first consider the deadline for adding documents. Documents SHOULD be added no later than 17:00 (Eastern Time) the Thursday one week before the telechat it is to appear on. It is possible to do late additions in exceptional cases, however when doing this please consider the following:

 -   Late additions MUST be announced on the IESG mailing list.
 -   Other ADs may protest the late addition and the Secretariat will then move the document to the next IESG Formal Telechat Agenda.
 -   Making late additions after Monday is really late and should be really avoided. 

## The Process of adding a document

Since May of 2018, at the request of the IESG, the Secretariat took over managing the IESG Telechat agenda document queue. To signal a document is ready for an IESG Telechat Agenda, first go to the General Info page for the document. Then, the steps to get a document on the agenda are:

  -  [PrepareWriteup](/group/iesg/preparewriteup)
  -  Issue the ballot. When you are on the Ballot Write-ups page (for example https://datatracker.ietf.org/doc/draft-ietf-something-something/edit/ballotwriteupnotes/), press the "Save & Issue ballot" button. This action sends a ticket to the IESG Secretary signalling the document is ready to be added to the agenda. The Secretariat will then put the document on the next available agenda, where the page count isn't exceeded. This will also automatically move its IESG state to "IESG Evaluation" (so no need to modify the IESG state field or telechat field manually).
  - If the responsible AD has specific requests regarding the scheduling of the document, send an email to the IESG Secretary with the request.

Notes:

It is common practice for the responsible AD not to issue a ballot until the Last Call is over, to make sure the document is in a stable state before it reaches the IESG for review.
However, in the interest of not adding unnecessary delays, the responsible AD in special cases can make the judgement call to add the document to the next telechat agenda before the Last Call is over. This should be done always considering the 1 week deadline. For example, if a Last Call ends on Friday the week before the telechat, an AD may add the document to the next telechat's agenda on Thursday, so not to miss the agenda deadline and not to delay the document of another 2 weeks. To do so:
  - Manually change the "Telechat date" field to add the document to the agenda.
  -  Leave the state as is, and when the Last Call expiration notices comes in, issue the ballot at that time. Note that issuing the ballot will automatically change the state to "IESG Evaluation". 
  - notify the IESG by on the IESG mailing list.
    
Note that documents are NOT commonly placed on the agenda before the Last Call is over. The AD has to remember to take the document off the agenda in case the Last Call shows that the document needs to go back to the WG.

In very exceptional cases, previous IESG have used the following procedure. This is a procedure that hasn't been necessary in several years, so highly discouraged, but documented here for posterity. 
  - When there is external deadline pressure, it's possible for a document to be on the agenda a few days before the Last Call ends. (Normally, the Last Call should end no later than the Monday after the telechat.) In this case, the correct procedure is for an AD (most likely the responsible AD) to hold a DISCUSS until the end of the Last Call. If the rest of the IESG approves the document, and no more non-editorial Last Call comments arrive, this DISCUSS can be cleared when the Last Call officially ends. Otherwise, document shepherding will resume until the comments are resolved. Since some ballot positions may change based on Last Call comments, it's probably most appropriate to have a document that's had substantive Last Call comments return to another telechat. 

If a document is on the agenda as a "returning item" and it shouldn't be marked as a returning item, this bit can be cleared. From the main IESG datatracker page (the one with the form on top), click "Documents on upcoming agendas" button at top and there's a way to [clear returning items](/group/iesg/clearreturning).

## All about Telechats

Telechats are generally every other Thursday at 10:00 AM Eastern US Time. This is 7:00 AM Pacific US Time, and 16:00 Central European Time. Be sure you know what time that is for your [location](http://www.timeanddate.com/worldclock/fixedtime.html?month=2&day=2&year=2006&hour=11&min=30&sec=0&p1=263).

The [IESG Agenda](https://datatracker.ietf.org/iesg/agenda/) for each telechat is published online, and emailed periodically to the IESG list, in the days before the meeting. The email contains the same information that is in the link above, plus very valuable information such as the dialin numbers for attendees and who has indicated that they will or will not be present. If you cannot attend you MUST let the secretary know in advance (send an email to the IESG Secretary and let them know).

A public version of the agenda is posted, and is also mailed out a week in advance to anyone that subscribes to [iesg-agenda-dist@ietf.org](https://www1.ietf.org/mailman/listinfo/iesg-agenda-dist). However, the most convenient form of the agenda exists in the [data tracker](https://datatracker.ietf.org/iesg/agenda/).

The agenda sequence is always the same (unless the IESG makes a permanent change) and the agenda is largely generated automatically. ADs can request an item to be added to the Management Issues section by sending mail to the IESG Secretary with a subject starting Management Issue (or Management Item) and a suitable short text, e.g. *Management Item: Appointing John Doe as Foobar Expert Reviewer*, and possibly a message body with more details. WG chartering, re-chartering issues as well as any news from the participants are also handled in the telechat.

Normally, documents must be added to the agenda and all ballots issued by 17:00 ET on the Thursday a week before the telechat. Management items are to be added with a deadline of 13:00 ET Wednesday. Late additions are to be avoided as much as possible - and the probability of other ADs deferring such items is obviously higher than normal. It wouldn't be a good idea to add a 100 page draft to the agenda on Tuesday evening. As a courtesy, an AD making a late addition to the agenda, any time after the preliminary agenda has been sent out, should also send a note to the whole IESG warning them of the late addition (and explaining the urgency).

Minutes and narration are taken and eventually posted. [Official and Narrative Minutes](https://www.ietf.org/about/groups/iesg/minutes/) are taken by the IESG secretary.

Attendees to the IESG Telechats include:

 -   IESG Members
 -   IAB Chair
 -   Liaison to the IESG from the IAB
 -   RFC Editor Liaison
 -   IANA Liaison
 -   IETF Secretariat Liaison
 -   Moderator from the Secretariat
 -   IETF Administrative Director (IAD)
 -   Additional secretariat members may attend for some or all of the call.
 -   Guest and observers - any member of the IETF community can sit and listen in on the call.

This gets to be a lot of people, so the meetings are very structured, with a member of the secretariat walking through the agenda items line by line, taking action items, moving document states, asking for positions on documents that are not entered into the tracker, etc. Calls are recorded and archived. Take a look at a recent Agenda to see the order of documents and actions.

One slightly confusing aspect of the agenda is that the part concerning drafts is split into two major sections: **2. Protocol Actions** and **3. Document Actions**. *Protocol Actions* are formal approvals of standards track documents and BCPs. Not all of them are really protocols. *Document Actions* are formal approvals of Informational and Experimental documents, and documents that have been reviewed by an AD (currently RFC 5742 review) for the IRTF or ISE.

When you are not talking, please use the mute, particularly if you are on a phone subject to static or a lot of background noise. Also important is how to unmute, something that is sometimes forgotten given the number of times we hear "sorry, mute problem" after a period of dead air waiting on someone specific to reply.

Sometimes IESG members talk and chat at the same time, be sure you are following the Slack IESG channel on your machine. Also, be sure to use the tracker and get your document positions in before the meeting so that they do not have to be recorded verbally during the call.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2020-01-07. It was migrated from the old Trac wiki on 2023-02-17.*
