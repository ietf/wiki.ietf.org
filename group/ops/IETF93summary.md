---
title: IETF 93 WG High Level Summaries
description: 
published: true
date: 2022-12-20T01:45:06.360Z
tags: 
editor: markdown
dateCreated: 2022-12-20T01:45:02.409Z
---

# IETF 93 Working Group High Level Summary

Page created for the IETF 93, July 19 - 24 2015, in Prague.

**BMWG**

BMWG met with 34 people attending locally. The WG has two new RFCs (SIP devices) and benchmarking Traffic Management has been approved by IESG. In-service SW Upgrade has concluded IETF LAST Call and will be on the IESG Telechat agenda in August. Three working group drafts were improved through comments at this meeting and on the list (Data Center Benchmarking, IPv6 Neighbour discovery, and Considerations for Benchmarking VNFs and their Infrastructure). Two proposed drafts were recommended for adoption during the meeting based on extensive review: IPv6 Transition Technologies and SDN Controller Benchmarking. A new participant working with a related project team in OPNFV described their developments on vSwitch benchmarking, which reference and greatly expand the BMWG RFCs. This effort directly takes on key questions such as resource isolation and repeatability for results, which are considered the most difficult questions in benchmarking the virtual world. This work will maintain coordination with previous efforts shared with BMWG. 

**DIME**

Dime had a meeting on Wednesday with relatively short agenda. Our recent major deliverable, draft-ietf-dime-ovli, is now in IETF LC. The early IANA allocation for code points has also been done. During the IETF week Gen-ART comments were received. The current status regarding other WG documents is as follows:

 -   draft-ietf-dime-agent-overload-01 -> in WG
 -   draft-ietf-dime-doic-rate-control-01 -> in WG
 -   draft-ietf-dime-load-00 -> in WG
 -   draft-ietf-dime-group-signaling-05 -> in WG; recently revised
 -   draft-ietf-dime-e2e-sec-req-03 -> to be submitted to IESG; recently revised
 -   draft-ietf-dime-congestion-flow-attributes-01 -> in AD followup
 -   draft-ietf-dime-4over6-provisioning-03 -> in IETF LC; IANA expert review done
 -   draft-ietf-dime-ovli-08 -> in AD Evaluation; going to IETF LC 

The end-2-end security is something to provide a solution draft next. There's an old expired draft on the end-2-end security that was agreed to be resurrected.

The WG had presentations on draft-ietf-dime-load and individual I-D draft-donovan-dime-drmp. It was agreed to adopt the draft-donovan-dime-drmp (Diameter Routing Message Priority) as a WG document. To be confirmed on the mailing list.

As a late addition we had a quick update on draft-ietf-dime-group-signaling. Soon to WGLC. Reviews needed.

**DNSOP**

DNSOP met Monday Afternoon. There were updates on the update to RFC5966 (5966-bis) and there were clarifying discussion on TCP issues. One of the discussions involved tcp-keepalive, which related to the EDNS0 tcp-keepalive discussion. The consensus they have worked through their issues and will moving forward in the coming months. There was also an update on aggressive use of NSEC and NSEC3 for invalidating queries. Under new business there were seperate on Trust Anchors in the root zone and policies and mechanisms to update them. The largest and most contentious was again around Special-Use names such as the p2p drafts, but also the realization that the IETF must solve the problems around RFC6761 that are forthcoming. The chairs are organizing a design team to work out the problem space. With several documents in various IESG states, the chairs are taking holiday in August.

We meet on ...

**LIME**

-    LIME met on Tuesday afternoon
-    Document Update:
     -   Great progress on the LIME base YANG model
      -    The LIME Applicability Statement needs much work
     -   Should the LIME PM YANG model live in IPPM?
     -    The architecture document has not started. 
 -   Key takeaways:
     -    LIME base YANG model -> Will issue a new revision, to then have a call for adoption; needs YANG doctors review
     -    The ultimate goal is that the abstracted base model is extended by protocols. Urgent need to connect with and rationalize MPLS-TP, LSP-PING, and BFD YANG models
     -    Need to clarify connectivity check vs. verification 
 -   Next steps:
     -    Post -06 for lime-base, then call for adoption
     -    Get all authors together of Applicability with other WGs.
     -    Start the architecture 

**LMAP**

We meet on Thursday. The WG made good progress since IETF 93, with the protocol (RESTCONF-based) document now adopted as WG item. We discussed progress on the IM, DM and protocol documents. New versions will be issued before September 25, a virtual interim will be held in the week of 9/29, or 10/5. Four new work proposals were discussed. Making progress on these as individual submission is encouraged, but possible rechartering will be discussed only after at least 2 out of 3 (IM, DM, protocol) chartered documents are submitted to the IESG.

