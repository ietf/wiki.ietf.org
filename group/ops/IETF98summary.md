---
title: IETF 98 WG High Level Summaries
description: 
published: true
date: 2022-12-20T02:11:01.916Z
tags: 
editor: markdown
dateCreated: 2022-12-20T02:10:57.198Z
---


# IETF 98 Working Group High Level Summary

Page created for the IETF 98, March 27- 31 2017, in Chicago.

**BMWG** BMWG met with 31 people present (8 new people) and 11 remote. In the Interim, 2 drafts (IPv6 Neighbor Discovery and NFV Benchmarking Considerations) reached IESG approval.

  -  It's likely that six WG drafts will be forwarded to the ADs for Publication Request Review (SDN Controllers, Data Center, IPv6 Transition Technologies and vSwitch in OPNFV).
  -  There was meeting room support to adopt the proposed draft on EVPN and PBB-EVPN Benchmarking.
  -  The liaison with ITU-T SG 15 on Rec. Y.1731 (Ethernet OAM) benchmarking has no reply, but this could come soon from an Expert's meeting in April.
  -  There are still many concerns with the Virtual Network (vswtich) benchmarking draft that proposes to use VM-based packet generation/reception with shared resources with the DUT: physical separation is more reliable.
 -   Finally, a new proposal on benchmarking some aspects of virtualization in the application-supporting datacenter needs clarification and tighter scope. 

**L2SM**

L2SM did not meet at IETF 98.

**DIME**

All remaining document either going to WGLC or being shipped to IESG:

 -   draft-ietf-dime-doic-rate-control-05 -> IESG
 -   draft-ietf-dime-group-signaling-08 -> WGLC
 -   draft-ietf-dime-rfc4006bis-02 -> WGLC. 

For RFC4006bis we need to engage 3GPP CT4/CT3 into the review process since they are the biggest customer of the protocol. Two new items presented:

 -   draft-bertz-dime-policygroups
 -   draft-bertz-dime-predictunits 

Both good items but need to poll for broader interest in the WG before possible charter/milestone updates.

**DNSOP**

DNSOP met Monday Afternoon and was highly attended. Updates on adopted drafts with several an iteration away from WGLC:

 -   draft-ietf-dnsop-attrleaf
 -   draft-ietf-dnsop-dns-capture-format
 -   draft-ietf-dnsop-session-signal 

A few new drafts were presented with only draft-kristoff-dnsop-dns-tcp-requirements appearing to be ready to be adopted by the working group.

**GROW**

GROW met on Monday afternoon. New work was introduced to the working group:

 -   Work on OpenBMP project was presented to provide context around new work proposed to provide additional capabilities to the BMP protocol
 -   draft-evens-grow-bmp-adj-rib-out was presented. The consensus of the room was to adopt this document as a working group document. The group is waiting on an update to the document to consolidate work from others. The IDR chairs have confirmed along with the routing AD that this work belongs in GROW if it is adopted. Call for adoption will be done on the mailing list after the document has been updated.
 -   draft-evens-grow-bmp-local-rib was presented along with draft-evens-grow-bmp-adj-rib-out. A call for adoption will be issued on the mailing list. The consensus in the room was that this document should be adopted.
 -   draft-iops-grow-bgp-session-culling was presented. It will be adopted as a working group document. 

Discussions on the mailing list along, indicates that the draft-ietf-grow-bgp-gshut draft will be refreshed with a goal of moving it to working group last call.

**OPSAWG**

OPSAWG met on Thursday afternoon. It was a joint session with OPS Area.

OPS Area

  -  Recognition of outgoing OPS AD Joel.
  -  Presentation of the work being done at DMTF on Redfish Converged Infrastructure management interface and a specific YANG device profile of a top of rack network device.
  -  Summary of CASM BoF and work of SIDROPS WG. 

OPSAWG WG

  -  MUD documents seem to be progressing well with clear action plan.
  -  A new WG document on BGP community information export via IPFIX. 

**OPSEC**

 -   rather quiet working group
 -   New approach taken to use OPSEC WG as anchor point for security effort awareness in other focussed WGs
 -   One document IPv6 Operational security considerations discussed and proposed for WGLC 

**V6OPS**

 -   Discussed charter, will further discuss on list
    -    Yes, we should target IPv6-only operation
    -    No, don't enumerate IPv6 markets 
 -   Adopted draft-ali-ipv6rtr-reqs "Requirements for IPv6 Routers"
 -   Adopted draft-palet-v6ops-rfc7084-bis "Basic Requirements for IPv6 Customer Edge Routers"
 -   Discussed draft-gont-v6ops-host-configuration "On the Dynamic/Automatic? Configuration of IPv6 Hosts."
 -   Lots of energy around draft-pauly-v6ops-happy-eyeballs-update "An Update to Happy Eyeballs" 

