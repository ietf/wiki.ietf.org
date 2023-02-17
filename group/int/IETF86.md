---
title: WG Summaries for IETF 86
description: 
published: true
date: 2022-12-15T02:25:11.573Z
tags: 
editor: markdown
dateCreated: 2022-12-14T21:48:18.893Z
---

## 6MAN

The 6man working group held a two hour session on the Friday of the IETF in Orlando. The session was well attended with about a hundred participants. It was recorded by Meetecho and the audio/video archives are available.

The ADs have requested that we update the 6MAN charter. While the charter is largely fine, the current milestones have been accomplished and need to be updated. The chairs initiated a discussion about new work items. Several people suggested that the charter include text that the w.g. is chartered to review relevant IPv6 work being done in other working groups to ensure this work is aligned with the IPv6 architecture and core protocols.

The working group reviewed draft-ietf-6man-stable-privacy-addresses to verify that the changes that were needed to resolve the comments in the w.g. last call were OK with the working group. The working group was fine with the changes.

The working group discussed the proposed response to softwire's question on the meaning of the U/G bits. An analysis of the M/O/A bits were presented, showing that implementations behave quite differently depending on their interpretations of these bits in Router Advertisement messages.

There was consensus in the room to adopt the following drafts:

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;draft-carpenter-6man-ext-transmit
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;draft-carpenter-6man-ug
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;draft-boucadair-6man-multicast-addr-arch-update.


This consensus is being verified on the mailing list for these drafts.

## TRILL

The TRILL WG met for about three hours. A proposed Charter revision was discussed and some of the proposed work items need further discussion on the WG mailing list but there seemed to be general approval. Document and milestone status was reviewed. TRILL OAM was the first technical item on the agenda and five volunteers were found to review the WG OAM Framework draft preparatory to a WG Last Call. OAM Fault and Performance management personal drafts were presented and may get moved to WG draft after the Framework draft advances. The WG had previously decided to pursue a Directory Assisted Edge facility for reducing multi-destination traffic and personal drafts providing detailed mechanisms were presented but these drafts need a bit more work before being considered for acceptance as WG drafts. Two presentations were given related to stating the problem to be solved by Active-Active at the Edge, a topic about which there had been specific questions at the previous meeting. A brief TRILL over PWE3 presentation was given that had been given earlier in the day to the PWE3 WG with the result that the PWE3 WG Chairs and the PWE3 Routing AD believe the draft should be in the TRILL WG. Finally, there were presentations on Smart Endnodes that send/receive TRILL Data frames and a proposal for vendor specific RBridge Channel messages.

## SUNSET4

Sunset4 discusses the gap analysis wg document. Questions were raised about how comprehensive it should be and when should it be published. The AD will query additional info from INT directorate and other IESG members and directorates. In parallel, the security section shall be written and then addtional reviewers will be reviewing before going WGLC. The dhcpv6-noipv4 document is on hold, pending a joint dhc-sunset4 meeting in IETF87. An RA method should also be considered. The mcast-address-conversion document is unclear of the right wg home. The cgn-port-allocation does not seem to include specific NAT64 issues, therefore not clear about the right wg home. The ipv4-termination describes experiments of v6only issues and a dns64 filter of A records; both of which are currently not clear what to do.

## MULTIMOB

Four working group drafts draft-ietf-multimob-pmipv6-ropt-03, draft-ietf-multimob-pmipv6-source-03, draft-ietf-multimob-handover-optimization-02 and draft-ietf-multimob-fmipv6-pfmipv6-multicast-01 were presented first. During all four draft presentations several technical comments were made. These discussions will continue on the list and the drafts will be revised soon. The draft draft-ietf-multimob-pmipv6-ropt-03 is ready for WG last call. The drafts draft-ietf-multimob-pmipv6-source-03, and draft-ietf-multimob-handover-optimization-02 are expected to be ready for WG last call after they are revised before IETF 87.

The draft on PMIPv6 Multicast Routing Optimization with PIM-SM was presented. It has been decided that the draft needs to be revised and further discussions are needed before it can be adopted as a WG draft. Another individual submission, draft-contreras-multimob-multiple-upstreams-01 was discussed next. This draft is about MLD proxy running more than one upstream interface while in RFC 6224 which Multimob WG developed, multiple instances of the MLD proxy function are supported one for each upstream tunnel interface that has been established with an LMA.

## LISP

