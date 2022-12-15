---
title: WG Summaries for IETF 87
description: 
published: true
date: 2022-12-15T02:28:05.486Z
tags: 
editor: markdown
dateCreated: 2022-12-14T22:01:16.207Z
---

## HIP

The HIP WG is chartered to finish an old Experimental RFC-to-be and to revise the main HIP specs, which are also Experimental, into Proposed Standards.

The old Experimental RFC-to-be is draft-ietf-hip-reload-instance

This draft was simply waiting for the RELOAD spec to be approved. Now that that has finally happened, this draft is being progressed. We have already requested its publication.

The WG also has a few \"bis\" drafts. They revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity.

We intend to request their publication in batches so that reviewers have the necessary context when performing their reviews. We will be requesting the publication of the first batch, which includes RFC 4843bis, RFC 5201bis, and RFC 5202bis, shortly.

## Sunset4

Sunset4 had 2 sessions during IETF87.

The first session discussed the gap-analysis draft, an ARP issue draft, an analysis draft on NAT64 port allocation methods, a method to filter DNS A records draft, and a SIP-v4-v6 issues draft. No change were discussed on the status of the documents. The problem statement part of the ARP issue draft is being considered to be folded into the gap-analysis draft. The solution part of the same draft will require more work.

The second session was held together with DHC. The goal is to identify overlaps between the WGs and to raise awareness of both WGs about the related works. The turn-off-ipv4 using dhcpv6 and RA draft, the DHCPv4 over DHCPv6 draft, the DHC v4 configuration draft and the DHCPv6 dynamic DNS reconfigure draft were discussed. The first one has been primarily discussed in sunset4 and the remaining have been primarily discussed in DHC. No change were discussed on the status of the documents. The sunset4 turn-off-ipv4 using dhcpv6 and RA draft seem to raise no major issue from both groups and seems an acceptable approach. However concerns about the MIF case and security considerations need to be addressed. It will be most likely balloted in the sunset4 for WG adoption.

## TRILL

The TRILL WG met in the last time slot on Tuesday. The initial review of document and WG status also included a brief report on the recent TRILL plugfest at the University of New Hampshire Interoperability Laboratory in May, which lead to also discussing TRILL implementation reports. The primary topic of the TRILL meeting was OAM. RFC publication of the OAM framework document is being requested. The OAM Fault Management document is now a WG document and personal drafts exist for Performance and OAM MIB. There was considerable discussion concerning the fault management, performance, and MIB drafts and a consensus in the room that, because the current OAM efforts are based on IEEE 802.1 OAM, it is time to send a formal liaison to IEEE 802.1 requesting their review of the framework and fault management documents. The second topic of the meeting was TRILL directory assisted edge, covering mechanisms and pre-encapsulation, which were also discussed. Finally, there was a presentation on problems to be overcome in active-active at the edge for which some discussion occurred although the meeting had run a bit over time.

## DMM

The DMM WG on Thursday first two slots and had a full agenda. The two WG documents: the \"requirements document\" (draft-ietf-dmm-requirements) and the \"current practices and gap analysis\" (draft-ietf-dmm-best-practices-gap-analysis) have done some significant progress since the IETF86. The charter milestones were updated. The new milestones are now:

Oct 2013 - Submit I-D \'Solution Requirements\' to the IESG..
Nov 2013 - Submit I-D \'Gap Analysis\' to the IESG..
Nov 2013 - Evaluate the need for further work..

The requirements document have completed the WGLC#2 in April and since then number of open issue tracker tickets have gone down to 4 from 39. The remaining 4 were discussed during the face to face meeting and we have a resolution for those. After the new revision gets published the document is ready to go for another WGLC#3.

Regarding the gap analysis, it was stated by the chairs multiple times that for the new work to appear in the WG through rechartering the justification for it has to be found in the gap analysis document as a WG agreed identified gap. A common theme for most DMM solutions seems to be a need or ability for an end host (a mobile host) stack and/or application be able to distinguish which addresses/prefixes offer mobility/anchoring and which does not. Regarding the knowledge of the address/prefix \"properties\" there are individual I-Ds on the same space in 6MAN, DHC and Mif WGs (prefix coloring/classes/properties and multiple provisioning domains).

The WG also had again multiple presentations on the \"DMM framework\". The WG had a quick discussion and a poll for the possible work for a generic framework document. Around 20 people showed interest, thus once the WG possibly recharters, a \"DMM framework\" document is among candidate future work.

