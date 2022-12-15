---
title: WG Summaries for IETF 88
description: 
published: true
date: 2022-12-15T02:30:45.397Z
tags: 
editor: markdown
dateCreated: 2022-12-14T22:18:29.871Z
---

## DHC

The DHC WG met on Tuesday 0900-1130. There were about 60 people in attendance. We had one remote participant using WebRTC client running on iPad. All but one presentation (homenet Naming Architecture Options) were given; we ran out of time to cover them all.

The RFC-3315bis work was initiated and 8 volunteered for the design team. Tomek Mrugalski generated a script to convert RFC 3315 and 3633 to xml, with some hand editing required. The design team will start its work shortly.

Next, there were two presentations (DHCPv4 over DHCPv6 Transport and Provisioning IPv4 Configuration over IPv6 Only Networks) and discussion to resolve the issue as to the mechanism recommended by the DHC for use to configure IPv4 over IPv6. The consensus, to be followed up on the mailing list, is to use the approach in draft-dhc-dhcpv4-over-dhcpv6. This and the draft-ietf-dhc-v4configuration will be updated and then go to working group last call.

The presentation on Access Network Identifier Options raised some issues that will require a new draft.

The Secure DHCPv6 presentation resulted in a discussion of message sizes with certificates and alternatives and some other issues and some of the work related to IKE should be examined.

The Handling Unknown DHCPv6 Messages presentation only raised some minor issues, and a revised draft is expected.

The Address Registration presentation raised concerns about not using responses from the server and some security concerns. A revised draft is expected.

The Stateless Reconfiguration presentation resulted in a discussion about whether this is a real problem and whether DHCP was the best way to solve it. It was suggested that if this was a real problem, it needs wider visibility.

There was interest in adopting the DHCPv6 Active Leasequery presentation and draft. This will be taken up on the mailing list.

The DNS Reconfigure work has some interest beyond DNS.

The Route Problem at Relay during PD presentation was a bit rushed and needs further study.

## LISP

We had a presentation of the progress (quite significant) on the LISP introduction document.

We discussed the other pending documents, noting that the MIB has been published as an RFC.

THe EID Block allocation request and management approach documents were discussed. The WG seems to have converged on requesting a /32 for the LIPS experiment.

We had presentations on a number of forward-looking topics, including using LISP for data center overlays and a presentation on augmenting LISP to encrypt the tunnels used between ITRs and ETRs. This last was also presented to SAAG to arrange for suitable security advice.

## HIP

The HIP WG is chartered to finish an old Experimental RFC-to-be and to revise the main HIP specs, which are also Experimental, into Proposed Standards.

The old Experimental RFC-to-be is draft-ietf-hip-reload-instance, and has already been approved by the IESG. The draft is currently in the RFC Editor\'s queue.

The WG also has a few \"bis\" drafts. They revise the old Experimental HIP specs. Additionally, there are a couple of drafts that are spin offs of those specs: the NAT traversal mechanism and the multihoming part of the mobility and multihoming spec. We decided to document these in separate specs for clarity.

We intend to request their publication in batches so that reviewers have the necessary context when performing their reviews. We will be requesting the publication of the first batch, which includes RFC 4843bis, RFC 5201bis, and RFC 5202bis, shortly.

## SUNSET4

Sunset4 did not meet. The various proposals on port assignments on NAT64 were not fully converged to have an effective meeting. The other deliverables did not make any significant progress to warrant meeting time.

## NETEXT

The Netext WG met for two hours on Monday during IETF 88 at Vancouver. During the working group status update, it was noted that the WG has progressed two documents since IETF87: 1) Update Notifications for PMIP6 is now in RFC AUTH stage, 2) Prefix Delegation for PMIP6 has finished the IETF Last Call. Also, the WG has adopted the Control and Data Plane separation document as the working group document. The flow mobility document was presented and there was discussion around how to harmonize the message from LMA to MAG; after this is resolved, the ID is ready for LC. The EAP Attributes ID should be ready for WG LC soon. The QoS Signaling document needs few expert reviews before WG LC. Two new documents were discussed: 1) QoS mapping from 3GPP Mobile Networks to WLAN access, and 2) Civic Location update in PMIP6 signaling. There appears to be interest in both the documents.

