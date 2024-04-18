---
title: FSv2 Design Team 2 - More IP Filters 
description: FSv2 Design Team 2 Home Page 
published: true
date: 2024-04-18T12:21:49.627Z
tags: 
editor: markdown
dateCreated: 2024-04-18T12:21:49.627Z
---

## FSv2 Design Team 2: More IP Filters for FSv2 

FSv2 opens the possibility to add new filters for data packets (IP and non-IP). This chunk of work expands the IP filters to the IP packet headers (layers 3-7) and the payload.

**Design team:** Design Team 2 - More IP Filters for FSv2
**Meetings before IETF-120:** 5/6 and 6/10 (Time 10-11:30am ET)

**initial draft:** draft-ietf-hares-fsv2-more-ip-filters
**New drafts requested:** Any IP packet filters (header + payload)

**Background: **
The initial draft will just contains the initial filters from Flow Specification v2 ([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/)).  

Currently the only IP (IPv4/IPv6) filters are SID Filters (from draft-ietf-idr-flowspec-srv6).  

## Questions
1. What IP filters do we need for IPv6 headers? 
2. What IP Payload filters should we add? 
3. What SRv6 Filters should we add? 
4. What IPv4 or IPv6 filters have we missed. 
5. What impact does grouping of data per application (APN ID, CATS-ID, SAVNET ID)? 

## Reading before 5/3 meeting 

### IDR drafts 
- Flow Specification v2 ([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/))
- FSv2 IP Basic draft [draft-hares-idr-fsv2-IP-Basic](https://datatracker.ietf.org/doc/draft-hares-idr-fsv2-ip-basic/)
- ]draft-ietf-idr-flowspec-srv6-05](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-srv6/) 

### Individual Drafts to read 
draft-peng-idr-apn-bgp-flowspec] 
draft-cui-idr-content-filter-flowspec-00
draft-lin-idr-cats-flowspec-ts-00
draft-geng-idr-flowspec-saf-00
