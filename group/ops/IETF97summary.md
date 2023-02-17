---
title: IETF 97 WG High Level Summaries
description: 
published: true
date: 2022-12-20T02:06:39.976Z
tags: 
editor: markdown
dateCreated: 2022-12-20T02:06:36.757Z
---

# IETF 97 Working Group High Level Summary

Page created for the IETF 97, Nov 14 - 18 2016, in Seoul.

**BMWG**

-    Met on Tuesday with 20 participants in-person and 1 remote presenter.
-    Reduced attendance in East Asian locations is typical for BMWG.
-    All WG drafts had some form of Chair Action to progress them during the Interim:
     -  WG Consensus on VNF/NFVI Benchmarking Considerations => future Pub Request
     -  2nd WGLC for Datacenter - closed with comments, waiting for revised drafts
     -  1st WGLC on IPv6 Transition Technologies - closed with comments, new draft
     -  1st WGLC for SDN Controllers - closed with comments, new draft in-progress
     -  1st WGLC on OPNFV VSPERF Benchmarking Summary - still open, no comments yet
     -  IPv6 ND received comments and an update was available at IETF closing. 
 -   Proposal to Benchmark Y.1731 OAM resulted in a Liaison to ITU-T SG15 and SG11.
 -   Continuing work proposal on EVPN and PBB-EVPN will benefit from review in BESS.
 -   New work proposal on Service Function Chaining Benchmarks (Korea Telecom, new participant)
 -   One invited talk on outlier detection and handling, key for advanced latency analysis. 

**DIME**

DIME did not meet at IETF 97.

**DNSOP**

DNSOP met on Tuesday afternoon for two hours. Attendance was its usual 100+ folks. This time there was no discussion around the Special Use Names issue, though an Interim is planned at the beginning of the year. This meeting was primarily new work being considered for adoption. There was strong consensus on adopting draft-dickinson-dnsop-dns-capture-format, which is in progress. Three documents are closing in on Working Group Last Call: draft-ietf-dnsop-refuse-any (already started) and draft-ietf-dnsop-no-response-issue. draft-ietf-dnsop-nsec-aggressiveuse has had a series of changes during WGLC and will go back out.

**GROW**

 -   Met on Wednesday morning for 1 hour
 -   Time was spend discussing if there were gaps between IDR work and operator requirements. The issue was brought up in discussion/work on BGP large communities. Moving forward it it important that operator requirements are captured and understood, in order to support the work in IDR.
 -   Job Snijders present new work draft-snijders-grow-large-communities-usage which ties back to the discussion about operator requirements and the work being done in IDR. The room supported adopting the draft as a working group item. Support has already been express on the mailing list for this work.
 -   An update on draft-ietf-grow-bgp-reject was also presented by Jbo Snijders. The feedback from the room indicates there are 1 or 2 more issues to resolve before last call. The goal of the working group chairs is to get those items resolved, and issue last call well before the next ietf.
 -   The last presentation was draft-sriram-opsec-urpf-improvements, which discussed additional mechanisms for urpf. More work is required on this draft before moving forward.
 -   Outside of the Seoul IETF meeting draft-ietf-grow-mrt-add-paths moved to last call.
 -   Both draft-ietf-grow-ix-bgp-route-server-operations and draft-ietf-grow-blackholing recieved RFC ids, RFC7948 and RFC7999 respectively. 



**SUPA**

-    Met on Friday for 90 minutes
-    WG Chairs provided an update to the working group and highlighted some key concerns: lack of activity on list and limited implementation
-    Georgios channelled some findings from Sue Hares on use of the SUPA Information model
-    Joel provided an update on the Information Model (GPIM) I-D and Data Model (EPIM) I-D
-    Some perceived complexity of current model, WG needs implementations of partial or full model, to provide feedback to GPRIM/EPRIM authors so that they can improve those drafts
-    Will provided an update on the Framework I-D
-    Georgios highlighted a number of theoretical examples of how SUPA could be used
-    Chair reiterated the WG needs to take 1-2 and demonstrate how the current model is used. This could then be documented in an applicability section of the Framework I-D 

**NETCONF**

