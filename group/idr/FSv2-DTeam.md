---
title: Background on FSv2 Design Teams in 2024 
description: Reasoning behind FSv2 Design teams in 2024 
published: true
date: 2024-04-17T14:01:12.640Z
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

### How to Join a FSv2 Design 
Send email to idr-chairs@ietf.org or contact Susan Hares (shares@ndzh.com) 

### 1. Basic FS v2 for DDOS   
The key addition for this chunk of FSv2 is the user ordering of filters defined by the FSv2. 

This initial draft will stay with the FSv IPv4 and IPv6 and current actions in the Flow Specification Extended Community (FS-EC).  The focus of this design team is to determine if the technology for user ordering of filters forms a good foundation for FSV2 work. 

**Design team:** Design Team 1 
**Meetings before IETF-120:** 4/29 and 6/3 (Time 10-11:30am ET) 
**initial draft:**  draft-hares-idr-fsv2-ddos  
**New drafts requested:** 
a. Drafts that discuss the pros/cons of filter ordering for work 
b. Drafts with filters 


### 2. More IP Filters for FSv2  **
FSv2 opens the possibility to add new filters for data packets (IP and non-IP). This chunk of work expands the IP filters based on the following: 
a. New IP filters from draft-ietf-idr-flowspec-v2 
b. New IP filters proposed to IDR 

Design Team: Design 
Initial draft: draft-hares-idr-fsv2-IP-filters
existing IDR drafts on IP filters: 

### 3. More IP Actions for FSv2 
FSv2 

4. Non-IP Filters and actions 


As presented at IETF-119 in the IDR session, we will be creating design teams to break the full draft into pieces. 
Your content here