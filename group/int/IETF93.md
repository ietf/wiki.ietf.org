---
title: WG Summaries for IETF 93
description: 
published: true
date: 2022-12-15T02:46:58.776Z
tags: 
editor: markdown
dateCreated: 2022-12-15T02:46:58.776Z
---

## 6MAN

The 6MAN working group met for a 2 hour session on Monday afternoon at IETF93. The session was well attended.

The agenda was organized to give priority to working group drafts, individual drafts with active discussion, and new individual drafts. With the new individual drafts being given 5 minutes and 3 slides each. There was no time for presentation of new drafts at this meeting.

A set of the IPv6 documents are currently at the now deprecated Draft Standards level. A significant amount of time was spent discussing approaches to bringing these documents to Internet Standard. While it was understood that the approach would depend on each document, the suggestions that gained approval in the room was:

- Prioritise making a high quality document reflecting the current revision of the standard over just re-classifing the current documents as is.
- Incorporate errata
- Incorporate text in the main document, when updated-by document is clear
- Remove text from main document and add reference when update-by document is a larger change
- Re-classify main document and new referenced documents as a cluster to Internet Standard together.

The chairs will continue this effort with working group contributors. Especially the cluster approach will require close coordination with the AD/IESG and the RFC Editor.

In addition we discussed the issue of source address dependent next-hop selection, hob-by-hob extension header clarifications and consequences of random MACs for IPv6 address mechanisms.

Republishing the IPV6-MIBs as obsolete (draft-fenner-ipv6-mibs-obsolete) was adopted (pending confirmation on the mailing list). IPv6 Segment Routing Header (SRH) (draft-previdi-6man-segment-routing-header) will be called for adoption as soon as it was merged with the accompanying security document.

The proceedings from 6MAN are available at: https://datatracker.ietf.org/meeting/93/materials.html#wg-6man



## 6TiSCH

6TiSCH met on Tuesday afternoon for 2 hours with a packed agenda and a pretty full room, Brian and Ralph attending. Highlight:

- Ralph's review of the architecture indicated that the document mixed architecture and specification level aspects, while not covering all the architecture items in 6TiSCH scope. The discussion led to a proposal that the WG takes back the doc till the architecture is complete, which is probably the lifetime of the WG. The doc would go still down to what Ralph describes as a specification level, but would include security, dynamic schedule and DetNet application. This will be confirmed on the ML 
- The first 6TiSCH Plugtest was a huge success that validated the 6TiSCH minimal draft. Some changes were proposed and supported at the WG, namely suppression of a reference to the architecture in the security section, the MUST for non-storing mode RPL and the computation of the step of Rank by RPL. Other changes were more discussed like the way issues in 802.15.4e are avoided, and the MUST for storing mode RPL. All will be confirmed on the ML. Brian confirmed that the dissector outputs that were used for the plugtest could be placed in annex in the document if the WG thinks it appropriate. The draft will be pushed for IESG review as soon as the issues above are resolved.
- The Interface and CoAP drafts progressed but are blocked by the normative reference to COMI and potentially CoOL. With this in mind, the WG cannot complete that work and must hold it. In the meantime, implementers were asked to provide feedback on the document from their implementation experience. 
- Non chartered work was presented on dynamic scheduling, use of CoAP for MAC level signaling and DetNet. Discussion started at the mike and are now continuing on suggesting to use 802.15.9 as the transport for CoAP, mostly due to the limited naming space in IEs. 
- It results that the group is ready to take new work in. The work is mostly identified and relates to dynamic scheduling, security and interface with DetNet, under the general umbrella of the architecture documents. Re-chartering discussions should start soon.



## DHC

DHC working group met in Prague on Thursday. We had 2 hours slot and we used all of it (went 4 minutes over). 40 people signed the blue sheets, but one of the chairs counted 58 attendees.

