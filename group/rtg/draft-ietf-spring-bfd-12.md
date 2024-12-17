---
title: RTG-DIR Last Call review of draft-ietf-spring-bfd-12
description: RTG-DIR Last Call review of draft-ietf-spring-bfd-12 in December 2024
published: true
date: 2024-12-17T10:22:58.719Z
tags: 
editor: markdown
dateCreated: 2024-12-13T17:50:09.593Z
---

# RTG-DIR LC review of draft-ietf-spring-bfd
RTG-DIR Last Call review of draft-ietf-spring-bfd-12

## Routing Directorate Last Call Review Template 

To:
* rtg-ads@ietf.org

Cc:
* rtg-dir@ietf.org;
* draft-ietf-spring-bfd.all@ietf.org;
* spring@ietf.org;
* last-call@ietf.org;

Subject:
* [RtgDir](/group/rtg/RtgDir) Last Call review: draft-ietf-spring-bfd-12

Hello,

I have been selected as the Routing Directorate reviewer for this draft. The Routing Directorate seeks to review all routing or routing-related drafts as they pass through IETF last call and IESG review, and sometimes on special request. The purpose of the review is to provide assistance to the Routing ADs. For more information about the Routing Directorate, please see https://wiki.ietf.org/en/group/rtg/RtgDir

Although these comments are primarily for the use of the Routing ADs, it would be helpful if you could consider them along with any other IETF Last Call comments that you receive, and strive to resolve them through discussion or by updating the draft.

Document: draft-ietf-spring-bfd-12
Reviewer: Loa Andersson
Review Date: date 
IETF LC End Date: 2024-12-13
Intended Status: Experimental

**Summary:**
Choose from this list...
* No issues found. This document is ready for publication.
* This document is basically ready for publication but has nits that should be considered prior to publication.
* I have some minor concerns about this document that I think should be resolved before publication.
* I have significant concerns about this document and recommend that the Routing ADs discuss these issues further with the authors.

**Comments:**
* Please supply an overview of the draft quality and readability.
* Include anything else that you think will be helpful toward understanding your review.

***Overview***
The document describes the use of BFD for monitoring individual segment lists of candidate paths of an SR Policy.  It documents the use of various BFD modes and features such as BFD Demand mode, Seamless BFD, and BFD Echo function with the BFD Control packet payload. in the SR-MPLS domain. The document also defines the use of LSP Ping for Segment Routing networks over the MPLS data plane [RFC8287] to bootstrap and control path of a BFD session from the egress LER to the ingress LER using Segment Routing segment list with MPLS data plane (SR-MPLS).

***Mailing list discussion***
The SPRING mailining list has been actvie discussing this WGLC. I had not read all the mails when I started my review, but has done so prior to finish it. There are some overlaps, and some differences between my comments and thise on the mailing list, for example ALvaro and I both have a comment on the use of the "expected" in the Abstract, I suggest a change and Alvaro to drop the enire sentence. While I prefer what I proposed, I have no problem living with what Alvaro proposes. This is true for almost all overlapping comments, I have made a note if I strongly prefer something I suggested.

**Major Issues:**
* Major issues are the type of concerns that will result in the document being blocked until they are resolved. The Routing ADs will become involved.
* Please include all of the major issues you have found. Give as much context information as possible (e.g., section numbers, paragraph counts).
* If you find no major issues, please write: "No major issues found."

**Minor Issues:**
* Minor issues are concerns about clarity or technical accuracy that should be discussed and resolved before publication, but which would normally be resolved between the authors and the reviewers.
* Please include all of the minor issues you have found. Give as much context information as possible (e.g., section numbers, paragraph counts).
* If you find no minor issues, please write: "No minor issues found."

***IANA COnsiderations***

I have a some concerns about the IANA Considerations. Ketan had almost the same concerns in a mail to the list, but the document has changed, so I go through.

    It is OK to allocate the new "Non-FEC Path TLV" the 
    way  you do.
    
    However you assign it from a range that require a response
    if the the TLV is not recognized, which is fine if that is
    what you want. If that is the case this need to be
    described in section 3.1.
    
    If youy think that it can be silently dropped if not 
    recognized you should use range 49162-64507. Again you 
    need to describe this in section 3.1.
    
Table 1 should have a column listing if there are sub-TLV registries or not.

    +=======+==================+===============+============+
    | Value | TLV Name         | Reference     | Sub-TLV    |
    |       |                  |               |registry    |
    +=======+==================+===============+============|
    |  TBD1 | Non-FEC Path TLV | This document | Non-FEC    |
    |       |                  |               |Path sub-TLV|
    +-------+------------------+---------------+------------|

            Table 1: New Non-FEC Path TLV
            
Since you assign a sub-TLV I prefer that you list it.

You create the Non-FEC Path sub-TLV registry correctly (almost), you are 

**Nits:**
* Nits are editorial or layout items. They are things that would ideally be resolved before publication to make the document more readable and may be raised now to save the RFC Editor's work.
* Usually a reviewer will not be looking for this type of issue but may find some in the course of their review.
* Please try to avoid raising esoteric questions about English usage. The RFC Editor will spot these, and it is not a wise use of time to discuss these things.
* If you find no nits, please leave this section out.

***Abstract***

SR-MPLS is not a wellknow abbreviation, so it need to expanded at first use. If it is used both in the Abstract and the document text I think it should be expanded twice. The Abstract is treated as something stand-alone.

***Terminology***

In the terminology section you expand SR-MPLS as:

- SR-MPLS Segment Routing with MPLS data plane

The working group have told the RFC Editor to use:

- SR-MPLS Segment Routing over MPLS

in the Abbreviation list. We should follow the abbreviation list.

The terminology section kisses:

- LSR Label Switching Router

which is used in setion 11.

**Grammar concerns:**

I have a couple of comments that are grammatical in nature. Please take care with these comments. English is not my mother tongue, but I'm happy if you read and consider (even if you decide not to take what I suggest). 

***MPLS Data Plane***

In the Abstract you talk about the MPLS Data Plane and say:

Inm the 2nd sentence "It can be realized in the Multiprotocol Label Switching (MPLS) network without changing the data plane."

I have the feeling that "without changing the data plane" can be understood that the entire data plane is swapped, maybe:
 
s/without changing the data plane/without any changes to the data plane/

***Expected to***
The second sentence in the Abstract says:

"Bidirectional Forwarding Detection (BFD) is expected to monitor a segment list..."

I have the feeling that "expectations" leave quite a bit of
uncertainty. What about:
s/(BFD) is expected to/(BFD) is used to/
