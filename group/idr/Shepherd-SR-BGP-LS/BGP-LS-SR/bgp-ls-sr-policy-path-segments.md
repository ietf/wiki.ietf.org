---
title: Shepherd Reviews for draft-ietf-idr-bgp-ls-sr-policy-path-segment
description: Shepherd draft-ietf-idr-bgp-ls-sr-policy-path-segment
published: true
date: 2026-01-05T23:05:25.490Z
tags: 
editor: markdown
dateCreated: 2025-02-22T18:04:21.400Z
---

# Shepherd reviews for draft-ietf-idr-bgp-ls-sr-policy-path-segment


## Overview 
**Draft: **[draft-ietf-idr-bgp-ls-sr-policy-path-segment](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-sr-policy-path-segment/)
**Type:** Proposed standard 
**WG status**: WG draft 
**implementations:** TBD
**linked BGP-SR draft:** [draft-ietf-idr-sr-policy-path-segment](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-path-segment/)

## -10 Review 
**status:** WG draft
**Last revision:** 10/2/2024 
**Augments:** [RFC9552], [RFC9857](https://datatracker.ietf.org/doc/rfc9857/)
**status:** Awaiting changes necessary from the linked SR draft
[draft-ietf-idr-sr-policy-path-segment](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-path-segment/)
**next steps:** 
1. resolve early allocation for discussion with BGP SR draft
[draft-ietf-idr-sr-policy-path-segment](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-path-segment/)
2. IANA early allocation of BGP-SR and BGP-LS draft at same time. 
3. Implementations 
4. WG LC 

## -08 Review
**status:** WG draft
**Last revision:** 10/2/2024 
**Augments:** [RFC9552], [draft-ietf-idr-bgp-ls-sr-policy-05]
**Purpose:** draft allows new TLVs in Segment list 
**Status Technical Issues:** Issues in -07 resolved in -08 
**Status Editorial Issues:** Issues in -08 resolved in -08 
WG status: WG LC requested, waiting for WG LC 
**Implementation status:** Needs 2 implementations 
**Early Allocation status:** Requested, see [IDR wiki](/group/idr/Early-Allocation-Status)


## -07 review 
**status:** WG draft
**Last revision:** 10/2/2024 
**Augments:** [RFC9552], [draft-ietf-idr-bgp-ls-sr-policy-05]
**Purpose:** draft allows new TLVs in Segment list 
**Status:** 
**Implementation status:** unknown 
**Early Allocation status:** Not requested yet 

### Technical Issues 

#### Issue-1: Section 1, paragraph 2, clarity of what is being passed 

**Old text:**
>    / For identifying an SR path and supporting
>    bidirectional path [RFC9545], new policies carrying Path Segment and
>    bidirectional path information are defined in
>    [I-D.ietf-idr-sr-policy-path-segment], as well as the extensions to
>    BGP to distribute new SR policies. 
>    The Path Segment can be a Path
>    Segment in SR-MPLS [RFC9545] and SRv6
>    [I-D.ietf-spring-srv6-path-segment], or other IDs that can identify a
>    path./ 
{.is-info}

   
   
> **New text:**
>    / For identifying an SR path and supporting
>    bidirectional path [RFC9545], the Path Segment 
>    and Reverse Path Segment List Sub-TLVs 
>    are defined for the Tunnel Encapsulation Attribute [RFC9012] 
>    for the SR Policy tunnel in  
>    [I-D.ietf-idr-sr-policy-path-segment].
>    The Path Segment identifier can be a Path
>    Segment in SR-MPLS [RFC9545] and SRv6
>    [I-D.ietf-spring-srv6-path-segment], or other 
>    IDs that can identify the SR path./
{.is-info}

 
#### Issue-2: Section 1-4 

Please replace [RFC7752] with [RFC9552]. 
Please confirm that you mean [draft-ietf-idr-bgp-ls-te-path]. 

I think you mean [/draft-ietf-idr-bgp-ls-sr-policy], but it is confusing. 
[draft-ietf-idr-bgp-ls-te-path-01] has expired.  

**Examples: **
a)section 3.1, paragraph 1, [draft-ietf-idr-bgp-ls-te-path] -
  This section defines the SR Path Segment sub-TLV to describe a Path
   Segment, and it can be included in the Segment List sub-TLV as
   defined in [I-D.ietf-idr-bgp-ls-te-path] .

b) section 3.2, paragraph 2, the SR Segment list appears in 
[draft-ietf-idr-bgp-ls-sr-policy]


#### Issue-3: Section 3.1, Flags (D-Flag, B-Flag, L-Flag), clarity in text 

**Old text/:**
>  -  D-Flag : Indicates the dataplane for the BSIDs, it is set when
>     Path Segment ID is a 16-octet SRv6 SID unset when the Path
>     Segment ID is a 4-octet SR/MPLS label value./
> 
{.is-info}

