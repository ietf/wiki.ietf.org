---
title: Shepherd Reviews for draft-ietf-idr-sr-policy-nrp
description: Shepherd draft-ietf-idr-sr-policy-nrp
published: true
date: 2026-01-14T18:30:58.151Z
tags: 
editor: markdown
dateCreated: 2025-02-24T23:48:45.554Z
---

# Shepherd reviews for draft-ietf-idr-sr-policy-nrp


## Summary 
**draft:** [draft-ietf-idr-sr-policy-nrp](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-nrp/)
**status:** WG Consensus on Draft, final checks prior to publication  
**adopted:** 12/14/2023 (delayed to due checking with TEAS) 
**adoption calls:** 3/01 to 3/14/2024 
**WG LC **: 3/14 to 4/4/2025 (closed 12/21/2025 due to Spring interaction) 
**current version:** -04
**next steps:** Needs -05 
**Early Allocation**: NRP ID sub-TLV 123 (done)  
**implementations:** 
**bgp-ls draft:** [draft-ietf-idr-bgp-ls-sr-policy-nrp/](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-sr-policy-nrp/) 

## -05 Shepherd's report
draft: [daft-ietf-idr-sr-policy-nrp-05](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-nrp-05)
**Shepherd's report:** [email](https://mailarchive.ietf.org/arch/msg/idr/PrTxjCxrVtJx-ZpOCUui9Fz_EBA/)


Need to change the references to RFCs 9543 and RFC9732 moved to informational. 
Please also update the implementation report. 


## -04 Shepherd's report  
draft: [daft-ietf-idr-sr-policy-nrp-04](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-nrp-04)
**Shepherds report on idr list**: [Email link](https://mailarchive.ietf.org/arch/msg/idr/KS2b-Bt-4rtI3jttdOliBUy_M5Y/)

This is a post WG LC shepherd report for draft-ietf-idr-sr-policy-nrp-04. 
The authors need to publish -05 with these changes and fill out the 
Implementation report.  After these tasks are accomplished, 
the document will be forwarded to the IESG. 

Version:-04 
Status: NITs needed to be changed to publication for 
Clean description and for clear security description. 

NITS – needed to be addressed before publication 

1. Section 1, paragraph 4. 

> Old Text:/
>    In networks where there are multiple NRPs, an SR Policy may be
>    associated with a particular NRP.  The association between SR Policy
>    and NRP needs to be specified, so that for service traffic which is
>    steered into the SR Policy, the header of the packets can be
>    augmented with the information associated with the NRP.  The
>    association between SR Policy and NRP is described in
>    [I-D.jiang-spring-sr-policy-nrp].  An SR Policy candidate path can be
>    distributed using BGP SR Policy.  This document defines the
>    extensions to BGP SR policy to specify the NRP which the SR Policy
>    candidate path is associated with./

Issue – NRP ID in BGP SR Policy is a control plan concept. 

Suggested change: 

> Old text:/ This document defines the
>    extensions to BGP SR policy to specify the NRP which the SR Policy
>    candidate path is associated with./
{.is-info}

> 
> New text:/ This document defines the
>    extensions to BGP SR policy to specify the control plane 
>    NRP ID associated with the SR Policy candidate path./ 
{.is-info}

 
Note: This is a suggested change.  The important part is to 
Emphasize that BGP is passing a control plane NRP ID. 

2. Section 2, paragraph 4, starting with: When the NRP Sub-TLV is ..

> Old text:/ 
>    When the NRP sub-TLV is carried in the BGP Tunnel Encapsulation
>    Attribute of an SR Policy NLRI, a segment list of the candidate path
>    is considered invalid if the headend node of the SR Policy determines
>    that the set of network resources corresponding to the NRP ID on
>    network segments identified by the segment list do not exist./
{.is-info}


New text:/
   When the NRP sub-TLV is carried in the BGP Tunnel Encapsulation
   Attribute associated with an SR Policy NLRI, a segment list of the candidate path
   is considered invalid if the headend node of the SR Policy determines
   that the set of network resources corresponding to the NRP ID on
   network segments identified by the segment list do not exist./


3,  Section 4, paragraph 2, 3rd sentence. 

Old text/ If the
   NRP sub-TLV appears more than once, or its format is considered
   malformed, the associated BGP SR Policy NLRI is considered malformed
   and the "treat-as-withdraw" strategy of [RFC7606] MUST be applied./

> New text:/ If the
>    NRP sub-TLV appears more than once, or its format is considered
>    Malformed in the Tunnel Encapsulation Attribute, and all  
>    The associated BGP SR Policy NLRI are considered malformed
>    and the "treat-as-withdraw" strategy of [RFC7606] MUST be applied./ 
{.is-info}


4. Section 6, paragraph 2

> Old text:/
>    The NRP sub-TLV provides the NRP identifier that may be carried in
>    IPv6 Hop-by-Hop options header or used in the encapsulation of MPLS.
>    This NRP identifier can impact packet forwarding in a network so care
>    should be taken to protect this mission-critical or commercially
>    sensitive information during provisioning, query and report of the
>    NRP-ID in BGP./
> 
{.is-info}

> New text:/
>    The NRP sub-TLV provides a control plane NRP ID that is linked to the 
>    the NRP identifier (denoted as NRP Selector ID) that may be carried in
>    IPv6 Hop-by-Hop options header or used in the encapsulation of MPLS.
>    The control plane Identifier (NRP ID) can impact the packet forwarding 
>    because it is linked to the data plane forwarding in a network,  so care
>    should be taken to protect this mission-critical or commercially
>    sensitive information during provisioning, query, and report of the
>    NRP-ID in BGP./
> 
{.is-info}


5. Sectino 7, paragraph 1. 

Old text:/
   IANA has assigned the sub-TLV type as defined in Section 2 from "BGP
   Tunnel Encapsulation Attribute sub-TLVs" registry./
New text:/
   IANA has assigned the sub-TLV type as defined in Section 2 from "BGP
   Tunnel Encapsulation Attribute sub-TLVs" registry in the 
   BGP Tunnel Encapsulation Group. /



## -03 Shepherd's report 
draft: [daft-ietf-idr-sr-policy-nrp-03](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-nrp-03)

Status: Sent for WG LC, approved but comments need to be resolved. 
closing email: https://mailarchive.ietf.org/arch/msg/idr/DTSy7rzzrlNSXTmY4AN6bymG0Hw/

Directorate reviews (RTGDIR, OPSDIR) only found NITs.  -04 fixed the NITS

The question arises whether NRP has received enough cross-WG approval. 
Spring held an interim to discuss NRP issues prior to IETF-124 on October 14, 2025 (see  https://datatracker.ietf.org/meeting/interim-2025-spring-03/session/spring).  
This draft awaits the result of this interim. 

## -02 pending Shepherd for WG LC   

draft: [daft-ietf-idr-sr-policy-nrp-02](https://datatracker.ietf.org/doc/html/draft-ietf-idr-sr-policy-nrp-02)
**Document type: **Proposed Standard 
**WG Status:** WG Draft, pre-WG LC 
**review summary: Needs revision prior to WG LC 
Review criteria for SR Sub-TLV:** [SR Sub-TLV Templates](/group/idr/TEA-templates/SubTLV)
**Reviewer:** Susan Hares 
**Email: https://mailarchive.ietf.org/arch/msg/idr/7ARIVhd9ia6I-0e6u13fGojqVz4/


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
