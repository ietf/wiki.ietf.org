---
title: Shepherd review for draft-zzd-idr-policy-scheduling
description: Shepherd  draft-zzd-idr-policy-scheduling
published: true
date: 2026-01-07T01:51:57.998Z
tags: 
editor: markdown
dateCreated: 2025-03-17T07:10:39.472Z
---

# Shepherd Reviews for draft-zzd-idr-sr-policy-scheduling

## Summary 
**draft:**  [draft-zzd-idr-sr-policy-scheduling](https://datatracker.ietf.org/doc/html/draft-zzd-idr-sr-policy-scheduling/) 
**Type:** Proposed standard 
**status:** Individual Draft 
**current version:** -10, Needs -11 
**adoption process:** TVR needs to set paradigm, Spring SR, and IDR mechanisms
**Cross-WG discussion:** TVR, Spring 
**bgp-ls draft:** none
**Early Allocation**: TBD 
**implementations:** TBD 
**Reviewer:** Susan Hares 

## Review -10
### Technical issues in -10
#### Technical Issue-1: Review based on Sub-TLV template 
**What's missing: **
1) Can this Sub-TLV only go in the SR Policy tunnel TLV? 
If so please clearly state this in section 3. 

2) What is the precedence if  Schedule Time Information information occurs both at the SubTLV level for the SR Policy TLV, and at the level of the Segment list? 

My assumption is that the most specific wins.  This seems to be found in section 5.2.1. 

If there are multiple Schedule Time Information TLVs at the
SubTLV level under the SR Policy TLV, do you process all or 
just the first one? What happens if there are duplicates? 

Similarly, if there are multiple Schedule Time Information TLVs at the SubTLV level under the Segment list, do you process all 
or just the first one? What happens if there are duplicates? 

Does the schedule ID sole any or all of these problems? 

3) What part does this sub-TLV in validating the TLV?  Will a malformed sub-TLV  cause the TLV to be malformed?  Can the Malformed Sub-TLV ignored or does this cause a security issue? 

4) It appears that the Sub-TLV could be repeated at two levels (see section 3) for a tunnel with multiple segments (going over all segments) and at the segment level.  How do the two levels interact? Does any usage make the tunnel invalid? 

#### Technical Issue-2:  An Error handling section should be considered. 

Your error handling section states:
> The validation rules defined in Section 5.2.1 also SHOULD be performed by SRPM to determine if the Schedule Time Information sub-TLV is malformed or invalid. 
{.is-info}

How can this be?  If the form of the subTLV is malformed, it is the responsibility of the BGP process to ignore it.  If it is invalid or outside the sematic range, it is the SRPM job to consider it invalid.
Why are you stating:
If the Schedule Time Information sub-TLV is invalid or malformed, then the implementation SHOULD log errors, and the corresponding SR Policy MUST NOT be used and MUST be handled by the "treat-as-withdraw" strategy.

A Malformed SubTLV is an error.  An invalid context, can be logged.  
Discussion must occur here with the WG and Spring WG. 


#### Technical Issue-3: Update to RFC9830 and RFC9831. 




## Review -08 
**Reviewer:** Susan Hares

### Technical issues 

#### Issue-1: Technical Issues Not resolved from version -03 review 
- **resolved from -05:** Issue-1, Issue-2, Issue-3, Issue-4
- **Partially resolved:** Issue-4 and Issue 5 
- **not resolved:** Issue-6 (Security Section), and Issue-7 (Manageability section). 

#### Issue-2: Partially completed Issue-4 

> old text:/The NLRI defined in [I-D.ietf-idr-segment-routing-te-policy] 
>          contains the SR Policy candidate path./
         
> New text:/The NLRI defined in  [I-D.ietf-idr-sr-policy-safi] 
>          contains the SR Policy candidate path./ 

#### Issue-3: Partially completed Issue-5 

Note: You are not defining a new tunnel type. 

> Old text:/ The content of the SR Policy Candidate Path is encoded 
> in the Tunnel Encapsulation Attribute defined in [RFC9012] using a 
> new Tunnel-Type called SR Policy Type with codepoint 15. / 
{.is-info}


> New text:/ The content of the SR Policy Candidate Path is encoded 
> in the Tunnel Encapsulation Attribute defined in [RFC9012] using a 
> the Tunnel-Type called SR Policy Type with codepoint 15. /  
> 
{.is-info}


#### Issue-4: Review based on Sub-TLV template 
- Title: Current title is "Schedule Information" the author may wish to consider a more specific title.  
- Type Code: Accurate (TBD1)
- Encoding of Value bytes: contains diagram, description of each field, and error handling

**What's missing: **
1) Can this Sub-TLV only go in the SR Policy tunnel TLV. 
If so please clearly state this in section 3. 

2) What part does this sub-TLV in validating the TLV?  Will a malformed sub-TLV  cause the TLV to be illegal?  Can the Malformed Sub-TLV ignored or does this cause a security issue? 

3) It appears that the Sub-TLV could be repeated at two levels (see section 3) for a tunnel with multiple segments (going over all segments) and at the segment level.  How do the two levels interact? Does any usage make the tunnel invalid? 

#### Issue-5: An Error handling section should be considered. 

You are extending the [draft-ietf-idr-sr-policy-safi] error handling which extends the [RFC9012] error handling.  It would be good to have a section that calls out changes to both. 


#### Issue-6: Please add a security section (see -05 review) 

[draft-ietf-idr-sr-policy-safi] has a good start.  
You  must add to this the critical information passed by your draft.  

#### Issue-7: Please add a manageability section. 
Describe how this technology can be monitored or managed by NETCONF/Yang or BGP-LS. 


#### Issue-8: (from Jeff Haas): Malformed 
> "Malformed" is the designation for cases where the syntactically well-formed but semantically incorrect.  In the procedures for BGP-LS in RFC 9552, malformed BGP-LS attributes are treated with 'attribute discard'.  Is this what you really want to happen?
{.is-info}

#### Issue-9: epoch term (jeff Haas) 
 
"epoch" is used a few times in the document without reference.  I believe it is likely a 64-bit time_t for the epoch, but that isn't guaranteed.  I don't believe POSIX has specified a 64-bit specific value to use as a citation.
 
-> epoch is the 1 January 1970 00:00, sorry for missing the definition. I am also not sure whether " POSIX has specified a 64-bit specific value to use as a citation.", we can leave this question for future.



### Editorial issues:
#### NIT-1 section 5.2.1, spelling of from 
> old text:/
> When a headend receives a SR Policy form it neighbors or controller, 
> it SHOULD perform schedule information validation based on the following rules:
{.is-info}

> New text:/
>  When a headend receives a SR Policy from it neighbors or controller, 
>  it SHOULD perform schedule information validation based on the following rules:/
{.is-info}



## Review -03
**
Draft:**  [draft-zzd-idr-sr-policy-scheduling](https://datatracker.ietf.org/doc/html/draft-zzd-idr-sr-policy-scheduling-03) 
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






 



