---
title: Shepherd Reviews for draft-ietf-idr-sr-policy-nrp
description: Shepherd draft-ietf-idr-sr-policy-nrp
published: true
date: 2025-02-24T23:48:45.554Z
tags: 
editor: markdown
dateCreated: 2025-02-24T23:48:45.554Z
---

# Shepherd reviews for draft-ietf-idr-sr-policy-nrp


## Summary 
**draft:** [draft-ietf-idr-sr-policy-nrp](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-nrp/)
**status:** WG Draft (expires 3/2/2025)
**adopted:** 
**current version:** -02 
**Early Allocation**: TBD 
**implementations:** TBD  
**bgp-ls draft:** [draft-ietf-idr-bgp-ls-sr-policy-nrp/](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-sr-policy-nrp/) 

## -02 pending Shepherd for WG LC (ETA 2/25) 

### Technical Issues 
Need to use new template format for Sub-TLV for NRP-ID in Tunnel-encaps Attribute. 


## -01 Shepherd Report: 
**draft:** [draft-ietf-idr-sr-policy-nrp-01](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-nrp-01)
Status:** WG draft, recently adopted (6/2024 upload) 
**Prior to WG LC:** needs 2 implementations. 
**Shepherd Summary:** Editorial changes needed
**allocation status:** Need allocations 

### Technical Issues: 

#### Issue-1 Section 2, NRP-ID 

**old text:** /NRP ID is planned by network operator/
**new text:** /NRP ID is allocated and administered by network operator./ 

#### Issue-2. Section 3, Scalability, last sentence, need clarity on what "this" refers to

> **old text:** /On the other hand this will only cause an increase 
>           in the status reporting information of the head node, 
>              the impacts to the BGP control plane are considered acceptable./
{.is-info}


**Suggested new text:**
>          / On the other hand, the increase in state when NRP increases will 
>            cause an increase in the state reported on the head node.  
>            Due to this fact, the impact to the BGP control plan is considered
>            acceptable./ 
{.is-info}


#### Issue-3: Security Section, Please enhance the security section 
Security section should refer to security section in 
[draft-ietf-idr-sr-policy-safi]. It is important to reference:

a) operates in trusted environment (as draft-ietf-idr-sr-policy-safi)
b) Operators must a NRP-ID for one or more SR Policy is a critical piece of 
information about critical infrastructure.  Care must be take 
with distribution of information.              
