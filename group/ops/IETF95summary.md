---
title: IETF 95 WG High Level Summaries
description: 
published: true
date: 2022-12-20T01:54:40.542Z
tags: 
editor: markdown
dateCreated: 2022-12-20T01:54:36.276Z
---

# IETF 95 Working Group High Level Summary

Page created for the IETF 95, April 4 - 9 2016, in Buenos Aires.

**BMWG**

   To be filled in 

**DIME**

   To be filled in 

**DNSOP**

DNSOP met in two different sessions. Session 1 was held wednesday afternoon and covered existing WG business. There were updates on several adopted drafts.
  -  draft-ietf-dnsop-dnssec-roadblock-avoidance had passed WGLC with one outstanding comment that took the authors some time to address, not due to the complexity of the issue, but due to work responsibilities. This will now proceed
  -    draft-ietf-dnsop-maintain-ds is currently in WGLC, and several small issues have been raised and mostly addressed during the meeting. The chairs be following up to make sure they are all resolved.
  -    draft-ietf-dnsop-isp-ip6rdns was discussed and appears ready for WGLC.
  -    Several other drafts are close to being considered for WGLC.
  -    There was time available, so draft-song-dns-wireformat-http and draft-shane-review-dns-over-http were presented on DNS over HTTP. There was discussion on adoption which we will take to the list. 

The second session was Friday and drafts and work up for consideration
   -    draft-fujiwara-dnsop-nsec-aggressiveuse and draft-wkumari-dnsop-cheese-shop were discussed as the latter being a simplified case of the former. The working group feels one document should be adopted and draft-fujiwara-dnsop-nsec-aggressiveuse appears to be the consensus on this. A Call for Adoption was raised.
   - Progress continues on a special use names problem statement; discussion of two drafts, draft-adpkja-dnsop-special-names-problem and draft-tldr-sutld-ps, hope of adopting one soon so we can get on pondering solutions (the easy part no doubt).
  - draft-vavrusa-dnsop-aaaa-for-free and draft-sullivan-dns-class-useless were discussed on the assumption they're beyond the (admittedly generous) DNSOP charter. If people want to do class-useless, Joel suggested it could be done as AD-sponsored; it just closes a registry. If people want to do AAAA4Free, or a more general signaling mechanism for asking for multiple QTYPES in one DNS query, it's a wire protocol extension 

and might be a spinoff WG (like DPRIVE).

**L3SM**

L3SM did not meet in Buenos Aires.

The single deliverable from the WG is very close to being last called.

Three small additions are needed
- Inter-AS applicability
- Security considerations
- Manageability considerations 

Early final reviews being actively sort from network operators 

The WG plans to close after last call has completed and publication has been requested.

**LIME**

Layer Independent OAM Management in the Multi-Layer Environment
LIME met on Tuesday, April 5, 2016, in the morning session one.
The main topic for this meeting was the two data models themselves (at Yokohama the WG agreed to split the data model into a connection-oriented model and a connectionless one).
Some of the key discussion points:
- Do not advance "Applicability" individual documents.
- Applicability is key, to show that protocols can extend this model, so the plan is to bundle applicability as sections of the models themselves.
- Plan to hold a virtual interim to edit real-time the connection-oriented model, to have it ready to WGLC by Berlin.
- Key action to reach out to other WG chairs and editors, which are using or planning on use the LIME model.
- LIME Applicability wiki at https://trac.tools.ietf.org/wg/lime/trac/wiki/lime-applicability 

**RADEXT**

- The WG met on the very last slot of IETF on Friday afternoon. Attendence was *very* low - at no point were more than four attendees (+chairs) in the room; some hopping in and out made the blue sheets lightly larger than that.
- The meeting itself went smoothly (unsurprisingly, since there were few people to argue in the room!); there was one remote presentation and it worked reasonably well. Agenda, slides and meeting minutes tell the whole story, no need to repeat here.
- The meeting was adjourned after 52 out of 60 allocated minutes; which left place for a off-topic presentation which would probably have been interesting to a typical RADEXT attendee's profile; but there were simply not many left at that point in time as everybody was rushing to the airport already. 

**ANIMA**

ANIMA Monday afternoon session, 120 minutes. 38 attendees in the room + 10 remote participants in the room.