Overall, the NETEXT working group is making good steady progress.

## MIF

The MIF WG met for two hours on Thursday during IETF 88 at Vancouver. MIF architecture design team has regular every 2 weeks teleconf, many discussions in that mailing list. They present update since last IETF meeting about output. One issue has been raised whether the coloring prefix is the subset of MPVD ID. proponents will bring the document to the MIF WG in the future. the design team will not continue to have the teleconf after this IETF meeting, discussion and update will move to the MIF mailing list.

MIF charter has been updated by group editing during the meeting and has been sent to the mailing list for calling for comments, it will end on Nov. 20th.

DHCP option for MPVD ID has been presented. in the end.

All in all, MIF WG is expected to recharter and have new wg document in the next IETF meeting.

## 6TiSCH

The 6TiSCH WG had produced 8 Internet Drafts, 6 of which were presented as chartered items, and 1 presented as un-chartered item. While most of these drafts appear as -00 version, it must be noted that this is only an artifact of the renaming from the 6TSCH mailing list to the 6TiSCH WG; most drafts are actually in their 3rd or 4th revision and are quite stable.

The following 4 drafts fall within charter, and were proposed for possible adoption as WG documents after being presented: 

&nbsp;&nbsp;&nbsp;&nbsp; draft-palattella-6tisch-terminology-00 draft-watteyne-6tisch-tsch-00 draft-thubert-6tisch-architecture-01 draft-vilajosana-6tisch-minimal-00 There were no objections to their adoption both from the room and remote participants. The chairs will confirm this on the mailing list.

The presentation of the following 2 drafts was followed by a discussion about coverage gap analysis. 
&nbsp;&nbsp;&nbsp;&nbsp; draft-wang-6tisch-6top-00 draft-sudhaakar-6tisch-coap-00 There was a consensus that the drafts would benefit from a reorganization, before being possibly considered for WG adoption.

The audience pointed out possible collaboration between the 6TiSCH, 6lo and NETCONF WGs to homogenize solutions for network monitoring and management.

During the addition time, the following draft was presented: draft-ohba-6tisch-security-00

The chairs echoed the latest mailing list discussions around on-the-fly scheduling and slot allocation principles.

## DMM

The DMM WG met on Friday for two hours during IETF88 Vancouver meeting. The two working group documents: dmm requirement and gap analysis document were discussed. The dmm requirement document has practically resolved all remaining comments and only pending acknowledgement from people who raised comments. The gap analysis document has been updated to resolve all the comments received from last meeting. The documents still needs some fine tuning work and then go to the WGLC. The working group agreed on the conclusion that there indeed are indeed gaps to work on.

For the individual drafts, the group discussed two framework drafts, on demand mobility draft, IP reachability draft and virtual EPC draft. There are two overflow individual drafts were not discussed due to time limitation.

The group discussed re-chartering for 30 minutes before the end of the meeting. People show strong interest to extend the charter to do more work. Seven work items were proposed as the outcome of an offline re-chartering discussion. There was also a desire to work on more future oriented topics than just doing obvious incremental point solutions to existing protocols. Further discussion is needed in the mailing list to converge the ideas and justification of the proposed new work items. The AD welcomed a charter proposal.

## 6LO

The 6lo working group held its first working group meeting on Tuesday of the IETF week for a 2.5 hour session. Approximately fifty participants attended the meeting. The working group discussed the approved charter and the proposed milestones. Existing 6lowpan documents were presented and discussed based on their maturity levels. The working group participants concluded to adopt the following drafts as WG documents (subject to approval on the mailing list and re-submission to 6lo when applicable)

