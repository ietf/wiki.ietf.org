---
title: Working Group summaries for IETF 84
description: 
published: true
date: 2022-12-15T02:17:43.563Z
tags: 
editor: markdown
dateCreated: 2022-12-14T20:41:05.832Z
---

## DNSEXT

DNSEXT is winding down. We have some documents stuck in disagreements with the IESG; those issues are being worked out.

There are two documents that are in their final stages in the WG: draft-ietf-dnsext-dnssec-algo-signal, which is a mechanism for clients to signal some of their DNSSEC capabilities; and draft-ietf-dnsext-rfc6195bis, which is an administrative clean up of the IANA considerations for the DNS.

There is one outstanding document that still needs considerable work: draft-ietf-dnsext-rfc1995bis-ixfr.

We had intended to close the WG by this meeting, so these items that are hanging on are a little vexing. Nevertheless, the WG is not meeting this time, and we do not expect to meet again.

## MULTIMOB

Three working group drafts draft-ietf-multimob-pmipv6-source-01, draft-ietf-multimob-pmipv6-ropt-00 and draft-ietf-multimob-fast-handover-01 were presented first. All three draft presentations were well received and several technical comments were made. These discussions will continue on the list and the drafts will be revised soon. It seems like draft-ietf-multimob-fast-handover-01 will be ready for working group last call soon.

Among the future work items, IGMP/MLD Optimizations in Wireless and Mobile Networks, draft-liu-multimob-igmp-mld-wireless-mobile-02 was discussed next. Here the question was whether pim Working Group is a better place for this work.

IP Multicast Use Case Analysis for PMIPv6 based Distributed Mobility Management, draft-sfigueiredo-multimob-use-case-dmm-02.txt talked about some possible issues in Distributed Mobility Management Multicast extensions that Multimob is considering as a possible future work. Routes Optimization for Multicast Sender in Proxy Mobile IPv6 Domain, draft-liu-multimob-pmipv6-multicast-ro-02 appeared to be very much related to the working group draft draft-ietf-multimob-pmipv6-source-01, an issue to be further explored.

Lastly, Multicast Listener Extensions for MIPv6 and PMIPv6 Fast Handovers, draft-schmidt-multimob-fmipv6-pfmipv6-multicast-06 was solicited for working group adoption, an issue to be discussed on the mailing list.

## SUNSET4

Sunset4 met monday. A change to the charter was discussed. Further changes will be required to reach wg consensus. The main controversial issue is about the inclusion of CGN and other IPv4 life support work into the milestones of the charter. A possible solution that was raised is to restrict the scope to scenarios where IPv6 is deployed, but requires some work on the IPv4 side to continue reaching the non-converted IPv4 Internet.

draft-george-ipv6-support, which is the reference to the sunset4 direction, has been discussed but did not get consensus to be adopted in the working group. Possible candidates would be other working groups such as intarea, AD sponsored or IAB. The IAB IP evolution will look to see if it may take on this work. A comment was made that it would be better to use the normal IETF process (wg consensus, LC, IESG,. ...) than the IAB stream. Documents on gap analysis, a milestone already in the current charter, have been discussed. draft-dionne-sunset4-v4gapanalysis has seen unanimity to have this work done in the wg. draft-perreault-sunset4-noipv4 has been discussed and found strong support for being worked in the wg. However, it is currently not a milestone in the charter but in the new proposed charter. draft-ietf-v6ops-464xlat has been presented but is currently a v6ops document. The chairs of the v6ops, sunset4 and respective AD will discuss which wg it should land.

## TICTOC

The TICTOC WG met jointly with the NTP WG on Tuesday, 31 July 2012. See the NTP report for the details of that portion of the agenda.

The TICTOC WG currently has three active work items all of which were addressed at this meeting.

1. Transporting PTP messages (1588) over MPLS Networks (draft-ietf-tictoc-1588overmpls-02) - After discussions in Paris, two major decisions were made that impacted this effort. First, it was decided to make the protocol agnostic to the timing protocol being carried as opposed to PTP (1588) only. Also, it was decided that the draft needed to be made more generic. This resulted in splitting into a data-plane draft to remain in TICTOC and several control-plane documents, each to be handled by the appropriate WG. Several questions about the updated document were raised, discussed and sent to the list. After resolution, the draft will go to WG LC.

2. PTPv2 MIB (draft-ietf-tictoc-ptp-mib-02) - An 03 version was uploaded after the lockout period. This draft addresses all the comments from the March meeting and those received from Andy Bierman as a MIB expert. The authors believe that all the outstanding issues have been resolved. The authors will check that the MIB successfully compiles according to the OPS area guidelines. After that the document will go to WG LC.

