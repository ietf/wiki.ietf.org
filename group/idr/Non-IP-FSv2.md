---
title: FSv2 - Non-IP Filters + Actions 
description: Adding Non-IP Filters and Actions to FSv2 
published: true
date: 2024-04-19T13:46:16.229Z
tags: 
editor: markdown
dateCreated: 2024-04-19T13:34:20.891Z
---

## 4. Adding Non-IP Filters and Actions to FSv2 

FSv2 (([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/)) specified Non-IP filters for MPLS, SFC, L2VPN, and tunnels (using nvo3 concepts). 

Design team 4 will focus on FSv2 work on Actions and Filters for MPLS, SFC, L2VPNs, L2 Latency (detnet), and tunnels.  The design team will examine previous work on MPLS, SFC, L2VPN, and tunnels and suggest implementation "chunks" to make it easier for developers. 

In addition, this design team will examine new filters and actions for Non-IP. 


**Design team:** Design Team 4 - Non-IP Filters and Actions    
**Meetings before IETF-120:** 5/13 and 6/17 (Time 11-12:00) ET) with Design Team 3 
**appropriate drafts:** Drafts proposing any Non-IP filters or Non-IP Actions 

**initial drafts:**  
1. draft-ietf-hares-fsv2-non-IP - This draft provides a starting point for FSv2 work included MPLS Filters and actions. 
  
2. [draft-ietf-idr-flowspec-l2vpn](/group/idr/implementations/draft-ietf-idr-flowspec-l2vpn) 
This IDR WG draft provides the L2 Filters and Actions. 

3. [draft-ietf-idr-flowspec-nv03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) 
  This IDR draft includes filtering of various headers of 
  L2 and L3 tunnels.  

4. [RFC9015](https://datatracker.ietf.org/doc/rfc9015/)
This draft provides the SFC flowspecification filters and actions. 

### Questions for Design team 
1. How do Non-IP Filters differ from IP packet (header and paylod) filters? 
2. How do Non-IP Filters combine with IP packet filters? 
3. How can a Group ID from various sources (interfaces group, APN, CATs, SAVnet, L2 latency) interact with the 
4. How do tunnels differ?  Does this matter for FSv2? 
5. How do Non-IP Actions interact with IP actions? 
6. What other questions should we be action? 

### Reading list  

**individual drafts for this team **:
1. [draft-xiong-idr-detnet-flow-mapping](https://datatracker.ietf.org/doc/draft-xiong-idr-detnet-flow-mapping/) 
This draft provides L2 + latency filters and actions. 

2. [draft-zzd-flowspec-path-scheduling](https://datatracker.ietf.org/doc/draft-zzd-idr-flowspec-path-scheduling/)
Filtering and actions based on packet timing. 


#### 5/13 Design Team 3 and 4 Meetings 
Interim link: 
https://datatracker.ietf.org/meeting/interim-2024-idr-07/session/idr
 
**5/13 Agenda**
5/13/2024  - Design Team 3 and 4 Meet
 Agenda Bashing  (5 minutes)
IP Actions (45 minutes) 
1. Introduction of Design team members (5 minutes)
2. Review of FSv2 split + Status Wide Communities Type 2 (FSv2) Format (5 minutes)
3. Discussion of More IP actions FSv2 (15 minutes)
4. Discussion of Action ordering + Design Issues (15 minutes)
5. Action items for IP Actions (5 minutes) 

Switch to Non-IP (45 minutes) 
6. Review of Non-IP Filter and Actions (MPLS, L2VPN, SFC, Tunnels, L2-Latency (15 minutes) 
7. Review of Filters/Actions on Group ID (interfaces, APN, CAT, Compression ID, SAV (interfaces + Group-ID) (25 minutes) 
8. Action items (5 minuites


#### 6/17 Design Teams 3 and 4 Meeting 
Interim Link: 
6/17/2024 Agenda https://datatracker.ietf.org/meeting/interim-2024-idr-10/session/idr

Agenda Bashing + Introductions 
1. Review of IP Actions Drafts (60 minutes)
2. Review of Proposed drafts with Non-IP Filters (60 minutes)  
 