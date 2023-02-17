---
title: WG Summaries for IETF 91
description: 
published: true
date: 2022-12-15T01:26:22.996Z
tags: 
editor: markdown
dateCreated: 2022-12-15T01:26:18.964Z
---

# IETF 91

## PCP

## 6LO

6lo WG held its 4th meeting in Honolulu@IETF81 on Nov 11th(Tuesday) morning for 2.5 hours. There were 7 presentations on the agenda. The chairs started with the WG status notes and milestones updates. The WG made good progress by publishing its first two RFCs: RFC 7388 (6lowpan-mib) and RFC 7400 (6lowpan-generic header compression). draft-ietf-6lo-lowpanz-05 has been approved by IESG and is now on RFC editor\'s queue. draft-ietf-6lo-btle-02 is waiting for BT SIG IP service profile completion and the co-authors have been advised to start working ont he IETF draft parallely. draft-ietf-6lo-6lobac-00 is also waiting on ASHREE frametype assignment. draft-ietf-6lo-dect-ule-00 will be updated soon by the co-authors in response to Ralph Drom\'s comments and they will be then ready for WG last call.

draft-thubert-6lo-rpl-nhc-02 has been presented by Pascal Thubert asking the WG comments on different header compression proposals for RPL over 6lowpan. The WG has interests in this draft. Few have read the draft and WG will need to discuss further and make a choice. Pascal has been asked to send out a comparison chart in the mailing list. Pascal also initiated a requirement document to update RFC 6775 to address 6TiSCH networks and ZigBee IP networks (draft-thubert-6lo-rfc6775-update-reqs). The WG decided that the document could be taken as a non-RFC seeking WG document - a poll will be taken at the mailing list.

draft-hong-6lo-ipv6-over-nfc-02 was presented by Y. Hong addressing IETF90 comments from the WG. This draft is interesting and will be called for adoption in the mailing list.

draft-rizzo-6lo-6legacy-02 has been presented by Gianluca Rizzo for the second time in 6lo. The document describes mapping scheme for non-IP to IPv6 addresses. The group made comments to the existing solution which might be unfriendly to the privacy effort in IETF and 6man. They were advised to work with 6man WG chairs if they want to publish as informational or standard WG documents.

Fernando Gont presented draft-ietf-6man-default-iids-01 document update that addressed 6lo WG comments and commnents from Ralph Droms. Further update is needed in the document based on Dave Thaler\'s proposal. The document mandates that all IPv6 devices provide privacy addresses by default. Further discussions on this draft is taking place in 6man and the 6lo WG participants were reminded to pay attention there.

draft-sarikaya-6lo-cga-nd-01 was presented by Behcet Sarikaya which uses simplified CGA-based SEND for 6lo type of devices and works with 6lowpan-nd. Several comments were made to improve the document.

Rene Struik presented a very interesting draft draft-struik-6lo-on-ipv6-addressing pointing out problem areas in RFC 7217 which cannot alone provide privacy when MAC address are not changing. In his draft, Rene makes a few other observations for generating SLAAC based Ipv6 addresses for 6lo type devices.

## DPRIVE

## SOFTWIRE

The softwire working group met for a 2 hour session at IETF91. The softwire stateless IPv4 over IPv6 solution set had gone through IESG evaluation before the meeting. The editors of each of the documents presented the changes that were propposed to resolve the issues raised by the IESG. The WG seemed to be OK with making these changes. The IESG had also asked the WG to consider elevating MAP-T from Experimental to Standards Track. There is a discussion ongoing on the mailing list as to whether the WG wants to do this. It is starting to look like there is sufficient support to go through with this, although there was a significant technical issue raised that may require some additional text in the draft.

The milestones for the WG have been updated and the chairs shared these milestones with the WG. The AD seemed to be fine with the proposed changes. The chairs will be updating the milestones shortly.

There were a few new items that were presented and were looking for working group adoption. The chairs will need to discuss with the ADs to figure out if softwire should be taking on any more work. The chairs feel that the core work of the WG is complete and we need to be winding down in the near future.

