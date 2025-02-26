---
title: Shepherd Reviews for draft-zhang-idr-sr-policy-template 
description: Shepherd draft-zhang-idr-sr-policy-template 
published: true
date: 2025-02-26T00:56:51.369Z
tags: 
editor: markdown
dateCreated: 2025-02-26T00:56:51.369Z
---

# Shepherd Reviews for draft-zhang-idr-sr-policy-template


## Summary 
**draft:**  [draft-zhang-idr-sr-policy-template](https://datatracker.ietf.org/doc/html/draft-zhang-idr-sr-policy-template)

**Type:** Proposed Standard 
**status:** Individual draft  
**adoption process:** Must get support from Spring before continuing 
**current version:** 04
**Early Allocation**: yes, need early allocation 
**implementations:** H3C and ZTE (2 implementations) 
**bgp-ls draft:** none


## Review -03 
**draft:**  [draft-ietf-idr-sr-policy-te-policy-attr](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-te-policy-attr)
**Status**: Individual draft needs revision 
**implementations:** unknown 
**allocation status:** needs early allocation 
**email:** https://mailarchive.ietf.org/arch/msg/idr/s444aqSUl4195Y_VdJtfg4r2RlU/
 
### Technical Review 

**What it defines:** template for SR Policy

The following issues need to be discussed by this draft:

 #### Issue-1:  Why should BGP be passing a configuration template plan?

NETCONF/RESTCONF have concepts of templates and updates to templates.

Why does BGP as an unordered multicast transmission protocol a valid protocol for this template?

#### Issue-2: How does BGP validate a SR Policy template?


How is the BGP NLRI with the template validated?

The reference to [draft-ietf-idr-segment-routing-te-policy] is out of date.   This draft has been replaced by [draft-ietf-idr-sr-policy-safi] and [draft-ietf-idr-bgp-sr-segtypes-ext].

The BGP process passes valid BGP NLRI routes with SR Candidate Routes to the SRPM. SRPM validates the SR Candidate routes into an Active Candidate Route.

- How is the template information from this draft validated?
- 
- How does this validation fit with BGP routes with tunnels?
- 
- How does this validation fit with BGP routes without tunnels?


#### Issue-3: Why are the constraints based on Route-Target constraints (RTCs)  valid for this use case?

Why is it not a targeted BGP session or an RR-controller function?

#### Issue-4: Has Spring Approved the template approach?

If so, where is the Spring document that discusses this approach?


#### Issue-5:  Section 5.1 needs more detail.
Validation of the BGP routes needs to occur before handing it off to the SRPM.
Therefore, the authors need to revise the statement in section 5.1

"Reflections just need to advertise the route of SR, no need to process"

#### Issue-6: Section 5.2 states the following;

> "SR Policy is only to be processed on the SR Policy headend,
> the reflectors just need to reflect the route of SR Policy, no need to process it."
{.is-info}

This reduces BGP to a transport of potentially bad information with little context. Why should BGP change to do this?


#### Issue-7: Section 5.2 precedence between template and "no templates"

What is the exact precedence between template generated information and
Other information.

### Editorial issues:

NIT-1: Please correct references 
[draft-ietf-idr-segment-routing-te-policy] - must be replaced with
[draft-ietf-idr-sr-policy-safi] and [draft-ietf-idr-bgp-sr-segtypes-ext]/ 

### Action items 
Authors should do the following before IDR adoption call

  1.  Approval by Spring of Template architecture
  2.  Revise the draft to answer the above questions.

