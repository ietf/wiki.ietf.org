---
title: WG Summaries for IETF 90
description: 
published: true
date: 2022-12-15T02:40:42.300Z
tags: 
editor: markdown
dateCreated: 2022-12-15T01:18:56.682Z
---

## DMM

DMM had two meeting slots this IETF. The WG has completed its current charter and delivered all milestones. The WG is about to recharter any time soon, since there is interest to continue into the solution space in distributed mobility management. Considerable amount of meeting time was spent to discuss about the rechartering and \_how\_ to continue from here, specifically after we have rechartered. As usual we got a set of presentations of DMM solutions, an update of 3GPP progress on CSIPTO (which relates closely what DMM has been doing), BBF progress in RGs with combined multiple WAN link technologies (LTE being the other one) and about AERO.

The next step is completing the charter text and move ship that to the approval process. There is already a consensus among the WG members on the identified initial work areas. The WG also approved for the next steps on organizing the work, which will involve periodic interim meetings and possibly smaller interest groups (or design teams) to work on the document skeletons.

## 6lo

Since IETF90, the WG adopted two new IPv6-over-foo documents (draft-ietf-6lo-6lobac and draft-ietf-6lo-dect-ule-00). Moreover, draft-ietf-6lo-ghc (generic header compression) and draft-ietf-6lo-lowpan-mib (MIB module for the lowpan adaptation layer) have passed a WGLC. Shortly after IETF90, we requested publication for the MIB module draft; the LC for the GHC draft ends on August 7. draft-ietf-6lo-lowpanz (IPv6 over Z-wave) has been submitted for publication during IETF90 and is awaiting AD review. draft-ietf-6lo-btle (IPv6 over Bluetooth Low Energy), which we inherited from the closed 6lowpan WG, is in IESG evaluation, waiting for external updates from the BTLE sig group; once this is completed, the document will need to have another WGLC, since changes were made to the specification by BTLE sig.

During the IETF90 meeting, several new individual drafts have been presented, that can roughly be classified into IPv6-over-foo documents, 6lowpan enhancements, 6lo security (lightweight IPsec and secure Neighbor Discovery), and other related documents.

On Sunday of the IETF, the 6TiSCH/6lo/ROLL WGs organized a plugfest, which was a great success demonstrating various implementations of WG and individual drafts, with a focus on the TSCH mode of IEEE802.15.4e, 6lowpan, RPL and new WG specifications. The intention is to repeat this event at IETF92.

## 6TiSCH

The 6TiSCH group is using bitbucket to store drafts, agendas, minutes and meeting materials: https://bitbucket.org/6tisch

In particular the report from the Toronto meeting at IETF 90 is can be found at https://bitbucket.org/6tisch/meetings/wiki/140721b_ietf90_toronto

The wiki page for the plugfest can be found at https://bitbucket.org/6tisch/meetings/wiki/140720a_ietf90_toronto_plugfest

## DHC

DHC WG met on Wednesday morning. The session was attended by 44 people and lasted the full 150 minutes allocated.

The chairs provided an update since IETF 89. There were two RFCs published, RFC 7227 and RFC 7283, and one document is in the RFC editor queue. 5 internet-drafts were last called, with 4 passing and 1 failing. 2 of the passed documents have since been sent back to the WG by the AD and the other 2 are shortly due to go to the AD. 1 call for adoption was issued (draft-csf-dhc-dynamic-shared-v4allocation) and it was adopted.

Nine presentations were given during the session:

Tomek Mrugalski gave an update on the RFC-3315bis work status and also discussed several issues to gain input.

Bernie Volz gave an update on draft-ietf-dhc-dhcpv6-stateful-issues and also discussed the outstanding issues to gain input.

Dacheng Zhang updated on the group on draft-ietf-dhc-sedhcpv6 and discussed an open issue that was raised after WGLC.

Tomek Mrugalski updated the group on the status of draft-ietf-dhc-topo-conf and to confirm that the WG feels this is ready for last call.

Qi Sun presented draft-ietf-dhc-dynamic-shared-v4allocation.

Kim Kinnear discussed what has happened with draft-ietf-dhc-dhcpv6-failover-design after the AD sent the work back to the WG. The failover-design document is being revised and some of the material is moving to a new failover-protocol document.

Tomek Mrugalski asked whether the WG should work on a DHCP Privacy Considerations document. There was interest and a half dozen volunteered to contribute and co-author.

Li Xue presented draft-xue-dhc-dynamic-gre and there was a discussion as to where this work should occur.

Suresh Krishnan was asked by the chairs to update the group on the Multiple Provisioning Domains work being done in MIF. This was informational only as issues should be discussed in MIF.

## TRILL

The TRILL WG met in the first meeting slot Monday morning. Its three major efforts currently are OAM, active-active, and directory assist in approximate order of decreasing priority. After a review of document and milestone status, Sue Hares reminded people of the survey to gather information for the TRILL implementation report for which Sue is editor.

On TRILL OAM: The two main TRILL OAM drafts, draft-ietf-trill-oam-fm and draft-ietf-trill-loss-delay, are through IETF Last Call and being considered by the IESG. RFC 7319, that sets up the IANA registries for the IEEE 802.1 CFM code points used by trill-oam-fm, was issued last Friday. There was a presentation on YANG and a TRILL OAM FM YANG module as part of an overall OAM model that would then be augmented for TRILL or other efforts such as NVO3. There was considerable discussion of this concept and of the TRILL FM OAM YANG module including whether it should include performance or that should be a separate document. The chairs started a three-week call for WG adoption of trill-yang-oam.