3. Time Synchronization Protocol Security Requirements (draft-mizrahi-tictoc-security-requirements-02) - The 02 draft has addressed all the comments received to date. The WG asked the ID authors to add a description of timing trust traceability (referred to currently as proventication). Another draft will be issued and depending on the level of comments received, a WG LC is possible.

## NTP

The NTP WG met jointly with the TICTOC WG on Tuesday, 31 July 2012. See the TICTOC report for the details of that portion of the agenda.

1. Autokey update: An effort has been initiated to updated the NTP Autokey draft to address identified security vulnerabilities and to produce a standards track specification. An initial draft scoping the potential updates has been produced.

2. NTP Control Protocol (Mode 7) - Updated draft was produced, but Karen didn\'t get it uploaded. This will be done after the meeting.

3. Interleave Messages - A document editor is solicited to document the NTP interleave option currently implemented in the NTP code base.

## LWIG

The information and update about IP Smart Object Alliance was shared with the audience. An important message is that IPSO keeps arranging inter-operable events and will bring back experience and gaps to lwig working group and IETF.

The working group document draft-ietf-lwig-guidance-01 was presented then. This is the only work item till now. The document was adopted after IETF83 meeting and was updated in July. Although the document was filled with many contents regarding device classification, 6lowpan and coap implementation guidance, many parts of the document are still left blank. At the meeting, the editor called for more contribution and inputs. Suggestions were well received. The Area Director called for everybody who has read the document to send their contribution or review. The organization of the document was also questioned, and suggestion to include contributions on some independent topic was made. Offline work will be ongoing after the meeting.

The document draft-arkko-core-cellular-00 about how to build power-efficient cellular m2m devices was presented and comments were well received. This work introduces several concrete guidance on how to handle sleeping nodes and make them energy efficient for requirement. The group has not decided how to handle this document.

## TRILL

TRILL held two sessions on Thursday. The highest priority technical items for TRILL at this time are OAM and fine grained labeling. Administratively, the TRILL Milestones need to be updated and possibly TRILL needs to be rechartered to re-align work items. On OAM, good progress is being made through informal cooperation towards aligning TRILL OAM with IEEE 802.1. The TRILL WG has an OAM Design team and a number of individuals primarily active in 802.1 have been added to that team. There are now WG TRILL OAM requirements and personal TRILL OAM framework drafts posted. On fine grained labeling, the current WG draft needs to be changed to avoid using an Ethertype owned by IEEE 802.1 in a way not acceptable to 802.1. A presentation was made giving two ways to fix this. Presentations were made on a variety of other topics ranging from TRILL Traffic Engineering and multi-topology to a Linux port of the Solaris open source TRILL implementation. Sine the ISIS WG did not meet at this IETF meeting, and at the suggestion of the ISIS Chairs, a presentation was given on a replacement for the current RFC 6326 on TRILL Use of IS-IS.

## HOMENET

Homenet met for two 1.5 hour sessions at IETF 84. The meeting room was quite full, and meeting time used fully. As usual, the agenda was aligned with our 5 focus areas, beginning with the overall homenet architecture document which had undergone 2 revisions since the last IETF meeting. There was consensus that the homenet architecture document is in a state that, after at least one more revision tightening up existing text and more work on the naming/service discovery section, will be ready for IETF last call. Our goal is for this to occur by the next IETF meeting. The majority of recent list discussion and time during the meeting was devoted to naming and service discovery, followed by implementation status updates for zOSPF (two implementations), and finally Border Discovery. Border Discovery, while reasonably well understood architecturally, is our of our most difficult problems in terms of \"very difficult choices\" that we will have to make going forward. In sum, the working group is advancing quite well, but not as fast as we expected at working group formation. We will be submitting a revised set of milestones for AD review as a next step.

## 6MAN

6man met on Wednesday morning for one session. The working group has 10 active drafts, two drafts at the IESG and one draft in the RFC Editor queue.

One working group draft and eight new drafts was presented and discussed during the session.

The draft-ietf-6man-uri-zoneid was discussed again, and there is consensus to not update RFC4007 and have the document focus on updating the URI definition.

There was strong support for adopting draft-krishnan-6man-resilient-rs as a working group document.

