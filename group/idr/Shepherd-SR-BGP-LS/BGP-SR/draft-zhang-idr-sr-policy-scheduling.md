---
title: Shepherd Review for draft-zhang-idr-sr-policy-scheduling
description: draft-zhang-idr-sr-policy-scheduling
published: true
date: 2025-02-26T02:01:50.615Z
tags: 
editor: markdown
dateCreated: 2025-02-26T01:37:34.654Z
---

# Shepherd Reviews for draft-zhang-idr-sr-policy-scheduling

## Summary 
**draft:**  [draft-zhang-idr-sr-policy-scheduling](https://datatracker.ietf.org/doc/html/draft-zhang-idr-sr-policy-scheduling)
**Type:** Proposed standard 
**status:** Individual Draft 
**current version:** 06
**adoption process:** TVR needs to set paradigm, Spring SR, and IDR mechanisms
**Cross-WG discussion:** TVR, Spring 
**bgp-ls draft:** none
**Early Allocation**: TBD 
**implementations:** TBD 


## Review -05 
**
Draft:** [draft-zhang-idr-sr-policy-scheduling-04](https://datatracker.ietf.org/doc/html/draft-zzd-idr-sr-policy-scheduling-04)
status: individual draft, 
**Adoption: ** Paradigm approved in TVR + Spring, IDR mechanisms  
**version:** Revision needed 
**implementations:** unknown
**Authors: **5 authors 
**Email:** https://mailarchive.ietf.org/arch/msg/idr/2BPY7USo_xaonlIkXDYVMvXklrQ/
**2nd email:** https://mailarchive.ietf.org/arch/msg/idr/iWTnLrBuoj1h4W78TqEc66MDbh0/


### Technical Review

#### Issue-1. Abstract, specify SR Policy Candidate Path distribution  

> Old text:/ 
>    This document proposes extensions to BGP SR Policy to indicate the
>    scheduling time of each candidate path(segment list) and its
>    associated attributes./
{.is-info}


> New text:/ 
> 
>    This document proposes extensions to BGP mechanism to pass 
>    explicit SR Policy Candidate Paths in order to indicate the
>    scheduling time of each candidate path(segment list) and its
>    associated attributes./
{.is-info}

   
##### Issue-2. Section 1, Update to [draft-ietf-idr-sr-policy-safi]

> Old text:/
>    [I-D.ietf-idr-segment-routing-te-policy] specifies how BGP may be
>    used to distribute SR Policy candidate paths.  It introduces a BGP
>    SAFI with new NLRI to advertise a candidate path of a Segment Routing
>    (SR) Policy./
{.is-info}

   
> new text:/
>    [I-D.ietf-idr-sr-policy-safi] specifies how BGP may be
>    used to distribute explicit SR Policy candidate paths.  It introduces a BGP
>    SAFI with new NLRI (SR Policy) and a new tunnel type for the BGP Tunnel 
>    Encapsulation Attribute (SR Policy) to advertise a candidate path 
>    of a Segment Routing (SR) Policy./
{.is-info}

   
> Old text:/
>    In order to solve these problesm, this document proposes extensions
>    to BGP SR Policy to indicate the scheduling time of each candidate
>    path(segment list) and its associated attributes. / 
>    
{.is-info}

> new text:/
>    In order to solve these problesm, this document proposes extensions
>    to BGP SR Policy as defined in [draft-ietf-idr-sr-policy-safi] 
>    to indicate the scheduling time of each explicit candidate
>    path (segment list). / 
{.is-info}

   
#### Issue-3: Section 3, update to latest drafts

replace [draft-ietf-idr-segment-routing-te-policy] to 
[draft-ietf-idr-sr-policy-safi]. 

> old text:/
>    The NLRI defined in [I-D.ietf-idr-segment-routing-te-policy] contains
>    the SR Policy candidate path.  The content of the SR Policy Candidate
>    Path is encoded in the Tunnel Encapsulation Attribute defined in
>    [RFC9012] using a new Tunnel-Type called SR Policy Type with
>    codepoint 15. /
{.is-info}

   
> new text:/
>  The NLRI defined in [I-D.ietf-idr-sr-policy-safi] contains
>    the SR Policy candidate for an explicit policy.  The content of the SR Policy Candidate
>    Path is encoded in the Tunnel Encapsulation Attribute defined in
>    [RFC9012] using a new Tunnel-Type called SR Policy (code point 15)./ 
{.is-info}

   

#### Issue-4: Section 3, English text

> old text:/ The new SR Policy
>    encoding structure is expressed as below:/
{.is-info}


> new text:/ The new SR Policy TLV structure 
>    is listed below:/
{.is-info}


#### Issue-5: Section 4.1 and 4.2 

Please Give ranges on the definitions.

Here are a few questions that your text should answer:

1) Is group number zero valid? Are there any invalid group numbers? 

2) Is index of zero valid? 

3) Provide clearer diagram on time block. 

> [index, reserved] [enable time] [disable time]
> are 12 octets of repeating information.   
{.is-info}


### Issue-6: Add information to security section 

See [draft-ietf-idr-sr-policy-safi] security section. 
What you need to update here is the protection of 
the critical information for the Scheduled Time Information 
Sub-TLVs you have added. 

#### Issue-7: Please add a manageability section 

The movement of traffic between SR Candidate 
paths based on time may take different skills
to debug problems in code or configuration. 

Please provide a short manageability section. 






 



