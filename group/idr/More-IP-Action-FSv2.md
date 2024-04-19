---
title: More IP Actions for FSv2 
description: Adding Actions to FSv2 beyond Basic FSv2 Actions 
published: true
date: 2024-04-19T19:00:07.522Z
tags: 
editor: markdown
dateCreated: 2024-04-19T12:54:26.814Z
---

## Design Team 3: More Actions for FSv2 

FSv1 found problems with undefined interactions between actions encoded as Extended Communities. 
FSv2 ([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/)) allows for ordered actions using Wide Community. 

Some implementers desired both Extended-Community Actions with specific default order and defined interactions. A new Extended-Community will be expanded for FSv2.   

Other implementers want to be able to specify an order for actions.  The user specification of action ordering will not fit in the Extended Community, and so the Wide Community format (type 2, FSv2 actions) will be used.  

One key issues with Ordering of Actions is the action taken when an action does not successfully complete.  Potential recovery from a failed action are: ignore, continue, halt, roll-back. 

### Design Team Meetings 
**Design team:** Design Team 3 - More IP Actions for FSv2   
**Meetings before IETF-120:** 5/6 and 6/10 (Time 10-11:30am ET) 
**Meeting Agendas**: See below 

**initial draft:**  draft-ietf-hares-fsv2-more-ip-actions 
**New drafts requested:** Any Drafts specifying actions for FSv1 or FSv2.  

### Questions 
1.  What Actions interaction?  Are those interactions clearly defined? 
2.  What Actions do users want to order? 
3.  What happens when Actions fail? 
4.  What Actions can be implemented as Extended Communities (New FSv2 Actions)? 
5.  What Actions should be implemented as User Ordered? 
6.  What Data needs to be in User Ordered Actions? 
7.  Should Actions use dependencies? 


### Reading list  
#### FSv1 Actions in addition to RFC8895 and RFC8896
1. redirect to indirection id 
[draft-ietf-idr-path-redirect-12](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-path-redirect)
2. Redirect to IP 
[draft-ietf-idr-flowspec-redirect-ip](/group/idr/implementations/draft-ietf-idr-flowspec-redirect-ip)

#### New IP filters from draft-ietf-idr-flowspec-v2
 1. generalized redirection for IPv6 (EC-v6) 
 [draft-ietf0-idr-srv6-flowspec-path-redirect-11](https://datatracker.ietf.org/doc/html/draft-ietf0-idr-srv6-flowspec-path-redirect-11) 

2. Mark Group ID (APN ID)  - 4 actions) 
Mark APN Group ID (full, partial, inherit, or stitch) 
[draft-peng-idr-apn-bgp-flowspec-00](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/) 

3. CATS marking of CATs in V6 heaer (1 action)
[draft-lin-idr-cats-flowspec-ts-00](https://datatracker.ietf.org/doc/draft-lin-idr-cats-flowspec-ts/) 

4. Process FS based on interface group + data direction (inbound/outbound)
[draft-ietf-idr-flowspec-interfaceset-05](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-interfaceset/)

5. Compress traffic basic on Compression ID 
[draft-shen-idr-flowspec-traffic-compress-action-01](https://datatracker.ietf.org/doc/draft-shen-idr-flowspec-traffic-compress-action/)

### Design Team 3 Meetings 

Note that Design Team 3 will meet with Design Team 4.  
- The first 45 minutes of each interim meeting will focus on Design Team 3. 
- The second 45 minutes of each interim will focus on Design Team 4 (Non-IP Filters and Actions). 

#### 5/13 Design Team 3 and 4 Meetings 
Interim link: 
https://datatracker.ietf.org/meeting/interim-2024-idr-07/session/idr
 
**5/13 Agenda**
5/13/2024  - Design Team 3 and 4 Meet
 Agenda Bashing  (5 minutes)
**IP Actions (45 minutes)**
  1. Introduction of Design team members (5 minutes)
  2. Review of FSv2 split + Status Wide Communities Type 2 (FSv2) Format (5 minutes)
  3. Discussion of More IP actions FSv2 (15 minutes)
  4. Discussion of Action ordering + Design Issues (15 minutes)
  5. Action items for IP Actions (5 minutes) 

**Switch to Non-IP (45 minutes)**
  6. Review of Non-IP Filter and Actions (MPLS, L2VPN, SFC, Tunnels, L2-Latency (15 minutes) 
  7. Review of Filters/Actions on Group ID (25 minutes) 
       Group IDs are on FSv2 for interfaces, APN, CAT, Compression ID, SAV (interfaces + src-address group).  
  8. Action items (5 minutes) 

#### 6/17 Design Teams 3 and 4 Meeting 
Interim Link: 
6/17/2024 Agenda https://datatracker.ietf.org/meeting/interim-2024-idr-10/session/idr

Agenda Bashing + Introductions 
0. Agenda bashing (5 minutes) 
1. Review of IP Actions Drafts (55 minutes)
2. Review of Proposed drafts with Non-IP Filters (55 minutes)
3. Action items (5 minutes) 
