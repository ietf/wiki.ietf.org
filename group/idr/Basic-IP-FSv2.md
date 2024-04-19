---
title: FSv2 - Design Team 1:  Basic IP FSv2
description: IDR Design Team for FSv2 for Basic IP Functions 
published: true
date: 2024-04-19T19:41:16.757Z
tags: 
editor: markdown
dateCreated: 2024-04-16T18:41:46.485Z
---

# Design Team for FSv2 for Basic IP functions  

## Design Team 1: Basic IP FSv2 
 
 Design team 1 will be in charge of selecting the FSv2 functions ([draft-ietf-idr-flowspec-v2-03](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-v2/)) that will form the base specification for FSv2. 
 
 FSv2 IP Basic draft (draft-hares-idr-fsv2-IP-Basic) will add user ordering to the FSv1 functions. This initial draft will stay with the FSv IPv4 and IPv6 and current actions in the Flow Specification Extended Community (FS-EC).  
 
 The focus of Design team 1 is to determine if the technology for user ordering of filters forms a good foundation for FSV2 work. 

**Design team name:** Design Team 1 - Basic IP FSv2 
**Meetings before IETF-120:** 4/29 and 6/3 (Time 10-11:30am EDT) 
**Meets with Design Team 2:** 5/6 and 6/10 (Time 10-11:30am EDT)  
**initial draft:**  [draft-hares-idr-fsv2-IP-Basic]

**New drafts requested:** 
a. Drafts that discuss the pros/cons of filter ordering for work 
b. Drafts with filters 

The key addition for this chunk of FSv2 is the user ordering of filters defined by the FSv2. 

The initial draft((s) will stay with the FSv IPv4 and IPv6 and current actions in the Flow Specification Extended Community (FS-EC).  The focus of this design team is to determine if the technology for user ordering of filters forms a good foundation for FSV2 work. 

**Design team:** Design Team 1 
**initial draft:**  draft-hares-idr-fsv2-ddos  
**New drafts requested:** 
a. Drafts that discuss the pros/cons of filter ordering for work 
b. Drafts with filters 

**Open Design Team Meetings before IETF-120:** 4/29 and 6/3 
**Time for Meeting:** 4/29, 6/3 
**Note:** Design Team 1 should plan to join the Design Team 2 meetings on 5/6 and 6/10. 

**Team Members:** (TBD) 
 

### Questions/Open Issues for Design Team 1 
1. Does the User Ordering Encoding support use cases for current DDOS scenarios?

Design Team 1 will review the use cases for FSv2 and determine if the user ordering can support the use cases.  Design Team 1 members will seek out the use cases describe by the other FSv2 design teams 2, 3, and 4 plus other new use cases.  
 
2. What happens if multiple FSv2 filters are received with the the same user order?

FSv2 currently orders filters with the same user order by FSv1 component types (using FSv1 logic). 

3. How should the FSv1 and FSv2 filters be merged. 

The FSv2 initial draft put FSv1 after all FSv2 filters.  A user knob provides the number were the ID starts. 

3. Does the user ordering allow for future additions of: 
a. New IP Filters, 
b. New Non-IP Filters, and 
c. Dependency between filters. 

4. What happens if errors are detected in the parsing of the filters? 
5. What happens if errors are detected when filters are used? 
6. What type of validity checks should be issues. 


## Meetings Times and Dates for all FSv2 Design teams

Topics for design teams
**Design Team 1: Basic IP FSv2: **  
Design Team 2: More IP Filters FSv2 - Adding IP filters to FSv2
Design Team 3: More IP actions FSv2 - Adding More IP Actions to FSv2 + Action ordering 
Design Team 4: Non-IP filters and actions FSv2 - Adding Non-IP filters and actions 

Meetings: 4/29, 5/6, 5/13, 6/3, 6/10, and 6/17
Time: 10:00-11:30 am EDT (7-8:30am PDT)
Design Team 1 Meets: 4/29, 6/3
Design Teams 1 and 2 Meet: 5/6, 6/10
Design Teams 3 and 4 Meet: 5/13, 6/17
 
 
### Agenda for 4/29/2024 Interim with Design Team 1 
Link to interim: https://datatracker.ietf.org/meeting/interim-2024-idr-03/session/idr

0) Agenda Bashing  [5 minutes]
1) Introduction of Design team members [5 minutes]
2) Review of FSv2 split + Communities for FSv2  [10 minutes]
3) Discussion of Basic IP FSv2 [30 minutes]
4) Discussion of Filter ordering + Deployment issues [30 minutes]
5) Action items [10 minutes]

### Agenda for 5/6/2024 Interim with Design Team 1 and Design Team 2
Link to interim: https://datatracker.ietf.org/meeting/interim-2024-idr-06/session/idr

5/6/2024 at 10:00-11:30 EDT -  Design team 1 and 2
0) Agenda Bashing + Introduction of design team members [5 minutes]
2) Review of FSv2 split + Status of Wide Communities [10 minutes]
3) Review Basic IP FSv2 Open Issues + Discussion [30 minutes]
4) Drafts proposing new IP Filters [40]
5) Action items [10 minutes]

 ### Agenda for 6/3/2024 Interim with Design Team 1 
 Link to interim: https://datatracker.ietf.org/meeting/interim-2024-idr-08/session/idr
 
 6/3/2024 agenda
0) Agenda Bashing   [5 minutes]
1) Introduction of Design team members [5 minutes]
2) Review of Basic IP FSv2 draft [45 minutes]
3) Review of Basic IP FSv2 Open Issues [30 minutes]
4) Action items [5 mimutes]

### Agenda for 6/10/204 Interim with Design Team 1 and Design Team 2
Link to interim: https://datatracker.ietf.org/meeting/interim-2024-idr-09/session/idr
 
 6/10/2024
0) Agenda Bashing  [5 minutes]
1) Introduction of Design team members [5 minutes]
2) Review of Drafts for More IP Filters FSv2 [60 minutes]
3) Review of Any Open Issues  + IETF-116 plan [15 minutes]
4) Action items [5 minutes] 
 