- draft-brandt-6man-lowpanz
- draft-ietf-6man-6lobac
- draft-bormann-6lo-ghc

The working group in agreement with 6man co-chairs and 6lo AD decided to move the 6lobac document from 6man to 6lo as it falls under the scope of 6lo. Similarly draft-ietf-6lowpan-btle will be homed at 6lo during its process toward the proposed standard. The WG requests more updates and reviews of draft-schoenw-6lo-lowpan-mib before working group adoption consideration on the mailing list.

## NTP

The NTP WG met in a joint meeting with the TICTOC WG at IETF 88. Dieter Sibold provided an update on Network Time Security work to replace autokey. He raised a number of issues that need further contributions. There was consensus (to be confirmed on the mailing list) to accept the following documents as working group drafts:

- draft-mizrahi-ntp-extension-field (standards track)
- draft-odonoghue-ntpv4-control (standards track)
- draft-mizrahi-ntp-checksum-trailer (experimental)

## TICTOC

The TICTOC WG met in a joint meeting with the NTP WG at IETF 88. The standard ITU-T SG15/Q13 and IEEE 1588 status updates were provided. The updated draft for the Enterprise Profile for IEEE 1588 was presented. A number of questions remain to be address. Doug Arnold will be providing an updated draft. There was a discussion on requirements for timing messages over MPLS in general and on a way forward for the Timing over MPLS Transporting Timing messages over MPLS Networks (draft-ietf-tictoc-1588overmpls-05) draft in particular. As part of this discussion a new draft on Residence Time Measurement (draft-mirsky-mpls-residence-time-00) was presented. It was decided to proceed with Experimental for the existing draft, and for future work to focus initially on a requirements document. Finally, a draft on the Usage of NTP for the PDM DOH IPv6 Extension Header was presented. Further discussion and analysis was directed to the mailing list.

## DNSSD

The WG met Friday afternoon with roughly 100 attendees. The meeting began with the usual review of \"Note Well\" and agenda bashing. As this was the first formal meeting of the WG, the chairs briefly reviewed the WG charter.

Because of some technical difficulties, the meeting was delayed by several minutes. The WG skipped the \"Interaction with homenet WG\" agenda item due to the lost time.

After a little review of the history and discussion of issues, the WG decided it is not appropriate to approach ICANN for identification of a TLD label for DNS resolution in deployments that do not have a delegated domain.

The WG reveiwed the requirements document, which had been updated based on discussion during the previous BoF. Several comments regarding the contents of the requirements document will be added to the issue tracker for the document. At the end of the meeting, the WG expressed support to adopt the document as a WG work item. The consensus will be confirmed on the WG mailing list.

A review of draft-sullivan-dnssd-label-miprofile-00 lead to a spirited discussion of some naming incompatibilities between DNS-SD and classic DNS. As the dnssd WG is chartered to document such issues but not generate solutions, the author will spin off the problem description as a separate document, updating the details of the description based on WG discussion.

The WG agreed to maintain a document to capture other naming issues as they are identified. An initial author for that document was identified.

## TRILL

The TRILL WG met Wednesday afternoon. Proposed new milestones based on the recently revised TRILL WG Charter were presented. It was announced that Sue Hares has volunteered to coordinate a TRILL implementation report. A brief update was presented on TRILL OAM and a call for working group adoption of draft-deepak-trill-oam-mib was started. Mechanisms for Directory Assisted TRILL Edge were presented and the adoption as a WG draft was announced for draft-dunbar-trill-scheme-for-directory-assist and draft-eastlake-trill-ia-appsubtlv. A presentation was give on the Channel Tunnel Protocol and a call for adoption as a WG draft of draft-eastlake-trill-channel-tunnel was started. One presentation was given on Active-Active leading to considerable discussion but a second presentation on active-active control plane requirements was not given due to lack of time. A presentation was give on Resilient (Distribution) Trees and the adoption of draft-zhang-trill-resilient-trees as a WG draft was announced. The last presentation given was on Smart End Nodes and a call for adoption as a WG draft of draft-perlman-trill-smart-endnodes was started.

