---
title: Shepherd Reviews for draft-ietf-idr-sr-policy-metric
description: Shepherd draft-ietf-idr-sr-policy-metric
published: true
date: 2025-02-24T21:07:32.555Z
tags: 
editor: markdown
dateCreated: 2025-02-24T21:07:32.555Z
---

# Shepherd reviews for draft-ietf-idr-sr-policy-metric


## Summary 
**draft:**  [draft-ietf-idr-sr-policy-metric](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-metric/)
**Type:** Proposed Standard 
**status:** WG Draft (expires 3/2/2025),
**adopted:** [9/1/2024](https://mailarchive.ietf.org/arch/msg/idr/xUckKQncQ4rLVCCAkBO6bQ6zcuk/) (8/1 to 8/30 call) 
**current version:** -00 
**Early Allocation**: 20 [wiki Early Allocation](/group/idr/Early-Allocation-Status)
**implementations:** TBD  
**bgp-ls draft:** none 

## -00 Review  
 
 **draft (-00):**  [draft-ietf-idr-sr-policy-metric](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-metric-00) 
 **draft (-01):** [draft-ietf-idr-sr-policy-metric](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-metric-01) 
 email link: https://mailarchive.ietf.org/arch/msg/idr/dSfqgekAtrTWgOf5qICKUEln2ow/
 
 
### Technical issues:
#### Issue-1: Introduction, sentence 1,  SR Policy NLRI 

**Old text:**
>  / [I-D.ietf-idr-sr-policy-safi]defines SR Policy and Tunnel
>    Encapsulation Attributes./
**{.is-info}

New text:**
>   /[I-D.ietf-idr-sr-policy-safi]defines SR Policy and Tunnel
>    Encapsulation Attributes for the SR Policy tunnel type. 
{.is-info}

 
#### Issue-2: section 8, security, needs updating 

Security section should refer to security section in 
[draft-ietf-idr-sr-policy-safi]. It is important to reference:

a) operates in trusted environment (as draft-ietf-idr-sr-policy-safi)
b) Operators must a metric for a segment is critical piece of 
information about critical infrastructure.  Care must be take 
with distribution of information.  


#### Issue-3: Section 9, reference to [I-D.ietf-idr-bgp-ls-sr-policy], not in text 

Why are you references drsaft-ietf-idr-bgp-ls-sr-policy? 
Is there something I missed?  

### Editorial NITS

#### NIT-1: Figure 3, line with 5 Loss rate, fix alignment 
