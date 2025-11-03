---
title: Shepherd Reviews for draft-ietf-idr-sr-policy-metric
description: Shepherd draft-ietf-idr-sr-policy-metric
published: true
date: 2025-11-03T01:40:32.842Z
tags: 
editor: markdown
dateCreated: 2025-02-24T21:07:32.555Z
---

# Shepherd reviews for draft-ietf-idr-sr-policy-metric


## Summary 
**draft:**  [draft-ietf-idr-sr-policy-metric](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-metric/)
**Type:** Proposed Standard 
**status:** WG Draft  
**adopted:** [9/1/2024](https://mailarchive.ietf.org/arch/msg/idr/xUckKQncQ4rLVCCAkBO6bQ6zcuk/) (8/1 to 8/30 call) 
**current version:** -03 
**Early Allocation**: 20 [wiki Early Allocation](/group/idr/Early-Allocation-Status), needs early allocation.  Call awaits -04 version with Issues fixed (Technical and Editorial)  
**implementations:** TBD  
**bgp-ls draft:** none 
**Next step:** release -04 with issues fixed, and then do an Early Allocation call (2 weeks) 

## -03 Review
**draft (-03):** [draft-ietf-idr-sr-policy-metric-03](https://www.ietf.org/archive/id/draft-ietf-idr-sr-policy-metric-03.txt)

### Technical Issues
#### Technical Issue 1 - Do you have the right registry
Ketan is concerned that you have the right registry at:
https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#sr-policy-segment-list-sub-tlvs

Please discuss with Ketan about the correct registry. The registry you have specified is at the same level as all segment types.  

#### Technical Issue 2 - please update to RFC9830 
[I-D.ietf-idr-sr-policy-safi](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/13/) is now [RFC9830](https://datatracker.ietf.org/doc/rfc9830/).  Please update your draft. 

#### Technical Issue 3 - Update security text in section 8  

The metric for a pathway using SR technology is information critical to a network. 
Therefore, you must include a warning in the security considerations in section 8
to have the operator carefully restrict access to the metric information. 

### Editorial Issues
#### Editorial issue 1 - in section 7.2
Please fix the table format for code point 5. 


## -02 Review 
 **draft (-02):**  [refresh only](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-metric-02) -  Update only refresh the draft.  No changes. Needs revision
**Email link:** https://mailarchive.ietf.org/arch/msg/idr/HiSCW-HKUBQhMSpxB4qqzENrVHA/
 
 ## -01 Review 
 
 **draft (-01):**  [-01](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-metric-01) handles Issue 1 and Editorial Nit-1.
 
 Technical issues remaining: Issue 2 has needs a bit more in security section. 
 
 Based on security AD/SEC-DIR is important to reference:
- a) operates in trusted environment (as draft-ietf-idr-sr-policy-safi)
- b) Operators must a metric for a segment is critical piece of information about critical infrastructure.  Care must be take with distribution of information.  
 

## -00 Review  
 
 **draft (-00):**  [draft-ietf-idr-sr-policy-metric](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-metric-00) 

 
### Technical issues
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

Why are you references draft-ietf-idr-bgp-ls-sr-policy? 
Is there something I missed?  

### Editorial Nits

#### NIT-1: Figure 3, line with 5 Loss rate, fix alignment 
