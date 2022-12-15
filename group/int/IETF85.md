---
title: WG Summaries for IETF 85
description: 
published: true
date: 2022-12-15T02:19:42.335Z
tags: 
editor: markdown
dateCreated: 2022-12-14T21:06:48.348Z
---

## SUNSET4

A new version of the charter was presented. The main change is that CGN-NAT44 is out of scope. No one opposed to the new charter. Next step is IESG review. Gap analysis is progressing, but requires more reviews. Multiple provisioning methods to signal the non-availability or the depreference of IPv4 has been presented. No consensus yet on which approach. CGN MIB and Stateless NAT44 were presented but would not be in scope if the new charter is in force.

## TRILL

TRILL met Tuesday morning. Initial Administrivia included a call for comments on the proposed Milestone updates that have been posted to the mailing list and a re-iteration of the call for suggests for Charter change that has been posted to the mailing list. Several people volunteered to work on the existing Charter item to do a TRILL implementation report. On the main presentations and discussion, the first topic was TRILL OAM, including interactions with individuals participating in IEEE 802.1 since the current direction is to leverage 802.1ag as far as practical. There was no objection to moving draft-salam-trill-oam-framework-03.txt to be a WG draft. Considerably longer time was spent on OAM than on any other topic. draft-ietf-trill-fine-labeling-02.txt was presented, there was rough consensus in the room in favor, and a WG Last Call was started on it. There was a presentation on Directory Assisted Edge to reduce some types of multi-destination traffic. Finally, there were four additional presentations of personal drafts for WG consideration and in all four cases there appeared to be relatively few people in the room who had read the drafts so further discussion was referred to the mailing list.

## LISP

LISP is chartered to work on proposals are that are based on the \"locator/identifier separation\". All published protocol documents from this workgroup are chartered to be Experimental.

LISP met in Atlanta for 2 hours. The Chairs presented the current status of the 7 drafts which reside in cluster 62 of the RFC-editor queue and the reason for their lack of movement in the RFC editor queue. Also reviewed was the current status of 2 documents progressing toward the IESG.

This LISP WG meeting was dedicated to ONLY current WG items, this is so a clear message is sent wherein the LISP WG must satisfy the charter deliverables as a priority. Thus no new work items were discussed. Effort was specifically directed at the two high priority documents LISP-Introduction and LISP-Architecture.

The authors of two documents, draft-ietf-lisp-threats and draft-ietf-lisp-deployment, requested Working Group Last Call.

The Chairs noted that the room was quite empty, possibly due to competition with l2vpn, yet the discussion was vibrant and good progress was made.

## HOMENET

Homenet met for a 2.5 hour session at IETF 85 with approximately 180 attendees. Tim Chown presented an update on the Homenet Architecture document, and various other drafts relating to our five core areas were presented. Those drafts were generally aligned with the Architecture document, with one notable exception.

We had hoped for the Architecture document to be ready for WGLC by this meeting, but consensus on the Naming and Service Discovery section was harder to achieve then expected. The primary area of contention relates to name spaces, and how (or whether) names should be published in a consistent manner in DNS-SD type systems, internal unicast DNS, and external global DNS. That said, the -06 revision is much improved following IETF 84 and subsequent list discussion, and the discussions from the MDNSEXT BoF will help refine our architectural requirements and hopefully align such that they are a full subset of theirs. The other sections of the document are considered quite stable.

WG participants have produced three independent implementations of protocol extensions for automatic configuration, prefix assignment, and multi-prefix based multihoming using OSPF. Two implementations were represented by individuals at the WG and are close to being interoperable. Whilst the WG is not yet at a stage where we will recommend any specific protocol, the work has shown that many of the features described in the Architecture Document are actually feasible.

## DMM

DMM WG had full 2.5h meeting on Thursday morning in IETF85. The meeting time was divided into three topic:

1. existing WG items: the requirements document. 
2. to-be WG items: current practices and the gap analysis. 
3. other DMM related documents.

The requirements document is in schedule. Multicast requirements are a new topic to be added into the requirements document. This was guidance from AD to move the DMM related work from Multimob WG to the DMM WG and also make sure that both unicast and multicast aspects get addressed in DMM from the beginning. Text contributions are requested immediately after the IETF week. The intention is to get the requirements document into the WGLC during 2012.

We have several current practices and gap analysis candidates. We have had vivid discussion what needs to go into the to-be WG document. Chairs have communicated that the current practices should be based on real deployment and operations experiences. The selection of the document as a basis for the WG item will be done in the mailing list during November 2012. We are already two months late with this milestone.

