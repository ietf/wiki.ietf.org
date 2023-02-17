---
title: IETF 92 WG High Level Summaries
description: 
published: true
date: 2022-12-20T01:39:26.700Z
tags: 
editor: markdown
dateCreated: 2022-12-20T01:39:22.517Z
---

# IETF Working Group 92 High Level Summary

Page created for the IETF 92, March 22 - 27 2015, in Dallas.

**BMWG**

  -  BMWG had 25 participants in the room for a 2.5 hour discussion that began (and ended) on time.
  -  Continued lively discussion over all virtual drafts - VNF, and SDN Controller drafts
 -   No new RFCs this meeting - BGP drafts in RFC Queue
 -   Several drafts expected to be adopted as WG items (consensus on list, in room, will formally ask on list once more)
 -   ISSU Draft is in WGLC
 -   Note takers were Bill Cerveny and Marius Georgescu
 -   WG Chair (Sarah) is looking at trial run with github and new draft, exploring feasibility of following HTTP/TLS WGs in migrating to github, and using github as an alternative to multi-author draft collaborations. This has the added advantage of removing a lot of the editorial challenges we experience going into WGLC, nits, and the Word template. 

**DIME**

We meet on Wednesday morning. About 20 people in the room with the most active participants, for a full 150mn session.

2 WG documents are at a final stage:

  -  Diameter Congestion and Filter Attributes (draft-ietf-dime-congestion-flow-attributes-01) submitted at IESG
  -  Diameter Overload Indication Conveyance (draft-ietf-dime-ovli-08) still waiting for proto-write but ready to be submitted 

About other WG documents, the security E2E Security Requirements document (draft-ietf-dime-e2e-sec-req-02) has been revised and is ready for WGLC. A new version of the Diameter Group Signaling document (draft-ietf-dime-group-signaling-04) is expected next weeks before WGLC. And the Diameter Agent Overload (draft-ietf-dime-agent-overload-01) and the Diameter Overload Rate Control (draft-ietf-dime-doic-rate-control-01) documents need more reviews to be moved forward.

Two documents have adopted as WG documents:

  -  Architectural Considerations for Diameter Load Information (draft-campbell-dime-load-considerations-01) investigating requirements and use cases for load information exchange between Diameter nodes (e.g. for intelligent load balancing). This adoption will be confirmed on the mailing list.
  -  AVP for provisioning CPE supporting IPv4-Over-IPv6 Transitional Solutions (draft-zhou-dime-4over6-provisioning-05) defining new set of AVP for dynamic configuration of subscriber-site-specific information related to IPv4/IPv6 transition mechanisms. 

A new document has been presented as individual submission, Diameter Routing Message Priority (draft-donovan-dime-drmp-00). There is some interest in this work but more work is needed before WG adoption.

**DNSOP**