## DMM

The DMM WG met in Wednesday morning. There are four working teams in DMM, including: 1) working team1: Exposing mobility state 2) working team2: Enhanced anchoring 3) working team3: Forwarding path and signaling Management 4) working team4: Distributed mobility management deployment models and scenarios

The working team leaders reported the progress of each team respectively. The WG members have a basic common understanding of each work item for each working team. The working group has a good starting point of DMM protocol design work. To speed up the progress, teleconference calls were scheduled for each working team.

AREO related topic was also presented and discussed.

A presentation was given on draft-perkins-dmm-privacy-00. It proposes privacy should be considered in DMM protocol design work.

A presentation was given on draft-perkins-dmm-4283mnids-01. It proposes to extend the MN id type in RFC4283. More review and discussion in the mailinglist is needed.

## HOMENET

## MIF

The MIF working group met in a 2 hour session at IETF91. 1) Architecture document has submited to AD.

2\) MPVD ID was presented, which MPVD ID should be a single unique format had been adopted by the workking group, one left issue is about how to sign the ID.

3\) MPVD DHCP and RA draft will be issued WGLC after the meeting, and people are expecting that sufficient review have to be taken.

4\) For the incoming BBF liason, people presented in MIF wg, many people are interested in working on this problem in IETF MIF or somewhere else, chairs ask people to send their volunteer email for conformation from MIF perspective.

5\) Google demonstrate how android 5.0 implement MIF during the meeting. Appluase.

## NTP/TICTOC

## TRILL

The TRILL WG met in the second afternoon slot Wednesday. Its three major efforts currently are OAM, active-active, and directory assist in approximate order of decreasing priority. After a review of document and milestone status, some revised and augmented milestones were presented. These milestones will be posted to the mailing list and put into effect in a few weeks unless there is significant opposition.

A brief status update was given on TRILL OAM: The two main TRILL OAM drafts, draft-ietf-trill-oam-fm and draft-ietf-trill-loss-delay, are in the RFC Editor\'s queue. The remaining drafts are draft-ietf-trill-oam-mib and draft-ietf-trill-yang-oam. draft-ietf-trill-oam-mib is believed to be ready and a WG Last Call will be initiated. At the suggestion of the Chairs, draft-ietf-trill-yang-oam will be sent to the routing are yang group.

A presentation was given on draft-eastlake-trill-rfc7180bis including what material is being added, deleted, or retained compared with RFC 7180. This draft has been in call for WG adoption and, since there was significant support and no opposition, it was announced that it has been adopted.

Centralized Replicaton for BUM Traffic in Active-Active TRILL Edge was presented. It provides an alternative solution to RPF check problems with the draft-ietf-trill-pseudonode-nickname draft that does not require multipe distribution trees. Participants were encouraged to read this draft.

A brief status update was given on active-active including a chart of draft dependencies. draft-ietf-trill-cmt, draft-ietf-trill-pseudonode-nickname, and draft-ietf-trill-aa-multi-attach are all felt to be reasonably mature and WG Last Calls will be started on all three.

A presentation on TRILL was give on TRILL over IP (draft-ietf-trill-over-ip) including a list of remaining work. Questions and discussion on this draft were the most extensive of any topic at the meeting. Particularly whether, to get better support from existing fast path hardware, it should change from DTLS to IPSEC for security and/or support encapsulations other than TRILL over UDP over IP. Some clarifications in the draft and discussion of these issues on the mailing list seems like it will be useful.

A brief status update was given on directory assisted edge: It was requested and agreed that a call for WG adoption will be issued for draft-dunbar-trill-directory-assisted-encap, a draft which depends on the main draft-ietf-trill-directory-assist-mechanisms draft.

Finally, there was a presentation on Smart Endnodes (draft-perlman-trill-smart-endnodes). A call for WG adopt of that draft had previously been issued but it had then been decided not to adopt it because work on it might slow down work on active-active. Given the progress on active-active, it was decided to issue a new call for WG adoption of the smart endnodes draft.

