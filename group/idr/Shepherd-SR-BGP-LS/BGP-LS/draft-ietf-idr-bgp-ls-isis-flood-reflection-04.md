---
title: Shepherd Reviews for draft-ietf-idr-bgp-ls-isis-flood-reflection
description: Review draft-ietf-idr-bgp-ls-isis-flood-reflection
published: true
date: 2025-02-26T02:55:58.777Z
tags: 
editor: markdown
dateCreated: 2025-02-22T00:05:16.125Z
---

# Shepherd Reviews for draft-ietf-idr-bgp-ls-isis-flood-reflection

## latest overview 
**draft:** [draft-ietf-idr-bgp-ls-isis-flood-reflection](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-isis-flood-reflection/)

**Status:** WG document, Requested WG LC, awaiting confirmation of 2 implementations 
**Type:** Proposed Standard
**Current version:** -04, **text expired.** 
**Implementations:** Unknown, need 2 for WG LC
**Implementation Report page: **
https://wiki.ietf.org/e/en/group/idr/implementations/draft-ietf-idr-bgp-ls-isis-flood-reflection

## Version -04 

### overview 
**draft:** [draft-ietf-idr-bgp-ls-isis-flood-reflection-04](/group/idr/Shepherd-SR-BGP-LS/BGP-LS/draft-ietf-idr-bgp-ls-isis-flood-reflection-04)
**Implementations:** Unknown, need 2 for WG LC
**Implementation Report Page:** [no report yet] (https://wiki.ietf.org/e/en/group/idr/implementations/draft-ietf-idr-bgp-ls-isis-flood-reflection_) 
**draft status:** -04 expired (needs -05) 
**email link:** https://mailarchive.ietf.org/arch/msg/idr/UtFizxx1WtGMZXR2m-GOcxptEuI/


**Summary of Review:** 
Status: Ready with Editorial NITS 

### Editorial changes: 
#### NIT-1: section 2, please give reference in [RFC9377] to sub-TLVs mentioned. 

**Old text:**
>    /When describing a node, values
>    are derived from the IS-IS Flood Reflection Discovery Sub-TLV.  When
>    describing a link, values are derived from the IS-IS Adjacency Sub-
>    TLV.  The semantics of any fields within the TLV/sub-TLVs are
>    described in [RFC9377]./ 
{.is-info}


New text:
>    /When describing a node, values
>    are derived from the IS-IS Flood Reflection Discovery Sub-TLV 
>    ([RFC9377], section 4.2).  When describing a link, values are 
>    derived from the IS-IS Adjacency Sub-TLV (RFC9377, section 4.4).
>    The semantics of any fields within the TLV/sub-TLVs are
>    described in [RFC9377]. / 
{.is-info}

   
   
#### NIT-2: Section 3, references to [RFC9377] fields need to be listed

**Old text:**
>    / IS-IS Flood Reflection
>    [RFC9377] describes "Tunnel-Based" deployments where an optional
>    "Flood Reflection Discovery Tunnel Type Sub-Sub-TLV" is used to
>    facilitate the creation of "L1 Shortcuts" (i.e. tunnels) between
>    nodes in a Flood Reflection cluster.
{.is-info}


** old text:**
>    / IS-IS Flood Reflection
>    [RFC9377] describes "Tunnel-Based" deployments where an optional
>    "Flood Reflection Discovery Tunnel Type Sub-Sub-TLV" (section 4.3) 
>    is used to facilitate the creation of "L1 Shortcuts" (i.e. tunnels) between
>    nodes in a Flood Reflection cluster./
{.is-info}

   
 