-    NETCONF WG agreed on the presented update of the milestones.
-    The issues of the Restconf Collection draft and its schedule requires a discussion on the maillist. It has been stated that based on current dependencies the keystore draft has a much higher priority for the WG.
-    The Zero Touch draft seems to be ready to go to WGLC after the next update. The WG would like to have the review of a DNS expert to clarify whether it works with DHCPv4. The WG supports to go to LC.
-    After having completed the Zerotouch draft the Server Model drafts will be progressed.
-    The co-chairs clarified that the team working on the notification draft is an informal team open to anyone. The WG is asked to comment on the notification drafts. If there are no further comments or issues the developed solution is going to be seen as stable. The drafts being prepared are still subject to review in the WG.
-    It needs to be clarified whether the schema-mount related text can be put into schema-mount or the NACM draft. There are different issues which need to be addressed, some related to I2RS. Sue Harris will review the NACM draft from I2RS point view and send the issues she sees to NETCONF maillist. The open issues in the NACM draft need to be understood before adoption.
 -   The voucher draft is mostly done. There was interest in the room to do the voucher work in NETCONF WG.
 -   Benoit and the co-chairs wrote an email to SEC ADs, ANIMA, 6tisch WG co-chairs and their supporting ADs to figure out which WG should be the home for the voucher draft.
 -   NETCONF WG supports the NETMOD DT draft. There are different issues related to the required NETCONF and RESTCONF extensions which need to be discussed and clarified.
 -   As the datastore concept specified in the current NETCONF RFC is being changed we need to ask for consensus in NETCONF WG. After getting the consensus on NETCONF maillist the required charter update and the necessary work for NETCONF and RESTCONF bis-drafts can be started. NETMOD WG itself requires a charter update to start the subsequent work.
 -   It has been agreed that NETMOD co-chairs will send a consensus call directed to both WGs to NETCONF and NETMOD ML with one email. The mail will also state that based on the consensus the DT draft will be adopted by NETMOD WG. 

**NETCONF**

-    Meeting on Wednesday morning, used 75 out of 90 minutes slot
-    next to no discussion on current WG chartered documents, nearly all done
 -   but good discussion on potential future work 

**NETMOD**

 -   Two NETMOD sessions (2-hours on Tuesday, 1-hour on Thursday), with ~100 participants in both sessions
 -   There was also a 4-hour Revised Datastore breakout session on Wednesday with ~10 participants
 -   The first NETMOD session was primarily on the Revised Datastore and Schema Mount drafts
 -   The second NETMOD session was primarily a follow-up on the Revised Datastore discussion and a Routing Area DT Update
 -   Drafts nearing last call include syslog, and yang-model-classification
 -   Drafts to be polled for adoption include revised-datastores, intf-vlan-yang, and enterprise-yang-namespace 

**OPSAWG**

-    Met on Tuesday afternoon for 2.5 hours. Combined with OPS Area meeting.
-    MUD updated the status of the document.
-    4 work (service model explained, composite VPN, In-Situ OAM, IPFIX IE extension) got WG interest by hum. OPS ADs will discuss with RTG ADs about how to work on In-Situ OAM.
-    ADs will also report on IESG meeting about the potential service model tsunami. This will infect the composite VPN model and the overlay VPN model presented in OPSAWG.
-    Hum also showed that OPSAWG would like to work on telemetry. 

**ANIMA**

Wednesday morning session, 90 minutes. 77 attendees in the room + 10 remote participants in the room.

-    Signaling design team presented document status. It has passed the WGLC just before the IETF97 meeting. Minors modification reported. Sheng is the assigned document shepherd.
-    Bootstrap design team presented document status, the bootstrap document itself is near mature, would be ready for WGLC soon after IETF97. It is reported a new Voucher work (draft-kwatsen-netconf-voucher) is needed as nomative reference. ANIMA is considering to process this work quickly.
-    Autonomic control plane draft presented work status, including the argument for GRASP/DULL for ACP: L2/LANs, etc.
-    Reference model document presented work status shortly, clarifying GRASP (M_FLOOD) is used by default for first step. 

Thursday afternoon, session 2, 120 minutes. About 28 attendees in the room + 6 remote participants.

-    Reference model document presented work status, it is now clearly describe the work flow for ANIMA node bootstrap, BRSHI pledge, and ACP
-    Autonomic network intent concept and format is presented. There are active discussions regarding to this topic. The WG showed great interestsc. It is considering the WG should have an interim meeting for it.
-    Guidelines for Autonomic Service Agents was presented. It is an useful work to guide the design or implementation for various autonomic service agents.
-    Use Cases of Information Distribution over GRASP was presented. It is useful complementary for GRASP.
-    Autonomic Slice Networking - Requirements and Reference Model. It is the first time presentation, focusing on requirements and reference model. It is abstract. From the presentation, it is not clear how this work should be hold in ANIMA envirnment. The draft has more details. 
    

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-12-14. It was migrated from the old Trac wiki on 2022-12-19.*