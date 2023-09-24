---
title: CAR WG LC Status 
description: Summary of CAR WG Last Call 
published: true
date: 2023-09-24T17:27:21.769Z
tags: 
editor: markdown
dateCreated: 2023-07-25T13:11:40.965Z
---

# CAR WG LC 

## Shepherd Report 
list of issues:  [car-wg-lc-track-v7.pdf](/idr/car-wg-lc-track-v7.pdf)
Shepherd's report on issues:  [car-shepherd-report](/idr/idr-shepherd-car-wglc-q1-issues-v3.pdf)

## Directorate Reviews
1. RTG-DIR Review 
[email-RTG-DIR](  https://mailarchive.ietf.org/arch/msg/idr/0X_q_e09ejtb0NZQ25smUrklwmQ/)
Reviewer: Ben Niven-Jenkins
Review result: Has Issues
action item: Needs short overview in section 1 before leaping into terminology

2. OPS-DIR Review 
[mail-message](https://mailarchive.ietf.org/arch/msg/idr/4SgOciKKtA9nap1M-f6eHRKNtWc/)

Raised issues on 
1) amount of abbreviations without explanation 
2) In this draft, it says E is globally unique, which makes E-C in that order unique.  Can this be explained. 
3) Why the type 2 NLRI for IP Prefix was needed. 
4) dependency on the progression of draft-ietf-hr-spring-intentaware-routing-using-color? 
5) Needing an operations section      
6) Several Editorial issues (see list in email). 

## Open issues from Mail list 
1. CAR WGLC Q1 - Logic behind sections 9 and 10 in CAR 
  issues involved: 
    1-1) is this a ideology change? 
    1-2) Why add IP prefix (section 10) 
    1-3) Clarify the Support of IP Prefix in AFI/SAFI sections, 
    1-4) Are there security concerns?
    1-5) Clarify the Procedures in sections 8-10
    1-6) Relationship among multiple drafts for SRv6 
    1-7) Use of CAR SAFI and VPN CAR SAFI for transport
    1-8) Use of CAR SAFI and VPN CAR SAFI for Service Families 

Action items involve: Revisions of sections 2, 3, 8, 9, 10, and 13. 

 2. CAR-WGLC-Q-2: Inter-domain Intent-Aware Routing 
  Why do we not have 1 solution after 2 years? 
 
 Action item: IDR WG shepherd will make selection 
 in September. 
 
 ## Open Issues from Adoption call
 ### CAR specific issues from Adoption  
 1. F3-CAR-Issue-1: Appendix A.7 
 2. F3-CAR-Issue-2: BGP-CAR Consensus on need for resolution schemes

 3. 33-CAR-Issue-3: Handling of LCM and Extended Communities
 4. F3-CAR-Issue-4: CAR Routing in Color Domains for Anycast EP
 5. F3-CAR-Issue-5: BGP Update packing. 

### detailed report on WG LC email
[car-wg-lc-track-v6.pdf](/idr/idr/car-wg-lc-track-v6.pdf)


### WG issues from Adoption 
1. F3-WG-Issue-3 - Key operational Issues
status: awaiting Jeff Haas review

2. F3-WG-Issue-4 - Intent at Service Level 
status: awaiting Ketan's review

3. F3-WG-Issue-5 Technology BGP-CT and BGP-CAR based on 
status: Awaiting Jeffrey Zhang's review 

4. F3-Wg-Issue-6: Benefit of Route Targets
status: Awaiting discussion on list after CAR's 
addition of VPN CAR (with RDs)

5. F3-WG-Issue-7: Compatibility of BGP-CT and BGP-CAR to SR-PCE
status: awaiting confirmation of Shraddha Hedge 

6. F3-WG-Issue-8: Scaling 
status: awaiting review by Jeff Haas 

## Implementation

draft-ietf-bgp-car-02 - has only 1 implementation of the 
type 2 NLRI.  


