---
title: WG Summaries for IETF 95
description: 
published: true
date: 2022-12-15T03:30:17.067Z
tags: 
editor: markdown
dateCreated: 2022-12-15T03:30:17.067Z
---


## 6TiSCH

The 6TiSCH WG met on Monday 2pm local time for a 90 minutes slot. The meeting met its expected duration and all agenda items were covered.

- An additional agenda item was added, for Tero Kivinen to describe draft-kivinen-802-15-ie, which is a document of a cross-WG interest and which should be published as AD sponsored. This item was presented first at the 6TiSCH WG meeting to allow Tero to manage a collision in his agenda. 6TiSCH is definitely interested in getting the draft through, and plans to use it for the 6top protocol.

-  the new charter and associated tasks were presented by the chairs. The remaining presentations (except the very last one) are all related to chartered items

- A Status of draft-wang-6tisch-6top-protocol was given. The draft addresses a charter item. The draft is more mature than the name-xx suggests because it was renamed. A call for adoption was done and yielded positive reaction, to be confirmed on the ML.

- A Status of draft-dujovne-6tisch-6top-sf0 was given. The draft also addresses a charter item. The draft is also more mature than the name-xx suggests, but the work has evolved more considerably and is not yet stable. A call for adoption was done and also yielded positive reaction, to be confirmed on the ML.

- Michael Richardson presented a position slideware depicting the relative goals of ANIMA, NETCONF and 6TiSCH in the provisioning and bootstrapping of devices. There are common element and a good possibility to reuse/share work, yet the objectives and assumptions clearly differ. 6TiSCH is now rebooting the join process work.

- Time permitting, we had a presentation of new work on a reactive version of RPL draft-satish-6tisch-aodv-rpl. The remote speaker being inaudible, a coauthor in the room presented. The author asked for WG adoption. The chairs indicated that though 6TiSCH could certainly be interested in using the work, ROLL at the routing area would be the place for adoption. Ines Robles came to the mic and confirmed.

The full minutes, the detailed action items and the presented slides are published in the IETF material manager. The meeting was recorded through Meetecho, recording (audio+video) is available.

## DPRIVE

DPRIVE met Wednesday morning for an hour. The feeling is the working group on track and proceeding.

- draft-ietf-dprive-dnsodtls presented their update and the draft is WGLC with some updates.

- draft-ietf-dprive-dtls-and-tls-profiles was presented and there was some strong discussion. It sounds like there will be another revision of this draft based on comments during the meeting and on the list.

- There was a TLS 1.3 update and dkg presented a conversation about the 0-RTT security aspects of TLS1.3. There are some subtle differences:

1. Can\'t do client authentication. 
2. Forward secrecy guarantees are different and less. 
3. No replay detection. 
4. Client privacy (sessions can be tracked across the network).

- Future research in this area needs to be done to address the ability to replay queries.

## DHC

The DHC WG meet on Thursday from 1400-1600 (though we finished early, at 1530).

The following presentations were given with brief summary details (see the meeting minutes for more complete details).

1. Manufacturer Usage Description Option (draft-lear-mud-framework and draft-lear-ietf-dhc-mud-option) was presented by Eliot Lear. There was some discussion to clarify the usage for these options (client to server, with server echoing to client) as these are not typically \"other configuration\" options. Also, there was a discussion as to where in the IETF this work should be done. AD (Suresh) to follow up.

2. Secure DHCPv6 (draft-ietf-dhc-sedhcpv6) and Secure DHCPv6 Deployment Considerations (draft-li-dhc-secure-dhcpv6-deployment) was presented by Ted Lemon for Lishan Li and co-authors. Some additional work is needed on the draft as perhaps too much (signature option) was removed? Also, there was a question as to whether the Deployment Considerations draft was needed (merge with other draft) or needs to be further expanded to be more of a deployment guide and perhaps moved to OPSEC?

3. DHCPv6 Failover Update (draft-ietf-dhc-dhcpv6-failover-protocol) was presented by Bernie Volz for Kim Kinnear. Document should be ready for WGLC, but needs careful technical review. No volunteers stepped forward to review the document.

