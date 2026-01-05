---
title: Shepherd Reviews (draft-ietf-idr-sr-policy-path-segment)
description: Shepherd draft-ietf-idr-sr-policy-path-segment
published: true
date: 2026-01-05T22:07:36.315Z
tags: 
editor: markdown
dateCreated: 2025-02-25T01:30:56.613Z
---

# Shepherd Reviews for draft-ietf-idr-sr-policy-path-segment


## Summary 
**draft:**  [draft-ietf-idr-sr-policy-path-segment](https://datatracker.ietf.org/doc/draft-li-idr-bgp-ls-sr-policy-path-segment/)
**Type:** Proposed Standard 
**status:** WG Draft  
**adopted:**  [draft-li-sr-policy-path-segment-01](https://datatracker.ietf.org/doc/draft-li-idr-bgp-ls-sr-policy-path-segment/)
**current version:** -14
**Early Allocation**: yes 
**implementations:** 1 (Huawei in VRP)   
**bgp-ls draft:** [draft-ietf-idr-bgp-ls-sr-policy-path-segment](/group/idr/Shepherd-SR-BGP-LS/BGP-LS-SR/bgp-ls-sr-policy-path-segments)

## Review -14
**draft:**  [draft-ietf-idr-sr-policy-path-segment-14](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-path-segment-14)
**Status:** Summary, alll technical issues and editorial issues cleared. 
**email:** [response to Sue's -13 review](https://mailarchive.ietf.org/arch/msg/idr/XyLbyZ0-Qy_zq9MgFumcmY6wjhY/)
**next steps**: 
1. Early allocation check with Ketan

## Review -13 
**draft:**  [draft-ietf-idr-sr-policy-path-segment-13](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-path-segment-13)
**Status:** Needs revision, but Early Allocation can be done 
**email:** https://mailarchive.ietf.org/arch/msg/idr/pNvmocZVRa1C3o92bhsdtjuttEs/


### Technical issues 
**Issues from -11 resolved:** Technical Issues 1-4 from Review-11, but issue-3 is partially resolved

#### 3. Section 5, error handling, Validation SR Candidate routes 

**Version -13 states:**
> /A BGP implementation MUST NOT perform semantic	
>  verification of such fields nor consider the SR Policy update to be	
>  invalid or not usable based on such validation. /
{.is-info}
 
 Is there a reason, you do not specifically state the SRPM? 

#### Editorial NITs
**Issues from -11 resolved:** NITS 1-2 
**Issue not resolved from -13:** NIT-3 

## Review -11 
**draft:**  [draft-ietf-idr-sr-policy-path-segment-11](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-path-segment-11))

**Email:** https://mailarchive.ietf.org/arch/msg/idr/n6jJO93bxpU4M8692M974lmSZ3E/ 
Augments: [RFC9012] by allowing new TLVs in Segment list 
Status: Needs revision with new template. 
implementation status: Needs two implementations

### Technical points: 

#### Issue 1. Missing RFC9012 context 

The abstract, header, and references need to indicate that you are adding TLVs to 
Tunnel Encapsulation Attribute for the SR Policy Type. 

Abstract change is provided:

**Old text:/**
>    A Segment Routing (SR) policy is a set of candidate SR paths
>    consisting of one or more segment lists with necessary path
>    attributes.  For each SR path, it may also have its own path
>    attributes, and Path Segment is one of them.  A Path Segment is
>    defined to identify an SR path, which can be used for performance
>    measurement, path correlation, and end-2-end path protection.  Path
>    Segment can be also used to correlate two unidirectional SR paths
>    into a bidirectional SR path which is required in some scenarios, for
>    example, mobile backhaul transport network./
{.is-info}

   
**New Text:/**
>    A Segment Routing(SR) policy identifies a set of candidate SR paths 
>    Each SR path is passed in BGP as the SR Policy SAFI NLRI
>    accompanied with the Tunnel Encapsulation attribute (Tunnel-encaps).  Each 
>    SR Path (tunnel) uses a set of TLVs in the Tunnel-encaps attribute 
>    to describe the characteristics of the SR Policy tunnel.  One of the TLVs
>    that describes the tunnel is the Segment list TLV which provides a list
>    of segments contained in the tunnel.  This document specifies a new 
>    Path Segment Sub-TLV to associate a Path Segment ID to the SR Segment List.  
>    The Path Segment ID can be used for performance measurement, path correlation, 
>    and end-2-end path protection.  This Path Segment identifier can be also 
>    be used to correlate two unidirectional SR paths into a bidirectional SR path.
>    Bidirection SR path may be required in some scenarios such as 
>    mobile backhaul transport network./
{.is-info}

 
 Hopefully this abstract change will help you make the changes to the 
 introduction.  [RFC9012] needs to be included in the references. 


#### Issue-2 Section 3 Multipole Path Segment Sub-TLV 
Is there a case when the multiple Path Segment Sub-TLV included in a list  
will conflict?  (see section 3.0) 

#### Issue-3. Section 5, error handling,

The operations defined in [I-D.ietf-idr-sr-policy-safi] do not 
include your new Sub-TLV.  This document needs to state that:

**3-1.** Error handling as defined in RFC7606 applies to new Sub-TLVs
as well as SAFI context. 

**3-2.** A BGP Speaker must perform Syntax validation of the new SubTLV 
in context.  Must validate 
a) length of TLVs and sub-TLVs
b) range of values 

If determine malformed, it should "treat-as-withdraw", 

**3-3.** Validation of Tunnel Attribute for valid 
a) tunnel 
b) sub-TLVs associated with it.

**3-4.)** Validation SR Candidate routes as active route done by SRPM. 

#### Issue-4. Security section needs to be added

Please see the security section in SAFI.  
The identification of bi-direction and performance segments 
adds to the critical nature of some of the information. 


### Editorial

#### NIT-1:  Section 4, paragraph 1, sentence clarity. 

> old text:/
>    In some scenarios, for example, mobile backhaul transport network,
>    there are requirements to support bidirectional path. /
{.is-info}

   
> New text:/
>    In some scenariose such as mobile backhaul transport network,
>    there are requirements to support bidirectional path. /
{.is-info}

   
#### NIT-2:  Use Sub-TLV consistently in your text 

Please use the form "Sub-TLV" consistently.  
Change sub-TLV to Sub-TLV.  

If you mean to make difference to the TLVs under Reserve segment, define a term. 

#### NIT-3: Section 4. 1, last paragraph, sentence clarity

Error: Run-on sentence please break this sentence into 2 parts 

> Current:/
>    The Segment sub-TLVs in the Reverse Path Segment List sub-TLV
>    provides the information of the reverse SR path, which can be used
>    for directing egress BFD peer to use specific path for the reverse
>    direction of the BFD session [I-D.ietf-mpls-bfd-directed] or other
>    applications./
{.is-info}

   
>  New:/
>    The Segment sub-TLVs in the Reverse Path Segment List sub-TLV
>    provides the information of the reverse SR path. This 
>    Reverse Path Segment list can be used for directing egress 
>    BFD peer to use specific path for the reverse
>    direction of the BFD session [I-D.ietf-mpls-bfd-directed] or other
>    applications./
{.is-info}