## 6MAN

The 6man working group held a two and a half hour session on the Monday morning of the IETF in Vancouver. The session was well attended with about 150 participants. It was recorded by Meetecho and the audio/video archives are available. We also participated in a remote co-chairing experiment because one of the chair was not able to attend person due the imminent arrival of a baby. The video and audio ran over IPv6 allowing the presentations to be run remotely, including the use of a remote controllable camera, allowing the co-chair to participate well. We think we have shown that good video and audio, it is feasible to remotely co-chair a IETF working group meeting.

The work on privacy aspects of IPv6 addresses continued, and also on deprecating EUI-64 based interface-identifers, a discussion which has been thoroughly discussed on the mailing list. There is an identified gap in how applications is supposed to deal with the various types of interface-identifiers.

There was consensus in the the room to adopt draft-gont-6man-deprecate-eui64-based-addresses-00, and moderate support to adopt draft-chakrabarti-nordmark-6man-efficient-nd. Both of these will be confirmed on the mailing list. In addition there is consensus in the room to drop publishing the draft-ietf-6man-addr-select-considerations document.

At the Vancouver meeting we tried a new format to present new ideas. A speed talk, where each speaker was given 3 slides and 5 minutes, that was quite successful. Since Berlin the 6man working group has used volunteer reviewers for all documents prior to advancing the documents to the IESG. The reviewers have done an excellent job and this not only makes the chairs job easier, it also results in better document quality.

## LWIG

The LWIG working group met on Wednesday, Nov. 6, 2013 for one hour and a half. Since IETF87, Lwig had adopted two drafts as working group drafts (draft-ietf-lwig-cellular and draft-ietf-lwig-tls-minimal). And the draft-ietf-lwig-ikev2-minimal draft finished WGLC, and we received several independent reviews of the drafts. Tero gave a short presentation of the WGLC review and resolution. The long-standing lwig-terminology draft was still in IESG review status and two DISCUSSes existed.

On the face to face session, the group went over the IESG reviews on the terminology draft and agreed on how to handle these comments. The most difficult part was how to explain the \"constrained\" as a relative word. The answer was we can only say it is relative to the state of the art. And the group also spent some time over how this work related to the charter. The answer was in each of the minimal implementation guidance documents, they should state according to the terminology.

The group also spent time discuss two individual documents, draft-hex-lwig-energy-efficient-02.txt and draft-zhu-core-groupauth-01. The discussion will hand over to the mailing list.

## HOMENET

The Homenet WG met on Thursday morning for 2.5 hours.

The working group leaders and document editor for the homenet arch document have spent most of their efforts working through the various AD discuss positions on homenet architecture document. Great progress has been made, but there are still outstanding items we expect a -12, another WGLC, and another round of telechat in the coming weeks.

Naming and Border Discovery were discussed. Multicast scope is a related issue, raised as a homenet arch discuss as well. Brian H came by to discuss this with the group. Consensus was that if we use \"automatic methods\" to determine the multicast scope along with scope type 4, Brian believes the arch document will be correct on this point. Michael Behringer presented his secure method for border discovery which the WG very much likes, though there remained some skepticism as to whether it is truly easy to implement and deploy in the home. Markus Stenberg briefly presented an implementation of Erik Kline\'s border discovery work he has done in his OSPF-based OpenWRT Homenet Implementation.

Tim Winters presented the outcome of the hipnet+homenet interworking design team. Hipnet will remain at the edge of the network (not nested), which homenet will be able to sit at the edge or within the home. Challenges remain for securely detecting the difference between the LAN port of a hipnet router and an actual ISP. This could lead to security issues. Work still needs to be done here.

There were also discussions about naming and source+dest routing. The WG seems to have largely converged on what it wants for Source+Dest routing, but is confused as to where and how it will advance.

## Multimob

