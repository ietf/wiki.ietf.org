---
title: Shepherd Reviews for draft-ietf-idr-sr-policy-nrp
description: Shepherd draft-ietf-idr-sr-policy-nrp
published: true
date: 2025-02-28T13:11:50.151Z
tags: 
editor: markdown
dateCreated: 2025-02-24T23:48:45.554Z
---

# Shepherd reviews for draft-ietf-idr-sr-policy-nrp


## Summary 
**draft:** [draft-ietf-idr-sr-policy-nrp](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-nrp/)
**status:** WG Draft (expires 3/2/2025)
**adopted:** 12/14/2023 (delayed to due checking with TEAS) 
**adoption calls:** 3/01 to 3/14/2024 
**current version:** -02 
**Early Allocation**: TBD 
**implementations:** TBD  
**bgp-ls draft:** [draft-ietf-idr-bgp-ls-sr-policy-nrp/](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-sr-policy-nrp/) 

## -02 pending Shepherd for WG LC (ETA 2/26) 

draft: [daft-ietf-idr-sr-policy-nrp-02](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-nrp-02)
**Document type: **Proposed Standard 
**WG Status:** WG Draft, pre-WG LC 
**review summary: Needs revision prior to WG LC 
Review criteria for SR Sub-TLV:** [SR Sub-TLV Templates](/group/idr/TEA-templates/SubTLV)
**Reviewer:** Susan Hares 
**Email: ** TBD 

### Technical issues

#### Issue-1: Consistent title for SubTLV, [editorial] 

section 2.0, sentence 1, replace "NRP sub-TLV" with "NRP" sub-TLV 
> **old text:/**
>   In order to specify the NRP the candidate path of SR policy is
>    associated with, a new sub-TLV called "NRP sub-TLV" is defined in the
>    BGP Tunnel Encapsulation Attribute [RFC9012]./
{.is-info}

> nre text:/
>   In order to specify the NRP the candidate path of SR policy is
>    associated with, a new sub-TLV called NRP "sub-TLV" is defined in the
>    BGP Tunnel Encapsulation Attribute [RFC9012]./
{.is-info}
   
#### Issue-2: Section 2, Use of NRP Sub-TLV in Tunnel Types, only specifying SR Policy tunnel type 

> **Old text:/ **The NRP sub-TLV can be
>    carried in the BGP Tunnel Encapsulation Attribute with the tunnel
>    type set to SR Policy./
{.is-info}

   
> **New text: **/ The NRP sub-TLV can be
>    carried in the BGP Tunnel Encapsulation Attribute with the tunnel
>    type set to SR Policy. The use of the NRP sub-TLV in other tunnel 
>    types is outside the scope of this document. / 
{.is-info}


#### Issue-3: Section 2, Type value is already assigned by IANA 

> **old text:** /Type: 123/
{.is-info}

> **New text:** /Type: 123 (IANA)/
{.is-info}


#### Issue-3: Section 2, Length in octets 

> **old text:** /Length: 6 / 
{.is-info}

>** new text:** /Length: 6 (octets)./  
{.is-info}


#### Issue-4: Section 2, NRP ID text

> **Old text:** /Value 0 and 0xFFFFFFFF are reserved./ 
{.is-info}
> 
> **new text:** /The values of  0 and 0xFFFFFFFF are reserved.
{.is-info}


#### Issue-5: Section 3, Error handling of the NRP Sub-TLV augments draft-ietf-idr-sr-policy-safi

Please put the Error handling text in Section 2 as a final paragraph. 
(See sub-TLV template suggestions) 

> **New text:** / 
> Error handling of SubTLV: The NRP sub-TLV is malformed if it does not match 
> the above description. A malformed NRP Sub-TLV is ignored. 
> 
> Validation of SR Policy Tunnel:  The validation of the SR Policy tunnel TLV 
>    with the NRP Sub-TLV in the BGP tunnel encapsulation attribute [RFC9012] 
>    follows the procedures in draft-ietf-idr-sr-policy-safi in section 4.2 
>    augmented by the validation procedures described in section 2 and section 3
>    of this document.    
> /
{.is-info}


#### Issue-6 Error handling, new section, suggested text below 

> **New text:** /
> Error handling of SR Policy Tunnel with NRP sub-TLV:  The validation of the 
>    SR Policy tunnel TLV with the NRP Sub-TLV follows the procedures in   
>    draft-ietf-idr-sr-policy-safi section 13 augmented by the validation 
>    of the NRP-ID described in section. Please note that in the 
>    any error detected, either at the attribute or its TLV/sub-TLV level, 
>    [draft-ietf-idr-sr-policy-safi] states the "treat-as-withdraw" strategy 
>    MUST be applied.  
> / 
{.is-info}


#### Issue-7: Please augment the Security consideration 

> **Old text:** /
>    The security considerations of BGP [RFC4271] and BGP SR policy
>    [I-D.ietf-idr-sr-policy-safi] apply to this document./
{.is-info}

   
> **suggested new text:** /
>    /The security considerations of BGP [RFC4271] and BGP SR policy
>    [I-D.ietf-idr-sr-policy-safi] apply to this document.
>    
>    The NRP sub-TLV provides the NRP identifier that may be passed in 
>    IPv6 Hop-by-Hop options header or used in encapsulation for SR-MPLS. 
>    This NRP identifier impacts forwarding in a network so care 
>    should be taken to protect this mission-critical or commercially 
>    sensitive information during configuration, query (via BGP-LS) and 
>    transmission of the NRP-ID in BGP./
{.is-info}

     
#### Issue-8: Add a Manageability section prior to security section 

The BGP-LS NRP TLV (per draft-ietf-idr-bgp-ls-sr-policy-nrp) allows the user
to query the state and the attributes of the NRP identifier.  
 
### Editorial issues: none 
 

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
