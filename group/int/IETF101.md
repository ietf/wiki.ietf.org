---
title: WG Summaries for IETF 101
description: 
published: true
date: 2022-12-15T04:19:33.723Z
tags: 
editor: markdown
dateCreated: 2022-12-15T04:19:33.723Z
---

INT AREA WIKI Page for IETF 101


## 6MAN

The 6MAN working group met for a 2 hour session on Monday afternoon at IETF101. The session was well attended. The agenda, and slides from 6MAN are available at: https://datatracker.ietf.org/meeting/101/materials.html.

The agenda was organized to give priority to working group drafts, individual drafts with active discussion, and new individual drafts. With the new individual drafts being given 5 minutes and 3 slides each. Among new documents, the draft-fioccola-v6ops-ipv6-alt-mark that requires 1 or 2 bits in the IPv6 header to do passive measurements received the most discussion.

The meeting minutes are available at: <https://tools.ietf.org/wg/6man/minutes?item=minutes-101-6man-00.html>

Summary meeting results:

- draft-ietf-6man-rfc6434-bis has passed WGLC. Chair\'s will advance the document. 
- draft-ietf-6man-segment-routing-header. This document is ready for WGLC.
- draft-herbert-6man-icmp-limits. Consensus to adopt. Will be confirmed on the mailing list.
- draft-hinden-ipv4flag. A hum indicated support for adopting, but there was also a significant minority. The consensus call is taken to the mailing list.



## 6TiSCH

During IETF101, the 6TiSCH WG had one WG meeting session, and 3 side meetings.

The WG meeting covered 9 drafts, including 3 unchartered -00 drafts.