draft-gont-6man-predictable-fragment-id, that describes improved approaches to selecting fragment IDs and includes an update to RFC2460. Given the general issue of \"non-predictable values\" in protocol fields, it was discussed if this was something the IAB should do, or if this effort could be a more general informational document providing implementation guidance.

There is contention about draft-ietf-mboned-64-multicast-address-format that suggests to add a new set of flags to IPv6 multicast addresses for IPv4 to IPv6 translation. The conclusion from the discussion was that the working group needs more information on how this was going to be used and who was interested in deploying IPv4/IPv6 multicast translation solutions before the working group could consider the draft. The current document was not adopted as a w.g. document.

There were several proposals around managing address assignment policy (stable, temporary or mobile addresses) as well as clarifications around the M/O bits. There is a philosophical debate to be had, of who is in charge, and if hosts are required to follow what is currently hints from the network. On a similar vain, a draft called \"IPv6 semantic addresses\" was presented in v6ops, that may lead to application specific addresses. And resulting consequences for source address selection policy.

## INTAREA

The intarea working group met in Vancouver for a two hour session. The draft defining an updated spec for the IPv4 ID Field (draft-ietf-intarea-ipv4-id-update-05.txt) has been evaluated by the IESG but has some DISCUSS positions that need to be resolved. The author was not present in Vancouver. The NAT reveal analysis draft had completed WGLC before the meeting. There was a discussion at this meeting intended to resolve the open comments. There was general agreement in the WG that the work analysing the solutions was useful, but there was strong opposition to making a recommendation in the draft. There was also concern that there was an entire class of solutions (out of band) that were left out of the draft. The authors will work on a new revision to remove the recommendation in the draft and add a generic analysis of the out of band solutions.

The multihoming with NPTv6 draft was presented and there is still no consensus on the way forward here. The main bone of contention seem to be about what to do about the broken referrals. There was a draft about load balancing that was presented but it is unclear whether intarea has the expertise to review this draft. I have asked one of the load balancer vendors (F5) to take a look and comment. There was a presentation regarding a new address resolution architecture for data centers. It is unclear if this work is in scope for intarea as it is strongly connected to armd. This needs to be discussed with the INT and OPS ADs as well as the armd chairs. There were some informative presentations on IEEE work on the subjects of Omniran as well as the IEEE Registration Authority who talked about the impact of Virtualization on the OUI tiering.

## SOFTWIRE

The softwire working group met in Vancouver for a two and half hour session. The chairs presented the document status and the proposed agenda. The public 4over6 draft completed WGLC but there were some open issues that came up during the WGLC. There will be a new revision of the draft to address the issues raised. The softwire mesh multicast draft was also presented but there is an issue with a normative reference on this draft. The address format that the draft uses is dependent on a draft that has received some unfavorable review in 6man. The authors will investigate if it is possible to remove the dependency on this specific address format.

The bulk of the discussion time was allocated to discussion of the stateless solutions with the intention of picking one preferred solution for the wg to move forward with. With this in mind, the authors of the various solutions presented their views on the solution space and their comparative views of the solution drafts. There were also implementation reports for all of the solutions and interop reports for a subset of the solutions. There was an open discussion where people were allowed to make cases for their solutions. After this, the chairs asked a series of questions for the determine the solution that the WG preferred as the basis for the eventual proposed standard stateless solution. The sense of the room was that MAP-E was the preferred option to be the basis of the solution. This choice will be confirmed on the mailing list.

## DMM

The DMM WG works on distributed mobility management topic. The main challenge the WG seeks solutions for is to avoid locking to a single, possibly centralized mobility anchor (such as a Mobile IP Home Agent) for the duration of the entire user session for all IP flows. The WG has recently adopted its first document (draft-ietf-dmm-requirements) that details the essential DMM solution requirements. In parallel the WG is working on a gap analysis document(s) describing whether existing IETF IP mobility enabling protocols meet the DMM requirements. Furthermore, the WG studies what current practices are used with existing IETF IP mobility enabling protocols to avoid centralized mobility anchors.

## MIF

MIF working group has below topics discussed during the IETF meeting on Wednesday afternoon 
1. draft-ietf-mif-dns-server-selection-04 is in IESG review, there are two discusses. Author has met with IESG reviewer and submit a new version. 
2. draft-ietf-mif-dhcpv6-route-option-04 is in Post WG LC, and is not presented this time, chairs suggest a way to move forward by 
   a.  Get all issues into an issue tracker 
   b.  Resolve issues on list and in Atlanta 
   c.  Effort focused on modifying our WG draft to match consensus of the WG, if any 
