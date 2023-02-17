---
title: Routing Directorate Early Guidance
description: 
published: true
date: 2022-12-21T19:25:58.941Z
tags: 
editor: markdown
dateCreated: 2022-12-21T19:25:52.882Z
---

## Routing Directorate Early Review Template

To:
* foo-wg-chairs@ietf.org; 
* draft-foo-name.all@ietf.org;

Cc:
* rtg-dir@ietf.org;
* foo-wg-mailing-list;

Subject:
* RtgDir Early review: draft-foo-name-version.txt

Hello

I have been selected to do a routing directorate “early” review of this draft.
https://datatracker.ietf.org/doc/draft-foo-name/

The routing directorate will, on request from the working group chair, perform an “early” review of a draft before it is submitted for publication to the IESG.  The early review can be performed at any time during the draft’s lifetime as a working group document.  The purpose of the early review depends on the stage that the document has reached.

<case 1> As this document has recently been adopted by the working group, my focus for the review is on providing a new perspective on the work, with the intention of catching any issues early on in the document's life cycle.

<case 2> As this document is in working group last call, my focus for the review was to determine whether the document is ready to be published.  Please consider my comments along with the other working group last call comments.

<case 3> If neither of the above describes the circumstances of the review, then write a brief summary of the reasons for and purpose of the review here (get this from the WG chair if you are not sure).

For more information about the Routing Directorate, please see https://wiki.ietf.org/en/group/rtg/RtgDir


Document: draft-name-version.txt
Reviewer: your-name 
Review Date: date 
Intended Status: copy-from-I-D

**Summary:**
Choose from this list...
* No issues found. This documents is ready to proceed to the IESG.
* This document is basically ready for publication, but has nits that should be considered prior to being submitted to the IESG.
* I have some minor concerns about this document that I think should be resolved before it is submitted to the IESG.
* I have significant concerns about this document.  It needs more work before being submitted to the IESG.

**Comments:**
* Please supply an overview of the draft quality and readability.
* Include any issues you've spotted, and whether you think these are major blocking issues or comments about clarity or technical accuracy.
* Include any questions you have on points that are unclear or seem ambiguous.
* Include anything else that you think will be helpful toward understanding your review.
* Give as much context information as possible with your comments (e.g., section numbers, paragraph counts).

**Nits:**
* Nits are editorial or layout items. They are things that would ideally be resolved before publication to make the document more readable.
* It is not necessary or expected for you to look for this type of issue, or write up an exhaustive list of them, in an early review.  Document quality at the early review stage is often quite rough, and raising nits at this stage can be an inefficient use of your time.  However, if you have recorded them anyway, you may provide them in the review for the benefit of the authors.
* Please try to avoid raising esoteric questions of English usage. The RFC Editor will spot these, and it is not a wise use of time to discuss these things.
* If you have no nits to report, please leave this section out.


## Sample Routing Directorate Early Review 

**To:** draft-ietf-mpls-rfc3107bis.all@ietf.org; mpls-chairs@ietf.org 
**Cc:** mpls@ietf.org; rtg-dir@ietf.org 
**Subject:** RtgDir Early review: draft-ietf-mpls-rfc3107bis-01.txt

Hello

I have been selected to do a routing directorate “early” review of this draft. 
https://datatracker.ietf.org/doc/draft-ietf-mpls-rfc3107bis/

The routing directorate will, on request from the working group chair, perform an “early” review of a draft before it is submitted for publication to the IESG.  The early review can be performed at any time during the draft’s lifetime as a working group document.  The purpose of the early review depends on the stage that the document has reached.  As this document is in working group last call, my focus for the review was to determine whether the document is ready to be published.  Please consider my comments along with the other working group last call comments.

For more information about the Routing Directorate, please see https://wiki.ietf.org/en/group/rtg/RtgDir


Document: draft-ietf-mpls-rfc3107-01
Reviewer: John Doe
Review Date: 27 April 2017 
Intended Status: Standards Track

**Summary**
Thank you for writing this document.  It provides much-needed clarity to the original RFC 3107.

This document is very well written.  I think that it is ready to be published, but there are a few points below that I would like to discuss for clarification. I also spotted a few nits that should be fixed at some point before publication.

**Comments and Questions**

1) In section 2.1 it says:
If the Multiple Labels Capability for a given AFI/SAFI had been 
   exchanged on the failed session, but is not exchanged on the 
   restarted session, then any prefixes advertised in that AFI/SAFI with 
   multiple labels MUST be explicitly withdrawn.

If I have understood this correctly, it requires a speaker to withdraw NLRI that it sent on the previous session but that it has not sent on the restarted session (because the negotiated session capabilities changed).

(a) Why does it need to do that – isn’t the NLRI implicitly withdrawn when the EOR marker is sent? 
(b) This seems to contradict section 2.4 which says “Note that label/prefix bindings that were not advertised on the given session cannot be withdrawn by this method.”


2) In section 2.1 it says:

“A BGP speaker SHOULD NOT send an UPDATE that binds more labels to a given prefix than its peer is capable of receiving” – why isn’t that MUST NOT?


3) In section 2.4 it says:

“To do so, it may send a BGP UPDATE message with an MP_UNREACH_NLRI attribute.”

Should that be “it MUST send”?


4) In section 5: although some implementations treat SAFI 1 and SAFI 4 routes as comparable, I believe that they should always be treated as independent, in the following sense:

Suppose a speaker S1 sends a SAFI 1 route and then a SAFI 4 route to the same prefix P.  The SAFI 4 route MUST NOT be treated by the receiving speaker as an implicit withdraw of the SAFI 1 route.  If S1 subsequently sends an explicit withdraw of the SAFI 4 route, this MUST NOT implicitly withdraw the SAFI 1 route, and vice versa.
Am I correct?  I have seen implementations that violate this so I think it is worth spelling out somewhere in this section.


5) In section 7 it says:

If a BGP implementation, not conformant with the current document, 
encodes multiple labels in the NLRI but has not sent and received the 
"Multiple Labels" Capability, a BGP implementation that does conform 
with the current document will likely reset the BGP session.

Wouldn’t that prevent incremental deployment of this RFC into a network that is initially composed of such implementations?  Because it seems to require that both ends of each BGP session must be upgraded simultaneously, or else the BGP sessions will all reset.


**Nits**

Section 2: Missing close-parenthesis on “([RFC4760]” – this occurs twice in this section
Section 2.1: s/ an prefixes advertised/ any prefixes advertised/ 
Section 2.1: Figure 1 appears quite a long way distant from the text that references it.  I suggest moving it to immediately after the paragraph it is referenced from. 
Section 2.1: s/MUST BE/MUST be/ ]
Section 3.1: s/different path identifiers../different path identifiers./  (i.e. remove stray extra period)
Section 3.2.1: “using the procedure of Figure 4” should be “using the procedure of Section 2.4”. 
Ditto in section 3.2.2. 
Section 4: s/S a layer 2 encapsulation/a layer 2 encapsulation/ (i.e. delete stray ‘S’)

----

[Back to the Routing Area wiki](/group/rtg)

[Back to the Routing Area Directorate wiki](/group/rtg/RtgDir)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-07-05. It was migrated from the old Trac wiki on 2022-12-20.*