**New text:/**
>  -  D-Flag : Indicates the dataplane for the BSIDs. This flag is set when
>     Path Segment ID is a 16-octet SRv6 SID. This flag is unset when the Path
>     Segment ID is a 4-octet SR/MPLS label value./
{.is-info}


**Old text:/**
>  -  B-Flag: This flag, when set, indicates the presence of the SRv6
>     Endpoint Behavior and SID Structure encoding specified in
>     [RFC9514].  It MUST be ignored when D-flag is unset.  They
>     indicate the SRv6 Endpoint behavior and SID structure for the
>     Path Segment ID value in the TLV./
{.is-info}

**New text:/**
>  -  B-Flag: This flag when set indicates the presence of the SRv6
>     Endpoint Behavior and SID Structure encoding specified in
>     [RFC9514].  The B-Flag when unset (clear) [describe here what it means when it is clear]. 
> 	The B-Flag MUST be ignored when D-flag is unset. The B-Flag and D-Flag  
>     indicate the SRv6 Endpoint behavior and SID structure for the
>     Path Segment ID value in the TLV./
{.is-info}

**old text:/**
>  -  L-Flag: Local flag.  Set when the Path Segment has local
>     significance on an SR node. /
{.is-info}

**New text:/**
>  -  L-Flag: Local flag.  Set when the Path Segment has local
>     significance on an SR node.  Unset when the Path Segment does not have local 
>     significance on an SR node./ 
{.is-info}


#### Issue-4: Section 3.1, last paragraph, replace  

**Problem:** Are these two TLVs optional or required in the Path Segment TLV. 
**
old text:/**
>    The SRv6 Endpoint Behavior TLV (1250) and the SRv6 SID Structure TLV
>    (1252) defined in [RFC9514] are used as sub-TLVs of the SR Path
>    Segment Sub-TLV to optionally indicate the SRv6 Endpoint behavior and
>    SID structure for the Binding SID value in the TLV when the Path
>    Segment is an SRv6 Path Segment./
{.is-info}

   
The phrase "to optionallyt indicate" leans toward these two TLVs being optional. 

**Better text:/**
>    The SRv6 Endpoint Behavior TLV (1250) and the SRv6 SID Structure TLV
>    (1252) defined in [RFC9514] MAY be used as sub-TLVs of the SR Path
>    Segment Sub-TLV. These optional sub-TLVS indicate the SRv6 Endpoint behavior and
>    SID structure for the Binding SID value in the TLV when the Path
>    Segment is an SRv6 Path Segment./
{.is-info}



#### Issue-5: section 3.2, paragraph 3 and 4, wrong draft 

**problem:** I think you mean draft-ietf-idr-bgp-ls-sr-policy.  

**old text:/**
>    All fields, except the type are defined in
>    [I-D.ietf-idr-bgp-ls-te-path], and this TLV reuses it directly.  The
>    Type of this TLV is TBA./
{.is-info}

   
 Segment list information for SRV6 is defined in draft-ietf-idr-bgp-ls-sr-policy. 

**Old text:/ **
>    The SR Segment sub-TLV [I-D.ietf-idr-bgp-ls-te-path] MUST be included
>    as an ordered set of sub-TLVs within the SR Segment List TLV when the
>    SID-List is not empty.  A SID-List may be empty in certain cases
>    (e.g. for a dynamic path) where the headend has not yet performed the
>    computation and hence not derived the segments required for the path;
>    in such cases, the SR Segment List TLV SHOULD NOT include any SR
>    Segment sub-TLVs [I-D.ietf-idr-bgp-ls-te-path]./
{.is-info}

  
** Problem:** Here are you trying to define: 
 1) explicit paths - will have full segment lists, so they may have reverse segment lists. 
 2) dynamic paths - will not have explicit lists until they have been calculated.
    
	The problem is: How does the program know when SID-LIST should be 
	empty (due to unfilled calculation), and when is an error.
	
#### Issue-6: Operation

Pleaes add in Error handling specific comments specific to the TLVs added. 

The framework remainds the same as [RFC9552], but your TLVs need to 
have some level of validation (range).  What happens if the TLVs fields are 
too long or out of range.  You can specify [RFC7606]. 

### Editorial:

#### NIT-1; section 4, paragraph 2, sentence 2 
**Old text:/**
>    The consumer of the uni/bidirectional SR policies carrying 
>    path identification information is not BGP LS process by itself,
>    and it can be any applications such as
>    performance measurement [I-D.ietf-spring-stamp-srpm] and path re-
>    coputation or re-optimization, etc.  The operation of sending
>    information to other precesses is out of scope of this document./
{.is-info}


**new text:/**
>    The consumer of the uni/bidirectional SR policies carrying 
>    path identification information is not BGP LS process by itself.
>    This consumer can be any applications such as
>    performance measurement [I-D.ietf-spring-stamp-srpm], path re-
>    coputation or re-optimization.  The operation of sending
>    information to other precesses is out of scope of this document./
>    
{.is-info}

  