The LISP WG held 1 two-hour session on the Friday of IETF 86. The session was well-attended, and had multiple useful discussions. The new approach in the Threat Analysis document was presented, engendered some discussion in the room, and is being debated on the mailing list.

There was presentation and significant discussion on the pending request for an IPv6 block for LISP EIDs and how that block would be allocated and used. More discussion on the list is needed to determine what path the working group wishes to pursue on this. Particular thanks to David Conrad on the list and John Curran on the list and in the meeting for assistance on this topic.

The remainder of the session was a presentation on and discussion of ways to integrate in network replication to support multicast with LISP. This is an extension of one of the published RFCs from the first round, and needs significant exploration in documents and on the list.

## INTAREA

The intarea working group met in Orlando for a one hour session. The draft defining an updated spec for the IPv4 ID Field (draft-ietf-intarea-ipv4-id-update-07.txt) has now been published as RFC6864. The NAT reveal analysis draft had completed the IETF last call before the meeting. There were some comments that were received during the last call and a new version of the draft has been published to address these comments. The draft describing the use of the IPv6 flow label for server load balancing has been adopted as a working group item.

There was a presentation describing issues with multiple provisioning domains and a preliminary analysis of the causes. The idea of the presentation was to create wider awareness for these issues and to induce further participation in this work that will happen at the mif working group.

There was a presentation of the LISP EID allocation draft with the goal of having a broader discussion on whether the IETF should do something generic about policies and process for allocating experimental address blocks. Further discussion would take place in the lisp working group.

The draft regarding scaling ARP for large data centers had been revised based on comments received at the IETF85 intarea meeting as well as on the mailing list. There were still some questions about how these problems are applicable to ND in IPv6 networks.

There was a presentation about the draft analyzing the use of PCP in mobile networks. It was presented here since some of the issues raised by this draft (e.g. multiple provisioning domains) were not specific to the PCP working group.

## SOFTWIRE

The Softwire Working Group met in Orlando for two sessions of two and a half hours each . The chairs summarized the outcome of the WG since Atlanta meeting, presented the WG document status and the proposed agenda. The 6rd RADIUS attribute draft and the DS-Lite deployment draft were approved by the IESG. The stateless 4over6 motivation draft needed to be revised in response to the IESG Evaluation. The Public 4over6 draft will be progressed to the IESG after the meeting. The unified CPE draft has been adopted as a working group draft. The authors requested adoption of the 6rd MIB draft and this call would be sent out on the list.

In the first session, the DS-Lite MIB and Mesh MIB draft, which are charter milestones, were presented. The WGLC of the Mesh MIB draft would be issued after the chair\'s review of the latest version. Then the unified CPE draft was presented and WG discussed some issues. The open issues with the MAP-E draft were presented, pertaining to discussing tickets in the issue tracker, and the closure of each ticket would be confirmed within one week. The Lightweight 4over6 was presented and the sense of the room was strongly in favor of adopting this draft as wg item. This will be confirmed on the mailing list. The comparison between the contiguous and non-contiguous port algorithms was presented, and further discussion was determined to be taken to the ML. The last presentation was about obtaining IPv4 parameters in IPv6 networks. Futher discussion would take place in the dhc wg.

In the second session, the topic on 4rd IPv6 address format was discussed, and the further discussion would take place in the 6man WG. The updates to the MAP-T draft were then presented and the tickets on the issue tracker were discussed. The MAP deployment draft was presented, and the further discussion on whether to include other solutions into the draft would be put to the ML, and chairs asked more opinions from the WG. The draft about RADIUS extensions for IPv4-Embedded multicast and unicast IPv6 prefixes was presented, and discussions would be taken to the ML. Chairs would also review the drafts for MAP-E MIB and MAP-E RADIUS after the meeting. Two drafts regarding Gateway-Initiated 4over6 and encapsulating IP in UDP were presented as well. Finally, the draft regarding DS-Lite failure detection was presented and the authors requested adoption.

## LWIG

The lwig group met on the morning of Thursday, March 14, 2013. The co-chair summarized the progress of each mile stone. The agenda consisted of document discussion as well as a 30-minutes discussion of the future development of the working group at the end of the session.

The working group document draft-ietf-lwig-terminology was presented. The discussion showed that the document was well organized with useful terminologies. There was discussion about how to handle the power efficiency related terms. If the document was targeted for short term usage and reference, it should avoid endless discussion on respective parts.