## 6TISCH

The 6TiSCH group is using bitbucket to store drafts, agendas, minutes and meeting materials: <https://bitbucket.org/6tisch>

In particular the report from the Honolulu meeting at IETF 91 is can be found at <https://bitbucket.org/6tisch/meetings/wiki/141113_ietf91_honolulu>

In very short: 
- Security in general and the join process in particular were heavily discussed. 
- 4 drafts are potential candidates for last call soon, and eventual updates prior to last call were discussed.
- Finally, some discussions happened around rechartering and the DetNet activity

## DNSSD

dnssd WG summary - IETF 91
1300-1500HST 2014-11-13

Administrivia Droms/Sullivan 10 minutes
Document Status
- draft-ietf-dnssd-requirements-04
-- Submitted to IESG with shepherd text by Tim

- draft-cheshire-dnssd-hybrid-01
-- Published as WG doc draft-ietf-dnssd-hybrid-00; Ready to discuss towards WG last call? 
- draft-sullivan-dnssd-mdns-dns-interop-01 -- Ready to accept as WG document?

---

DNS Long-Lived Queries Pusateri
draft-sekar-dns-llq-01.txt (expired)

Document was well-received with good WG discussion. Author Pusateri is requested to write an I-D to describe LLQ and updates for dnssd

---

Multicast DNS (mDNS) Threat Model and Security Consideration Rafiee
draft-rafiee-dnssd-mdns-threatmodel-01.txt
Review of updates

Author Rafiee received substantive feedback on threats described in document. WG requested another rev to reflect input from discussion.

---

Special Use Top Level Domain home Cheshire
draft-cheshire-homenet-dot-home-00.txt
Informational for WG

Lively discussion of author Cheshire\'s conclusions as described in document. No action for dnssd as this document is aimed at homenet.

---

Hybrid !Unicast/Multicast DNS-Based Service Discovery Cheshire
draft-ietf-dnssd-hybrid-00
Update on WG document; prepare for WG last call


Positive reception from WG. Some discussion of security considerations. Otis and Pusateri to send comments to author Cheshire. Will consider WG last call on rev -01

---

On Interoperation of Labels Between mDNS and DNS Sullivan
draft-sullivan-dnssd-mdns-dns-interop-01.txt
Review of updates


Good reception and discussion from WG. Discussion of !IDNA/UTF-8 on \<domain\> portion. Author Sullivan to update based on discussion.

## LWIG

## DHC

DHC WG met late on Thursday afternoon. The session was attended by 35 based on the blue sheets and lasted about 120 of 150 minutes allocated.

The chairs provided an update since IETF 90. There was one RFC published, RFC 7341. One document was adopted by the WG, and there were 4 last calls with 2 passing and 2 failing. Also, the revised charter (minor update) was approved by the IESG.

5 presentations were given during the session:

Tomek Mrugalski lead the \"DHCPv6bis Update\" and discussed recent progress on RFC 3315bis. Momentum was lost, and team met on Tuesday morning to discuss how to regain momentum using more frequent goals and calls. Several issues were raised, such as how to handle client rate limiting and whether to deprecate IA_TA (conclusion was not to do so).

Next, Suresh Krishnan lead the \"DHCP Privacy Considerations\" discussion. The general consensus was to adopt this work (as informational) and also develop a mitigation draft (perhaps as BCP).

Marcin Siodelski lead the \"DHCPv6 Stateful Issues\" draft discussion by providing a summary of recent changes and thanking several reviewers, as well as reviewing the outstanding comments. A new draft is expected shortly and a last call will be initiated.

Lishan Li discussed the \"DHCP4o6 Active Leasequery\" individual submission draft. She discussed its purpose and design. Questions were raised that active leasequery typically requires bulk as well, so draft should be extended to include that. This draft also makes use of draft-fsc-softwire-dhcp4o6-saddr-opt and Ian Farrer will initiate a discussion of this draft on the DHC WG mailing list.