## NETEXT

The Netext WG met at IETF85 on Monday November 5th from 1520-1720 PM. The meeting was chaired by Basavaraj Patil. Rajeev Koodli was unable to attend this meeting because of his travel to Europe for another critical business meeting.

The WG has made progress in the last 3 months and has published two RFCs (6705 and 6757). The I-D: draft-ietf-netext-pmipv6-sipto-option is now awaiting IESG approval. Additionally the I-D: draft-ietf-netext-rfc5149bis has completed WG last call and will be sent to the IESG shortly.

The working group I-D which specifies the logical interface was discussed at the meeting. There is still more work that needs to be done on this document. There is a fundamental difference of opinion on what this document really needs to capture and specify especially given that it is an informational specification. Authors and chairs will work on this and attempt to make progress.

The flow mobility specification I-D (draft-ietf-netext-pmipv6-flowmob) has been revised by Carlos Bernardos (Editor). However there are still some concerns by a WG member. We will setup an issue tracker for this I-D and resolve the issues through reviews and WG consensus.

The prefix delegation I-D (draft-ietf-netext-pd-pmip) is ready for submission and it will go to WG last call after the meeting.

The QoS for PMIP6 I-D (draft-ietf-netext-pmip6-qos) also needs further reviews and updates. There are a lot of open questions and issues with this I-D at the moment. The authors mentioned that this I-D is also relevant to 3GPP specifications. Chairs think that more clarity is needed in terms of how QoS signaling is done with PMIP6 messages.

Several new proposals were also put forth for consideration before the WG. The I-D draft-krishnan-netext-update-notifications proposes a method by which the LMA can send unsolicited messages to the MAG to change the status of a session or do other administrative things. This I-D is also needed by 3GPP and the 3GPP liason (Atle) has sent a request to the AD and the WG chairs. There is consensus in the WG to adopt this I-D. Chairs will do a consensus call on the mailing list and then move forward. A response to Atle (3GPP liason) will be proposed to Brian (AD) by the chairs.

Other proposals including the applicability of QoS in a WiFi environment as well as Mobile MAG were discussed. Many of these are preliminary and will need more discussion and convincing on the mailing list before they can be considered.

At the present time the working group is making good progress and there are no major concerns.

## LWIG

The lwig session consists of two parts. The first part was the industry update. An invited talk about constrained network management (draft-ersue-constrained-mgmt) was presented. This work uses and proposed terminologies in the Lwig working group, and refers to the draft-ietf-lwig-guidance document. Focus discussion would take place in the opsawg in IETF. Zigbee IP Update presentation was shared with the audience, which summarized the experience and usage of IETF protocols. Future plans include a summary document around the topic.

The second part of the meeting was the document discussion. The working group document draft-ietf-lwig-guidance update was presented. Considering the immaturity and slow progress of this \"big document\", the editor asked to separate the terminology part into an individual document and shepherd it right now. The message will be confirmed on the list. Followed was a presentation on Implementing CoAP on Class-1 Device (draft-kovatsch-lwig-class1-coap-00). The presentation first talked about a number of technologies to make the CoAP as small as possible, and then talked a little bit about how to make the stack energy efficient. The work alike was highly encouraged, and many people show interest in this direction. Then a talk on draft-tschofenig-lwig-tls-minimal-01 was given. The talk summarized a lot of aspects of security implementation optimization, and would like to discuss with the implementers on existing experience. Discussion was expected to take place on the mailing list afterwards. Finally a presentation about the \"energy efficient sensor stack design draft-cao-lwig-syn-layer-00 was given, and followed by discussion about the possibility of standardization of such technologies. None actions taken at the meeting about this document.

## 6MAN

The 6man working group met for one session Monday morning. IESG had issues with draft-ietf-6man-udpchecksums and draft-ietf-6man-udpzero. There was general agreement on the proposed changed. Once new versions of the drafts are available, the chairs will start another working group last call with a concurrent IETF last call.

The IESG also had issues with draft-ietf-6man-uri-zoneid (Representing IPv6 Zone Identifiers in Uniform Resource Identifiers). The document was also reviewed in the Apps area open meeting, resulting in a few proposed changes. Once a new draft is available, an IETF last call will be started.

There was discussion on draft-carpenter-6man-ext-transmit (Transmission of IPv6 Extension Headers) that proposes to create an IANA registry for extension headers. There has been significant discussion in the v6ops working group about the difficulty that IPv6 extension headers create for "middleboxes".