**SUPA**

 -   At the SUPA WG at IETF 98 (Tuesday, 28 March), we discussed the progress of the WG. Benoit (our AD) summed up the situation; pointing out that our drafts are not updated very frequently, and that the SUPA mailing list has been very quiet between meetings. 

 -   At the meeting the authors of the SUPA Information model and the SUPA Data Model drafts said that those drafts should be ready for WG Last Call by 1 June, so that they could be sent to IESG for approval by about 1 July. 

 -   After summing up the pros and cons for SUPA continuing, Benoit concluded by saying that the WG will be closed at IETF 99 (Prague, 16 July) unless there is substantive progress on the Information Model and especially on the Data Model drafts by one month before the Prague meeting. 'Substantive progress' here means seeing comments on and/or reviews of these drafts demonstrating that people have carefully read the drafts, or better, that they are actually using SUPA's Information and Data Models. 

**NETMOD**

 -   Two NETMOD sessions (2.5-hours on Tuesday, 1-hour on Thursday), with ~100 participants in both sessions.
 -   The first NETMOD session covered YANG Next, Revised Datastore, Schema Mount, Syslog, and Model Catalog.
 -   The second NETMOD session covered Interface Models, Tree Diagram, YANG Markup, YANG Scheduling, Module Tags, Common Augment, and YANG Data Mount.
 -   Key outcomes:
  	  -   YANG Next: significant interest, but we should not delay Revised Datastore or Schema Mount.
 	   -   Revised Datastore: WG believes that a recommendation should be made for IETF to move towards this solution.
	    -   Schema Mount: a virtual interim will be scheduled to complete the discussion. 
  -  Drafts nearing last call include syslog and revised-datastores (acl-model is already in last-call, but will likely need updating)
  -  Drafts polled for adoption include model-catalog, tree-diagram, and yang-markup (all positive, to be confirmed on list)
  -  Drafts polled for interest include yang-scheduling, common-augment, and data-mount (only data-mount had significant in-room interest) 

**NETCONF**

  -  Work Group charter was updated to change name to NETwork CONFiguration (NETCONF) to expand it beyond NETCONF and RESTCONF protocols.
  -  Zerotouch, Keystore, SSH/TLS Client Server Models each have a few issues that need to be addressed on the mailing list.
  -  Subscription and Notifications drafts are making progress, but have not closed off on all issues.
  -  Notification2 draft was presented. While there was interest in the draft, authors need to address the questions raised in the meeting by bringing them to the mailing list.
  -  RFC6536bis is ready for Last Call. The chairs will start the WGLC once the agreement is verified on the maillist.
  -  WG supported the proposal to develop two drafts as an extension to NETCONF (RFC6241) and RESTCONF(RFC8040) providing the new capabilities to support the datastore concept. The two drafts will be provided to NETCONF maillist and the co-chairs will start a poll for adoption. 

**ANIMA**

Monday morning session, 120 minutes. 50 attendees in the room + 6 remote participants in the room.

 -   Signaling design team presented document status. It is in the procedure for request publication. It is waiting for AD Writeup. Minors modification reported.
 -   Voucher document presented document status. It is mature, would be ready for WGLC soon after IETF98.
 -   Bootstrap design team presented document status. It is near mature, would be ready for WGLC soon after IETF98.
 -   Autonomic control plane draft presented work status. It is near mature, would be ready for WGLC soon after IETF98.
 -   Reference model document presented work status. It is near mature, would be ready for WGLC soon after IETF98.
 -   Prefix Management in Large-scale Network was waiting the GRASP to be clear. It would be ready for WGLC soon after IETF98. 

Friday Morning session, 150 minutes. About 64 attendees in the room + 4 remote participants.

  -  Open Discussion Towards ANIMA Phase 2, there are works for extension Autonomic Network Infrastructure.
  -  Autonomic network intent concept and format is presented. The WG showed interests. Previous discussion has reached some consensus on this work.
  -  GRASP API is presented. It is needed to simply the invoking procedure from ASA to ANI.
 -   Guidelines for Autonomic Service Agents was presented. It is an useful work to guide the design or implementation for various autonomic service agents.
 -   Autonomic Slice Networking - Requirements and Reference Model. It is the second time presentation, focusing on requirements and reference model. The presentation also gives a reference model, in which a slicing ASA is presented. 




&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-04-18. It was migrated from the old Trac wiki on 2022-12-19.*