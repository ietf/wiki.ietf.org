---
title: IesgRfceditorSubmissions
description: 
published: true
date: 2023-02-20T20:43:35.896Z
tags: 
editor: markdown
dateCreated: 2023-02-20T20:43:35.896Z
---

 The RFC Editor provides publication streams for the IRTF and for independent publications. Documents in these streams are not the product of the IETF and are not reviewed by the IESG for their technical content: the Independent Stream Editor (ISE) and the IRTF review their own submissions for suitability for publication as RFCs. Once the ISE or IRTF think a document is ready for publication, the IESG is asked to review the document for conflicts with the IETF standards process or work done in the IETF community.

The IESG's role in this review is specified in RFC 5742, Section 3. The review is initiated by a note from the RFC Editor or IRTF specifying the document name, the belief of the RFC Editor or IRTF about the suitability of the document for publication, and (if possible) the list of people who have already reviewed the document.

The secretariat automatically places the document for the next telechat in the "For Action" category and assigns the IETF Chair as the responsible AD. The purpose of the discussion in the telechat is to assign a suitable Area Director for shepherding the conflict review.

It's important to note that shepherding the conflict review is not shepherding the document itself. The best AD to shepherd a conflict review is the one most closely associated with the technology being discussed in the document. For example, if you're the AD who sent the author to the ISE in the first place, or if you manage the working group that did, you're probably the right choice as shepherd.

Selection of a shepherd does not have to wait for the telechat: if you think you're the right AD, or if there isn't an obvious choice and you're willing to step in and do it, you can reduce delay by taking over the document right away.

The IESG has two tasks in this review:

 1.   Providing a publish/do not publish recommendation (​Section 3 of RFC 5742).
 2.   If needed, provide a suitable IESG Note to clarify the relationship of the document to the IETF standards process. Such a note is likely to include pointers to related IETF RFCs. 

There are a number of reasons why the publication might be inappropriate. For instance, a document could attempt to make IANA allocations that require IETF Review, which requires publication in the IETF stream. Or a document might have been rejected by a working group but be inappropriate to publish outside the working group (such publication attempts are called "end runs").

Once you have agreed to shepherd the conflict review, you should take the following steps:

 1.   Change the Shepherding AD (in the datatracker page for the conflict review) from the chair to yourself.
 2.   Change the state from "Needs Shepherd" to "AD Review".
 3.   Review the document and decide what you think the correct conflict review text is. The choices are described in ​Section 3 of RFC 5742. You may consult with other ADs, with working group chairs, and with the community if you need to.
 4.   When you have decided, on the datatracker page for the conflict review click "Change conflict review text". Edit the text to leave only the appropriate selection there. You may also add other comments here that you think are necessary or useful, but remember that the IESG's authority here is limited.
 5.   Change the state from "AD Review" to "IESG Evaluation". This creates the ballot and records a "Yes" for you.
 6.   If there is less than a week before the telechat it's scheduled for at this point, change the telechat date (and then go back after that and turn off the "returning item" flag). If there is a week or more before the scheduled telechat, there's no need to change the telechat date. 

At this point, the rest of the IESG will ballot and possibly discuss issues. Comments can be made on the conflict review, as on any document, but acceptance of the comments is up to the stream owner. DISCUSS positions are recorded not on the document itself, but on the choice of conflict review text.

An example ballot is shown at the bottom of this page (note: this is old, and pre-dates the tracker changes for the conflict review process). Once a decision about the recommendation is made on a telechat, the IESG secretary sends the result to the RFC Editor or IRTF, who continues with the process.

The IESG secretary will send that note automatically if no additional input is needed from the responsible AD. If, however, the document transitions to a state indicating additional input is needed (such as DNP-waiting for AD write-up), the responsible AD will need to send a request to the secretary to send the result to the RFC Editor or IRTF once necessary information has been added to the tracker.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 20113-04-04. It was migrated from the old Trac wiki on 2023-02-17.*