There is also efforts in working groups that duplicate mechanisms already defined in IPv6. In particular the chairs want to point out the never ending conflict between DHCP and ND. Where there are proposals to do prefix delegation in ND, and there are proposals to do Router Discovery and Prefix Discovery in DHCP (mix).

## HIP

The HIP WG is chartered to finish an old Experimental RFC and to revise the main HIP specs, which are also Experimental, into Proposed Standards.

The old Experimental RFC is the following one: draft-ietf-hip-reload-instance

This draft is simply waiting for the RELOAD spec to be published (there are still a number of discusses on it; a new editor is working on them). As soon as that happens, this draft will be progressed. There are no open issues.

The WG also has a few \"bis\" drafts. They revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity.

We are currently WGLCing the first two bis drafts. We expect to be able to WGLC the rest of the bis drafts shortly as well.

As part of the current WGLCs, we are also discussing the following draft: draft-ietf-hip-rfc4843-bis-00

It requests the IANA to allocate an IPv6 prefix for ORCHIDs (e.g., HIP identifiers). We are discussing what type of allocation will be suitable to the new standards-track specs.

## MULTIMOB

Three working group drafts draft-ietf-multimob-pmipv6-ropt-01, draft-ietf-multimob-pmipv6-source-02, and draft-ietf-multimob-fast-handover-03 were presented first. During all three draft presentations several technical comments were made. These discussions will continue on the list and the drafts will be revised soon. Two delegates have volunteered to review draft-ietf-multimob-pmipv6-ropt-01. The need to document requirements and discussions with operators in the respective documents has been pointed out. Such a practive is very helpful for IESG reviews.

Among the future work items, the draft on the extension of the MLD proxy functionality to support multiple upstream interfaces, draft-contreras-multimob-multiple-upstreams-00 was discussed first. This draft is about MLD proxy running more than one upstream interface while in RFC 6224 which Multimob WG developed, multiple instances of the MLD proxy function are supported one for each upstream tunnel interface that has been established with an LMA. Next discussed was the draft on Multicast Routing Optimization by PIM-SM with PMIPv6, draft-asaeda-multimob-pmip6-extension-11. In this draft, both MAG and LMA act as PIM-SM routers with no protocol extensions required. The last draft presented was on IP Multicast Use Case Analysis for PMIPv6 based Distributed Mobility Management, draft-sfigueiredo-multimob-use-case-dmm-03.txt. It was suggested to extract multicast requirements on DMM from this draft and suggest it to the DMM WG.

Lastly, two additional drafts on fast handover (draft-schmidt-multimob-fmipv6-pfmipv6-multicast-06, draft-hui-multimob-fast-handover-04) were discussed. Regarding the interpretation of the WG consensus from WG adoption calls in September 2012, Brian will look at this and send an email to the mailing list.

At the present time the working group is making good progress and there are no major concerns.

## MIF

MIF WG had full 2h meeting on Friday morning in IETF85. The meeting time was divided into three topics: 1. existing WG items: MIF-DNS, MIF-API, MIF-Happy-Eyeball 2. disputing WG item: MIF-DHCP-ROUTE-OPTION 3. New proposals People has proposed to discusss about haveing MIF-Happy-Eyeball to support dual DNS resolveing. MIF API document will check the valid proposals from new submission MIF-CM document before WG LC, new proposal MIF-CM has received 3 comments, 1st is about alignment with the architecture of MIF API, 2nd is split with 802.21 document, 3rd is clarify the issue with today\'s connection manager. For long term disputing draft MIF-DHCP-ROUTE-OPTION, AD has stated in ML that that document has been accepted as a mif WG work item, it\'s appropriate for the mif WG to continue the development of the document. WG has no concensus to remove this work from the charter. Based on the issue tracker discussion, the scenario section has been removed and requested to rewrite, couple of other issues has been resolved based on the working group concensus, and some other new issues have been raised again in issue trackers.

New proposal draft-reddy-mif-dhcpv6-precedence-ops has been requested to split into 2 documents and rewrite the scenario section to show two administrative domain. draft-deng-mif-api-session-continuity-guide has been asked the relationship with Happy-Eyeball and wait for rechartering. draft-mglt-mif-security-requirements received no comments further.

## INTAREA

The intarea working group met in Atlanta for a two hour session. The revised draft defining an updated spec for the IPv4 ID Field (draft-ietf-intarea-ipv4-id-update-06.txt) was evaluated by the IESG but still has a COMMENT that could easily be resolved by some minor text additions. The author was not in Atlanta but has promised to make this change soon. All the earlier DISCUSS positions on the previous revision (-05) have been resolved. The NAT reveal analysis draft has completed a second WGLC before the meeting. The draft will be progressed from the WG after the meeting.