The next topic was Active-Active with presentations on the two main active-active drafts: draft-hu-trill-pseudonode-nickname and draft-zhang-trill-aa-multi-attach. There was a comment that some hardware might have difficulty using a pseudonode nickname when ingressing some frames but not others. It was pointed out that both drafts have a common mechanism to avoid multiple delivery of multi-destination traffic to a CE and this could be factored out into a separate draft. Both of these documents were in call for WG adoption ending at this TRILL WG meeting. There had been good support on the mailing list and, without objection in the room, the chairs adopted them.

A presentation on TRILL Link Protocols and then one on the changes in draft-ietf-trill-over-ip from version -00 to version -01 were given. One comment was that direct use of TRILL over UDP is not supported by current hardware but that other possibilities, such as TRILL over Ethernet over VXLAN, would be supported by current hardware. There were questions on congestion control with a sense in the room that the current provisions in the draft are inadequate.

An update on Directory Assisted Edge was presented including the status and possible next steps on the four related drafts. Presentations were given on two drafts on improving Layer 3 gateway (gateway at the IP level between VLANs or the like) access in the TRILL campus: draft-hao-trill-irb and draft-hao-trill-anycast-gw.

Finally, there was a presentation on a proposed RFC 7180bis (TRILL Clarifications, Corrections, and Updates) listing proposed additions and deletions from the current RFC 7180. There were no objections to the suggested changes.

## MIF

<https://tools.ietf.org/wg/mif/trac/wiki/WikiStart#>

## SOFTWIRE

The softwire working group met in Toronto for a 2 hour session. Since the London meeting, the MAP-E and Lightweight 4over6 documents have been submitted to IESG as standards track documents, while 4rd and MAP-T have been submitted as experimental documents. When the map-dhcp draft resolves the issues raised during WGLC it will be submitted to IESG. These five documents will be handled together by the IESG.

The agenda consisted of presentations on 4 WG drafts and 7 individual drafts. The presentations on DS-Lite MIB and mesh MIB uncovered no new issues. After MIB doctor re-review, these two docs will be submitted to IESG. The unified-CPE draft has been in the expired state for a while and the presenter wanted the WGs opinion on whether there was value updating the draft. There were some discussions on it and we leave further discussion to ML. After the presentation on map-deployment, the WG discussed whether to merge map-deployment and lw4over6-deployment into a single document. Most of the attendees preferred to have separate two docs. There were several presentations on individual drafts for the WG, including deployment considerations for lw4over6, recommendation for prefix binding in DS-Lite, unified IPv6 transition framework, dynamic IPv4 provisioning for lw4over6 and the DHCPv4 over DHCPv6 source address option it relies on, and multicast support for 6rd and MAP. Not many people had read the documents and we decided to take further discussions to the mailing list. The chairs would appreciate more reviews and feedback on these individual drafts on the mailing list.

## INTAREA

The intarea working group met in Toronto for a 2 hour session. There were two presentations about conveying host identifiers across NATs. The first one tried to compare and contrast the privacy implications of such host identifiers with existing IPv4 and IPv6 addresses as identifiers. The second one presented a draft that describes several scenarios where such identifiers are considered to be useful. It was clear from the response to these drafts that the privacy issues with this draft need to be explored further. The discussions will continue on the mailing list. There was a presentation about a router alert option for MPLS. The work is mainly related to MPLS and the chairs will discuss with the ADs about the best venue for this draft. There was also some discussion about the GRE fragmentation draft that describes two vendor implementations. We will be doing an adoption call on this draft as soon as a new revision is posted that clarifies that this is an informational document intending to document existing behaviour. There was a presentation about the power usage in WiFi networks that results due to the use of IPv6 multicast. This was informational and no further work is expected in intarea. The CGA-TSIG draft was revised and was presented again. There were several comments that mentioned that the problem that this draft tries to solve has not been clearly laid out. We will continue discussion on the mailing list and decide whether to do an adoption call as soon as the problem statement has been clarified.

## 6MAN

The 6MAN WG did not meet during IETF 90.

## NETEXT

The NetExt WG met on Thursday (July 24, 2014) afternoon at 1300.

The WG has produced RFC 7148 and RFC 7222 since IETF89. The WG has two documents in IESG and has four remaining IDs. The WG met to discuss the status of its remaining work. This includes assessing whether one of the WG documents (Logical Interface ID) still has enough interest (e.g., volunteers for reviews) to be published as a WG document. The group is close to issuing the LC on the Flow Mobility document. The WiFi QoS Mapping document, and the Civic Location Extensions document need further reviews. The WG decided to conduct its business via the mailing list until concluding its work.

## HIP

The HIP WG is chartered to revise the main HIP specs, which are Experimental, into Proposed Standards. Consequently, The WG has a few \"bis\" drafts, which revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity.

We intend to request their publication in batches so that reviewers have the necessary context when performing their reviews. The first batch included RFC 4843bis, RFC 5201bis, and RFC 5202bis. At present, RFC 4843bis is on the RFC Editor\'s queue while the other two documents are under IESG evaluation. The WG is actively working on preparing a second batch for pub req.

## LISP

[Summary Activities 90th IETF Toronto]([http://trac.tools.ietf.org/wg/lisp/trac/wiki/90th%20IETF%20Toronto)


&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-09-19. It was migrated from the old Trac wiki on 2022-12-14.*