4. DHCPv6 Prefix Length Hint Issues (draft-ietf-dhc-dhcpv6-prefix-length-hint-issue) was presented by Bernie Volz for Tianxiang Li. The authors believe work is ready for WGLC. There was some discussion as to whether it should stay Informational or return to Standards Track.

5. DHCP Relay / Server Communication and Pervasive Monitoring (no draft) was presented by Bernie Volz. This was initiated because of an IESG Discuss on draft-ietf-dhc-access-network-identifier that relay to relay/server communication is not \"secured\" against pervasive monitoring. This needs to be taken to the list to determine whether the WG believes there is a problem here.

6. DHCPv6bis update (draft-ietf-dhc-rfc3315bis) was presented by Tomek Mrugalski for authors. The plan is to submit an 05 draft in May and initiate WGLC. Volunteers were found to review the document during WGLC.

7. Forcerenew Reconfiguration Extensions for DHCPv4 (draft-fang-dhc-dhcpv4-forcerenew-extensions) was presented by Luyuan Fang. While the document got a good reception, it isn\'t clear if there is sufficient interest to adopt this work; will be taken to list.

## DMM

DMM working group meet on Monday from 10:00-12:30. The following drafts were discussed: 
1. DMM architectural considerations&deployment models was presented by Sri. This document discuss the DMM architectural and deployment models. In this model, the DMM functions could be located in various physical entities. 
2. draft-ietf-dmm-fpc-cpdp update was presented by Marco. Two different models were discussed. Whether to form a single model was discussed and need further study by the group. 
3. Evolving FPCP was presented by Satory. This presentation proposal to have a single model. 
4. draft-ietf-dmm-ondemand-mobility-01 was presented by Danny. This is an updated version of the on-demand mobility working group document. 
5. draft-moses-dmm-dhcp-ondemand-mobility-02 was presented by Danny. This is the dhcp extension solution based on the on-demand mobility proposal. 
6. DMM enhanced anchoring was presented by Anthony. This draft discuss the mobility anchoring enhancement for DMM solution. Chairs suggested the authors should work together with DMM architecture document to make a consistent solution. 
7. 3GPP and 5G summary was presented by Jouni. This presentation gives a summary of the 3GPP 5G activities that related to DMM. 
8. Distributed Mobility Management Protocol for WiFi Users in Fixed Network was presented by Behcet. This document discuss the DMM solution for Wi-Fi network. 
9. Virtual CPE Deployment Considerations was presented by Sri. This document discuss the virtual CPE problem which is related to DMM.

## ANIMA

ANIMA Monday afternoon session, 120 minutes. 38 attendees in the room + 10 remote participants in the room.

- Signaling design team presented document status, including messages re-orgnization, new flood message and loop avoidance mechnism etc.
- Bootstrap design team presented document status, including comparing with security in netconf and 6tisch, etc.
- Autonomic control plane draft presented work status, including naming, addressing, leveraging GRASP in ACP, secure/insecure channels, etc.
- Reference model document presented work status. Progress since last IETF includes Adjacency Table, a couple of open issues on \"intent distribution\", \"function overview\", \"security & Trust\", etc.
- Prefix management in large-scale network draft presented work status, including narrowing the scope to only cover edge prefix management, etc. 
- An open source implementation of SNBI & ACP with ODL Beryllium is presented.

Thursday afternoon, session 2, 60 minutes. About 31 attendees in the room + 6 remote participants.

- Autonomic network intent concept and format is presented. Recently there are a number of active discussions regarding to this topic in the mail list. The WG showed great interests on this topic.
- A day in the life of an autonomic function was presented.
- Autonomic Functions Coordination was presented. 
- Information and Knowledge exchange in Autonomic Networks was presented.
- Information Distribution over GRASP was not presented due to the overtime. It would have the priority in next meeting among non-milestone work items.

## dnssd

dnssd WG, Monday afternoon session 2, 3:50PM

