---
title: WG Summaries for IETF 96
description: 
published: true
date: 2022-12-15T03:37:35.896Z
tags: 
editor: markdown
dateCreated: 2022-12-15T03:37:31.205Z
---

## 6lo Summary

Prior to IETF there was a PlugFest also here in Berlin and a couple of the specs below were tested with good results.

IPv6 over Bluetooth Low Energy Mesh Networks: <https://tools.ietf.org/html/draft-gomez-6lo-blemesh> 
- Presented updates to the draft. Will query the BT SIG for their feedback and position and go for WG adoption call.

Transmission of IPv6 over MS/TP Networks: <https://tools.ietf.org/wg/6lo/draft-ietf-6lo-6lobac> 
- Privacy issues were the last discussion. Ready to advance to IESG.

6lo Privacy Considerations: <https://tools.ietf.org/html/draft-ietf-6lo-privacy-considerations> 
- Discussed Kerry Lynn\'s comments. After a couple of changes will be ready for WG LC.

ESC Dispatch Bytes and IANA Registry: <https://tools.ietf.org/wg/6lo/draft-ietf-6lo-dispatch-iana-registry> 
- Discussed Brian Haberman\'s review. With those changes, after a new version will be ready for IESG submission.

6LoWPAN Paging Dispatch: <https://tools.ietf.org/html/draft-ietf-6lo-paging-dispatch> 
- Shepherd\'s writeup to be completed soon with input from the authors and then the document can advance.

6lo ND backbone router: <https://tools.ietf.org/html/draft-ietf-6lo-backbone-router> 
- Interop tested in Berlin PlugFest prior to IETF. Potentially splitting into 3 documents. Being discussed in the context of IETF/IEEE coordination on multicaset/broadcast in INT area.

IPv6 over NFC: <https://tools.ietf.org/wg/6lo/draft-ietf-6lo-nfc> 
- Interop tested in Berlin PlugFest prior to IETF. Waiting to hear back from NFC Forum. To work on more testing in next PlugFest.

6lo Use Cases: <https://tools.ietf.org/html/draft-hong-6lo-use-cases> 
- Much improvement after IETF 95. Will issue WG adoption call on the list.

Designating 6LBR for IID Assignment: <https://tools.ietf.org/html/draft-rashid-6lo-iid-assignment> 
- Good discussion, but still need for further clarity on motivation and other aspects.

Requirements for Diet-ESP (IPsec/ESP for IoT): <https://tools.ietf.org/html/draft-mglt-6lo-diet-esp-requirements> Diet-ESP: a flexible and compressed format for IPsec/ESP: <https://tools.ietf.org/html/draft-mglt-6lo-diet-esp> 
- Some reasonable interest from folks on this compression.

An Update to 6LoWPAN ND: <https://tools.ietf.org/html/draft-thubert-6lo-rfc6775-update-00> 
- Text extracted from Backbone Router draft. Some additional changes to ND, though. Some debate as to whether this draft should merely focus on the Backbone Router required changes.

## 6MAN

The 6MAN working group met for a 2 1/2 hour session on Tuesday morning at IETF96. The session was well attended. The agenda, and slides from 6MAN are available at: https://datatracker.ietf.org/meeting/96/materials.html.

The agenda was organized to give priority to working group drafts, individual drafts with active discussion, and new individual drafts. Traditionally the 6MAN working group has had a very tight agenda, and we often have had to cut discussions short. At this meeting we had more open agenda and we had more time for discussion. In the chair\'s opinion that worked out well, and prioritised the time on issues that benefit from a face to face discussion.

Major topics discussed where the default-iid draft and IPv6 to Internet Standard. For the default-iid document there was lots of discussion on the consequence of replacing (by updating) the sections in the IPv6 over Foo documents, and what the consequence would be for continued use of EUI-64. Consensus in the end was to remove section 6 of the draft (which specified the patches).