Multimob WG did not meet at IETF 88 in Vancouver.

So far, Multimob has one WG draft which is on WG Last Call. There is another WG draft which is waiting to be revised.

In Multimob, there are no major concerns.

## Intarea

The intarea working group met in Vancouver for a two and half hour session. The draft describing the use of the IPv6 Flow Label for Server Load Balancing had completed IESG evaluation and received DISCUSS positions. The draft was revised to address the issues raised in these positions and the changes were presented to the WG during the meeting. There were no objections to these changes in the meeting room and the changes have also been posted to the mailing list.

There was a presentation about the OmniRAN project that IEEE is starting up. The status of the project as well as its scope were presented. Based on the presented info, it seems that several IETF protocols are needed to realize the different use case models and IEEE would like some feedback from the IETF on this.

There was a presentation of a draft that states the problem and requirements for a new IP layer protocol to negotiate and decide on network configuration among IP routers. There were some concerns in the room that automatic configuration may not be appropriate for the networks targeted by this document and this document needs more OPS review. The authors will work further on the applicability and seek OPS review. The draft was not up for adoption.

The draft regarding the use of CGA as an algorithm for TSIG was presented. There were some questions about the applicability of the draft as compared to SIG(0). There were varied opinions on whether this mechanism should augment SIG(0) or be an alternative to it. The draft needs some reviews and the chairs will find two reviewers. After receiving the reviews a call for adoption will be issued on the mailing list.

There was a presentation regarding openv6, an unified mechanism for supporting various IPv6 transition mechanisms. The main goal of the presentation was to raise awareness to a bar BOF and a bits n bytes demo.

There was a presentation summarizing the discussion regarding the text in the DHCPv6 option guidelines draft recommending the use of IP addresses in DHCP options instead of FQDNs. It resulted in a very lively discussion where proponents of the use of FQDNs and the proponents of the use of IP addresses presented their views. After the discussion, it became clear that there is a need for some additional text in the draft to present a balanced comparison between FQDNs and IP addresses by adding some text presenting the cases where the use of FQDNs would be beneficial.

## Softwire

The softwire working group met in Vancouver for a two and half hour session. The session was dedicated to resolve the open issues involving the contents and the connection between the MAP-E, lw4over6, MAP-DHCP and the unified CPE drafts.

There was a presentation about the updates to the MAP-E document since the last IETF meeting. The document has been WG last called and the issues raised during the WGLC have been addressed. There will be a short one week WG last call again to make sure that the new changes have addressed all the issues.

The authors of the documents in association with the chairs had worked out a proposal that was aimed at resolving the deadlock resulting from the disagreement due to the contents of the MAP-DHCP document as well as the decisions about what documents need to be referenced normatively from what other documents.

There was a presentation that explained this proposal and the sense of the room was in favor of going forward with this proposal. This will be verified on the mailing list. There were some questions about whether MAP-T related DHCP options should be included in the MAP-DHCP document. There were some minor resistance to doing this, but even people who were not in favor of this were fine with keeping MAP-T related info in the draft as long as it was made clear in the draft that MAP-T was experimental.

There were some questions about the situation regarding MAP-T and 4rd. The chairs clarified that they are willing to start WGLC on these drafts as long as they are ready, and after the MAP-E, lw4over6 and the MAP-DHCP drafts are sent to the IESG.

There was a presentation regarding the proposed changes to the unified CPE document in order to stay in sync with the changes to the MAP-E, lw4over6 and the MAP-DHCP documents. There were some questions about whether there will be some additional container options for DS-Lite and the opinion of the room was that this was not necessary. There were some questions about whether some of the options inside the DHCPv6 softwire container options should be allowed without the container. The chairs mentioned that if there was a need/justification for doing this, the people should bring it up on the list for further discussion.

&nbsp;
&nbsp;
&nbsp;

---

*The content on this page was last updated on 2013-11-18. It was migrated from the old Trac wiki on 2022-12-14.*