In addition to presentation of the individual I-Ds that have been around already for some time, we had a new presentations on a BGP (and anycast) based architecture solution (draft-matsushima-stateless-uplane-vepc) and a SDN based architecture solution for DMM (draft-liu-sdn-mobility).

## DHC

The DHC WG had two sessions. The first, on Wednesday, was a joint session with Sunset4 and is described in the Sunset4 summary.

The second session, on Thursday, was for DHC exclusively. The session started with the chairs providing a status of the WG since the IETF-86 (Orlando). 4 documents were published as RFCs and 3 completed WGLCs and are close to being published. Also, this was the tenth anniversary of the DHCPv6 protocol (RFC 3315) as it was published July 30, 2003. Next, the re-chartering text was reviewed and a few edits were requested. The DHCP Directorate proposal was reviewed, and a few edits were requested. Then, a recap of the joint meeting with Sunset4 was provided. Next, the DHCPv6 Option Guidelines draft status was discussed; this will be going to the IESG shortly. Next, there was an update and discussion on the DHCPv6 Stateful Issues draft. Then, there were 3 presentations related to configuring IPv4 clients over IPv6 and with a lively discussion. Finally, there was a presentation on new DHCPv4 options for address assignment with port assignments. Several presentations were not given as we ran out of time.

## TICTOC/NTP

The TICTOC WG has completed WGLCs on the timing security requirements and 1588 MIB documents. These will be advanced to the IESG within a month. The new work item on an Enterprise PTP profile was updated and presented to the working group. There is concern about the proliferation of 1588 profiles, but there is also recognition that the enterprise/data center application is not covered by other profiles. This profile has been implemented and deployed by multiple vendors.

A WGLC for the \"Transporting Timing messages over MPLS Networks\" draft has also been started and copied to the MPLS WG. There is some opposition to the motivating requirement and proposed solution addressed in this draft. Discussion in the working group identified two threshold questions for determining whether the document should move forward, does the solution harm MPLS, and does the solution prevent other solutions in the future. This was discussed with the MPLS WG on Friday. The result of that conversation is the MPLS chairs will find some MPLS reviewers, and upon completion of the review, a design team call will be scheduled to address the comments received.

The NTP WG has several items under consideration. The Network Time Security (autokey replacement) document was updated and presented. Drafts on the ntp extension field and udp checksum with ntp are under consideration. Finally, an expired draft on mode 6 messages needs to be resurrected and completed. Volunteers were solicited.

As part of our ongoing liaison communications, status reports from ITU-T SG15/Q13 and IEEE 1588 were provided.

## 6MAN

http://trac.tools.ietf.org/wg/6man/trac/wiki

## LWIG

http://trac.tools.ietf.org/wg/lwig/trac/wiki#LwigSessionatIETF-87inBerlin

## MULTIMOB

Two working group drafts were discussed. draft-ietf-multimob-pmipv6-source-04 was presented first. It is ready for Working Group last call. Three people volunteered to review the draft. After the reviews, the draft will go for a Working Group last call. Next draft-ietf-multimob-fmipv6-pfmipv6-multicast-01 was presented. This draft needs to go through editorial polishing and then a revision will be posted. Two Working Group members volunteered to review the draft after the revision is posted. Two out-of charter issues were discussed next. MN activity tracking at the LMA when RFC 6224 is used at the MAG was presented. Next, multiple MTMAs and avoiding tunnel convergence problem issue was discussed.

It was discussed with the AD closing after the current Working Group drafts are completed.

Multimob in IETF 87 in Berlin has made good progress and there are no major concerns.

## HOMENET

The Homenet Architecture document went through a second WGLC and has now been advanced to the IESG.

"Source and Destination Routing" has appeared from 3 independent tracks and authors, each reaching largely the same conclusion. A meeting was held on Thursday with interested parties and a path forward agreed upon that includes one document targeted to the rtgarea which contains general motivating use cases and common set of requirements which routing protocols would need to follow to implement source and destination routing. There may be additional implementation specific documents, either in homenet, intarea, or elsewhere focusing on the extensions to the forwarding behaviour for a source and destination routing implementation.

We have invited volunteers to join a Design team to focus on incremental phases for Homenet deployment, and an initial meeting was held on Thursday to examine the gaps in the specifications and protocols needed to allow interoperation between an eRouter spec device and a "full Homenet" network.

The WG believes service discovery across multiple links is very important, and is watching the work in dnssdext very carefully. draft-stenberg-homenet-dnssdext-hybrid-proxy-ospf describes how draft-cheshire-mdnsext-hybrid can be applied in an homenet in a scalable and zero configuration manner.

