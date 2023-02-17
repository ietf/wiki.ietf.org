---
title: IETF 90 WG High Level Summaries
description: 
published: true
date: 2022-12-20T01:30:29.666Z
tags: 
editor: markdown
dateCreated: 2022-12-20T01:30:26.178Z
---

# IETF Working Group 90 High Level Summary

Page created for the IETF 90, July 20 - 26 2014, in Toronto.

**DIME**

DIME work has concentrated recently on the Diameter Overload topic (DOIC) and we spend over half of the meeting to resolve issues and discuss next steps to achieve complete solution (the base solution does not include agent overload details as it was agreed early in the process dedicate I-D for it). We aim to complete the base solution before IETF91. To achieve this we are going to have one or more interim meetings (one tentatively face to face).

Since IETF89 we have two new RFCs (7155, 7156). The Diameter application design guidelines has just been sent to IETF for publication. The rest of the meeting time was spent on the other three WG I-Ds and on a new proposal on new datatypes for Diameter.

The discussion on the new datatypes continues in the mailing list but the proposal as such was well received. It was also approved to add new milestones for Diameter overload concerning the agent overload case and rate abatement algorithm specifications.

**DNSOP**

Since the last meeting, DNSOP has successfully rechartered, so we spent some time this week in other WGs explaining the new charter to people, especially that we are now allowed to take on light protocol work and help define more extensive protocol efforts. Additionally, the working group has submiited 4 drafts to the IESG for publication since IETF89, and we're trying to ship three or four additional drafts to the IESG before the next meeting.

The meeting included a lively discussion surrounding three drafts that touched on various aspects of scaling the distribution of DNS zone data, particularly at the root (never a controversial topic before...). The outcome is further discussion in two different directions. The work on DNSSEC Validator Requirements will be adopted in the near future, and should be ready for WGLC around the time of the next meeting.

We also discussed a newly revived draft on IPv6 reverse DNS that got some encouragement, so we expect that to be formally adopted at some point.

**RADEXT**

RADEXT had again a decently full agenda. We are in a state that all current chartered milestones are close to completion. Three documents are waiting for the proto write-up, one in RFC Editor's queue, and two WG IDs doing good progress. Recent efforts have been completing the transport security suite for RADIUS and as a newer effort retrofit fragmentation support into RADIUS protocol (as well as packet sizes beyond 4K).

The new prominent work that was already tentatively agreed to be included into the charter as new milestones include CoA proxying (does not work today across realms) and making sense of RADIUS datatypes similar way as Diameter has (includes rearranging the IANA attribute registry as well to include datatype column). Another discussion the WG had related to moving RFC6614 (TLS for RADIUS) from Experimental to Standards Track. Implementations exists and there is a need for other Standards Tracks documents to reference to it. We also had a recap of the old issue populating identities to EAP (the discussion will continue).

**OPSEC**

Light agenda with 3 main topics. One presenter responsible for two of the slots did not show up. The time was filled in with ISOC providing a presentation about Routing Security Manifesto and requesting operators to sign it.

**NETCONF**

Chartered items:

 -   Reverse Secure Shell (Reverse SSH) - K. Watsen. Issues discussed. Some of the issues will be taken to the list.
 -   NETCONF Over TLS update - RFC 5539bis - J. Schoenwaelder. Issues discussed. Some of the issues will be taken to the list.
 -   A YANG Data Model for NETCONF Server Configuration - K. Watsen. Issues discussed. The proposal to provide a I-D draft-ietf-netconf-call-home has been discussed. This draft would replace reverse-ssh and also clean up call home related part in 5539bis. Humming showed that the WG is in favor of this I-D. Based on this the co-chairs sent a consensus call to the WG list. AI Co-chairs: Update charter if WG consensus is confirmed.
  -  RESTCONF Protocol - A. Bierman. Issues discussed. Some of the issues will be taken to the list.
  -  YANG Patch Media Type - A. Bierman. Issue discussed.
 -   Zero Touch Provisioning for NETCONF Call Home (ZeroTouch?) - K. Watsen. Issues discussed.
 -   AI for the authors of the chartered items: Please provide an update for your draft by September 1st. 

Non-Chartered items:

 -   I2RS Requirements on NETCONF - Jeff Haas. I2RS WG will provide a draft describing the requirements on NETCONF. It has been proposed to start a discussion as early as possible to figure out whether single requirements can be already addressed with available NETCONF protocol features. AI Jeff Haas: to get the I2RS WG (plus any volunteers) to do this.
  -  A NETCONF Extension for Data Fragmentation - G. Zheng. Humming showed that the WG sees the issues as a valid problem. It needs to be discussed whether it can be addressed with a bis-draft. For the time being NETCONF charter will not be changed. Once active WG items are finalized the draft can be re-discussed.
  -  Multi-Instances Configuration Issue in NETCONF - G. Yan. The presenter has been proposed to check with the I2RS WG as they have similar issues to address. 

**NETMOD**

The NETMOD meeting in Toronto (Monday 09:00-11:30) was attended by about 100 people.

 -   The JSON mapping is almost complete. A few remaining issues related to I-JSON were discussed and they should be resolved soon so that the document can go into WG last call.
 -   Work on the YANG usage guidelines update started. It was discussed to put an issue tracker in place. This work will likely not finish before the work on YANG 1.1 is done.
  -  Several YANG 1.1 open issues were discussed. It was agreed to continue with weekly virtual interim meetings. A number of people indicated interest in a face-to-face interim meeting to resolve some of the more challenging issues.
  -  Several ideas to speed up the development of YANG data models were discussed (getting the right subject exports involved, usage of tools like git and github, early involvement of YANG doctors).
  -  The core routing data model, which already was submitted to the AD, received very valuable input from routing experts that were involved in projects to write YANG data models for concrete routing protocols and from people involved in I2RS work. The document will be moved back to the working group in order to make the necessary changes. 

The meeting did run out of time to discuss several proposed new data models. Discussions should continue on the mailing list. It may be necessary to allocate two meeting slots in upcoming IETF meetings or to focus the meeting time more clearly on infrastructure related topics and data model related topics.

**6renum** -

**bmwg** - Met with 24 participating locally. Many new participants who prepared good quality drafts, resulting in useful discussion. The WG re-chartered in the interim since IETF-89, and all chartered items progressed at this meeting. In particular, the SIP device Benchmarking drafts have reached AD review, and the BGP dataplane convergence draft should reach that state very soon. The next steps will be to formally adopt WG drafts for the charter milestones and begin WGLC for those considered mature, such as Traffic Management function benchmarking (where there will be cross area review from AQM WG participants). The chairs reminded participants that we are encouraged to obtain input from the operations community, possibly at their group meetings.

**create you own** -

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-07-24. It was migrated from the old Trac wiki on 2022-12-19.*