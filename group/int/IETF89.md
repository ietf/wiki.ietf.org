---
title: WG Summaries for IETF 89
description: 
published: true
date: 2022-12-15T02:37:44.185Z
tags: 
editor: markdown
dateCreated: 2022-12-15T01:06:25.203Z
---

## 6lo

6lo WG session was held on March 5th (Wednesday) in the 15:20 - 17:30 slot in the afternoon. The Agenda was full with several drafts and presentations. Four adopted WG drafts were presented at the meeting out of which the BTLE document is in IESG review phase and it is waiting for BTLE sig to comment on the IETF draft before moving further. draft-ietf-6lo-lowpanz passed the WGLC call and received more comments due to change in privacy address in 6man. draft-ietf-6lo-lowpan-mib WG comments were discussed at the meeting about providing interface specific MIB capability and the f2f WG meeting rough consensus was to include an optional interface-specific MIB in the document. Draft-ietf-6lo-ghc has been presented and discussed as well. The presented adopted WG documents are:

- draft-ietf-6lo-btle
- draft-ietf-6lo-lowpanz
- draft-ietf-6lo-ghc
- draft-ietf-6lo-lowpan-mib

Waiting to be submitted: draft-ietf-6lo-lobac

draft-mariager-6lo-v6over-dect-ule was scheduled but not presented due to absence of the presenter.

Two new drafts were presented at the meeting:

- draft-savolainen-6lo-optimal-transmission-window
- draft-rizzo-6lo-6legacy

