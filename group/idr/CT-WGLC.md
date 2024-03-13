---
title: CT WG LC 
description: CT WG Last Call Summary 
published: true
date: 2024-03-13T04:14:59.211Z
tags: 
editor: markdown
dateCreated: 2023-07-25T13:14:09.495Z
---

# BGP CT - IDR WG 

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

### 2nd WG LC Directorate Reports for draft-ietf-idr-bgp-ct 
#### RTG-DIR 
[RTG-DIR Early Review of draft-ietf-idr-bgp-ct-18](https://datatracker.ietf.org/doc/review-ietf-idr-bgp-ct-18-rtgdir-early-hardwick-2023-12-18/) - by Jonathan Hardwick - has nits [mail message](https://mailarchive.ietf.org/arch/msg/rtg-dir/FLGmC0-ufqPsZpH_LmgL2eWmWhY/)
#### OPS-DIR 
[OPS-DIR Early Review of draft-ietf-idr-bgp-ct-19](https://datatracker.ietf.org/doc/review-ietf-idr-bgp-ct-19-opsdir-early-wu-2024-01-05/)- By Bo Wu  has nits [mail message](	https://mailarchive.ietf.org/arch/msg/ops-dir/o5aunNn0G_YFPJMARHMUOlHJ9Zs) 
#### SEC-DIR 
Chair's instructions to SEC-DIR reviewer: Intent (Color) could have security issues in this draft. The service data (customer data) is being tracked by intent and placed over service quality tunnels.  In one view, it is just more layering. In an alternate view, the color exposes some abstract qualities of the network. 

[SEC-DIR Early Review of draft-ietf-idr-bgp-ct-19](https://datatracker.ietf.org/doc/review-ietf-idr-bgp-ct-19-secdir-early-nystrom-2024-01-15/) - by Magnus Nystrom - did not resolve -18 review issues with 6 issues 
[see github issue #69](https://github.com/ietf-wg-idr/draft-ietf-idr-bgp-ct/issues/69) [Magnus mail message for-19](https://mailarchive.ietf.org/arch/msg/secdir/kFzE5B7LSCmtHH1kyoxuC8dF178) 

#### TSV-DIR
Chair's instructions to TSV-DIR: Please look at this draft from the viewpoint of having intent (color) aware customer traffic forwarded over a VPN overlay (tunnels) that forwarded over a set of intent (color) aware underlay of tunnels.  Please consider the problems with tunnels in your review of this text.

[TSV-DIR Early Review of draft-ietf-idr-bgp-ct-19](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ct/reviewrequest/18592/) - not completed yet. 

#### Early Review by IANA 
[draft-ietf-idr-bgp-ct-27] - check request sent to IANA
[draft-ietf-idr-bgp-ct-srv6-04] - check request sent to IANA 

### 2nd WG LC Directorate reviews for draft-ietf-idr-bgp-ct-srv6 
#### RTG-DIR - Pending (3/31/2024)

#### OPS-DIR - Pending (3/31/2024) 
 
#### SEC-DIR - Pending (3/31/2024) 
SEC-DIR instructions from shepherd: 
Intent (Color) could have security issues in this draft. The service data (customer data) is being tracked by intent and placed over service quality tunnels.  In one view, it is just more layering. In an alternate view, the color exposes some abstract qualities about the network. 

#### TSV-DIR - Pending (3/31/2024) 
TSV-DIR instructions from shepherd:
Please look at this draft from the viewpoint of having intent (color) aware customer traffic forwarded over a VPN overlay (tunnels) that forwarded over a set of intent (color) aware underlay of tunnels.  Please consider the problems with tunnels in your review of this text.

## 1st WG LC : 6/26/2023 to 7/16/2023
version: [draft-ietf-idr-bgp-ct-09.txt](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ct/09/)

WG Call's [Initial Call mail thread](https://mailarchive.ietf.org/arch/msg/idr/KYZbOsg2y4jcOfjV31pee5uhMjQ/)
https://mailarchive.ietf.org/arch/msg/idr/KYZbOsg2y4jcOfjV31pee5uhMjQ/

[Mai Message Extending of 1st WG LC to 7/28:](https://mailarchive.ietf.org/arch/msg/idr/Qr8GhdlEi8viaZxOCaWii3cA51s/)

[Mail Message Extending to 1st WG LC to 8/1:](https://mailarchive.ietf.org/arch/msg/idr/fC--NIU7VlyOjmNJwIcsXhXFvSk/) 


### 1st WG LC Shepherds report
[ct-wglc-discussion-v2.pdf](/idr/ct-wglc-discussion-v2.pdf)

### 1st WG LC Reviews 
#### 1. RTG-DIR 
[Early review of -09 by Mohamed Boucadair](https://datatracker.ietf.org/doc/review-ietf-idr-bgp-ct-09-rtgdir-early-boucadair-2023-06-28/) - has issues. Most of the issues taken care before 1st WG LC. One remaining issue is section 6's text for the reserved bits. 

#### 2. OPS-DIR - 
[Early Review -12 by Bo Wu](https://datatracker.ietf.org/doc/review-ietf-idr-bgp-ct-12-opsdir-early-wu-2023-08-03/) - status has issues: 

OPS-DIR had four concerns: 
a. An operations and manageability section needs to be added 
b. Section 10 application to Network Slicing: This section to refer to specific sections of the TEAS-NS functions that were not yet agreed upon.  
c. Section 11 SRv6 and Section 13.4 Applicability to IPv6: Recommend combining these two sections. 

d. The following things regarding communities need explantion 
- Why is color extended community not used, 
- why use mapping community, 
- How do these interact with Transport Class Route Target extended community. 

#### 3. SEC-DIR 
[Early Review of -18 by Magnus](https://datatracker.ietf.org/doc/review-ietf-idr-bgp-ct-18-secdir-early-nystrom-2023-12-23/) - has issues - [mail-link](	https://mailarchive.ietf.org/arch/msg/secdir/mUnuxyXUht0krQfIdMwjN2HsLKU) - no resolution on link or -19 review. 

## Open Issues from 1st WG LC call 
1. Ketan Talulikar's comments on the draft
2. Jeff Haas's comments on the draft

## Open issues from IETF-117
1. Why not one solution 

## Implementations 
2 implementations of all features. 

## Deployments 
(TBD) 