- We had a discussion about stable privacy addresses proposal. Although it is a wg item, the group seems to have lost interest in this idea and the consensus in the room was to drop it. Will confirm on ML.
- An update of secure DHCPv6 was presented: it is with IESG now, there are some outstanding issues to be addressed, but nothing major.
- A report from DHCP anonymity profile implementation and testing was presented with good discussion following. The I-D is expected to go to WGLC soon.
- DHCPv6bis effort is moving forward. Number of tickets is finally going down. Six issues were presented and the WG provided feedback.

A number of individual drafts were presented.
- Yang module for DHCPv6 got the biggest support, with around 20 people expressing interest in their work. Adoption call is expected in the upcoming weeks.
- Another draft about authentication and encryption DHCPv6 was presented. A discussion about use cases suggest that some scoping is may be required for this draft to move forward. Around 10 people expressed interest in this work. It is somewhat likely that with some updates this work may be adopted before Yokohama.
- DHCP4o6 active and bulk leasequery was presented with questions being raised whether it is really needed as normal leasequeries could fulfill the requirements. Follow-up discussion on the ML is expected. 
- Finally, a new proposal for relay initiated release for v4 and v6 was presented by a vendor representative with specific deployment use cases. v4 got favorable comments, while v6 was somewhat questioned. Discussion on the ML is expected to clarify that.

## DMM

DMM met on Monday and had a full packed agenda. More agenda time was give to our four Working Team work and we got a short update on each and their next steps. Working Team \'enhanced anchoring\' was encouraged to sharpen the actual and concrete protocol solution they envision.

At the end of Areo address format presentation the question for WG adoption was raised. Numbers (read: 3, for: 2, against: 0). Before WG can proceed with adoption more people are required to read the document.

At the end of PMIPv6 HNP renumbering presentation the question for WG adoption was raised. Numbers (read: 5, for: 2, against: 0). Again, before adoption some more reviews are needed and wider support. Otherwise the progress for adoption seems good.

The last presentation was about multihoming support for residential gateway with PMIPv6, which is basically a MCoA solution for PMIP. Concerns were raised by the MIF WG chair that MIF WG is working on the same topic and suggested waiting while the discussion in MIF has progressed. The DMM chair pointed out that there is no overlap with MIF MPVD work and what this draft is proposing. It was suggested to make this draft PMIP only MCoA solution without any references to other SDO work and then reroute the draft through DMM again (does not need to wait till next meeting).

## DNSSD

Documents discussed and resolution:

[On Interoperation of Labels Between mDNS and DNS]{.underline}\[\[BR\]\] draft-ietf-dnssd-mdns-dns-interop-00\[\[BR\]\] Andrew Sullivan

The WG discussed WG last call comments and considered comments in the room as WG last call comments. Author will make minor revisions and the WG will review the revisions before requesting IESG to publish the document.

[DNS Long-Lived Queries]{.underline}\[\[BR\]\] draft-ietf-dnssd-push-01\[\[BR\]\] Stuart Cheshire

The WG reviewed the technology proposed in the document. There are actually two separate proposals: long-lived queries over TCP and push notifications. A proposal to split the document into two pieces was put forward, with the work on long-lived queries perhaps taken up in the dnsop WG. The participants in the room were polled regarding whether the dnssd WG should take up some or all of this work, with unanimous consensus in favor.

[Multicast DNS (mDNS) Threat Model and Security Consideration]{.underline}\[\[BR\]\] draft-rafiee-dnssd-mdns-threatmodel-01\[\[BR\]\] Rafiee

The WG reviewed the latest revision of the document and provided author additional feedback on the scope of the threats covered in the model. The WG participants at the meeting were polled about whether the work should be done in the dnssd WG (unanimous in favor) and whether the document is ready for WG adoption (unanimous to wait until next revision).

[Review of implementations of Hybrid Proxy for homenet and enterprise]{.underline}\[\[BR\]\]

The WG held a brief discussion of existing implementations of the hybrid proxy draft and the hybrid proxy autoconf draft in homenet. The autoconf draft is ready to be sent to the IESG (waiting on publication of the hybrid proxy draft), and the dnssd WG was encouraged publish the hybrdi proxy draft as quickly as possible.

## 6lo

