---
title: Routing Area Wiki
description: 
published: true
date: 2023-01-30T04:28:41.086Z
tags: 
editor: markdown
dateCreated: 2022-12-21T05:24:30.144Z
---

# Welcome to the Routing Area Wiki 
This Wiki contains additional information for the Routing Area. 

## Who are the Routing Area Directors?

<img src="https://www.ietf.org/lib/dt/media/photo/john-scudder-Qvw5b.jpg" alt="John" height="150"/>

John Scudder
[IESG biography](https://datatracker.ietf.org/person/John%20Scudder)
John is affiliated with Juniper Networks
&nbsp;

<img src="https://www.ietf.org/lib/dt/media/photo/alvaro-retana-LAL06.jpg" alt="Alvaro" height="150"/>

Alvaro Retana
[IESG biography](https://datatracker.ietf.org/person/Alvaro%20Retana)
Alvaro is affiliated with Futurewei Technologies


<img src="https://www.ietf.org/lib/dt/media/photo/Andrew-Alston_GERYWEW.jpg" alt="Andrew" height="150"/>

Andrew Alston
[IESG biography](https://datatracker.ietf.org/person/Andrew%20Alston)
Andrew is affiliated with Liquid Labs

----

## What is the Routing Area Responsible For? 

The Routing Area is responsible for facilitating the operation of the Internet routing system by maintaining and improving the scalability and stability characteristics of the existing routing protocols and developing new protocols, extensions, and bug fixes. Forwarding methods (such as destination-based unicast and multicast forwarding, MPLS, and pseudowire) as well as associated routing and signaling protocols (such as OSPF, IS-IS, BGP, RSVP-TE, LDP, PIM, RPL, and VPNs at Layer 2, Layer 3), and both centralized and distributed routing architectures (to address, for example, virtualization, service chaining, traffic engineering, and data center routing) are within the scope of the Routing Area. The interactions of routing systems with configuration and orchestration platforms (for example, routing-related YANG models and path computation engines) are handled in the routing area. The Routing Area also works on Generalized MPLS used in the control plane of optical networks and the security and manageability aspects of the routing system. The Routing Area Working Groups cover a wide range of data plane technologies (Layer 1, Layer 2, Layer 3) and control protocols. 

[Routing Area WGs](https://datatracker.ietf.org/wg/#rtg )

List dedicated to general discussions of routing issues and topics relevant to the area: [routing-discussion@ietf.org](https://www.ietf.org/mailman/listinfo/routing-discussion)

----
## Routing Area Working Group Chairs 
For WG Chairs (WG secretaries welcome), there is a set of WG chair training and also Routing Area WG Chair chats.  The [recordings and slides for completed WG chair training can be found here](/group/rtg/WGChairTraining) along with the schedule of upcoming calls.

There are some [tools to help run your working group](/group/rtg/WGTools). Take a look and add your ideas.

----
##  Routing Area Directorate 
The Routing Area Directorate is a groups of people with wide experience in designing, implementing, and operating IETF routing protocols. They help the ADs with document reviews and discussions about issues related to routing.

The Routing Area Directorate also contributes to the [Document QA process](/group/rtg/RtgDirDocQa).

See more information on the [Routing Area Directorate charter page](/group/rtg/RtgDir).

----

## Code Points, Internet-Drafts, and Early Implementation 
Early implementation of IETF protocols is encouraged with the understanding that Internet-Drafts are work in progress and may change at any time according to IETF consensus. Early implementation, especially that which involves interoperability testing, may need code points to be selected and it is generally agreed that documenting these code points is beneficial for stability of implementations and to avoid clashing with code point values needed for other Internet-Drafts.

Where an Internet-Draft defines a new registry it is safe for the document to include absolute numbers. However, where an Internet-Draft requires the allocation of new values from an existing registry it is important that the document does not state values until those values have actually been assigned by IANA since to do otherwise risks two documents claiming the same code points for different uses and two implementations clashing in the field.

Fortunately, code points can be allocated quite simply in most cases either by using Expert Review (if it applies to the registry) or by requesting Early Allocation as described in RFC 7120. All authors are strongly encouraged to use this approach, and Working Group chairs are asked to discourage the use of absolute values in Internet-Drafts unless those values come from new registries or have been assigned by IANA.

Thus, the process might go as follows:
- Individual I-D
- Preliminary implementation
- Adopted as working group I-D
- Further development of implementation
- Draft stabilizes
- Apply for early allocation using RFC 7120
- Code points assigned
- Interop testing and early deployments
- Work on I-D completes
- Working group last call
- IETF last call
- IESG approval
- RFC published
- IANA confirms code points for RFC

There are also **Guidelines for handling IANA Code Points in RTG Area Documents**. Here is a link to the guidelines: [CodePointGuidelines](/group/rtg/CodePointGuidelines)

----

## Routing Area Directors' ADnits 
These are issues and concerns that are often raised by the Routing ADs during AD review when publication of an I-D as an RFC is requested, or that have been observed to be raised by other ADs during IESG review.

They are presented here to help authors get their documents approved more quickly.

Here is a presentation given to the MPLS working group at IETF-89 on this subject [PowerPoint slides](http://www.ietf.org/proceedings/89/slides/slides-89-mpls-15.pptx)

And here is a link to a wiki page for the nits themselves [RtgADNits](/group/rtg/RtgADNits)

----
## IETF High-Level Working Group Summaries 

For IETF 93 and beyond, we want to have the WG Status that is reported in the rtgarea meeting be put into this Routing Area Wiki instead.  By doing this, it is easy for WG Chairs to update the summaries at any time during the meeting.  The [Operations and Management Area wiki](/group/ops) contains such summaries, such as for [IETF 92](/group/ops/IETF92summary).

* [IETF 93 WG High Level Summaries](/group/rtg/IETF93summary)
* [IETF 94 WG High Level Summaries](/group/rtg/IETF94summary)
* [IETF 95 WG High Level Summaries](/group/rtg/IETF95summary)
* [IETF 96 WG High Level Summaries](/group/rtg/IETF96summary)
* [IETF 97 WG High Level Summaries](/group/rtg/IETF97summary)
* [IETF 98 WG High Level Summaries](/group/rtg/IETF98summary)
* [IETF 99 WG High Level Summaries](/group/rtg/IETF99summary)
* [IETF 100 WG High Level Summaries](/group/rtg/IETF100summary)
* [IETF 101 WG High Level Summaries](/group/rtg/IETF101summary)
* [IETF 102 WG High Level Summaries](/group/rtg/IETF102summary)
* [IETF 103 WG Summaries](/group/rtg/IETF103summary)


[Here](/group/rtg/IETFBlankSummary) is a blank summary to seed for future IETFs.

## Interim Meetings 
Physical (face-to-face) and virtual (such as using WebEx) meetings are a great way to achieve focused progress on working group topics. There is a small amount of process involved, but this is not very heavy.

Here is a [page that explains more](/group/rtg/Interims).

----
## IETF Meeting Conflict Avoidance 
As the number of working groups in the Routing Area grows it is becoming important to finely tune conflict avoidance: which WG meetings absolutely must not be scheduled at the same time.

Historically, the conflicts list given to the Secretariat is taken from the previous meeting with a trail back into the dawn of time. The conflicts can be archaic and irrelevant but serve to make the scheduling even harder.

Sometimes these conflicts are issues for one or two people and flagging them up can push things around so that other (unreported) conflicts show up. So some forethought is helpful.

We have an [experimental conflict avoidance page](/group/rtg/RtgConflict) where we will try to work out our conflicts in a little more detail in good time before the next IETF meeting.

----
Attachments:
! [ietflogo2e.gif](/ietflogo2e.gif)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2021-07-15. It was migrated from the old Trac wiki on 2022-12-20.*