---
title: Pete's scribbling's on Balloting Theory
description: 
published: true
date: 2023-02-20T20:56:56.997Z
tags: 
editor: markdown
dateCreated: 2023-02-20T20:56:52.625Z
---

 A chat with my co-AD about a couple of recent documents got me thinking about our balloting procedure. I think our [Balloting Procedures](http://www.ietf.org/iesg/voting-procedures.html) are right, but I don't think we've really thought deeply about their meaning.

We've got 4 real positions on a ballot (ignoring RECUSE, since it's not taking a position at all): YES, NO OBJECTION, ABSTAIN, and DISCUSS.

DISCUSS is the easiest. DISCUSS means we want to continue discussing an issue. In particular, it doesn't mean "No"; it means "I object to publishing it now, and we need to discuss it further." DISCUSS is always an interim position; it shouldn't ever be a final position. If people are no longer willing to DISCUSS the document, an AD is supposed to change to some other position. That's made clear in our document states: While there's a DISCUSS on a document, it stays in IESG Evaluation. A document can't move to Approved when it's got a DISCUSS, but a DISCUSS in and of itself doesn't move a document to "Dead" or "Do Not Publish". It's only when everyone selects one of the other 3 positions that everything is final. So, let's talk about the three "final" positions:

ABSTAIN means "I object to publishing this document, and that's final." So, why don't we say "NO" instead of "ABSTAIN"? Because that makes it sound like we're taking a vote, counting up YESs and NOs. That's not what we're doing. We're coming to consensus. If we wanted to change the word ABSTAIN (which might be confusing because in voting it usually means, "I'm not voting"), a good substitute might be OBJECTION, but not NO. You can state your objection, but you don't get a vote. ABSTAIN should be treated identically to someone continuing to hold an objection in a WG after much discussion: Just like the chair of the WG, the responsible AD needs to make the call at that point whether the objector is in the rough or truly hasn't been answered properly. (And remember, an AD can always send a document back to the WG if they feel that there is not consensus on a point, whether that's from an ABSTAIN ballot or a Last Call comment or simply an AD review.)

So, that leaves YES and NO OBJECTION. Both of these indicate that it's OK to publish the document. What's the difference between the two? I think our balloting procedures give a hint. The balloting procedures say:

Standards Track or BCP: To publish, requires 1 YES and a total of 2/3 of the IESG saying YES or NO OBJECTION Informational or Experimental: To publish, requires 1 YES.

In either case, for a document to publish, at least one person has to say YES for a document to publish. That means that everyone can't simply not object; there has to be some positive desire to publish by someone. That says to me that YES means "I want it published" and NO OBJECTION simply means "I have no objection to it being published." And if nobody is willing to say, "YES, I want it published", even if nobody objects to doing so, the document will not be published. But I think there's something stronger about a YES. Compare the document types. For Standards Track and BCP, we require that at least 2/3 of the ADs think it's OK to publish the document; we do not allow more than 1/3 of the IESG to object (i.e., ABSTAIN) on a something we want to declare a standard. (Presumably this is on the assumption that if over 1/3 of us are still objecting, the responsible AD is being a bit blind if they insist on pushing the document forward.) But Informational and Experimental are different:

If there is a single YES and 14 ABSTAINs on an Informational or Experimental document, that document publishes. At the telechat, when we get to such a document, the secretariat says, "There are no DISCUSSes on that document, so unless there is an objection, that document is approved." Unless someone is willing to move back to DISCUSS (and the document continues being discussed), that document is going to publish. If nobody is willing to discuss it anymore, then off it goes.

This seems a bit strange but OK to me. For Standards Track and BCP, we've decided that if 1/3 of us object (ABSTAIN), whether or not we've convinced the person who said YES to change their mind, we're simply not moving forward. But for an Informational or Experimental document, we're OK publishing it if just one AD thinks it's a good idea to publish it. After all, it's just information (or an experiment). Even if the rest of us think it's objectionable, the most we can do is try to convince the one AD who thinks it's important to publish this document. We hope that a bunch of people objecting convinces them, but if it doesn't, we're OK with that. And I think this says something about a YES ballot:

YES means, "I don't care what the rest of you think; I think that we should publish this document and I'm willing to be the one person to get the document published." In the case of an Informational or Experimental document, if I don't want the document to be published, I have to convince everybody with a YES to move off of it, either to NO OBJECTION or ABSTAIN. Even if I convince the sponsoring AD that the document is objectionable (i.e., to move to ABSTAIN) or simply that they don't need to positively support it (i.e., to move to NO OBJECTION), if any other AD says YES, then "that document is approved".

So for me, YES should mean, "I'm willing to stand up for this document and support its publication, even if the sponsoring AD gets run over by a bus. I understand and agree with it enough that I would sponsor it myself." Otherwise, NO OBJECTION is the right position to take. NO OBJECTION says, "I'm OK with this document publishing if someone else wants it published, but if nobody else is willing to stand up and say YES, I'm not going to go it alone."

Think about what you would want your ballot to say if the sponsoring AD decided, "I have no real problem with this document, but if it doesn't get published, I won't be heartbroken" and moves to NO OBJECTION. Are you willing to say, "YES, I want the document published anyway"? If not, ballot NO OBJECTION instead of YES. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-09-27. It was migrated from the old Trac wiki on 2023-02-17.*