Agenda: <http://tools.ietf.org/wg/6lo/agenda?item=agenda-93-6lo.html> Chairs: Samita Chakrabarti, Gabriel Montenegro Secretary: James Woodyatt Technical Advisor: Ralph Droms Responsible AD: Brian Haberman

There were two full 6lo sessions on IETF 93 at Prague. The first session was on Monday late afternoon and it was attended by 80+ people and the second session took place on Thursday afternoon. In the first session the group discussed the ITU-T liaison response for IANA registry of 6lowpan (RFC 4944 and RFC 6282) ESC dispatch bytes of which 1-31 values in the first 8 bits following the ESC byte has been used and deployed by ITU-T G.9903 and G.9905 specifications for G3-PLC networks (without informing IANA). ITU-T Liaison co-ordinator, Scott Mansfield and IAB Liaison Manager And 6lo Technical adviser, Ralph Droms took the lead to work with 6lo and roll WG chairs in making the decision on the proposal that IETF would collaborate with ITU-T on this regard and will help register the ITU-T specified bits at IANA. The WG and chairs discussed draft-chairs-6lo-dispatch-iana-registry-00 draft in this context; the draft defines the ESC byte usage and possible allocation of values following the ESC byte.

Hum was taken at the meeting about the following two decisions by the 6lo WG :

•	The IETF will not change the definitions of the code points specified in RFC 4944 and RFC 6282, as published in IANA registry \"IPv6 Low Power Personal Area Network Parameters\" \<http://[www.iana.org/assignments/\_6lowpan-parameters/\_6lowpan-parameters.xhtml](www.iana.org/assignments/_6lowpan-parameters/_6lowpan-parameters.xhtml)\>, in such a way as to affect the ITU-T G.9903 and G.9905 specifications. •	The IETF 6lo working group offers to collaborate with ITU-T SG15 in establishing a new registry for the code points following the ESC dispatch code. This new registry will be populated at the time of its establishment with the Command ID values as defined in G.9903 and G.9905. The ITU-T SG-15 Liaison was sent to both 6lo and Roll working group -- the code-point space is owned by 6lo WG but the decision has an impact on Roll group as well. Thus the same decision was discussed in roll WG. The ITU-T liaison response was due on July 24, 2015.

Miguel Reina Ortega(ETSI) announced plans for 6lo Interop activity at IETF94 in Yokohama; the event will focus on interoperability. The experts call for designing test specifications and testing requirements are completed. Carsten Bormann and Kerry Lynn were named as the two technical experts for the interop at IETF94. The interop will require at least 2 implementations of the same draft for useful test operations. The ETSI plug-fest presentation slides have the details information on the planning. The second session had 9 presentations; draft-thubert-6lo-routing-dispatch-05 discussed a new dispatch type 6loRH for RPL compression scheme and they have chosen option #2 as a viable option as reclaiming MH or Fragment dispatch header space was not an option anymore. 6lo WG and chairs are interested in defining one or more ESC style sequence numbers for TLV structures for extending the meaning of dispatch bytes such as context switching. Besides, draft-ietf-6lo-nfc-01 and draft-ietf-6lo-dect-ule-02 were presented. The NFC draft needs to hear back from NFC forum chairs and the authors of dect-ule believes that the document is ready for last call. 6lo Responsible AD, Brian Haberman announced that draft-ietf-6lo-btle is in its last stage of IESG evaluation phase and will soon become an RFC. Kerry Lynn could not present draft-ietf-6lo-6lobac draft but he has sent out the detailed status in the mailing list. Ines presented an interesting work on ipv6-over-IEEE802.11.ah -- a draft (draft-delcarpio-6lo-wlanah) which defines preliminary requirements of using 6lowpan stack over small-cell Wifi environment as the lowpan compression seems to be very useful for the 802.11ah network and the IEEE liaison Dorothy expressed interest in supporting this document as well thinking about supporting 6lowpan-over-Wifi(802.11). Dave Thaler presented his slides on privacy awareness for 6lo documents -- the guidelines include what to look for when considering the privacy aspects of IPv6-addressing on the devices on case-by-case basis. Dave will write a new draft containing the guidance on privacy by IETF94.