Then three documents related to CoAP implementation guidance were presented. draft-arkko-lwig-cellular-00 discussed the experience of implementing CoAP on cellular devices. There were many supports of such types of the document over the Mic. draft-castellani-lwig-coap-separate-responses-00 discussed the experience of implementing CoAP client and server with respect to how to handle separate responses. The main messages in draft-kovatsch-lwig-class1-coap-00 was summarized by the co-chair, which included two parts, i.e., how to make small implementation on class-1 devices and how to make it energy efficient. The discussion of the document relayed to the working group discussion at the end of the session.

draft-keoh-lwig-dtls-iot-01 was then presented, and this draft investigated the feasibility of using DTLS to achieve the required security functionalities. Discussion showed interest and encourage to joint work on this with consideration of 6lowpan general compression and more work on raw public keys.

draft-hex-lwig-energy-efficient-00 talked about the what would be the implications for Internet protocol designers given the lower layer was constrained. Encouragements were received at the meeting and many people would like to review and contribute to this work.

The meeting continued with discussion about the present and future of the working group. The co-chair listed the pros and cons the group had met, and there was suggestion that recognition was very important for authors to contribute (which has been resolved by separate and stand-alone document with recognized authorship). Then discussion regarding how to work in future was well received. Recommendations included how to handle coap related drafts and several security related drafts, how to coordinate the authors. One comment recommended lwig work on 1) CoAP 2) DTLS 3) cellular advice. Offline discussion was happening among the contributors on how to move things forward.

## DHC

The DHC working group met for three hours in two Thursday afternoon slots in Orlando.

As DHC WG co-chair Ted Lemon is now an Int-Area area directory, Bernie Volz is replacing Ted as co-chair. Also, as John Brzozowski is now V6OPS WG co-chair and has limited time, Tomek Mrugalski is replacing John as co-chair.

The chairs presented a summary of the WG activities since the previous IETF meeting:

The following documents had been published as RFCs: 
- draft-ietf-dhc-dhcpv6-redundancy-consider was published as RFC 6853 
- draft-ietf-dhc-client-id was published as RFC 6842

The following documents are in the IESG: 
- draft-ietf-dhc-dhcpv4-bulk-leasequery waiting on draft-ietf-dhc-relay-id-suboption
- draft-ietf-dhc-relay-id-suboption was approved
- draft-ietf-dhc-secure-dhcpv6 under review
- draft-ietf-dhc-dhcpv6-client-link-layer-addr-opt was approved

The following documents passed WG last call: 
- draft-ietf-dhc-failover-requirements-03
- draft-ietf-dhc-dhcpv6-radius-opt-09
- draft-ietf-dhc-triggered-reconfigure-04
- draft-ietf-dhc-dhcpv6-load-balancing-00

And, the following document was adopted by the WG:

- raft-ietf-dhc-dns-pd-00

Bernie reported that the chairs and Int Area ADs met with the Sunset4 WG chair regarding draft-perreault-sunset4-noipv4 and that there is plan to hold a joint dhc-sunset4 meeting at IETF-87 (Berlin).

Ted Lemon reminded everyone about their obligations regarding IPR disclosures and reported on the late IPR disclosures for draft-jiang-dhc-secure-dhcpv6 / draft-ietf-dhc-secure-dhcpv6 and that sanction item d in section 4 of RFC 6701, announcement on the WG mailing list, was followed.

The following presentations were given:

