---
title: CT WG LC 
description: CT WG Last Call Summary 
published: true
date: 2024-03-12T17:30:37.472Z
tags: 
editor: markdown
dateCreated: 2023-07-25T13:14:09.495Z
---

# CT WG Summary

## IESG Publication information 


## 2nd WG LC 
Prior to 2nd WGLC draft-ietf-idr-bgp-ct was split into 3 drafts:
[draft-ietf-idr-bgp-ct](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ct/) - CT 
[draft-ietf-idr-bgp-ct-srv6](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ct-srv6/)- CT support for SRv6 
[draft-ietf-idr-bgp-fwd-rr](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-fwd-rr/) - RR in forward path - issue and fixes 

### 2nd WG LC Shepherd Reports
[draft-ietf-idr-bgp-ct-26 shepherd report](https://mailarchive.ietf.org/arch/msg/idr/7PIQx2nE0Y4d-lR7bIpTPL_TMR0/)

[draft-ietf-idr-bgp-ct-srv6 shepherd report](https://mailarchive.ietf.org/arch/msg/idr/iwFeecKN-DwdjFG3X0bAhnxO2Sw/) 

draft-ietf-idr-bgp-fwd-rr - report pending 

### 2nd WG LC email thread (2/16/2024 to 3/1/2024) 
WG Call's [Initial thread](https://mailarchive.ietf.org/arch/msg/idr/Ud2coGDvdXYy7x-SHPSK2Onwjx4/)
https://mailarchive.ietf.org/arch/msg/idr/Ud2coGDvdXYy7x-SHPSK2Onwjx4/

Consensus decision: [Ready for Publication](https://mailarchive.ietf.org/arch/msg/idr/oNY5gAcE21y1bke6tBzeb76uVo4/) - 
https://mailarchive.ietf.org/arch/msg/idr/oNY5gAcE21y1bke6tBzeb76uVo4/

### 2nd WG LC 

## 1st WG LC : 6/26/2023 to 7/16/2023
version: [draft-ietf-idr-bgp-ct-09.txt](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ct/09/)

WG Call's [Initial Call mail thread](https://mailarchive.ietf.org/arch/msg/idr/KYZbOsg2y4jcOfjV31pee5uhMjQ/)
https://mailarchive.ietf.org/arch/msg/idr/KYZbOsg2y4jcOfjV31pee5uhMjQ/

[Mai Message Extending of 1st WG LC to 7/28:](https://mailarchive.ietf.org/arch/msg/idr/Qr8GhdlEi8viaZxOCaWii3cA51s/)

[Mail Message Extending to 1st WG LC to 8/1:](https://mailarchive.ietf.org/arch/msg/idr/fC--NIU7VlyOjmNJwIcsXhXFvSk/) 
 

### 1st WG LC Shepherds report
[ct-wglc-discussion-v2.pdf](/idr/ct-wglc-discussion-v2.pdf)

### 1st WG LC Reviews 
1. RTG-DIR
[Early review by Mohamed Boucadair](https://datatracker.ietf.org/doc/review-ietf-idr-bgp-ct-09-rtgdir-early-boucadair-2023-06-28/)

Most of the issues taken care before 1st WG LC. 
One remaining issue is section 6's text for the reserved bits. 

2. OPS-DIR 
OPS-DIR had four concerns: 
a. operations and manageability section needs to be added 
b. Section 10 application to Network Slicing 
- This section to refer to specific sections of the TEAS-NS function that are  

c. Section 11 SRv6 and Section 13.4 Applicability to IPv6
- Recommendation to combine these two sections. 

d. The following Communities need explantion 
- Why is color extended community not used, 
- why use mapping community, 
- How do these interact with Transport Class Route Target extended community. 

## Open Issues from WG LC call 
1. Ketan Talulikar's comments on the draft
2. Jeff Haas's comments on the draft

## Open issues from IETF-117
1. Why not one solution 

## Implementations 
2 implementations of all features. 

## Deployments 
(TBD) 