The authors of draft-mglt-homenet-front-end-naming-delegation will work with the developer of "dnsmasq" to incorporate his experiences implementing similar techniques.

Last, but not least, the chairs are proud to report that the vast majority of protocol discussion during the meeting was based not only on Internet Drafts, but on actual implementation (much of which has already been released as Open Source).

## INTAREA

The intarea working group met in Berlin for a two hour session. The draft containing the Analysis of Solution Candidates to Reveal a Host Identifier (HOST_ID) in Shared Address Deployments describing has been published as RFC6967. The draft describing the use of the IPv6 Flow Label for Server Load Balancing has completed WGLC Will be progressed after this meeting. Brian Haberman presented some background information about the implementation status experiment described in RFC6982.

There was a presentation describing a fragmentation strategy for GRE. There were some questions about how ECN information would be handled in the fragments. There were not enough participants who had read the draft and the chair requested volunteers to review the draft. There were two volunteers to do so. After receiving the reviews a call for adoption would be issued on the mailing list.

There was a presentation concerning a set of drafts that describe how applications can use metadata to signal traffic characteristics to the network. There was lively discussion of this topic and the general sense of the room about these drafts was overall negative. It was also the opinion of several people who spoke up that tsvwg was the proper venue for this work.

There was a presentation about a draft describing a stateless userplane for virtual evolved packet core networks. It was presented in intarea to increase awareness for this work being performed in the mobility related working groups in the intarea. There was widespread interest in this draft and further discussion will happen on the mailing list.

There was a presentation concerning issues with IP links on spontaneous wireless networks. There was a lot of interest in this draft and since the issues raised in the draft are common across several types of wireless links intarea may be a good place to host this work. Further discussion and potential adoption will happen on the mailing list.

The draft regarding scaling ARP for large data centers had been revised based on comments received at the IETF86 intarea meeting as well as on the mailing list. There were not enough people in the room who had read the draft and a call for adoption of this draft would be issued on the mailing list after the meeting.

## SOFTWIRE

The Softwire Working Group met at the IETF meeting in Berlin for a two and a half hour session. Since the Orlando meeting, Deployment Considerations for Dual-Stack Lite has been published as RFC6908 and the 6RD RADIUS draft has been published as RFC6930. The draft documenting Public 4over6 has been submitted to the IESG as an Informational document. The working group also adopted 3 new drafts as working group documents: lightweight 4over6, MAP MIB and MAP Radius. Two multicast related documents in the working group will be submitted to IESG soon: DS-Lite multicast and multicast-prefix-option, while the third, mesh multicast, will start a working group last call soon. WGLC has completed successfully on both the DS-Lite MIB and Mesh MIB drafts. These drafts will be sent for review by the MIB doctors before submitting to IESG. A call for adoption of the 6RD MIB draft has been issued on the mailing list, but a further review is needed on both document quality and necessity before adoption.

The chairs received more than 20 requests for presentations. The wg documents including the unified CPE, lw4over6 and 4rd documents were prioritized and presented first. The goal was to get open issues on wg documents resolved first before discussing any new work. The meeting also allocated some time for discussion about the dhcp extensions for both MAP and lw4over6. WG discussed some related issues, especially on the tickets recorded by the Issue Tracker. There are still some open issues. Since the wg document of MAP DHCP has changed quite a bit, a consensus check will be performed on the mailing list regarding the scope of the draft. A draft describing use cases for MAP-T was presented and there was widespread support in the room to adopt it. The draft will be adopted as a wg item pending confirmation on the mailing list. There were some presentations related to lw4over6 and MAP-T and further discussion about this will take place on the mailing list.

## MIF

http://trac.tools.ietf.org/wg/mif/trac/wiki/WikiStart#

## NETEXT

The netext working group met in Berlin for a two hour session. The flow mobility draft was presented first and the open issues on the draft were discussed. There was an issue that the authors felt was not real and did not want to change text. The wg discussed this during the meeting and the sense of the room was not to make any changes. This will be confirmed on the mailing list. There was a presentation of a proposal to separate the control plane path and the data plane path for the mobility nodes. It was generally well received and the room was in favor of adopting this as a wg draft. The draft about !WiFi QoS was presented and will be reviewed by a few volunteers before deciding on any course of action.

&nbsp;
&nbsp;

---

*The content on this page was last updated on 2013-08-20. It was migrated from the old Trac wiki on 2022-12-14.*