ZigBee Neighborhood Area Network (NAN) is requesting 6lo WG chairs and AD to help with several drafts (draft-ohba-mle-hip-dex and draft-turner-dhcp-6co, draft-kisley-mle) for being RFCs with informational or experimental status by March. They require faster response from the WG and reviews. The deployment scenario for ZigBee NAN is going scale up to 5K nodes using RPL as their routing prototocol and 6lowpan as the base networking stack. Shahid Raza presented his --a few years old draft, draft-reza-6lo-ipsec-01 describing the IPSec AH and ESP compression techniques using the dispatch bytes. The draft has been implemented in Contiki OS. The draft authors\' idea was well received and they were encouraged to look further details with ROHC, ECC/CCM, DIET-ESP etc.

## Homenet

Homenet met in Prague at IETF 93 on Wednesday afternoon, 1300-1530. The WG time was roughly split half on progressing non-Routing-Protocol related items, and half on Routing Protocol Selection. Several WG drafts have progressed quite a bit since IETF 92, one reaching the IESG, and others either in WG or IETF LC. We expect several to reach the IESG between now and IETF94. There are now two independent implementations of DNCP and HNCP.

The second half of the meeting was led by Russ White, chair of the Routing Protocol Selection Design Team. Slides were presented, and are available in the proceedings (It was noted by several WG participants that the DT seemed to operate in privacy, and that they had wished for an advance readout in draft form). There was a lot of impassioned discussion. Of note, was the clear consensus that the current, non-routing-protocol work, should continue on track and advance in Homenet. Beyond this, ISIS and Babel as Routing Protocol options were discussed at length, as well as the DT's review of the overall Homenet Archietcture. There are clearly separate ISIS and Babel camps, well-entrenched, though each concur that the other's protocol could be made to work. ISIS has experience in many areas, other than home routers, but likely could be adapted. Babel was design for home routers and wireless links, but has little experience beyond that, or as an IETF-maintained protocol. Several members suggested "disowning" the routing protocol choice entirely, citing the IETF failing to be able to make a decision by non-arbitrary means. Others suggested that even an arbitrary selection would be preferred, either coin-flip or AD-selection. The DT was asked to complete their assessment, and produce a brief I-D outlining routing requirements to be put forward as a WG consensus document.

## intarea

The intarea working group met in Prague for a short one hour session. Among the current working group documents, the draft describing a fragmentation strategy for GRE has been published as RFC7588. The draft that describes IPv6 support for GRE has completed AD evaluation and is on the IESG telechat for August 6th. There was a presentation regarding the current use of hostnames and how they leak personally identifiable information. There were a few recommendations and they have been documented in a draft. It will be called for wg adoption on the mailing list after the meeting. There was a presentation about tunnel MTU considerations from the AERO draft that could be useful context for discussion for the working group draft on tunnels. There was also a presentation of a concept called dynamic GRE where the GRE tunnels are auto-configured and dynamically managed. We need to check on the mailing list to see if there is interest to adopt this work. There was an informational presentation about the implementation of MAC randomization features in Windows 10 that was very interesting. There was a presentation on a new draft that describes IP over links that are intentionally partitioned so that all nodes are not able to communicate with each other. We will check for wg interest on the mailing list and issue a call for adoption if there is interest.

## softwire

The softwire working group met in a short one hour session. There were a few new items looking for adoption in the working group but we have decided to put off consideration of these items pending a recharter of the working group. We presented a changed charter with new milestones and deliverables. We will circulate this on the mailing list to get comments from the WG. Among the current working group documents, the 4rd softwire solution has been published as an Experimental RFC (RFC7600). The Standards track stateless IPv4 over IPv6 solutions (Lightweight 4over6, MAP-E and MAP-T) are in the final stages of publication and will be published in the next few days. The multicast and MIB documents will be progressed to the IESG the week after the IETF.

&nbsp;
&nbsp;
&nbsp;

---

*The contents of this page were last updated on 2015-08-03. It was migrated from the old Trac wiki on 2022-12-14.*