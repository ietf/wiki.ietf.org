---
title: IETF 94 WG High Level Summaries
description: 
published: true
date: 2022-12-20T01:49:17.948Z
tags: 
editor: markdown
dateCreated: 2022-12-20T01:49:13.461Z
---

# IETF 94 Working Group High Level Summary

Page created for the IETF 94, Nov 2 - 6 2015, in Yokohama.

**BMWG**

BMWG met and discussed two newly adopted work items (IPv6 Transition and SDN Controller benchmarking), several of the existing work items (The VNF and Infrastructure Benchmarking will go to WGLC and there was extensive commentary of the Data Center Benchmarking drafts). There was also follow-up on vSwitch benchmarking from the OPNFV VSPERF project (revised draft). There were three new work items proposed (VNF High Availability, Router CoPP, and VNF Benchmarking as-a-service). BMWG was considered one of the "Hot" OPS-Area WGs at this meeting. The BMWG also celebrated 25+ years of Industry-leading work, and recognized Founding Chairman Scott Bradner for his contributions to the benchmarking community. 

**DIME**

DIME met on Tuesday (afternoon session I), in a 2-hour time slot exceptionally shared with RADEXT, 1 hour per WG. About 20 people were attending the DIME session (in the room or via Meetecho/Jabber?). 

The main discussion were about trying to find consensus on the remaining open issue for the Diameter routing message priority. This document is close to completion and should be sent soon for IESG review. 3GPP has a dependency on this draft.

Another topic is of prime interest for 3GPP: the document on load control over Diameter. But for this one, no much progress since the last IETF meeting. More reviews are needed for this document as well as for the documents on overload control mechanism extensions (Rate control and agent overload handling).

A deadline for new comments on the Diameter Group Signaling document has been set to December, to see if there is a real need to push forward this document.

For the next meeting, it is foreseen that the work on E2E security solutions will be reactivated as the requirement document is now ready to be published. 

**OPSEC**

OPSEC did not meet at IETF94. 

**RADEXT**

RADEXT met on Tuesday (afternoon session I), in a 2-hour time slot exceptionally shared with DIME, 1 hour per WG. About 20 people were attending the RADEXT session (in the room or via Meetecho/Jabber?). 

The main discussion was on issues regarding the deployment of RADIUS in wi-fi access networks and the specific use of some accounting information. There is still a need to decide whether an update of the RFC 2866 (detailing the RADIUS accounting part of RFC 26865). On this topic, IEEE feedback will be required to ensure that any proposed modification/clarification will be aligned with their own requirements. 

**NETCONF**

There is no objection to publish the process described in draft-leiba-netmod-regpolicy-update. It’ll be AD sponsored. 

Sue Hares gave a summary on the I2RS strawman proposal. As a next step I2RS and NETCONF co-chairs will have a call and discuss further development. 

draft-ietf-netconf-yang-push had good progress. The draft has a dependency on 5277bis and needs to reference it instead of redefining some parts. Currently nobody is working on 5277bis. 

RESTCONF Protocol, YANG Patch Media Type, YANG Module Library: The three drafts will go to WGLC together. RESTCONF has 1 open and 1 new issue. No questions and comments on YANG Patch Media Type. Open issues for YANG library need to be discussed on the mailing list. RESTCONF has a dependency on YANG 1.1 and YANG 1.1 depends on YANG library. The plan is to finish YANG 1.1 by December 1st. 

Server Configuration Model has the big issue with key chains to address. Kent is working together with SAAG. Conclusion that splitting into two parts is not helpful. This will take some time to finalize. 

Zero Touch Provisioning has now the support of ANIMA WG and can be finalized soon. There are diverse operators who would like to implement and use. 

The non-chartered draft on Restconf subscription and HTTP push presented. Discussion on merging with netconf-yang-push or keep it separate will continue. A third option is to have a 3rd draft on the common part. Document organization will be discussed on the mailing list. The charter definition covers this work. Based on show hands, many in the room are in favor of doing this work, nobody against. Once the document organization is agreed draft will be adopted as WG item. 