There were two slots on the update on the project to move the IPv6 to Internet Standard. One going through the review comments and the other on major open issues. The topic of \"header injection\" did not reach consensus in the room, and from mailing list discussions later it appears the working group is currently stalled on this issue. The chairs will discuss this issue with the ADs.

## 6TiSCH Summary

6TiSCH had two events at IETF96: the 3-day ETSI 6TiSCH/6lo plugtest \[1\] and a 90min WG meeting.

During the WG meeting, progress in WG items was observed, technical discussions took place on adding functions to the 6P protocol (https://tools.ietf.org/html/draft-ietf-6tisch-6top-protocol). These changes are important, but they might mean delaying the delivery of that draft by 1-2 months. The group agreed with the delay considering that the proposed additions are indeed important. It was observed that the name in the milestone needs to be udpated as well as the milestone itself.

The fact that SF0 (https://tools.ietf.org/html/draft-ietf-6tisch-6top-sf0) does not provide a complete solution since it does not allocate the bundles of cells that it uses was observed. To be resolved inside or outside SF0 is to be discussed on the mailing list.

The ETSI 6TiSCH/6lo plugtest was a success. 6P, SF0 and 6BBR were tested. Kudos to ETSI for the great support!

Security work has started. Michael Richardson presented a status indicating directions.

\[1\] <http://www.etsi.org/news-events/events/1077-6tisch-6lo-plugtests> 
\[2\] <https://datatracker.ietf.org/meeting/96/agenda/6tisch/>

## LPWAN summary

WG-forming BoF lasted 2 hours.

A generic architecture was presented by the BoF chairs, showing potential areas of work for the IETF. Short terms possible areas include compression all the way to CoAP, AAA, security, management. Longer term include a global architecture that includes overlay over the Internet for isolation, mobility, and addressing that does not leak into the DFZ.

The 4 technologies considered, NB-IOT, 802.15.4 (Wi-SUN), LoRa and SIGFOX were introduced. The desire for common services and abstractions for the upper layers was clearly expressed, leading to the need for a place where that common abstraction is standardized based on IP.

The gaps between existing IETF technologies (e.g. 6LoWPAN, ROHC) were exposed, with a focus on IPv6. The group was presented with a number of possible work items, and asked whether they understood the set of problems (consensus yes), where ready to work and review (both positive). Suresh polled for interest by end users from the technologies, high level of hum.

The remaining question, raised by Erik, is whether a new WG is required. Suresh to work with the IESG to make that decision.

## DHC

The DHC WG met on Wednesday (7/20/2016) at 10:00. While we had originally requested a 2 hour slot and had about 90 minutes of requested agenda time, we used the entire 2.5 hour slot we were assigned. We had a lot of good discussion and we were not as rushed having the extra time -- it worked out very well for the WG.

There were the following presentations and discussions after a brief WG status review, agenda bashing, and summary of the DHCPv6 YANG work at the Hackathon by the chairs:

-   Secure DHCPv6 and Secure DHCPv6 Deployment by Ted Lemon. This draft still needs a bit more work, but is progressing.
-   Security of Messages Exchanged Between Servers and Relay Agents by Bernie Volz & Yogendra Pal. Those in the audience favoring WG adoption, a call will be started soon on the WG ML.
-   Next Steps for DHCPv6 failover by Tomek Mrugalski. After a discussion about whether the work was still of interest to the WG, the conclusion was to start another WGLC.
-   YANG Data Model for DHCPv6 Configuration by Linhui Sun. There was a discussion about how to handle options and some other issues were raised. Progress is being made on the work.
-   DHCPv6 Prefix Length Hint Issues by Linhui Sun. Another revision of the draft is required to address some issues raised, but the work is proceeding and can hopefully go to WGLC after the update.
-   Generalize Client UDP Port Number of DHCP Relay by Naiming Shen. This is newly introduced work and those in the audience were in favor of a call for adoption.
-   DHCPv6bis update & issues discussion by Tomek Mrugalski and Bernie Volz for coauthors. A WGLC on this document was recently started (ends August 8) and this was to remind folks as to the original goals and the major changes in the document. One outstanding ticket was reviewed and several new tickets were discussed.

## dnssd WG summary

DNSSD WG Meeting Summary IETF-96

-   Chairs' Introduction

-   Discussion: Updates to DNS-SD hybrid proxy

Waiting on Stuart Cheshire to edit \"Hybrid !Unicast/Multicast DNS-Based Service Discovery\" draft-ietf-dnssd-hybrid-03, based on input received during WG last call (which completed before IETF-95). Stuart promised revision will be published in August. Once revision is published, WG will confirm that the edits satisfy WG last call input and then the document will be sent to the IESG.

-   Discussion: DNS Push Notifications

WG agreed at IETF-95 to split out the signalling part from the connection management part. This details of this split has been agreed. The dnsop WG has the responsibility for \"DNS Session Signaling\", draft-bellis-dnsop-session-signal-00 and the dnssd WG has the responsibility for \"DNS Push Notifications\" draft-ietf-dnssd-push-08. The initial focus will be getting the signalling draft complete, which should happen quickly, and then the DNS Push draft will be revised based on the signaling draft update. The signalling draft authors promised a -01 update by the end of the IETF week, and the dnsop chairs will then ask for dnsop WG adoption.

-   Discussion: DNS Update and mDNS/hybrid proxy coexistence

Ted Lemon has written \"Homenet Naming and Service Discovery Architecture\" draft-lemon-homenet-naming-architecture-01 which discusses dynamic DNS update and DNS hybrid proxy services and naming requirements in the context of the homenet WG. In the dnssd meeting, it was agreed that Ted would progress a new \"flat homenet\" draft which would describe how DNS-SD could work in a homenet with a flat name space. The use of DNS Update alongside a configured hybrid proxy also needs to be discussed for the managed enterprise/campus case.

-   Discussion: Recommendations for using the hybrid proxy

Ralph Droms gave a short presentation outlining the components of unicast DNS-SD that can be combined in different ways to meet different deployment requirements. The content in the presentation will be incorporated into a new draft describing BCP for unicast DNS-SD deployment. Other aspects may be covered, such as user interface considerations, though UI design is outside the scope of the WG. Tom Pusateri has a candidate draft describing examples of DNS-SD configurations, which will also feed into this process.

-   Draft review: Privacy Extensions for DNS-SD

Daniel Kaiser discussed updates to \"Privacy Extensions for DNS-SD\" draft-huitema-dnssd-privacy-01. The new revision describes a potential solution based on same-owner and different-owner pairing. The WG expressed interest in the room in adopting the document as a WG work item. The chairs will confirm this consensus on the mailing list. The ADs will discuss where the described pairing protocol should be progressed.

## DPRIVE

DPRIVE did not meet in Berlin. We should meeting next time

## Intarea

Intarea WG met on Thursday for one hour. We had 4 new presentations and three updates of existing WG documents

draft-ietf-nvo3-gue-04 has been adopted as WG item and a WG adoption call will be issued for draft-winfaa-intarea-broadcast-consider-02. We also had one presentation from TSV WG on "IP Encapsulation Congestion Notification Guidelines", a review of BW aggregation for Internet Access (draft-mrc-banana-considerations-01) and a presentation on "Extended Ping" (draft-bonica-intarea-eping-00).

A WG last call has been issued before the meeting for draft-ietf-intarea-adhoc-wireless-com-01 and an updated version was presented. Also, a request to publish draft-ietf-hostname-harmful-04 as informational RFC will be made after the meeting.

## DMM WG Summary

DMM working group met on Thursday (July 21, 2016 (CEST))

The following documents were discussed:

1. Protocol for Forwarding Policy Configuration (FPC) in DMM (https://tools.ietf.org/html/draft-ietf-dmm-fpc-cpdp-03)

   -   The FPC protocol is used to enable the separation of control plane and data plane function of mobility management.
   -   The editors and other WG members were working on a common data model for FPC protocol this week.
   -   Next step: Update draft to describe the new data model. Add implementation status to the draft.

2. On Demand Mobility Management (https://tools.ietf.org/html/draft-ietf-dmm-ondemand-mobility)

   -   Current status of the draft: on WGLC
   -   07 version is the latest version and resolved all the comments received.
   -   Discussion on DHCPv6/Stateless extension for On Demand Address Exposure. Previous work in MIF/prefix Properties could to be referenced.

3. Distributed Mobility Anchoring (https://tools.ietf.org/html/draft-chan-dmm-distributed-mobility-anchoring)

   -   The draft is updated based comments received.
   -   Call for adoption during the meeting showed consensus on adoption, will confirm on the list.

4. RFC4283bis (https://tools.ietf.org/html/draft-ietf-dmm-4283mnids)

   -   More detailed explanation for each type of Mobile Node ID is added to the new version of the draft.

5. DMM Deployment Models and Architectural Considerations (https://tools.ietf.org/html/draft-wt-dmm-deployment-models-00)

   -   Call for adoption during the meeting showed consensus on adoption, will confirm on the list.

6. Next step of the working group

   -   AD suggested to finish the current milestone work items before starting re-charter related discussion.

## ANIMA

Monday afternoon session, 120 minutes. 41 attendees in the room + 5 remote participants in the room.

-   Signaling design team presented document status, including several open issues that discussed. The document is almost ready, waiting the final checking against all other documents.
-   Bootstrap design team presented document status, including several open issues. The document is almost ready, but requires more reviews.
-   Reference model document presented work status. Progress since last IETF includes, etc. It is remaining for discussion how to handle the out-of-charter contents.
-   Two use cases documents (Prefix management in large-scale network & stable connectivities) are steady, but wait for depended documents to be sent to IESG together.

Thursday afternoon, session 2, 120 minutes. About 29 attendees in the room + 3 remote participants.

-   Autonomic control plane draft presented work status. The document is almost ready, but requires more reviews.
-   Information Distribution over GRASP was presented.
-   Autonomic Functions Coordination was presented with a concreted example.
-   Autonomic network intent concept and format is presented. Just after last meeting, there are a number of active discussions regarding to this topic in the mail list. The WG showed great interests on this topic.
-   Autonomic functions life-cycle and management was presented.
-   GRASP API was presented.

## Lwig

Lwig meets at Friday 12:20 to 13:20, around 60 people in the room. Four topics have been discussed.

- draft-gomez-core-tcp-constrained-node , the authors discussed the implementation part of this document, and the content related to tcp modification should go to tcpm wg. 
- draft-aks-lwig-crypto-sensors-01 , which is about the implementation experiences of public-key cryptography on 8-bit micro-controllers. The talk was well received. The poll of adoption was discussed, with clear support. The WG will confirm it on the list.

-   draft-mglt-lwig-minimal-esp, which is about the implementation guidance of minimal ESP. The talk was well received. Discussion on the MIC recommended more review from security experts.
-   Lwig terminology update discussion, was led by Carsten Bormann. The need to update RFC7228 was quite well understood. Continuing the discussion on the mailing list was the key message.

## HIP

The HIP WG is chartered to revise the main HIP specs, which are Experimental, into Proposed Standards. Consequently, the WG has a few \"bis\" drafts, which revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity. We have also added a new HIP DEX draft to the charter. We intend to close the WG after publishing that draft as RFC.

We are requesting the publication of our drafts in batches so that reviewers have the necessary context when performing their reviews. The first batch included RFC 4843bis, RFC 5201bis, and RFC 5202bis, all of which have already been published as RFCs. The second batch included RFC 5203bis, RFC 5204bis, RFC 5205bis, and RFC 6253bis. We have already requested the publication of the second batch. The editors of the drafts are currently addressing IESG comments. The WG is actively working on preparing the next batch for pub req.


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-08-30. It was migrated from the old Trac wiki on 2022-12-14.*