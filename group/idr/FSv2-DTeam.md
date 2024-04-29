---
title: Background on FSv2 Design Teams in 2024 
description: Reasoning behind FSv2 Design teams in 2024 
published: true
date: 2024-04-29T05:36:49.126Z
tags: 
editor: markdown
dateCreated: 2024-04-17T12:08:27.991Z
---

# Background on FSv2 Design Teams


## Four Parallel Open Design Teams to Speed up FSv2 work. 

Flow Specification v2 work was chartered to fix the ordering problems with FSv1 (IPv4 [RFC8955](https://datatracker.ietf.org/doc/rfc8955/), IPv6 [RFC8956](https://datatracker.ietf.org/doc/rfc8956/), and to allow additions of new filters and actions.  Flow Specification v2 ([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/)) is technically correct, but a lot to implement.  

Since IDR requires 2 implementations to publish an RFC, the implementers have requested we break the draft into "chunks" that can be 
implemented a little at a time.  These "chunks" (portions) of technology will be

1. FSv2 for Basic IP functions 
2. More IP Filters for FSv2
3. More Actions for FSv2
4. Non-IP actions for FSv2 

Below is a description of the "chunks" of technology, and how four parallel design teams (design teams 1-4) will progress work on documents for each chunk. 

### What does Parallel Open Design 

By **Design Team**, we mean that the participants will be expected to:
- read FSv2 work (drafts, RFCs, and web pages) ahead of the meeting,
- be ready at the interim to discuss the work, and 
- take action items to investigate issues or write drafts. 

By **Open** Design Teams, we mean that anyone may join the design team and attend the FSv2 interims. Minutes will be posted from the design team interims so that others can follow along. 


By **Four Parallel** Open Design Teams,  we mean that the 4 design teams will operate simulataneously to create documents for the "chunks" of technology from the original FSv2 work.  

**Our focus** is to get "chunks" of FSv2 technology defined so that the following can happen:
- implementers can implement FSv2 Base IP chunk and other "chunks" later, 
- the additional technology "chunks" that add new IP filters, new IP actions, and Non-IP filters and actions can be added easily to the base chunk.  

**Why are we doing this now?** The CAR/CT work put FSv2 work on hold so we are trying to catch up. 

## What happens to current FSv2 
The IDR draft ([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/)) will be kept as an IDR WG draft that combines approved FSv2 issues. This document will collect approved changes into one place.  


### How to Join a FSv2 Design 
Send email to idr-chairs@ietf.org or contact Susan Hares (shares@ndzh.com).  
 

## FSv2 Open Design Teams 
### Design Team 1:  Basic IP FSv2 
The key addition for this chunk of FSv2 is the user ordering of filters defined by the FSv2. 

This initial draft will stay with the FSv IPv4 and IPv6 and current actions in the Flow Specification Extended Community (FS-EC).  The focus of this design team is to determine if the technology for user ordering of filters forms a good foundation for FSV2 work. 

**Design team:** Design Team 1 - Basic IP FSv2 
**Meetings before IETF-120:** 4/29 and 6/3 (Time 10-11:30am EDT) 
**Meets with Design Team 2:** 5/6 and 6/10 (Time 10-11:30am EDT)  
**initial draft:**  [draft-hares-idr-fsv2-IP-Basic](https://datatracker.ietf.org/doc/draft-hares-idr-fsv2-ip-basic/) 

**New drafts requested:** 
a. Drafts that discuss the pros/cons of filter ordering for work 
b. Drafts with filters 

### Design Team 2: More IP Filters for FSv2 
FSv2 opens the possibility to add new filters for data packets (IP and non-IP). This chunk of work expands the IP filters to the IP packet headers (layers 3-7) and the payload. 

**Design team:** Design Team 2 - More IP Filters for FSv2 
**Meetings before IETF-120:** 5/6 and 6/10 (Time 10-11:30am ET) 
**initial draft:**  draft-ietf-hares-fsv2-more-ip-filters
   IDR draft included in FSv2: draft-ietf-idr-flowspec-srv6-05 
**New drafts requested:** Any IP packet filters (header + payload) 

**New IP filters from draft-ietf-idr-flowspec-v2**
    Filters in FSv2 are: SID filters
    Filters came from: draft-ietf-idr-flowspec-srv6-05 
    
**Existing Individual drafts in this area**
   [draft-peng-idr-apn-bgp-flowspec-00](https://datatracker.ietf.org/doc/draft-peng-idr-apn-bgp-flowspec/)  
   [draft-cui-idr-content-filter-flowspec-00](https://datatracker.ietf.org/doc/draft-cui-idr-content-filter-flowspec/)   
   [draft-lin-idr-cats-flowspec-ts-00](https://datatracker.ietf.org/doc/draft-lin-idr-cats-flowspec-ts/)
   [draft-geng-idr-flowspec-saf-00](https://datatracker.ietf.org/doc/draft-geng-idr-flowspec-sav/)
   
   
### Design Team 3: More IP Actions for FSv2 
FSv1 found problems with undefined interactions between actions. 
FSv2 ([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/))
allows for ordered actions using Wide Community. Many implementers desired both Extended-Community Actions with specific default order and 
defined interactions.  A new Extended-Community will be expanded for this 

Other implementers want to be able to specify an order for actions.  The user specification of action ordering will not fit in the Extended Community, and so the Wide Community format (type 2, FSv2 actions) will be used.  

One key issues with Ordering of Actions is the action taken when an action does not successfully complete.  Potential recovery from a failed action are: ignore, continue, halt, roll-back. 

**Design team:** Design Team 3 - More IP Actions for FSv2  
**Meetings before IETF-120:** 5/13 and 6/17 (Time 10-11:30am ET) with Design Team 4 
**initial draft:**  draft-ietf-hares-fsv2-more-ip-actions 
**New drafts requested:** Any Drafts specifying actions taken as 
a result of IP filters 

**FSv1 Actions in addition to RFC8895 and RFC8896**
1. redirect to indirection id 
[draft-ietf-idr-path-redirect-12](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-path-redirect)
2. Redirect to IP 
[draft-ietf-idr-flowspec-redirect-ip](/group/idr/implementations/draft-ietf-idr-flowspec-redirect-ip)

**New IP filters from draft-ietf-idr-flowspec-v2**
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


### Design Team 4: Non-IP Filters and Actions 

FSv2 (([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/)) specified Non-IP filters for MPLS, SFC, L2VPN, and tunnels (using nvo3 concepts). 

**Design team:** Design Team 4 - Non-IP Filters and Actions    
**Meetings before IETF-120:** 5/13 and 6/17 (Time 11-12:00) ET) with Design Team 3 
**appropriate drafts:** Drafts proposing any Non-IP filters or Non-IP Actions 

**initial drafts:**  
1. draft-ietf-hares-fsv2-non-IP -
  This FSv2 work included MPLS Filters and actions. 
  
2. [draft-ietf-idr-flowspec-l2vpn](/group/idr/implementations/draft-ietf-idr-flowspec-l2vpn) 
This IDR WG draft provides the L2 Filters and Actions. 

3.[draft-ietf-idr-flowspec-nv03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/)
  This IDR draft includes filtering of various headers of 
  L2 and L3 tunnels.  

4. [RFC9015](https://datatracker.ietf.org/doc/rfc9015/)
This draft provides the SFC flowspecification filters and actions. 

**individual drafts for this team **:
1. [draft-xiong-idr-detnet-flow-mapping](https://datatracker.ietf.org/doc/draft-xiong-idr-detnet-flow-mapping/) 
This draft provides L2 + latency filters and actions. 

2. [draft-zzd-flowspec-path-scheduling](https://datatracker.ietf.org/doc/draft-zzd-idr-flowspec-path-scheduling/)
Filtering and actions based on packet timing. 


 