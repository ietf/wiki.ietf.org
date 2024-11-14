---
title: Shepherd Reviews for BGP-LS for BGP only Fabric draft-ietf-idr-bgp-ls-bgp-only-fabric
description: Review draft-ietf-idr-bgp-ls-bgp-only-fabric
published: true
date: 2024-11-14T20:16:59.450Z
tags: 
editor: markdown
dateCreated: 2024-11-14T20:16:59.450Z
---

# Shepherd review for BGP-LS for bgp-only Fabic (draft-ietf-idr-bgp-ls-bgp-only-fabric)

## Shepherd Review for version 03 
draft: [draft-ietf-idr-bgp-ls-bgp-only-fabric-03](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-bgp-only-fabric/) 

Shepherd: Susan Hares (shares@ndzh.com) 
**status: **WG Draft, expired November 14, 2022
**Status:** Proposed Standard, 
**version: **revision needed (-04) 
**implementations:** unknown
**Authors:** 6 

### Overview: 
Unlike many shepherd reports, I am going to hit the high-points, 
and wait for second document. 

Why? Ketan Talaulikar (first author) has worked through 
many of the key supporting documents with me. 
These documents include: [RFC9351], [RFC9552], [draft-ietf-idr-sr-policy-safi], [draft-ietf-idr-te-lsp-distribution-19]. 

Please note that [draft-ietf-idr-te-lsp-distribution] was split into 
[draft-ietf-idr-bgp-ls-te-path], and [draft-ietf-idr-bgp-ls-sr-policy]
by Ketan.

Therefore, I would like to ask Ketan to update 
this document to the latest RFCs and drafts. 

After that I would like Ketan to relook at two issues:

1. Section 5.1, last 2 paragraphs, Does this alight with draft-ietf-idr-bgp-ls-te-path? 

Text: 
   This document introduces some of the TE concepts into BGP-only
   networks.  Provisioning of TE Router-ID with a unique address
   normally associated with a loopback interface on the router enables
   TE use-cases for both IPv4 and IPv6 SHOULD be supported.  The BGP
   Router-ID along with the ASN also provides the capability for
   uniquely identifying a BGP router in the network.

   Other Node Attributes applicable to a BGP Router may also be included
   and this document does not describe the exhaustive list./
   
 If it aligns with draft-ietf-idr-bgp-ls-te-path, 
 then please indicate either:
a) which Node Attributes attributes applicable to the BGP Router can be included, 
or 
b) which Node attributes assigned by RFCs cannot be use. 
You will need to list the RFCs. 

2. Section 5.3 has the same type of language at the end. 

3. Security considerations should reference [RF9552]
and give an acknowledgement that you are passing 
critical information. 

You can use text from the security section of [draft-ietf-idr-sr-policy-safi].