3. There is a strawman about IEEE 802.21 MIH SAP, There may have some proposal about how to improve current MIF API document. 
4. draft-ietf-mif-api-extension-00 is presented and propose WG LC befor the next week. 
5. draft-ietf-mif-happy-eyeballs-extension is firstly presented as WG document, there is a disucssion to propose to use happy eyeball to solve DNS split issue. 
6. Session continuity based on mif api has been presented, some people believe that we should proceed this document. 
7. draft-mglt-mif-security-requirements-01 propose extend MOBIKE to support two interfaces\'s SA during the multiple connections, there is a comment that Mobike was designed support only one connection because there are no such requirement. 
8. draft-sarikaya-mif-6man-ra-route-01 is presented to split RFC 4191 option to support next hop address and metrics.

## NETEXT

The main items for the WG and their status are as follows:

1. Flow Mobility ID (draft-ietf-netext-pmipv6-flowmob): this is stable now. The ID does not normatively rely on the Logical Interface document, and as such, can progress towards WGLC

2. Prefix Delegation ID (draft-ietf-netext-pd-pmip): this document has completed three detailed reviews. It looks ready for WGLC

3. EAP Attributs for WiFi-EPC integration (draft-ietf-netext-wifi-epc-eap-attributes) has been updated. No major revision items are expected.

4. New WG ID on QoS for PMIP6 (draft-ietf-netext-pmip6-qos) is being discussed

We expect to progress 1) and 2) in the near-term and 3) shortly thereafter.

We would like to make progress on the Logical Interface document (draft-ietf-netext-logical-interface-support-05) with the help of a new Editor (Julien Laganier). This ID needs attention and possibly major re-work before we can progress it.

Beyond the above, there seems to be interest in an Informational document on mapping EPC QoS to !WiFi (draft-kaippallimalil-netext-pmip-qos-wifi).

## LISP

LISP is chartered to work on the Location/ID Separation solution for addressing the global routing scalability concern. All published protocol documents are chartered to be Experimental.

LISP met in Vancouver for 1.5 hours. The Chairs presented the current status of the 7 drafts which reside in cluster 62 of the RFC-editor queue. A small amount of time was spent on hearing WG draft updates. The remaining time was spent hearing about new work, mostly all in charter scope. Of note were WG adoption requests for 3 in-scope documents and 1 WG last call was requested. A WG discussion that will need to occur is in relation to the mapping system as in Vancouver 2 options have been presented. The LISP Delegated Database Tree and the LISP Single-Hop Distributed Hash Table Mapping Overlay.

The Chairs noted that while the room was near capacity, and an additional 30 minutes would have been useful to complete the agenda, and the core participants in the room were only a small number in comparison to the number of attendees. That same ratio was evident when the assembly was asked to indicate if they had read the document that was being discussed.

## L2TPEXT

Layer Two Tunneling Protocol Extensions (L2tpext) did not meet in Vancouver.

## DHC

The DHC working group met for two and a half hours during the Monday morning slot at IETF 84.

We heard presentations on the following drafts:

-   Options for ANQP Servers (Some question as to whether work was premature; authors believe it is useful for getting rid of proprietary protocols. No working group action\--discussion to move to mailing list.)
-   DHCPv4 Options for Port-Set Assignment (this received some discussion; the main focus was on the complexity of the option, due to the desire to support multiple port set obfuscation algorithms. No conclusions drawn; discussion to continue on mailing list.)
-   DHCPv6 Option Guidelines (Sheng Jiang presented status report, requested review from the working group.)
-   DHCPv4 over IPv6 Server Option (Some technical discussion, working group agreed to adopt, Tomek to send adoption request to mailing list)
-   DHCPv4 and DHCPv6 Access Network ID options (Will have a call for adoption on the working group mailing list)
-   DHCPv6 class-based prefix (No working group action at this time)
-   Client link-layer-address option (No working group action at this time)
-   Populating the DNS Reverse Tree for DHCP Delegated Prefixes (will send call for adoption to mailing list)
-   Radius Option for DHCPv6 Relay (presenter couldn\'t attend due to visa problems, requested that working group participants review the document)
-   Multiple Stateful DHCPv6 Options Issues (will do WGLC on mailing list)
-   Mitigating Aggregated Traffic in DHCPv4 (some concern about DoS; no specific working group action\--we are not sure it belongs in DHC anyway)

## PCP

No summary submitted.

&nbsp;
&nbsp;

---

*The content on this page was last updated on 2012-12-14. It was migrated from the old Trac wiki on 2022-12-14.*