**NETMOD**

4.5 hours of presentations split into two sessions on the same day.
Of the chartered drafts:
- draft-ietf-netmod-acl-model: ready for last call 

draft-ietf-netmod-opstate-reqs: draft needs to be updated per comments received. consensus confirmed.

draft-ietf-netmod-rfc6020bis: some remaining items to be discussed on the list

draft-ietf-netmod-rfc6087bis: this draft wan't presented

draft-ietf-netmod-routing-cfg: open issue is interface and routing instance relationship. DT streams working on it.

draft-ietf-netmod-syslog-model: ready for last call

draft-ietf-netmod-yang-json: continue JSON encoding of anyxml discussion on list

draft-ietf-netmod-yang-metadata: to confirm option 1 on list 

**ANIMA** Monday afternoon session, 120 min, ca.90 attendees in the room.

- signaling design team presented work status, including changing from TLV to CBOR format, updating requirements, and tightening up loop count and timeouts. A few open issues were discussed and got feedback from the room, including mandatorying for running in ACP, handling multiple discovery responses, etc.
 -  bootstrap design team presented work document status, including proxy behavior, discovery procedure with GRASP, etc. TCP/UDP security and transport protocol are discussed.
  -  Autonomic control plane draft presented work status, including using adjacency table as starting point. Open question on using GRASP during the ACP establish stage is discussed.
  -  Reference model document presented. Progress since last IETF includes adding new section, New section: "Functional overview" and new key concept "adjacency table". The audience in the room shows consensus to adopt the document. 

Adoption calls will be sent to WG mailing list after IETF week.

Tuesday afternoon, session 2, 90 minutes. About 65 people in the room.

 -   Two validation use cases, prefix management in large-scale network and stable connectivity using ACP, where presented. It validates the signaling, ACP components and raise a couple of new requirements. No significant changes, but primarily reminders of requirements against charter components to support these use-cases. The audience in the room shows consensus to adopt these two documents. Adoption calls will be sent to WG mailing list after IETF week.
 -  Two new drafts that are considered as chartered work items without current milestones are presented: addressing for ACP and information distribution over GRASP. The audience in the room shows support for continuing these work, but has debate on the qualification whether a work is in the current charter or not.
  -  Other non-chartered topics that are presented include autonomic network intent concept and format and a day in the life of an autonomic function . 

**L3SM**

L3SM met on Friday (Morning session I, 90minutes ). About 50 people were attending the L3SM session in the room. 

The main discussion were about building consensus on the remaining open issue for L3VPN service model draft. There were a good debates on whether we put some parameters into service model or device model.No new issues were introduced, the issues listed in the issue tracker haven’t been well discussed since a lot of people commented from more generic perspective. This document is close to completion and require one or two revision before going for WGLC. 

Another topic is about some new work that are not in the scope of L3SM WG: one is about service automation architecture, the other is about generic VAS service model, these two new documents got a lot of good discussions and supports. Right now there is no home place for these two documents. More reviews are needed for these documents before they are taken on. 

In addition, we received a liasion from MEF regarding YANG model for MEF services, how YANG model for MEF services are related to IETF work is not discussed. This liasion to L3SM is just for information and is not aimed at chartered work item in the L3SM WG, no action is needed for L3SM WG. 

To further advance this work and meet the milestone, a interim Meeting around December was proposed to get most of open issues resolved. A doodle will be setup to poll whether we need 3 separate interim meeting for different timezones. 

**SUPA**

The SUPA WG had it's first meeting on Tuesday November 3, 2015. Session contained around 148 people. 

Chairs opened the meeting, commenting that the WG needs to develop a clear definition of goals, leading to small set of drafts, and realistic results. 

Rest of the session was run using a set of presentations (based on the charter provisions) were given, the chairs emphasised that no WG drafts have been agreed on yet; discussion and contributions on the WG mailing list are strongly encouraged. 

The chairs also underlined that contributions should be kept to within the Charter scope. Anything outside this scope will not be considered. 
    
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-11-11. It was migrated from the old Trac wiki on 2022-12-19.*