---
title: Shepherd Reviews for draft-ietf-idr-bgp-sr-mpls-elp (draft-ietf-idr-bgp-srmpls-elp)
description: Shepherd draft-ietf-idr-bgp-sr-mpls-elp
published: true
date: 2025-02-26T02:37:13.865Z
tags: 
editor: markdown
dateCreated: 2025-02-26T02:37:13.865Z
---

Shepherd Reviews for draft-ietf-idr-bgp-sr-mpls-elp (draft-ietf-idr-bgp-srmpls-elp)

## Summary 
**draft:**  [draft-ietf-idr-bgp-srmpls-elp](https://datatracker.ietf.org/doc/html/draft-ietf-idr-bgp-srmpls-elp)
**renamed draft**: draft-ietf-idr-bgp-sr-mpls-elp
**Type:** Proposed Standard 
**status:** WG Draft  
**adopted:**  8/12/2024 (7/12/2024 - 7/30/2024) 
**current version:** 01
**Early Allocation**: yes, need early allocation 
**implementations:** H3C and ZTE (2 implementations) 
**bgp-ls draft:** none


## Review of -02 (pending)

ETA of review on 2/26/2024. 

## Review -01 
**draft:** [draft-ietf-idr-bgp-srmpls-elp-01](https://datatracker.ietf.org/doc/html/draft-ietf-idr-bgp-srmpls-elp-01)
**Status**: WG draft, needs revision 
**implementations:** unknown 
**allocation status:** needs early allocation 
**WG LC status: **TBD (unknown)
email

### Shepherd Question

#### Question:  Is this draft no longer needed since Entropyy La added to [draft-ietf-idr-sr-policy-safi]
 
#### Answer from Yao 
> Section 2.4.5 in draft-ietf-idr-sr-policy-safi defines a Explicit NULL Label Policy Sub-TLV to indicate whether and how to push a Explicit NULL Label(ENLP) on the packet when steering that packet into SR Policy. And this ENLP Sub-TLV MUST NOT appear more than once.
> 
> As in RFC4182, the Explicit NULL Label(ENLP) has only two values, value of 0 for the "IPv4 Explicit NULL Label", value of 2 for the "IPv6 Explicit NULL Label". When ENLP appear in the top of label stack, it indicates that the label stack must be popped.
> 
> While draft-ietf-idr-bgp-srmpls-elp defines  ELP(Entropy Label Position) sub-TLV to indicate the Entropy Label Position in the SID List. Entropy Label is used for load balancing purpose, it may appear multiple times in the segment list and the value of EL is supplemented by the ingress node.
> 
> Considering that the definition, usage for SR and position in the label stack are different for Explicit NULL Label and Entropy Label,  the content in draft-ietf-idr-bgp-srmpls-elp can not be cover by draft-ietf-idr-sr-policy-safi section 2.4.5.
> {.is-info}


### Technical Issue in -01  

#### Issue-1:  Section 3, paragraph starting "For example". BGP-LS reference

Should the BGP-LS reference be [RFC9085][RFC9552] or just [RFC9552]? 


#### Issue-2. Missing Error handling for a malformed Explicit NULL Policy TLV 

See [draft-ietf-idr-sr-policy-safi] for example handling.  A short section is necessary 
to remind the user what error error handling (ignore if malformed, or 
treat as withdraw) is appropriate fort his the Explicti Null Policy TLV. 

#### Issue-3: Security Section, Please enhance the security section 
Security section should refer to security section in 
[draft-ietf-idr-sr-policy-safi]. It is important to reference:

a) operates in trusted environment (as draft-ietf-idr-sr-policy-safi)
b) Operators must a NRP-ID for one or more SR Policy is a critical piece of 
information about critical infrastructure.  Care must be take 
with distribution of information.   
   
  
#### Issue-4 Section 4, Scalability Considerations. 

Old text:/ When BGP is
   used for distributing SR Policy candidate paths, the amount of
   control plane information exchanged between the network controller
   and the headend nodes would also increase. This increases comes in 
   routes (BGP NLRI and BGP attribute combinations). / 
   
 Both the NLRI growth and the attribute growth should be flagged in the text. 


