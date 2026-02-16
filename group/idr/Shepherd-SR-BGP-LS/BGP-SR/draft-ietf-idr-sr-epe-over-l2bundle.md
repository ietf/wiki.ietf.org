---
title: Shepherd Review for draft-ietf-idr-sr-epe-over-l2bundle-
description: Shepherd draft-ietf-idr-sr-epe-over-l2bundle-
published: true
date: 2025-11-03T00:58:30.437Z
tags: 
editor: markdown
dateCreated: 2025-02-24T20:33:09.871Z
---

# Shepherd Reviews for draft-ietf-idr-bgpls-sr-epe-over-l2bundle 
## renamed from: draft-ietf-idr-sr-epe-over-l2bundle 

Next step prior to WG-LC:  Revise for -01,  After -01 then fill out implementation reports. 
Upon -01, IDR shepherd will review and send to Directorates (RTG, OPS) and SROPS

## Summary 
**draft:**  [draft-ietf-idr-sr-epe-over-l2bundle](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-epe-over-l2bundle/) 
**Note:** renamed draft: draft-ietf-idr-bgpls-sr-epe-over-l2bundle 
**Type:** Proposed Standard 
**status:** WG Draft (expires 3/2/2025),
**adopted:** [9/1/2024](https://mailarchive.ietf.org/arch/msg/idr/xUckKQncQ4rLVCCAkBO6bQ6zcuk/) (8/1 to 8/30 call) 
**current version:** -01 
**implementations:** 2 (New H3C Technologies and ZTE Corp) 
**IANA Allocations:** none needed 
**SR draft:** none 
**Next step prior to WG-LC:**  Revise for -01,  After -01 then fill out implementation reports. 
Upon -01, IDR shepherd will review and send to Directorates (RTG, OPS) and SROPS



## -00 review for draft-ietf-idr-bgp-ls-sr-epe-over-l2bundle
**draft (-00): [draft-ietf-idr-bgp-ls-sr-epe-over-l2bundle](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-sr-epe-over-l2bundle/)

### Technical issues: 
#### Technical Issue-1, Section 3.1, paragraph 4, bullet 2

It is unclear what is optional in this portion of the bullet. 
Please revise this text to provide a clear indication of what is optional. 
>       -  include the PeerAdj SID TLV [RFC9086] for Peer Link(Optional)

(Given 2 implementations, it should be easy to write the correct text.

#### Technical Issue-2: Section 3.2, paragraph 3, bullet 2

It is also unclear what is optional in the similar portion of the text in section 3.2:

>    *  Link Attribute TLV:
> 
>       -  include the SRv6 End.X SID TLV [RFC9514] for Peer
>          Link (optional) 

#### Technical Issue-3: 
Security section needs to be updated to indicate the fact that 
you are exposing L2 bundles - which are critical information about the 
Peer Adjency infrastructure.  Care must be taken to protect any 
critial information from the node as it gets passed via BGP-LS. 

If you need help with the exact wording, please let me know. 

### Editorial issues: 
#### Editorial Issue-1: Section 3.1, paragraph 2, 3rd sentence 
Current text:
>    This information mustnot be
>    included in the BGP-LS Link NLRI that corresponds to the PeerNode
>    SID, as defined in Section 5.1 of [RFC9086].

replace with: 
>    This information must not be
>    included in the BGP-LS Link NLRI that corresponds to the PeerNode
>    SID, as defined in Section 5.1 of [RFC9086].
> 

#### Editorial Issue-2: Section 3.1, paragraph 3, sentence 1 
>    Note that for directly connected EBGP neighbors, if a BGP neighbor is
>    established over an L2 Bundle, an additional BGP-LS Link NLRI(as
>    described in Section 5.2 of [RFC9086]) must be generated to advertise
>    Peer Link information when generating the BGP-LS Link NLRI (as
>    described in Section 5.1 of [RFC9086]) corresponding to the PeerNode
   SID. 
  
  replaced with: 
>    Note that for directly connected EBGP neighbors, if a BGP neighbor is
>    established over an L2 Bundle, an additional BGP-LS Link NLRI (as
>    described in Section 5.2 of [RFC9086]) must be generated to advertise
>    Peer Link information when generating the BGP-LS Link NLRI (as
>    described in Section 5.1 of [RFC9086]) corresponding to the PeerNode
>    SID. 

#### Editorial Issue-3: Sectino 3.1 paragraphy 4, bullet 2

Current text: 

>    *  Link Attribute TLVs:
> 
>       -  include the PeerAdj SID TLV [RFC9086] for Peer Link(Optional)
> 
>       -  include the L2 Bundle Member Attributes TLV.
> 
>          o  include the PeerAdj SID TLV [RFC9086] for each L2 Bundle
>             Member.

Replace with: 
>    *  Link Attribute TLVs:
> 
>       -  include the PeerAdj SID TLV [RFC9086] for Peer Link (Optional)
> 
>       -  include the L2 Bundle Member Attributes TLV.
> 
>          o  include the PeerAdj SID TLV [RFC9086] for each L2 Bundle
>            Member.

## -01 Review  (previoius draft form)  
 
 **draft (-00):**  [draft-ietf-idr-sr-epe-over-l2bundle](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-epe-over-l2bundle/) 
 
 **status**: Current 

## -00 Review  
 
 **draft (-00):**  [draft-ietf-idr-sr-epe-over-l2bundle](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-epe-over-l2bundle/) 
 
 **status**: Current draft is simply the adopted draft. 
 