1. DHCP Directorate / WG Recharter - Ted Lemon is proposing that a DHCP directorate be set up to handle option review and assisting other WGs in developing DHCP options. This would also include a recharter of the WG to focus on DHCP protocol advancement and enhancements. There was some discussion about the pros and cons for this. The chairs will work with Ted to develop a proposal for the directorate and recharter. 
2. Obtaining IPv4 configuration over IPv6 networks - Ted Lemon presented an overview of the issues with configuring IPv4 information over IPv6 only networks. 
3. Provisioning IPv4 Configuration over IPv6 Only Networks - Ian Farrer discussed draft-rajtar-dhc-v4configuration and the several proposals for providing IPv4 configuration over IPv6 only networks. 
4. DHCPv6 through Tunnels - Ole Troan described draft-ietf-dhc-dhcpv6-tunnels and some of the issues. It was pointed out that RFC 6276 (DHCPv6 Prefix Delegation for Network Mobility (NEMO)) may already have solved this problem. Ole will review that RFC. The discussion then returned to the general issues of obtaining IPv4 configuration over IPv4 only networks. The consensus was that one solution would be best and that using DHCPv4 over IPv6 was preferred. A small team agreed to develop an updated proposal. 
5. A Generic IPv6 Addresses Registration Solution using DHCPv6 - Suresh Krishnan discussed recent changes to draft-ietf-dhc-addr-registration. 
6. Tracking Static / Auto-Configured IPv6 Addresses - Rajiv Asati discussed draft-asati-dhc-ipv6-autoconfig-address-tracking, where the router would report ND related updates via DHCPv6 messages. The general issues with the registration/tracking is what the motivations for this work were and whether DHCPv6 is the correct protocol. The main motivations were logging (recording) of client address bindings and potentially having the DHCPv6 server perform DNS updates on behalf of the client. 
7. DHCPv6 class based prefix - Sri Gundavelli discussed draft-bhandari-dhc-class-based-prefix. 
8. Multiple Provisioning Domains - Ted Lemon discussed issues related to clients working with multiple collections of configuration information that might be obtained either over different interfaces or the same interface. He also presented this at intarea and mif.

## MIF

AD and chairs have decided to drop mif dhcp route option after long time disputing. WG has decided to take the action of architecture design, so the other two working group drafts have been decided to be held until the architecture work starts.

AD explained the MIF issues and call for volunteers to work on the architecture design document, some positive feedback has been received during the working group meeting.

## NETEXT

The Netext working group did not meet at IETF86 in Orlando. The chairs concluded that there was not a pressing need to schedule a meeting at IETF86 since progress on various issues and documents following the IETF85 meeting has been slow.

The Netext WG has made progress on several documents following the IETF85 meeting in Atlanta. An issue tracker has been created to resolve the issues w.r.t WG I-D: draft-ietf-netext-pmipv6-flowmob.

The IPv4 Traffic Offload Selector Option for Proxy Mobile IPv6 (I-D: draft-ietf-netext-pmipv6-sipto-option-12) is now in the RFC editors queue following the resolution of issues raised by the ADs.

Prefix delegation for PMIP6 (I-D: draft-ietf-netext-pd-pmip-06) will be proceeding to working group last call.

The working group plans to meet at IETF87.

## DMM

The DMM WG had a two hour meeting during IETF#86. We have now two working group I-D as per our effective charter:

- draft-ietf-dmm-requirements
- draft-ietf-dmm-best-practices-gap-analysis

The status of both documents were presented as well as the resolved issues on the requirements document. The requirements document has recently entered (and already completed) the first WGLC. The gap analysis document is encouraged to include also current practises from 3GPP/WiMAX networks since there are operational experience from both networks. There are also concerns on the slow progress of the working group. However, the chartered items need to be in good shape before advancing into solution space, which would then need small rechartering of the WG.

The remaining of the meeting time was spent on individual contributions. See http://tools.ietf.org/wg/dmm/minutes?item=minutes-86-dmm.html for the presentations and minutes. The discussion around DMM Framework was raised again. A framework could be useful to have such if/when rechartering the WG for future solution work.

## HIP

The HIP WG is chartered to finish an old Experimental RFC and to revise the main HIP specs, which are also Experimental, into Proposed Standards.

The old Experimental RFC is the following one: https://datatracker.ietf.org/doc/draft-ietf-hip-reload-instance/

This draft was simply waiting for the RELOAD spec to be approved. Now that that has finally happened, this draft is being progressed. There are no open issues.

The WG also has a few \"bis\" drafts. They revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity.

We are currently WGLCing the first few bis drafts. We intend to request their publication in batches so that reviewers have the necessary context when performing their reviews.

As part of the current WGLCs, we are also discussing the following draft:

http://tools.ietf.org/html/draft-ietf-hip-rfc4843-bis-00

It requests the IANA to allocate an IPv6 prefix for ORCHIDs (e.g., HIP identifiers). We are discussing what type of allocation will be suitable to the new standards-track specs.

## HOMENET

No Report Submitted.

## PCP

No Report Submitted.

## NTP

No Report Submitted.

## TICTOC

No Report Submitted.

&nbsp;
&nbsp;
&nbsp;

---

*The content on this page was last updated on 2013-05-13. It was migrated from the old Trac wiki on 2022-12-14.*