Finally, Fred Templin provided an overview of the \"AERO DHCPv6 Control Messaging\". This was informational for the WG as this work is not for WG to adopt. Fred also raised a question regarding draft-ietf-dhc-sedhcpv6 and how to make use of client certificates.

## LISP

[https://tools.ietf.org/wg/lisp/trac/wiki/91st%20IETF%20Honolulu Summary Activities 91st IETF](Honolulu)

## 6MAN

The 6MAN working group met for a 2 hour session on Friday morning at IETF91, after taking a break at IETF90. The session was well attended with about 150 participants.

The agenda was organized to give priority to working group draft, individual drafts with active discussion, and new individual drafts. The first set ran over and there was not time to present any of the drafts in the third category.

The Efficient ND design team gave a progress report. This effort started after IETF89. The design team has identified a set of issues with RS/RA and DAD, and is looking for feedback from the working group on which issues to address.

The \"Recommendation on Stable IPv6 Interface Identifiers\" \<draft-ietf-6man-default-iids-01\> was presented and an active discussion ensued. There is some disagreement when MAC based IIDs should be used or not used and if the recommendations are MUST or SHOULD. There are a number of cases where MAC addresses make sense. There was not a consensus to move forward, the discussion will continue on the mailing list.

\"Deprecating the Generation of IPv6 Atomic Fragments\" \<draft-gont-6man-deprecate-atomfrag-generation-01\> was discussed, but there was a lot of pushback from the working group. The suggestion to deprecate all IPv6 fragments was made (again). No consensus to move forward at this time.

\"Including Geolocation Information in IPv6 Packet Headers (IPv6 GEO) \<draft-skeen-6man-ipv6geo-01.txt\> was presented. Active discussion, repeating issues raised on the mailing list, some thinking this is better at the application layer, and raised the question should we have a \"vendor\" destination header option mechanism. No consensus to move forward.

IPv6 Prefix Length Recommendation for Forwarding \<draft-boucadair-6man-prefix-routing-reco-03.txt\> was presented and discussed. Result of the discussion was to see if V6OPS would take this document on as it does not change any IPv6 specification, but make an implementation recommendation.

## INTAREA

The intarea working group met in a 2 hour session at IETF91. The GRE fragmentation draft \[http://tools.ietf.org/html/draft-ietf-intarea-gre-mtu-00\]\] had been adopted as a working group item before the IETF meeting. The draft was presented and there were some people in the room who felt that the draft needed to prescribe correct behavior instead of just documenting existing implementations. This is different from the earlier WG view that preferred just documenting the current implementations and leave the solution to the tunnels draft. The chairs will be doing a consensus check on the mailing list regarding this issue.

While the GRE fragmentation draft was being discussed on the mailing list, it was clear that there was no normative reference for using IPv6 for GRE either as a payload protocol or as a delivery protocol. The draft describing IPv6 Support for GRE \[https://tools.ietf.org/html/draft-pignataro-intarea-gre-ipv6-01\] was presented and the sense of the room was to adopt the draft as a working group item. There is an adoption call currently ongoing on the mailing list.

The editors of the intarea tunnels draft were unable to make it to the meeting and sent an update instead. The draft \[https://tools.ietf.org/html/draft-ietf-intarea-tunnels-00\] has been expired for a while and the update described the way forward for the draft. There were some comments in the room that the proposed way forward is a bit restrictive and does not support some currently deployed fragmentation behaviors. We will open an issue tracker for this draft.

The draft concerning multi MTU subnets \[http://tools.ietf.org/html/draft-van-beijnum-multi-mtu-04\] was presented at the meeting and was met with a polarized response. There were some strong arguments for solving the problem pointed out by the draft but some concerns about the exact solution mentioned in the draft. There was an extensive review of the draft that was received on the day of the meeting from Pat Thaler and the author will engage with her on the list. Some of the transport area folks in the room also had concerns about the probing algorithm mentioned in the draft.

&nbsp;
&nbsp;
&nbsp;

---

*The content on this page was last updated on 2014-12-08. It was migrated from the old Trac wiki on 2022-12-14.*