**L3SM**

 -   L3SM met on Wednesday afternoon, Second Session, This is first L3SM meeting, About 45 people in the room.
 -   Document Update:
     -    We made a good progress on the L3VPN Service model.
     -    Two Revision made. The draft has been reposted as L3SM I-D.
     -    L3SM service model has been adopted as WG work item on July 1. 

 -   Key Discussion:
     -    It first clarified the WG's purpose and Scope and then focuses on l3vpn service model status update and model structure discussion.
     -    Several open issues raised and got a lot of discussion
         -      Modularization approach was proposed,e.g.,QoS service component,the benefit and downsside of this approach were discussed.
         -      The network orchestrator handling Site Location was discussed, one question is about whether the network orchestrator should keep the Site location information.
         -      M to N availablity were discussed, need to verify how service model can be tweaked to support M to N availability.
         -      Where the service template is defined was discussed, someone proposed to use service template defined in another module.
         -      Generalizing L3VPN Service model was discussed,e.g., Security parameter, VPN policies.
         -      Hybird VPNs support and InterAS consideration was raised.
         -      More Value add service support was proposed 

 -   Next steps:
     -    Find better way to track issues.
     -    Keep polishing the drafts
     -    Get input from more operators and invite them to the list.
     -    Get YANG Quality review from YANG experts.
     -    One or two new revision before Yokohama.
     -    Finall discussion in Yokohama.
     -    Last call before end of year. 

**NETCONF**

-    Approx. 65+ participants in the 2 hour NETCONF session.
-    Discussion on 7 chartered documents. 

 -   After WG LC Call Home will go to AD review. Write-up will be provided by the shepherd.
 -   Server Model: The duplication of data in server model has been discussed with 4 optional solutions. Option 4 based on key chains has been proposed. Many WG member are in favor. Nobody against.
 -   This option requires a delay of the work and some part needs to be done in Security area, potentially in Carp WG. Kent to provide a proposal for the way forward describing how to address option 4 with key chains and the work split with SEC area. 

 -   Restconf issues have been discussed. Agreed to use the current YANG 1.1 draft and finalize issues in Restconf. The goal is to go to LC asap.
 -   Different folks would like to have JSON as additional encoding. This discussion will be separated and brought to the maillist.
 -   Remaining YANG Patch and YANG Library issues will be solved soon and WG LC is the next step. 

 -   Pub/Sub? Solution draft. WG supports adoption, no objections. ADs recommended to not wait. The co-chairs support the adoption. It'll be verified on the maillist. 

 -   I2RS requirements have been discussed. Issues have been clarified in two steps first in NETCONF and then in I2RS session. 

**NETMOD**

 -   One 1-hour session on Models and one 2-hour session on Language.
 -   The Models session was rushed, 30-minutes more would have helped
 -   Both sessions were in Grand Ballroom and were well attended
 -   Of the chartered drafts:
     -    draft-ietf-netmod-routing-cfg: done, but may want to wait to see how well used by other modules coming
     -    draft-ietf-netmod-syslog-model: LC request will be taken to list
     -    draft-ietf-netmod-acl-model: questions to be taken to list
     -    draft-ietf-netmod-rfc6087bis: new sections need to be added
     -    draft-ietf-netmod-rfc6020bis: interim meetings will be scheduled to complete
     -    draft-ietf-netmod-yang-json: recent LC was successful, should be ready after a few updates
     -    draft-ietf-netmod-yang-metadata: recent LC was successful, should be ready after a few updates 

**OPSEC**

Did not meet at IETF93

**ANIMA**

Monday morning session, 150 min, ca.80 attendees in the room, ca 15 on jabber.

  -  signaling design team presented work status, tracked open issues including refinemenet of flooding procedures, finalizing on the requirements and whether to use CBOR/JSON. The audience in the room shows consensus to adopt the document.
  -  bootstrap design team presented work document status including comparison with netconf zero touch document. Framework between both documents is converging through work done. The audience in the room shows consensus to adopt the document.
  -  Autonomic control plane draft (3rd charter item) presented and discussed. The audience in the room shows consensus to adopt the document.
   - Reference model document presented. Progress since last IETF includes primarily clear cut between summarization of interaction between charter items and mostly stub-sections for other necessary autonomic network components not in charter. Participants showed interests. The chairs gave guidance the authors meeting offline. 

Adoption calls will be sent to WG mailing list after IETF week.

Session 2, 90 minutes, thursday afternoon.About 60 people in the room, 10 on Jabber. Network failure for better part of session limited remote participation wrt. Jabber though, but remote presentation at end worked after some glitch.

  -  Two validation use cases, prefix management in large-scale network and stable connectivity using ACP, where presented. It validates the signaling and ACP components. No significant changes, but primarily reminders of requirements against charter components to support these use-cases.
  -  Two new proposal for AN Intent presented: concept and format and distribution. Non chartered, but reviewed primarily under the aspect of requirements it raises against signaling charter item (mostly flooding). It was identified that other WGs/proposed WGs may be working on similar concept, and ANIMA participants working on hat will hopefully propose to summarize this for next IETF so ANIMA can be better aware of it. ANIMA WG may consider to work on AN specific intent and its handling in later charter period.
 -   Other non-chartered topics that are presented include Self-Managed Networks with Fault Management Hierarchy and the coordination among autonomic functions. 

Several work progressing side-meetings of teams for all mayor documents between Sun and Thun.

**SUPA BOF**

We meet on Wednesday. Good presentations and discussions about the use cases, scope, gap analysis, IM, DM. Poll at the end of the BOF shows that the room was split about the clarity of the scope and the formation of a WG based on the draft charter presented in the meeting. A number of operators expressed interest to deploy SUPA, and a number of contributors expressed interest to contribute with writing code and documents and reviewing documents.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-11-06. It was migrated from the old Trac wiki on 2022-12-19.*