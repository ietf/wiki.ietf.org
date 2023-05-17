---
title: Preparing the Ballot Writeup
description: 
published: true
date: 2023-02-19T20:53:47.728Z
tags: 
editor: markdown
dateCreated: 2023-02-19T20:52:41.885Z
---

# Preparing the Ballot Writeup

Before issuing the ballot, you need to draft text for the various parts of the ballot. For a WG draft, the [Document Shepherd Writeup](http://tools.ietf.org/id/draft-ietf-proto-wgchair-doc-shepherding) should already be in the tracker as a general comment. These writeups are placed to the tracker when the secretariat processes a publication request. For Individual Submissions, the AD should have a copy of the e-mail from the document authors or Shepherd requesting publication. This e-mail should include the writeup. Further information about Individual Submissions can be found from the [Sponsoring Guidelines](http://tools.ietf.org/id/draft-iesg-sponsoring-guidelines).

The writeup acts as an input to the ballot, but typically some editing is needed. For instance, additional reviews received during IETF Last Call can be noted.

To create the ballot, go to the Detail Info page for the draft and click Ballot Write-ups at the top right. You will get three boxes:

## 1. Last Call Announcement Text

If the document needed an IETF Last Call this is already overtaken by events. If not, it can be ignored.
## 2. Ballot Writeup and Notes

This is where you communicate with the IESG (and the IETF, since this text is public), the RFC Editor, and the IANA about the draft.
### Technical Summary

(What does this protocol do and why does the community need it?) Often, this can be taken directly from the Abstract of the document. If not, maybe the Abstract isn't perfect? This text is usually also found in the Document Shepherd Writeup.
### Working Group Summary

(Was there any significant dissent? Was the choice obvious?)

Especially note here if the consensus was on the rough side. Also, it's useful to briefly summarize IETF Last Call comments and any resulting changes. Again, the basic information for this can in most cases be retrieved from the Document Shepherd Writeup. But this field is more likely to change during the steps leading to the IESG review, so make sure the content is correct.

### Protocol Quality

(Who has reviewed the spec for the IESG? Are there implementations?)

If the document is being considered for Draft Standard, this would be the place to summarize implementation reports.

### Personnel

The name of the Document Shepherd and AD is placed here, along with any other relevant contact points.

### Note to RFC Editor

This is any special message to the editor (especially, text changes agreed during IESG evaluation, in unambiguous OLD/NEW format).

### IESG Note

This is very rarely used, but if present, it is text that the IESG wants inserted in the RFC as an IESG Note (probably a "health warning" or disclaimer).

### IANA Note

This is also rarely used, but if present, it is a Note to the IANA.

After editing all the above, don't forget to click Save Ballot Writeup before clicking Issue this ballot.

## 3. Ballot Approval Announcement Text (Sent After Approval)

This is quite self-explanatory. It can be edited before or after IESG approval to add special text. If so, it will be necessary to send a ticket to iesg-secretary asking them not to regenerate the text.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2007-02-06. It was migrated from the old Trac wiki on 2023-02-17.*