DNSOP met Tuesday afternoon. We're continuing to struggle with balancing new work and items that we'd adopted but need to keep moving.

  -  RFC 6761/special names continues to be a major topic. We now have six drafts to consider for a total of over 40 special use names registry entries, so we're doing an interim meeting to try to get a handle on what to do with them and how to get an RFC 6761bis under construction.
  -  Some discussion of whether to take on the proposed MIXFR work on zone transfer (http://datatracker.ietf.org/doc/draft-mekking-mixfr/), and what was the proper structure to do the work-- the authors want a WG (as the task at hand may be a protocol mod bigger than DNSOP wants to handle), but a lower-overhead way forward may be better-- chatted with the authors and Brian Haberman about this.
  -  The major item of discussion on the mailing list the last couple of weeks was the meta-query draft, http://datatracker.ietf.org/doc/draft-ogud-dnsop-any-notimp/. The WG meeting discussion was vigorous but inconclusive, so we have to figure out (with the authors and the WG) what to do about that. It would be disappointing for a major operator to feel they came to the IETF to try to document an operational policy (or possibly even update protocol) in support of interoperability, but couldn't come up with a way to do it that would get through the processs. But it's also hard to tell exactly what problem they're solving and some distinct flavors of opinions on the best way to do it.
  -  The DNS terminology draft http://datatracker.ietf.org/doc/draft-hoffman-dns-terminology/ is widely welcomed and making good progress. We didn't adopt it as the authors didn't actually want us to-- their aim is a document they can get out soon that may not cover everything but is accurate in what it does cover, and we weren't sure WG consensus was achievable. 

**GROW**

The GROW working group met wednesday afternoon. We covered 2 main work items. An update on draft-ietf-grow-ops-reqs-for-bgp-error-handling was provided by Rob Shakir. The draft has been rewritten to be more clear. The work recommended in the document has already proceeded in IDR. The document will need some detailed review by GROW participants, and should be ready for last call. An update on draft-ietf-grow-route-leak-problem-definition was provided by Sriram. Some more work is needed from the group and authors to add more clarity.

The other outstanding drafts, are proceeding. draft-ietf-grow-irr-routing-policy-considerations-05 is in IESG review, draft-ietf-grow-ix-bgp-route-server-operations-04 is in the editor queue, and draft-ietf-grow-filtering-threats-05 hopefully is in the last last call.

**LIME**

The LIME (Layer Independent OAM Management in the Multi-Layer Environment) WG met on Tuesday, March 24 2015 17:30 local time.

The main event was the "OAM Model Design Team Report", and the DT job is now complete. The presentation includes the details to be model agnostic.

Next steps, Deepak will edit the YANG Model I-D (main deliverable), AKA -Tissa draft. We also want to capture applicability based on Greg and Jeff Haas' comments captured in the minutes.

**NETMOD**

The NETMOD working group met twice during IETF 92 in Dallas. The meetings (Monday 09:00-11:30 and Tuesday 09:00-11:30) were attended by about 120 people in each session. The YANG 1.1 effort has been working on closing the remaining issues. A complete revised specification is expected to go to WG last call in April. The work on the YANG guidelines document update will follow once YANG 1.1 is stable. The JSON mapping will be revised and cover YANG 1.0 and 1.1.

The data models worked on by the NETMOD working group (core routing, syslog, ACLs) are progressing with the authors primarily resolving review comments. Some routing data model related design issues have been resolved. A design team recently formed to work on a data model for physical components (based on the SNMP ENTITY-MIB) has met at the IETF. Additional working group discussions centered around the question how to classify and how to organize data models. Finally, work on a data model for Differentiated Services has been presented.

**NETCONF**

   - Issues after the WGLC of the RESTCONF and YANG Patch drafts and current open issues for the YANG Library and RESTCONF Collection Resource drafts have been discussed. A few issues will be taken to the maillist. RESTCONF, YANG Patch and YANG Library drafts will go to 2nd WGLC a few weeks after IETF 92 once the drafts are available after issue solving. WG co-chairs are asking the chairs of related WGs (e.g. Core, 6lo, 6tisch) to assign individuals as reviewer.
  -  WGLC issues for the Call Home and Server Model drafts have been discussed. Call Home and Server Model drafts will go to 2nd WGLC once the drafts are available after issue solving and after finalizing the WGLC for the RESTCONF drafts.
  -  The use of the YANG 1.1 features in current NETCONF drafts has been proposed. The opinion poll (16 yes, 1 no) will be verified on the maillist.
  -  The open issues in Zerotouch draft have been discussed briefly. Kent W. is discussing the details of the requirements on Zerotouch draft with ANIMA WG members.
  -  I2RS co-chair Jeff Haas summarized the NETCONF-related issues discussed in I2RS WG, which are Pub-sub requirements, Ephemeral state, Secondary Identity, Priority, Transactions. A joint conference call to discuss the details of these issues will be planned.
  -  Eric Voit presented on draft-ietf-i2rs-pub-sub-requirements-01. The related solution draft addressing these requirements has been presented by Alex Clemm. This draft is proposed to adopt in NETCONF WG. 12 have read the draft. 12 support the draft and 0 against. Mehmet clarified that new WG items can be adopted after finalizing current active items. This will be possibly in IETF 93 time frame.
  -  The authors of draft-liu-netconf-multiple-replies-00 and draft-mm-netconf-time-capability-02 are asked to raise discussion and get the support of the WG members. 

**RADEXT**

We meet on Monday afternoon. About 15 people in the room but unfortunately key participants were not present in the room due to personal constraints. As a consequence, the meeting was not so lively as usual and was shorter than expected (less than 1h).

About WG documents:

 -   Network Access Identifier (RFC 4282bis - draft-ietf-radext-nai-15) and RADIUS packets fragmentation (draft-ietf-radext-radius-fragmentation-12) have successfully passed the IESG evalution and are ready for publication.
  -  NAI-based Dynamic Peer Discover (draft-ietf-radext-dynamic-discovery-13) has completed the IETF LC and is waiting for expert review before IANA allocation. 

Two WGLC will be launched right after the IETF week:

  -  Larger Packets for RADIUS over TCP (draft-ietf-radext-bigger-packets-03)
  -  IP Port Configuration and Reporting (draft-ietf-radext-ip-port-radius-ext-03) 

3 new WG documents have been adopted (to be confirmed on the mailing list):

  -  Dynamic Authorization Proxying (draft-dekok-radext-coa-proxy-00) as candidate Standards Track RFC. This document gives guidance on how to proxy CoA messages defined in RFC5176.
  -  Correct use of EAP-Response/Identity? (draft-winter-radext-populating-eapidentity-01) as candidate BCP. It provides recommendations for implementers of EAP peers regarding the type of EAP identities to use in EAP messages.
 -   RADIUS Data Types (draft-dekok-radext-datatypes-05) as informational RFC. This document clarifies the use of data type in RADIUS and defines an IANA registry for the data types that was omitted when specifying RADIUS (RFC2865) 

We've discussed the errata on RFC 5176 and the WG agreed on the proposed status (Verified). This was also confirmed on the mailing list.

Finally, the WG charter has been discussed. A new charter is required as the current one is quite obsolete. A proposed text has been submitted on the mailing list and needs to be commented.

**ANIMA**

ANIMA has two sessions in IETF 92. The first session is 120 minutes on Tuesday afternoon. About 60 people in the room with the most active participants.

 -   It is dedicated for urgent WG milestones.
 -   The chartered work item for discovery and negotiation function has received two drafts: Generic Discovery and Negotiation Protocol and Autonomic Distributed Node Consensus Protocol.
 -   The chartered work item for Auto secure bootstrapping have three relevant presentations: draft-bootstrapping-keyinfra, netconf zero touch update for anima and survey of Security Bootstrapping. The last raises the secure bootstrap requirements from IoT perspective.
  -  The chartered work item for autonomic control plane is also presented. The WG participators agrees it is useful in some scenarios.
  -  The participants are very interests in these chartered work items. The chairs are planning to form design teams for signalling protocol and bootstrap in order to make the WG efforts converged. 

The second session is 90 minutes on the Friday last session. About 45 people in the room with the most active participants.

 -   It is mainly for other work items relevant to autonomic network but not in urgent WG milestones.
 -   The chartered work item for anima reference model (later milestone) is presented. It is aim to describe how anima components are coordinated together.
 -   The non-chartered topic for coordinating multiple autonomic functions is presented. For now, it is abstracted and conceptual only, but the WG showed interests on whether some infrastructure components may need to support this.
  -  The non-chartered topic for Self-Managed Networks with Fault Management Hierarchy is presented. It introduced requirements of autonomic fault management from network operator perspective. The presenter has agreed to make the requirement a draft for further study by the WG.
  -  The non-chartered topic for Predictive risk awareness for proactive management. 

The WG has not made any decision to adopt any draft as WG document yet. The WG are planning to hold a series virtual interim meetings to make progress on signalling protocol, auto secure bootstrap and autonomic control plane. The WG hope to adopt the output from design teams before or at next IETF meeting.


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-04-09. It was migrated from the old Trac wiki on 2022-12-19.*