- draft-ietf-6tisch-6top-protocol is in IESG LC. Xavi Vilajosana (author) gives an update about the changes triggered by the detailed reviews. These changes are editorial; we do not expect these changes to derail the IESG LC process. 
- draft-ietf-6tisch-minimal-security is close to WGLC. A comment was made about using FETCH rather than GET in the join request. **Malisa Vucinic** (*editor*) to evaluate the use of FETCH and report to WG. 
- draft-ietf-6tisch-terminology was updated to follow the work of the WG. No action needed. 
- draft-ietf-6tisch-6top-sfx\`: discussion about status and outcome of this document. 
- draft-chang-6tisch-msf is stable and answers a point in the charter. The authors asks for WG adoption. **Chairs** to confirm WG adoption on the ML. 
- draft-duquennoy-6tisch-asf presents new interesting ideas in scheduling function. Discussion about how to integrate with existing work. **Simon Duquennoy** (*editor*) to work with WG to integrate ideas of the draft-duquennoy-6tisch-asf into draft-chang-6tisch-msf (pending bit might be a different document).
- draft-vilajosana-6tisch-globaltime introduces new (unchartered) work on how to give 6TiSCH node knowledge of global time. Discussions about drift, security. Sense from room is that there is interest. **Chairs** to assess consensus on whether there is interest to work this draft, and possibly add to the charter. 
- draft-richardson-6tisch-enrollment-enhanced-beacon and draft-richardson-6tisch-roll-enrollment-priority introduce new work on how a node can select the right network and join proxy to join. Discussion on use cases.

The WG meeting was followed by **3 side meetings**, all held in the code lounge:

- a side meeting to discuss the use case for draft-richardson-6tisch-enrollment-enhanced-beacon. The group identified and agreed on the uses, and Michael Richardson (editor) took the action item to modify the slides to be presented in the ROLL WG meeting, and the draft.
- a side meeting to prepare the 2nd F-Interop 6TiSCH interop event
- a side hackathon around the OpenWSN reference open-source implementation of the 6TiSCH stack.

Some **"running code"** announcements were made during the 6TiSCH WG meeting:

- 6TiSCH Simulator, release 1.0.0 (https://bitbucket.org/6tisch/simulator/). Can be used to assess the performance of a 6TiSCH network. 
- OpenWSN, release 1.12.0 (http://[www.openwsn.org/](www.openwsn.org/)). Reference open-source 6TiSCH stack implementation. \"Golden device\" firmware for interop events.
- Wireshark, dissectors for all major protocols contributed to main Wireshark repository.

**2nd F-Interop 6TiSCH Interoperability Event**  will be help 26-27 June 2018, in Paris, organized by ETSI, LIST and Inria.


## DHC

The Dynamic Host Configuration Working Group met on Monday, March 19, 2018, 17:40-18:40 (a 1 hour session).

The chairs provided a Working Group status update and agenda bashing.

Linhui Sun presented an update on DHCPv4 over DHCPv6 Source Address Option, draft-ietf-dhc-dhcp4o6-saddr-opt, covering recent updates and asked the WG if a new title (the coauthors suggest "Dynamic Softwire Provisioning using DHCPv4 over DHCPv6"). Bernie Volz suggested that the new title proposal be sent to the WG mailing list for discussion.

Zihao He then presented on the YANG Data Model for DHCPv6 Configuration, draft-ietf-dhc-dhcpv6-yang. Recent changes and several open issues were discussed. Tomek Mrugalski also raised some new issues (added to the issues tracker) found while working on a prototype implementation for the ISC Kea server.

Tomek Mrugalski then presented on Link Layer Addresses Assignment Mechanism for DHCPv6, draft-bvtm-dhc-mac-assign, a new draft that he and Bernie Volz coauthored to potentially be a protocol for assigning link-layer (MAC) addresses to hypervisors and clients. There seemed to be some interest in having the WG pursue this work, with support from the AD (Suresh). It will be taken up further on the mailing list.



## DNSSD

With the Stateful DNS Operations draft passing WGLC in the DNSOP WG, the DNS Push draft which depends on it (draft-ietf-dnssd-push-14), and in turn the DNSSD Discovery Proxy draft (draft-ietf-dnssd-hybrid-08) can now be advanced, subject to IETF LC and IESG review. This is a major milestone for key elements of the DNSSD WG\'s charter. Some implementations are also progressing; Stuart Cheshire and Ted Lemon hope to present one such implementation at the IETF 102 hackathon.

The WG agreed to adopt the DNSSD Roadmap draft (draft-cheshire-dnssd-roadmap-01) as a WG item, subject to agreement on the list. The draft is a good summary of the WG drafts and direction of travel of the WG, and now also includes a nice example of how DNSSD enables the discovery of the IETF terminal room printer.

The DNSSD Discovery Relay draft (draft-sctl-dnssd-mdns-relay-04) was adopted by the WG subject to confirmation on the list. This draft describes a mechanism not too dissimilar from a DHCP relay that allows more advanced functions to be implemented on a central proxy, while \'dumb\' relays sit between the main proxy and the client systems.

A discussion on the homenet WG draft on the Simple Homenet Naming and Discovery Architecture (draft-ietf-homenet-simple-naming-01) raised the issue of future DNSSD WG work shifting towards unicast rather than multicast operation, e.g., with a unicast service registration protocol (draft-sctl-service-registration-00), while retaining backwards compatibility with existing protocols. The meeting agreed to review the WG charter to include this topic as being explicitly in scope for the WG.

Kerry Lynn presented the current status of DNSSD and CoRE/COAP RD interoperability, with a potential mapping mechanism between the two formats (draft-ietf-core-rd-dns-sd-01). A CoRE RD interop event is being planned for April 2018, and it was agreed that interested DNSSD WG members should seek to attend the event.

The bulk of the session time was then given over to a discussion on privacy requirements for DNSSD. Some work already done by Christian Huitema and Daniel Kaiser is quite advanced, but the WG wanted to take stock of the appropriateness of that work in the context of the bigger picture, and to review the scope and resulting work items that the WG should progress, and include in its charter update. The WG agreed to condense three existing texts on the privacy requirements and scoping (Section 2 of draft-ietf-dnssd-privacy-03, draft-cheshire-dnssd-privacy-considerations-01, and draft-huitema-dnssd-privacyscaling-00) to a single document, and a number of people volunteered to work on that document.




## DPRIVE

The DPRIVE WG has completed its current set of drafts. The last draft draft-ietf-dprive-padding-policy is currently in IETF Last Call.

The WG has begun discussions on re-chartering and that discussion will continue on the mailing list to determine the appropriate set of work items.

The WG chairs will be engaging with the IRTF\'s MAPRG group to determine ways to begin measurements on the uptake of the solutions developed within the WG.



## Intarea

The Internet Area Working Group met on Monday, March 19 for 1.5 hours.

We had an update on the last version of "Discovering Provisioning Domain Names and Data" proposal (draft-ietf-intarea-provisioning-domains-01) with special focus on the updated security considerations section. The chairs have requested a review from the security area directorate.

Tom Herbert gave a quick update on "Generic UDP Encapsulation and Extensions" (draft-ietf-intarea-gue-05 and draft-ietf-intarea-gue-extensions-03). It was suggested to ask for feedback from TSV on (why) having 3 CRC formats. Tom also presented "Identifier-Locator Addressing for IPv6 (ILA)" proposal (draft-herbert-intarea-ila-00) as a heads-up for the BoF, followed by the "Privacy and Network Address Assignment" (draft-herbert-ipv6-prefix-address-privacy-00)

Ron Bonica presented a new draft on "IP Fragmentation Considered Fragile" (draft-bonica-intarea-frag-fragile-01). It was requested to ensure the proposal is aligned with the Intarea tunneling draft.

Vladimir Oltenau have a quick n update on SOCKS v6 (draft-olteanu-intarea-socks-6-02).

David O'reilly presented "Availability of Information in Criminal Investigations Involving Large Scale IP Address Sharing Technologies" (draft-davao-cgn-logging-02). Instead of publishing independent draft, it was suggested to update RFC 6302 ("Logging Recommendations for Internet-Facing Servers").



## IPWAVE

The IPWAVE working group met for a 2.5 hora session on Monday morning at IETF101. The agenda, slides and draft minutes are available at <https://datatracker.ietf.org/meeting/101/materials.html.>

The main priority of the meeting was to close some pending issues on the "Transmission of IPv6 Packets over IEEE 802.11 Networks in mode Outside the Context of a Basic Service Set" document, which is now to be sent to 6man for review before requesting publication to the IESG.

There was also discussion on the second document of the WG, "IP-based Vehicular Networking: Use Cases, Survey and Problem Statement", which needs to be restructured to really focus on the problem statement part, and less on the survey one.

This last document should drive the re-chartering discussion, which was bootstrapped at this meeting and that will follow up on the mailing list.



## LPWAN

The LPWAN Working Group met on Wednesday 21st for 2.5 hours and followed its agenda as scheduled with no particular issue.

- Chairs gave a status of the LPWAN overview. The document is in RFC editor queue. It is a fine product of the WG and was acclaimed repeatedly.

- Dominique Barthel presented the work at the hackathon, porting a python implementation of the SCHC fragmentation by Shoichi Sakane on micro python.

- Shepherd Dominique Barthel and editor Ana Minaburo presented the WGLC issues raised against draft-ietf-lpwan-ipv6-static-context-hc. No critical issues, but a number of small decisions to be made by the WG. The topics were presented one by one and discussed well over an hour. Considering the quality of the presentation and the discussion, the chairs decided to reduce the time given to the rechartering discussion and extend this slot. The discussion will be concluded on the ML but a good amount of feedback was already given that will help the editors move forward.

- Interest on SCHC over Foo expressed at IETF 100 has materialized in 3 drafts, for foo = LoRa, SigFox and NB IOT. Respective drafts draft-petrov-lpwan-ipv6-schc-over-lorawan, draft-zuniga-lpwan-schc-over-sigfox, and draft-minaburo-lpwan-nbiot-hc were presented. The major bone of contention that we can foresee for those draft is the compression of the UDP checksum. The precedent of RFC 6282 was raised. AD Suresh Krishnan indicated that the message with the checksum elided could not easily go beyond the hop where a stronger MIC provides a good enough guarantee to live without a UDP checksum..

- During the discussion on ICMPv6, it was observed that the academic work on compressing ICMP in general yields little benefit. The authors suggested to focus of ICMP messages defined in RFC 4443, which described ICMP error and Ping.

- The shortened discussion on the new charter - to be proposed once the SCHC IP UDP work is complete -, introduced only one new topic, centered on OAM and leveraging the work on ICMP Ping compression. The other items are really a split of the remainder of item two (SCHC) of the current charter once the IP / UDP doc has shipped.



## LWIG

The Light-Weight Implementation Guidance (LWIG) Working Group met on Wednesday 21st for 1.5 hours and followed its agenda as scheduled with no particular issue.

- Chairs gave a status update on the working group documents.

  -   draft-ietf-lwig-crypto-sensors-06 (describes experiences from light-weight crypto on small devices) cleared IESG last call and is in RFC queue.
  -   draft-ietf-lwig-energy-efficient-08 (describes link-layer techniques available for small devices) cleared IESG last call and is now in the RFC queue.
  -   draft-ietf-lwig-cellular-06 (describes how to build sensors and other devices that employ cellular networks as a communications medium) has been in RFC editor queue for a while because of MISSREF. The document has a small issue to be fixed in the AUTH48 and has a new shepherd now (previous shepherd no longer active).

- draft-ietf-lwig-tcp-constrained-node-networks-02 (describes how to implement light-weight TCP on small devices) is a working group document. Carlos presented the draft which had several updates. Authors are currently collecting data and best practices from different open source OS that implement TCP for small devices.

- draft-ietf-lwig-nbr-mgmt-policy-01 (describes a neighbor management policy for RPL based 6LoWPAN networks) is a working group document. Rahul presented the draft with some small updates to the security considerations. Authors already have a proprietary implementation and are working to also have an open source implementation with the Contiki OS.

- draft-bormann-lwig-6lowpan-virtual-reassembly-00 (describes how to correctly implement re-assembly in 6LowPAN networks) was presented by Carsten. The document is a result of the fragmentation design team formed in the 6lo working group. The document is closely associated with 6lo document draft-watteyne-6lo-minimal-fragment-01 and these documents might have a joint last call.

- draft-mattsson-lwig-security-protocol-comparison-01 (provides a comparison of different methods available to secure CoAP) was presented by Francesca. There was consensus in the WG to adopt this document. A call for adoption will be sent out on the mailing list to confirm.

- draft-struik-lwig-curve-representations-00 (provides guidelines for developers implementing standard ECC curves NIST P-256 and EdDSA25519 and x25519 on small devices). Rene remotely presented this draft in the WG for the first time. The WG found this topic very interesting and but agreed that more work is needed. AD also recommended that the draft needs to clearly indicate what is it asking from developers.

All in all, a successful and productive meeting. Thanks to Suresh for guiding us. We continue in Montreal.



## HIP WG

The HIP WG is chartered to revise the main HIP specs, which are Experimental, into Proposed Standards. Consequently, the WG has a few \"bis\" drafts, which revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity. We have also added a new HIP DEX draft to the charter. We intend to close the WG after publishing that draft as RFC.

We are requesting the publication of our drafts in batches so that reviewers have the necessary context when performing their reviews. The first batch included RFC 4843bis, RFC 5201bis, and RFC 5202bis. The second batch included RFC 5203bis, RFC 5204bis, RFC 5205bis, and RFC 6253bis. The third batch included RFC 5206bis (only mobility), and the related multihoming spec. The documents in all these batches have already been published as RFCs.

At this point, the WG is actively working on its last batch. The only documents the WG needs to publish before concluding its charter are the native NAT traversal spec, RFC 4423bis, and HIP DEX. These three documents are currently under IESG evaluation.


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2018-04-19. It was migrated from the old Trac wiki on 2022-12-14.*