An interesting presentation (https://www.w3.org/2014/strint/papers/35.pdf) on link-layer privacy from IAB STRINT workshop has been presented as well . 6TiSCH plugfest announcement and 6lo/6TiSCH possible collaboration area based on 6lowpan-nd are presented by the 6TiSCH co-chairs. 6lo co-chairs discussed possible interest in 6lo deployment usecase scenarios that require more work in the working group and develop a reference architecture related to other constrained node area network components.

## 6MAN

The 6man working group held a two and a half hour session on the Tuesday of the IETF in London. The session was well attended with over a hundred participants. It was recorded by Meetecho and the audio/video archives are available.

There has been active discussions on the mailing list since the last IETF, with over 800 messages. The main topics of discussion has been \"Why /64\", SSAS, the recommendation for default interface-identifiers, address privacy and efficient ND. The working group has had 5 RFCs published, and currently have no document in the IESG queue.

The main topics for the London meeting, was the \"Why /64\" document, that is a document that explains why the /64 boundary was chosen, and also explores the consequences of changing that boundary, if we ever wanted to do that. There was strong support in the room for adopting this document as a working group document. We also had a 45 minute session to talk about efficient ND. Both with regards to battery efficiency, and how ND behaves on link-layers that do not handle multicast well. The chairs have decided to form a design team to work on this problem, anyone interested in participating should contact the chairs. The design team is expected to report back to the working group at the Toronto IETF meeting.

There was also consensus in the the room to adopt the following drafts:

- draft-gont-6man-lla-opt-validation

This consensus is being verified on the mailing list.

## DHC

DHC WG met on Monday morning. The session was attended by 60 people and lasted 2 hours and 32 minutes. We had one RFC published (7083, Modification of default values of SOL_MAX_RT and INF_MAX_RT), one I-D is in review queue, 4 I-Ds sent to AD and/or IESG. Chairs were concerned that WGLCs receive not enough reviews, just handful of +1s. The decision was to not start WGLC until there is enough review volunteers.

Update about DHCPv6Bis work was presented (good progress, but it essentially just started).

The second presentation was about DHCPv6 Failover. The failover-design draft reached AD review, but was essentially rejected. Authors and AD decided to split it into trimmed down failover-design (info) and failover-spec (std) drafts.

Work on Selecting DHCP configuration based on network topology was resumed after a short hiatus. One more rev is needed. There were 6 volunteers for review, so we\'ll go ahead with WGLC.

Author of Secure DHCPv6 with public key work believes it is ready. 6 volunteers signed up for review, so chairs will go ahead with WGLC soon.

DHCPv6 Load Balancing work has been resume after spending more than a year in limbo. There was WGLC over a year ago, but there were several comments, so updated rev was published on Monday. We have 4 volunteers for review. That\'s less than chairs would like to have, but since this draft has been around for a long time and is very similar to its v4-counterpart, it is enough and we\'ll go with another WGLC.

Stateful issues draft has been presented. This draft fixes several important snags in stateful DHCPv6. Since those changes would affect everyone, chairs felt that the bar is set higher than for average draft. There was very few reviews and only a handful +1s during WGLC, so chairs decided to fail it. This appear to made an impact. 8 people promised to do the review. That should be more than enough to pass a new WGLC once chairs announce one.

Stateless reconfiguration (individual) was presented. There are some improvements since last meeting, but it is still not clear whether the WG is willing to work on it. The work will continue as individual for now.

Customer Edge Router ID option was presented. It\'s a proposal that overlaps Homenet, HIPNET and generic CPE deployment. The draft has some DHCP issues (tries to do auth by itself, rather than using standard auth option or reusing secure-dhcpv6 being developed). The AD will follow up to determine the best place for this work to proceed.

Homenet Naming DHCP Options draft was presented. It is intended for Homenet WG, so it was presented in DHC as info only. Several DHCP-specific comments were provided.

A new draft about dynamic Allocation of shared IPv4 address has been presented. This is DHC-specific part of the solution. It is expected to be reused by other solutions being developed in Softwires. The room was inclined to adopt that work. Will do adoption call on the mailing list soon.

DHCPv4 over DHCPv6 source address option is an extension to the DHCPv4-over-DHCPV6 solution that is sent to IESG. This is a very fresh proposal, there was not enough time for thorough discussion and no discussion on ML, so this topic will be discussed further.

The last 4 minutes presentation was delivered by Tsinghua University, which implemented DHCPv4-over-DHCPv6 server and client. It is a nice data point for the draft that is awaiting IESG review now.

## DMM

The DMM WG is about to complete the work on its current charter. The requirements document has already been submitted into the publication process and the second working group document on the current practices & gap analysis is nearing the completing. The next step with the gap analysis is the WGLC, which will be called after the IETF#89 week. The outcome of the gap analysis has pinpointed potential topics and areas of future work.

The WG aims to recharter before the IETF#90. There has been vivid offline discussion already on the possible work items and the revision of the charter text. The future distributed IP mobility management deployments are going to look rather different than what tradition IETF IP mobility protocols have been designed for. The DMM WG is not going to restrict itself only to existing IETF IP mobility protocols tweaking.

The WG spent around an hour of the f2f meeting time discussing the rechartering and identified areas to work on. The very draft charter text can be found: \[https://github.com/jounikor/dmm-re-charter\]. During the WG meeting few new topics were raised: linkage to other IETF WGs who do related work to some extent (not with mobility as the focus) like I2RS, SFC, LISP, FORCES and possibly VNFPool. The linkage to existing architectures was emphasised. If DMM WG wants to work on something that is deployable on e.g. 3GPP networks that should be documented how. Last, the current trend of network function virtualisation was brought up, and DMM should reflect that in its work.

## DNSSD

The WG reviewed and discussed the individual requirements in the draft-ietf-dnssd-requirements-01. The meeting participants accepted, in principle, the list of requirements. The authors will publish a revision of the draft that will include several specific changes as agreed to in the meeting. The chairs will then pos a WG last call to the mailing list for consensus on forwarding the document to the IESG.

Dave Thaler lead a discussion of what the WG needs to standardize to meet the WG charter and requirements document. Item 2, \"Service discovery zone enumeration\", was determined to need additional refinement, as the term \"zone\" is overloaded in the DNS and has an implication of \"buckets\" that may not be compatible with some desired methods of visibility control such as role-based. Item 5, \"interop with other SD protocols\", was recognized as out of scope for the current charter but is likely to be of interest for consideration in the future. The discussion of what needs to be standardized was followed by brief summaries and evaluation of standardization for three specific technologies. The conclusions of these three presentations will be consolidated with the list provided by Dave Thaler.

Andrew Sullivan reviewed the main points and conclusions in draft-sullivan-dnssd-mdns-dns-interop-00. There is still some skepticism that any solution can be devised that will successfully address interoperability between DNS-SD/mDNS and the global unicast DNS. However, the WG was reminded to keep in mind that it is chartered to document issues in naming interoperability and solutions are currently beyond the scope of the charter. The chairs asked if Stuart Cheshire would join Andrew Sullivan as a co-author of this document.

## HIP

The HIP WG is chartered to finish an old Experimental RFC-to-be and to revise the main HIP specs, which are also Experimental, into Proposed Standards. The old Experimental RFC-to-be, the RELOAD instance spec, has already been published as RFC 7086.

The WG also has a few \"bis\" drafts. They revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity.

We intend to request their publication in batches so that reviewers have the necessary context when performing their reviews. We will be requesting the publication of the first batch, which includes RFC 4843bis, RFC 5201bis, and RFC 5202bis, shortly.

## intarea

The intarea working group met in a short one hour slot. The draft describing the use of the IPv6 Flow Label for Load Balancing in Server Farms was published as RFC7098. Internet Area Director Brian Haberman announced the formation of the INT directorate to assist the INT area directors in document reviews. He called for nominations to be forwarded to the INT ADs.

The draft describing a fragmentation strategy for Generic Routing Encapsulation (GRE) was presented. The intent of the document was to provide guidance to future implementers. The content of the draft was well received by the working group, but there were differing opinions as to whether this work would continue to be a point solution or be folded into some form of generic work on tunnels. This will be discussed on the list.

The draft describing issues with IP links in spontaneous wireless networks was presented. The goal of the draft was to raise wider awareness to some issues that need to be handled by IP on ad-hoc wireless networks. There was some resistance to this draft as some people involved in earlier work in the autoconf working group believed that the scope of the problem is much larger than envisioned by this document. The chairs have requested them to have offline discussions with the draft authors and get back to the wg with a way forward.

There was a presentation concerning the potential effects of the NFV initiative and the associated data plane acceleration technologies on IETF protocols. The draft authors are looking for feedback from the Internet Area community. Interested individuals are encouraged to send comments to the authors. There was also a presentation about the Asynchronous DNS API by the folks involved in an open source implementation of the same. Their goal was to solicit comments and contributions from DNS folks in the Internet area. The draft concerning use of CGAs for Transaction signatures was updated based on comments received from the working group. The draft will be discussed further on the list.

## L2TPEXT

L2TPEXT did not meet in London for IETF89.

The WG has a draft being currently polled for adoption, \"Keyed IPv6 Tunnel\" (draft-mkonstan-l2tpext-keyed-ipv6-tunnel).

There are no concerns in L2TPEXT.

## PCP

The PCP WG met at IETF 89. The DHCP option spec was submitted to the IESG just before the meeting, and progress was made on several other documents. The next rev of pcp-port-set should be ready to submit to the IESG, allowing an app to request a range of ports (e.g., for RTP). The PCP proxy spec and authentication specs are making good progress; the WG discussed open issues and determined next steps. The WG also agreed to start work on updates to the base PCP spec, collecting the deltas on which the WG already has consensus.

## softwire

The softwire working group met in London for a 2.5 hour session. The MAP-E and the lw4over6 drafts had completed working group last call before the meeting. The main goal of the meeting was to resolve the open issues on the lw4over6 draft that had been brought up during WGLC and on later revisions. There were three major issues open in the draft and there was general agreement on the way forward for two of them. The third issue, a cross reference to MAP-E draft, was a bit more controversial as it deals with the relationship between the MAP-E and the lw4over6 documents. The text for describing this will be discussed on the list and included on both MAP-E and lw4over6 drafts. The MAP-T and the 4rd drafts have also completed WGLC and will be progressed to the IESG soon. There were several presentations about potential new work for the WG, including DS-Lite Failure Detection and Failover, RADIUS Extensions for Lightweight 4over6, Prefix Binding recommendations in the Softwire DS-Lite Context, an IPv4 Prefix for IPv6 Transitional Technology and an Unified IPv6 Transition Framework With Flow-based Forwarding. These presentations were informational as the WG is not currently accepting any new work items until the stateless solution documents are progressed.

## SUNSET4

Sunset4 discussed moving its first charter item (gap analysis) to last call, and hope to proceed soon with that, strong consensus in the room to proceed. There was a remote presenter discussing the consolidation of multiple NAT port mapping drafts into one draft to meet the charter milestone for that item, we expect a new revision of that draft will incorporate all of the drafts together and then we can review and call for WG adoption. Lastly, we discussed draft-george-ipv6-support, which is a non-WG draft requiring IETF work to explicitly support IPv6-only operation, recommending that IETF reduce focus on back-porting features into IPv4, and recommending that IETF revisit a previous audit of past RFCs to have a comprehensive gap analysis for IPv6-only operation in existing protocols. TThere was a strong consensus in the room to accept this item as a new charter item for Sunset4. The chairs will send the request to the AD.

## TRILL

The TRILL WG met Friday mid-day in the last meeting slot. After a review of status, Sue Hares presented a survey to gather information for the TRILL implementation report called for in the Charter and for which Sue has agreed to be editor.

There was a brief status and update presentation on TRILL OAM and a supplementary presentation on the Liaison the IETF received yesterday informing us the IEEE 802.1 WG has allocated blocks of CFM code points to the IETF. TRILL OAM uses these. WG Last Calls were started on draft-ietf-trill-oam-fm and draft-ietf-trill-loss-delay running through 24 March.

The next topic taken up was Active-Active. Draft-yizhou-trill-active-active-connection-prob, an Informational survey of the problems involved with TRILL active-actve connection at the edge, has been in call for WG adoption ending at this meeting with favorable comments on the mailing list. There were no negative comments from the meeting so the Chairs declared it adopted. Draft-hao-trill-analysis-active-active was then presented and there was a significant amount of discussion. This is an informational draft describing solutions to problems. Meeting comments indicate that another pass should be made on this document before calling for WG adoption.

Draft-zhang-trill-aa-multi-attach was presented and briefly discussed. While the material presented was good and coming along well, it raise enough questions that more discussion is needed.

Draft-mrw-trill-over-ip (which has been adopted as a WG draft although the WG filename version has not been uploaded yet) was then briefly presented and discussed with particular attention to the areas of the draft that may need more work. One question was whether UDP encapsulation or some custom encapsulation should be used. There was a strong consensus for UDP in the room, which will be confirmed on the list.

Finally, the status of the Directory Assisted Edge drafts was presented verbally but there was insufficient time to go into or discuss them.

## HOMENET

At IETF 89 in London, the Homenet WG met on Tuesday morning from 0900 until 1130. Attendance was good, with lively and largely constructive discussion. The main items discussed were status of the Homenet Architecture review by the IESG, followed by the introduction of the Homenet Control Protocol (HNCP), Naming, and Incremental operation with non-homenet routers (output of the incremental design team, and presentation of the DHCP CER ID as a possible aid for this).

For the Homenet Architecture update, specific text changes based on IESG review were presented and in most cases accepted. There was a call for editors to help create an OAM document for Homenet. One discuss remains, from our Routing AD, which we are continuing to converge upon. Our AD (Ted) indicated to the chairs, which we communicated to the group, that while we would continue to work on the details in the Homenet Architecture document based on these final review stages, the WG should not use this as a reason not to move forward with adopting solutions at this stage.

HNCP was up next, presented by the authors of 3 documents that cover HNCP itself, a general method for automatic prefix assignment which can be used by HNCP or other routing protocols (and is advancing in the OSPF WG, independently of Homenet), and DNS-SD/mDNS \"hybrid proxy\" for multilink service discovery in the home.

HNCP is an alternative to OSPF for home router configuration that was presented in the past. HNCP received positive support by the working group in general, and at the end of the meeting an open mic was held which drew a number of good suggestions. The WG chairs presented 3 options for the WG, (1) OSPF for configuration, (2) HNCP for configuration, (3) propose something else, or (4) \"Don\'t know yet\". There was very strong support for #2, HNCP, including adopting the HNCP draft as a WG document. We attempted to propose the same kinds of questions for questions regarding choice of routing protocol (or protocols) but were not able to fully formulate the question in time before meeting end.

Before the open-mic, there was another lively discussion on naming, oscillating between a model clearly preferred by an ISP vs. those who do not want to see ISPs directly involved in providing a naming service for devices in the home itself. This area needs more focus by the WG, and it is the chairs\' hope that if the progress made on basic configuration and routing can stick, we will have more cycles to raise this discussion up to a point where we find a solution which achieves rough consensus from both sides. All in all, this was a very constructive meeting for Homenet.

## MIF

The MIF new charter has been approved by IESG before London meeting, couple of drafts cooresponding to new charter have been proposed to discuss during London meeting. 1 MPVD Architecture document got comments about socket handling and VPN implementation consisderation; 2 MPVD API is going well by including MPvD info and how to present it; 3 MPVD ID had been discussed mostly about how to handling human readable name; 4 MPVD ND will got an list comment about possible misuse; 5 MPVD DHCP was discussed mostly about the alignment with ND.

Chairs will work with AD about milestones, then will call for adoption later.

## NETEXT

NETEXT met at IETF 89. The WG mainly discussed the remaining work items and how to progress them. The WG discussed how to proceed with the remaining issues with the Flow Mobility document and reached consensus on providing the Flow Mobility Initiate/Ack messages along with the Update Notifications. The chairs proposed that the Logical Interface ID be deprecated since it\'s utility is unclear. The WG debated pros and cons of the proposal, and it was agreed to continue the discussion on ML and go with the WG consensus. The meeting also discussed the ID on QoS mapping between WLAN and PMIP6 messages, which will be adopted as the WG document. The WG intends to work on remaining work items and conclude them by IETF 90. The WG intends to close down by IETF 90.

## 6TiSCH

The 6TiSCH WG held 2 meetings, a 3-hour plugfest followed by a 2-hour WG meeting.

The plugfest was held on March 6 2014, 0900-1200\<tel:0900-1200\> GMT, and chaired by Xavi Vilajosana. It was attended by 32 people, including Bob Heile (Chairman Emeritus and Chief Technologist ZigBee Alliance, chair IEEE802.15) and Pat Kinney (vice-chair IEEE802.15, chair of ISA100), and featured three complementary angles: interoperation, demonstration and tools. The group shared on sniffing tooling, and provided implementation feedback on the 6TiSCH minimal configuration draft, which is a chartered item at 6TiSCH. We demonstrated open-source (OpenWSN) implementations of 6TiSCH running on multiple types of hardware, as well as a port to the RIOT OS. We also demonstrated a multilink subnet with a classical Ethernet backbone that federates LLNs based on the proxy ND operations as described in the 6TiSCH architecture.

Information about the plugfest, as well as the presented slides, are at https://bitbucket.org/6tisch/meetings/wiki/140306a_ietf89_london_plugfest.

The WG meeting was held on March 6 2014, 1300-1500 GMT, and chaired by Pascal Thubert and Thomas Watteyne. Since the WG is fairly new (this is its 2nd meeting) the chairs gave a quick recap on the 6TiSCH charter and milestones. The following drafts were presented:

- draft-ietf-6tisch-terminology
- draft-ietf-6tisch-architecture (Pascal Thubert)
- draft-wang-6tisch-6top-interface (Xavi Vilajosana)
- draft-wang-6tisch-6top-sublayer (Qin Wang)
- draft-dujovne-6tisch-on-the-fly (Diego Dujovne)
- draft-piro-6tisch-security-issues (Giuseppe Piro)

A rough consensus for adoption as WG document for draft-wang-6tisch-6top-interface was reached at the meeting; a call for adoption was subsequently started on the Mailing List. Security discussions lead by Michael Richardson occupied an overall half hour of the meeting. Michael reported a summary of the Design Team work for the 6TiSCH architectures, and heated discussions followed. Xavi Vilajosana reported on the plugfest, and had each participant give a 3min presentation of the material presented and the lessons learned.

Detailed minutes about the WG meeting, as well as the presented slides, are at <https://bitbucket.org/6tisch/meetings/wiki/140306b_ietf89_london.>

## Lwig

The LWIG working group met on Thursday, March 6, 2014 for one and a half hour.

The working group status includes: (a) Lwig-terminology document passed IESG review and was in the RFC Edit Queue; (b) Lwig-ikev2 will be shepherd to IESG; (c) Lwig-cellular document was reviewed and revised, will be followed by WGLC. (d) Lwig-tls document was updated but the authors would like to know if the document is really useful, and the discuss indicated that it was somewhat useful.

In the technique discussion phase, (a) lwig-coap document was presented and there was consensus to adopt this document. (b) ikev2 esp implementation document was discussed to help the authors get some input. (c) 3GPP GBA implementation document was presented. (d) sleeping nodes document was discussed to help authors get some input. How those drafts will be handled are not clear now.

## LISP

The LISP WG session reviewed the current document status. The pending LISP Threats document was presented. With a revision to reflect earlier comments, this will go to WG last call. The EID Block and Block Management documents were discussed, and the WG felt they were in good shape.

Work on a number of potential future topics including encryption, several aspects of data center, multicast, and SDN were presented.

## NTP

The NTP WG met at IETF 89 in an abbreviated meeting. The following work items were discussed:

- NTP extension field: draft (draft-ietf-ntp-extension-field) has completed WGLC and is awaiting shepherd write-up by Karen.
- Network Time Security (draft-ietf-ntp-network-time-security) is still under discussion in WG and an update will presented today.
- NTP BCP: New work item discussed at this meeting motivated in part by the recent NTP amplification attacks. Editors have been identified, and a draft is expected soon.
- NTP control protocol draft: draft-odonoghue-ntpv4-control has a new editor and is awaiting an update (expected shortly after IETF89)
- Interleave messages: Has been implemented but not documented. Anyone interested in authoring should contact Karen.

## TICTOC

The TICTOC WG met at IETF 89. The following work items were discussed.

- Security Requirements and PTP MIB: draft-ietf-tictoc-security-requirements and draft-ietf-tictoc-ptp-mib both completed WGLC and are waiting for shepherd write-up by Karen.
- Timing over MPLS: draft-ietf-tictoc-1588overmpls has completed the first WGLC with the decision to proceed to an experimental RFC. The draft will be republished to remove references to FRR and recast as an experimental RFC. Because there are no technical changes, there will not be another WGLC.
- PTP Enterprise Profile: draft-ietf-tictoc-ptp-enterprise-profile was not updated in time for this meeting. An update will be published after this IETF with a plan to proceed to WGLC.
- IEEE 1588 coordination: Karen informed the WG that there will be a 1588 face-to-face meeting April 7-9 at CERN in Geneva.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-04-01. It was migrated from the old Trac wiki on 2022-12-14.*