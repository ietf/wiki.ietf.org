---
title: Background on FSv2 Design Teams in 2024 
description: Reasoning behind FSv2 Design teams in 2024 
published: true
date: 2024-04-17T20:32:54.712Z
tags: 
editor: markdown
dateCreated: 2024-04-17T12:08:27.991Z
---

# Background on FSv2 Design Teams

## Why Design teams

Flow Specification v2 work was chartered to fix the ordering problems with FSv1 (IPv4 [RFC8959](https://datatracker.ietf.org/doc/rfc8955/), IPv6 [RFC8956](https://datatracker.ietf.org/doc/rfc8956/), and allow for grow in adding new filters and actions.  

Flow Specification v2 found the current full flow specification draft: 
([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/)) technically correct, but a lot to implement.  
Since IDR requires 2 implementations to publish an RFC, the implementers have requested we break the draft into "chunks" that can be 
implemented a little at a time.  These "chunks" of technology will be
1. Basic FSv2 for DDOS  
2. More IP Filters for FSv2
3. More Actions for FSv2
4. Non-IP actions for FSv2 

Below is a description of the "chunks" of technology.  The IDR will be starting up 4 parallel design teams (see below)  to resolve issues with basic drafts in each area, and encourage new work for FSv2 filters and actions. 

The IDR draft ([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/)) will be kept as an IDR draft that combines approved FSv2 issues. 

### How to Join a FSv2 Design 
Send email to idr-chairs@ietf.org or contact Susan Hares (shares@ndzh.com) 

### 1. Basic FS v2 for DDOS   
The key addition for this chunk of FSv2 is the user ordering of filters defined by the FSv2. 

This initial draft will stay with the FSv IPv4 and IPv6 and current actions in the Flow Specification Extended Community (FS-EC).  The focus of this design team is to determine if the technology for user ordering of filters forms a good foundation for FSV2 work. 

**Design team:** Design Team 1 - Basic IP FSv2 
**Meetings before IETF-120:** 4/29 and 6/3 (Time 10-11:30am EDT) 
**Meets with Design Team 2:** 5/6 and 6/10 (Time 10-11:30am EDT)  
**initial draft:**  [draft-hares-idr-fsv2-IP-Basic]
**New drafts requested:** 
a. Drafts that discuss the pros/cons of filter ordering for work 
b. Drafts with filters 

### 2. More IP Filters for FSv2  **
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
   
   
### 3. More IP Actions for FSv2 
FSv1 found problems with undefined interactions between actions. 
FSv2 ([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/))
allows for ordered actions using Wide Community. Many implementers desired both Extended-Community Actions with specific default order and 
defined interactions.  A new Extended-Community will be expanded for this 

Other implementers want to be able to specify an order for actions.  The user specification of action ordering will not fit in the Extended Community, and so the Wide Community format (type 2, FSv2 actions) will be used.  

One key issues with Ordering of Actions is the action taken when an action does not successfully complete.  Potential recovery from a failed action are: ignore, continue, halt, roll-back. 

**Design team:** Design Team 3 - More IP Actions for FSv2   
**Meetings before IETF-120:** 5/6 and 6/10 (Time 10-11:30am ET) 
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


## Non-IP Filters

 