- Chairs' Introduction

- Discussion: WGLC of Hybrid Unicast / Multicast DNS-Based Service Discovery - draft-ietf-dnssd-hybrid-03

Several WG members supplied input during the WG last call. Stuart Cheshire responded to that input. He will edit draft-ietf-dnssd-hybrid-03 according to that input and publish rev-04. The chairs will review -04 to ensure all comments have been appropriately addressed and submit the revised draft to the IESG for publication.

- Discussion: Next Steps for DNS Push Notifications - draft-ietf-dnssd-push-06

There was input during discussion that this document actually specifies two different behaviours: DNS-over-TCP and DNS updates. The authors will split draft-ietf-dnssd-push-06 into two documents, one for each behaviour.

- Discussion: WGLC of On Interoperation of Labels between DNS and Other Resolution Systems - draft-ietf-dnssd-mdns-dns-interop-02

There was only one set of (editorial level) comments from Dave Thaler about this document during the lWG last call. Because the document has been thoroughly reviewed by the WG during an earlier WG last call, the chairs have agreed that Dave and Andrew will work together to update the draft which will then be submitted to the IESG for publiciation.

- Discussion: -03 version of Scalable DNS-SD (SSD) Threats - draft-otis-dnssd-scalable-dns-sd-threats-03

Because discussion of the first two agenda items was prioritised, and there also being ongoing review and discussion of this document on the WG mailing list, the presentation was taken off the agenda.

- Discussion: New draft: Privacy Extensions for DNS-SD	- draft-huitema-dnssd-privacy-00

The WG appreciates this contribution and encourages further work on the document, even if there is no specific solution proposed as yet. The AD confirmed that privacy issues are implicitly within our charter.

## 6lo

6lo had some IEEE-centric documents to discuss this time. draft-droms-6lo-ethertype-request requests an ethertype for 6lowpan encapsulation as applied to different link layers including 802.11ah (HaLow), ethernet (e.g., for debugging purposes), etc. This is a very simple document whose purpose is to enable the IETF to request an ethertype from the IEEE. There was good support to adopt it as WG document. After a week\'s worth of mailing list confirmation it will be advanced quickly.