- Signaling design team presented document status, including messages re-orgnization, new flood message and loop avoidance mechnism etc.
- Bootstrap design team presented document status, including comparing with security in netconf and 6tisch, etc.
- Autonomic control plane draft presented work status, including naming, addressing, leveraging GRASP in ACP, secure/insecure channels, etc.
- Reference model document presented work status. Progress since last IETF includes Adjacency Table, a couple of open issues on "intent distribution", "function overview", "security & Trust", etc.
- Prefix management in large-scale network draft presented work status, including narrowing the scope to only cover edge prefix management, etc.
- An open source implementation of SNBI & ACP with ODL Beryllium is presented. 

Thursday afternoon, session 2, 60 minutes. About 31 attendees in the room + 6 remote participants.

- Autonomic network intent concept and format is presented. Recently there are a number of active discussions regarding to this topic in the mail list. The WG showed great interests on this topic.
- A day in the life of an autonomic function was presented.
- Autonomic Functions Coordination was presented.
- Information and Knowledge exchange in Autonomic Networks was presented.
- Information Distribution over GRASP was not presented due to the overtime. It would have the priority in next meeting among non-milestone work items. 

**OPSAWG**

OPSAWG met on Wednesday (afternoon session I, 60/120 minutes). About 49 attendees in the room.

- The farewell speech for Scott by ADs, standing ovation, and a rousing song in Dutch by Bert Wijnen.
- draft-lear-mud-framework-00 was presented with many positive feedbacks. Need to consider the home for this work.
- draft-unbehagen-lldp-spb-02 was presented with interesting. Might be extended to many other tunnels.
- draft-lapukhov-dataplane-probe-00 presented a protocol to interact the probing data. Should be based on some special data plane. 

**OPSEC**

- First OPSEC WG meeting at an IETF since last IETF93
- Eric Vyncke, New co-chair presented to the WG. (Many thanks to former co-chair Kiran Kumar Chittimaneni for his great support to OPSEC community)
- Busy agenda driven by liaison with security items discussed within other WG's
- Few new topics on the agenda with potential WG interest for further reference 

**NETCONF**

NETCONF met on Thursday April 7, from 2-4 p.m.

- Andy gave an update the status of three drafts, RESTCONF, YANG Patch and YANG library. RESTCONF has some minor updates, and the other two drafts are in AD queue. Once the RESTCONF draft update is available, the write-up will be provided to the AD and WG.
- Eric presented update on NETCONF YANG Push. The discussion centered around how best to organize the contents of the draft and draft-voit-netconf-restconf-push. Many were in favor of separating transport into a separate draft. There was also some discussion around filtering capability and to see if it could be extended.
- Kent presented updates to Server Configuration Model. Discussion most centered around keychain model and the need to split it from the configuration draft. There was no objection to moving forward on a keychain mechanism for NETCONF instead of preparing a universal method. Kent will bring the discussion on splitting the keychain model from the configuration draft to the mailing list.
- Kent went on to present the Zero Touch draft. There was some confusion around where does zero touch configuration stop, and where does NMS take over. Kent will propose text around what is envisioned to be part of zero touch configuration. Kent is planning to have LC in one month and finish the work in 2016.
- Eric came back to talk about 5277bis. He positioned the proposed work to be extensions to 5277 keeping backward compatibility. Original authors of 5277 seem to be fine with the arrangement. The original authors Sharon and Hector should be included as co-authors. 5277bis will include existing content from 5277 and replace it. The topic is chartered and the chairs will ask for adoption in a few weeks. Many in the room are in favor of working on notifications.
- Susan gave an update on i2rs requirements for NETCONF. Most of the discussion happened in i2rs.
- Eric returned one last time to talk about RESTCONF YANG push, where the discussion mostly focused around the subject of the organization of drafts (see NETCONF YANG push above). The proposed names for the drafts are netconf-push-transport, restconf-push-transport, and yang-push-model. There will be as a sum for drafts including 5277bis. Charter does not make any difference between NC/RC Push so the topic is chartered. Many are in favor of having four drafts. Adoption should happen within a few weeks. 
    

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-04-26. It was migrated from the old Trac wiki on 2022-12-19.*