There was a presentation about a draft that describes a mechanism for adaptation layers to expose the presence of adaptation layer fragmentation and provide preferred packet sizes. A few participants expressed doubts about the need and the usefulness of such a mechanism and the discussions will continue on the mailing list.

There was a draft about using CGAs for TSIGs in DNS that was presented at the meeting. It was unclear what was the benefit of using CGAs, while just conveying the public key opportunistically would have provided similar benefits. The discussion will continue on the mailing list.

There was a draft about load balancing that was not presented at the meeting due to lack of comments. I had asked a participant one of the load balancer vendors (F5) to take a look and comment and she promised to send the comments to the list after the meeting. Based on the comments, the decision on how to proceed with this draft can probably be taken.

There was a presentation regarding a new address resolution architecture for data centers. It is unclear if this work is in scope for intarea as it seems to be strongly connected to ARP (IPv4). The authors believe that this work is relevant to IPv6 ND as well (I am not convinced) and further discussion regarding this will take place on the mailing list. If there is relevant work to be done for IPv6, we would like to talk to the INT ADs to take up this work. If not, I think the draft better belongs in sunset4.

There was a presentation regarding a draft discussing security in software defined networks. This was just for information, and there are no further expected actions in the working group.

## SOFTWIRE

The softwire working group had a two-session meeting in Atlanta, one for two hours and the other for one and a half hours. The chairs summarized the outcome of the working group since Vancouver meeting, presented the document status and the proposed agenda. The stateless 4over6 motivation draft and the dslite deployment draft have been submitted to IESG and received DISCUSSes. There will be new versions of the two drafts to address the IESG comments. A new version of the public 4over6 draft was available, and the draft will go through another WGLC before being submitted to the IESG.

The first session mainly focused on the stateless solutions. The WG discussed in detail the technical issues in MAP-E mechanism and the comments would be raised in the Issue Tracker. Some issues about MAP-E MIB draft were raised and discussed. The authors will investigate it and make some changes accordingly. Authors of other stateless solutions i.e. MAP-T and 4RD, presented their views on the solution space as well. In this session, implementations and interop reports of stateless solutions were also presented and discussed.

In the second session, the WG discussed the charted MIB drafts, per-subscriber solution and multicast solutions, etc. The softwire mesh MIB was presented and requested a WGLC. Chairs will thoroughly review the draft and get back to the authors before issuing the WGLC. There was a heated discussion about the per-subscriber solution -- Lightweight 4over6, and its relationship with MAP-E. The chairs asked two sides to have a meeting to determine the way to go. After that, the draft of Deterministic Architecture for Lightweight 4over6 and interop test report of Lightweight 4over6 were presented. The ce-non-pd draft was presented and WG decided to take this to mailing list. The authors of dslite multicast reported the changes since last version and the WG considered it ready for next step.

## DHC

The DHC working group met for two and a half hours on the Thursday morning slot in Atlanta.

Since the previous meeting, no new documents had been published as RFCs. Three documents were waiting document writeup:

-   draft-ietf-dhc-relay-id
-   draft-ietf-dhc-secure-dhcpv6
-   draft-ietf-dhc-client-link-layer-addr-opt

Two documents were in the IESG:

-   draft-ietf-dhc-redundancy-consider
-   draft-ietf-dhc-dhcpv4-bulk-leasequery

Presentations were given for:

-   DHCP Options for 3GPP service (passed to 6man for eval)
-   Failover Requirements (authors believe document is complete)
-   Failover Design (largely complete, would like new reviewers)
-   Option guidelines (ready for WGLC)
-   Address registration (this turned out to be fairly controversial, with several participants wondering if client address registration is even useful. The discussion was productive, and one recommendation that came from it was that the authors should write a motivational document to explain why this functionality is needed.)
-   Configuring CGA using DHCPv6 (this was controversial; some participants did not see the need for it. Decision was made to discuss further on mailing list.)
-   Prefix Assignment in DHCPv6 (question was raised whether this is wanted; Ole Troan agreed to raise it in the 6man working group).
-   DHCP Option for Port Set Assignment (this was discussed extensively; the main points of contention are whether to do port set obfuscation and whether to do this in DHCPv4 or DHCPv6. Suresh, Ole, Ted and Alain agreed to do an analysis document).

## NTP

## TICTOC

## PCP
&nbsp;
&nbsp;
&nbsp;

---

*The content on this page was last updated on 2013-03-11. It was migrated from the old Trac wiki on 2022-12-14.*