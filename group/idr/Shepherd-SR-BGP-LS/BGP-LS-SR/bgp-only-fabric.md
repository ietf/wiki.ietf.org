---
title: Shepherd Reviews for BGP-LS for BGP only Fabric draft-ietf-idr-bgp-ls-bgp-only-fabric
description: Review draft-ietf-idr-bgp-ls-bgp-only-fabric
published: true
date: 2026-01-06T00:19:49.644Z
tags: 
editor: markdown
dateCreated: 2024-11-14T20:16:59.450Z
---

# Shepherd review for BGP-LS for bgp-only Fabic (draft-ietf-idr-bgp-ls-bgp-only-fabric)

## Shepherd Review for version 04 

**Shepherd:** Susan Hares (shares@ndzh.com) 
**Draft status:** WG Draft, expired November 14, 2022
**Publication Status:** Proposed Standard, 
**version: **revision needed (-05)**
**Early Allocation:"" Needs -05 for call 
**implementations:** unknown
**Authors:** 6 

## Shepherd Review for version -04 
draft: [draft-ietf-idr-bgp-ls-bgp-only-fabric-04](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-bgp-only-fabric/) 
Email link: https://mailarchive.ietf.org/arch/msg/idr/k1dd2RQuYxIG-aXyXLkETlSU0As/

This draft makes the updates suggested in my shepherd's report for -03. 
After version -04 of this draft was published, draft-ietf-idr-bgp-ls-sr-policy has gone to RFC. 
In the next revision (-05), draft-ietf-idr-bgp-ls-sr-policy should be RFC9857. 

This version needs to change the name of the sub-registry 
to make [RFC9552] BGP-LS NLRI and Attribute TLVs. 


## Shepherd Review for version 03 
draft: [draft-ietf-idr-bgp-ls-bgp-only-fabric-03](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-bgp-only-fabric/) 

**Shepherd:** Susan Hares (shares@ndzh.com) 
**Draft status:** WG Draft, expired November 14, 2022
**Publication Status:** Proposed Standard, 
**version: **revision needed (-04) 
**implementations:** unknown
**Authors:** 6 

### Overview: 
Unlike many of my shepherd reports, I am going to hit the high-points and wait for second document. 

**Why?** Ketan Talaulikar (first author) has worked through 
many of the key supporting documents with me. 
These documents include: [RFC9351](https://datatracker.ietf.org/doc/rfc9351/), 
[RFC9552](https://datatracker.ietf.org/doc/rfc9252/), and 
[draft-ietf-idr-sr-policy-safi](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/).
 
Therefore, I would like to ask Ketan to update 
this document to the latest RFCs and drafts. 

After that I would like Ketan to relook at two issues:

1. **On Section 5.1, last 2 paragraphs: Does this align with draft-ietf-idr-bgp-ls-te-path?**

Text: 
>    This document introduces some of the TE concepts into BGP-only
>    networks.  Provisioning of TE Router-ID with a unique address
>    normally associated with a loopback interface on the router enables
>    TE use-cases for both IPv4 and IPv6 SHOULD be supported.  The BGP
>    Router-ID along with the ASN also provides the capability for
>    uniquely identifying a BGP router in the network.
> 
>    Other Node Attributes applicable to a BGP Router may also be included
>    and this document does not describe the exhaustive list./
   
If it aligns with [draft-ietf-idr-bgp-ls-te-path](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-te-path/), then please indicate
- which Node Attributes attributes applicable to the BGP Router can be included, 
or 
- which Node attributes assigned by RFCs cannot be use. 

You will need to list the RFCs. 

2. **Section 5.3 has the same type of language at the end.** 

> Other Prefix Attributes applicable may also be included and this
>    document does not describe the exhaustive list. 
> 
 
Please provide a prefix attributes that may be included. 
You may use an exception-list ("all but ...") 

3. **Security considerations should reference [RFC9552](https://datatracker.ietf.org/doc/rfc9252/)**

Please indicate that this draft is passing critical information. 
You can use text from the security section of [draft-ietf-idr-sr-policy-safi](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)