Similarly, newer versions of 802.15.4 allow for information elements (IE\'s) to be added to the frames. draft-kivinen-802-15-ie-00 aims at obtaining an IE code assignment for the IETF, with subtyping handled by the IETF for different uses such as 6tisch, 6lo, core, etc.

draft-ietf-6lo-6lobac-04: IPv6 over MS/TP (\"Bacnet\") has had a long history. There are only a few comments in the pipeline after which this document will advance to the IESG.

draft-ietf-6lo-nfc-03: IPv6 over NFC still needs a bit more review, but after those it should be ready for WG LC.

draft-chairs-6lo-dispatch-iana-registry-02: Ready to progress beyond its WG LC. Requesting shepherd\'s (Jonathan Hui) write up to advance it.

draft-ietf-6lo-paging-dispatch-01: Soliciting some final comments. Will advance to IESG shortly. Note: draft-ietf-roll-routing-dispatch-00, as its name implies, recently changed from 6lo to roll ownership. Advancing there with review from 6lo.

draft-reza-6lo-ipsec-03: This document has had a long history. Still passionately debated within the WG. Show of hands was 5 for, 4 not interested in pursuing. To be continued online.

draft-thubert-6lo-backbone-router-03: Another document with a long history. Next 6tisch plugfest will include testing of it. This document and efficient ND (Samita and Erik) will work towards merging.

draft-sarikaya-6lo-ap-nd: Another document with much discussion. It does seem to provide protection against some DoS attacks, but there was some caution that the document should limit itself to a narrow scope.

draft-hong-6lo-use-cases-01: Clarified goals, but still some discussion about its purpose. There was some support for making it an outward-facing document to educate outside people on the value that 6lo brings to IoT.

Finally, there was a report and a summary of lessons learned from the first 6lo plugfest (PF). There is an intention to start having these semi-regularly (e.g., every 2 or 3 IETF\'s) and potentially having one in Berlin in conjunction with 6tisch.

## HIP

The HIP WG is chartered to revise the main HIP specs, which are Experimental, into Proposed Standards. Consequently, the WG has a few \"bis\" drafts, which revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity. We have also added a new HIP DEX draft to the charter. We intend to close the WG after publishing that draft as RFC.

We are requesting the publication of our drafts in batches so that reviewers have the necessary context when performing their reviews. The first batch included RFC 4843bis, RFC 5201bis, and RFC 5202bis, all of which have already been published as RFCs. The second batch included RFC 5203bis, RFC 5204bis, RFC 5205bis, and RFC 6253bis. We have already requested the publication of the second batch. The editors of the drafts are currently addressing IETF LC comments. The WG is actively working on preparing the next batch for pub req.

## NTP

The NTP working group met jointly with the TICTOC working group @ IETF95. Since the last IETF, two RFCs have been published (RFC 7821 UDP Checksum Complement in the Network Time Protocol, and RFC 7822 Network Time Protocol Version 4 (NTPv4) Extension Fields). The group discussed the work items related to Network Time Security (NTS), the NTP BCP, and several new drafts related to the NTP extension fields and REFID. A WGLC has been completed for the three documents related to NTS. A design team will be established to address the issues raised during the WGLC period. It is expected that the three documents will be updated and another WGLC issued in advance of IETF 96. The NTP BCP is making some progress, and it is also hoped to issue a WGLC in advance of IETF 96. The new drafts on extension fields and REFID will be discussed further on the mailing list. There is still an outstanding action item to work on rechartering and combining with TICTOC.

## TICTOC

The TICTOC working group met jointly with the NTP working group @ IETF95. The IEEE 1588-2008 MIB is with the IESG. The experimental drafts on multi-path synchronization and 1588 over MPLS are awaiting shepherd writeup to progress. The document on the enterprise profile is ready for WGLC. There has been a liaison statement on management received from ITU-T SG 15. This liaison provides information on the management model work related to synchronization networks being developed in that group. This is part of the coordination effort of several standards groups related to management of synchronization networks and protocols. No action on the liaison is required at this time. The IEEE 1588-2008 YANG model is progressing. Finally, the Scalable Synchronization Networks work was presented. This work is currently being discussed on an independent mailing list while a determination is made to the scope of the proposed work and the appropriate working group to progress this work.

## HOMENET

Homenet met on Tuesday, April 5th, 2016, 1400-1600 Afternoon Session I.

We began with a WG Status Update, which included:

Updated Drafts:

-   draft-ietf-homenet-dncp-12 (AUTH48 - RFC-To-Be 7787)
-   draft-ietf-homenet-hncp-10 (AUTH48 - RFC-To-Be 7788)
-   draft-ietf-homenet-routing-consensus-call-01 (last version, not to be advanced)

New Drafts:

-   draft-chroboczek-homenet-babel-profile-00
-   draft-lemon-homenet-naming-architecture-00

Drafts on hold pending other docs:

-   draft-ietf-homenet-hybrid-proxy-zeroconf-02
-   draft-ietf-homenet-front-end-naming-delegation-04 (expired)
-   draft-ietf-homenet-naming-architecture-dhc-options-03

We spent the rest of the WG session time discussing Routing and Naming (a security session was planned, but the scheduled presenter did not have time to pull together slides or a structured presentation). With respect to Routing, Juliusz Chroboczek presented a babel profile for Homenet. Babel also held a BoF the same week and may end up with a WG to standardize the protocol. If this happens, we will have a profile of that work for Homenet to be advanced within the Homenet WG. People present during the session preferred IPv6 as a MUST and IPv4 as a SHOULD for the homenet profile of babel. A new Naming Architecture document was presented with a good deal of discussion. It was noted that there is a good deal of overlap with DNSSD in terms of issues being raised. Discussion is ongoing, for details please refer to the minutes.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-04-28. It was migrated from the old Trac wiki on 2022-12-14.*