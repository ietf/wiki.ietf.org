---
title: Shepherd Review for draft-ietf-idr-bgp-ls-link-mtu
description: Review draft-ietf-idr-bgp-ls-link-mtu
published: true
date: 2026-01-06T01:31:13.677Z
tags: 
editor: markdown
dateCreated: 2025-02-22T00:24:44.815Z
---

# Shepherd Reviews for draft-ietf-idr-bgp-ls-link-mtu

draft: https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-link-mtu/

## -10 version 
**Draft:**  [10](https://datatracker.ietf.org/doc/html/draft-ietf-idr-bgp-ls-link-mtu-08)
Status: WG draft
Type: Proposed Standard 
Implementations: Unknown, need 2 for WG LC  
draft status: Awaiting Early Allocation  + implementations 
Early Allocation: Requires -11 [RFC9552](https://datatracker.ietf.org/doc/rfc9552/)
email link:[shepherd report on -10](https://mailarchive.ietf.org/arch/msg/idr/MFu9_ZtD_q1Ff5xShsFRlPkBgxQ/)

> Text in section 5 states: 
> This document requests assigning a new code-point from the BGP-LS Link Descriptor and Attribute TLVs registry as specified in section 4.
{.is-info}

This document requests assigning a new code-point from the BGP-LS Link Descriptor and Attribute TLVs registry as specified in section 4. Please update this sub-registry name to RFC9552 naming convention. 

## -08
**Draft:**  [08](https://datatracker.ietf.org/doc/html/draft-ietf-idr-bgp-ls-link-mtu-08)
Status: WG draft
Type: Proposed Standard 
Implementations: Unknown, need 2 for WG LC  
draft status: Awaiting implementations 
email link: https://mailarchive.ietf.org/arch/msg/idr/QMV7MShOKt-GaajNdaTRaJzFLHc/

### Review: 
Status: All technical issues from -07 resolved 

## -10 version 


This document requests assigning a new code-point from the BGP-LS Link Descriptor and Attribute TLVs registry as specified in section 4.




## -07 version 

### overview 

**draft: ** [07](https://datatracker.ietf.org/doc/html/draft-ietf-idr-bgp-ls-link-mtu-07)
**Status:** WG draft
**Implementations:** TBD 
**email to shepherd:** https://mailarchive.ietf.org/arch/msg/idr/enE8GGZ9dueP4PXdoj2bZS0w50w/


### Shepherd's report 

Shepherd report for draft-ietf-idr-bgp-ls-link-mtu-07

Status: WG Document
Implementations: Unknown, need 2 for WG LC
draft status: Needs

Summary of Review: Needs -08 prior to WG LC
Status: Needs to resolve 4 technical issues and 1 editorial.

### Technical issues:

#### Issue-1:  Please replace [RFC7752] with [RFC9552]

#### Issue-2: Introduction, paragraph 5, fix reference to [RFC9085]

**Old text:/**
>    [I-D.ietf-idr-bgp-ls-segment-routing-ext] defines SR extensions to
>    BGP-LS and specifies the TLVs and sub-TLVs for advertising SR
>    information. /
{.is-info}

**New text:/**
>    [RFC9085] defines SR extensions to
>    BGP-LS and specifies the TLVs and sub-TLVs for advertising SR
>    information.
{.is-info}


#### Issue-3. Security Section.

Link MTU provides proprietary information regarding a network.
See security section in draft-ietf-idr-bgp-ls-sr-policy-05
for consideration.

Please consider adding many of the points from this section include:
1) security consideration for [RFC9552], Trusted environment of
BGP-LS [RFC8402], and confidentiality of MTU data.

#### Issue-4. Fix the references

### Editorial changes:
#### NIT-1 Abstract, paragraph 2, remove

The abstract needs to be 2 paragraphs.  Please just remove paragraph 2.
