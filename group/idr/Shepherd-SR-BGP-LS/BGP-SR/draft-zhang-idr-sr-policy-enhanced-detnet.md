---
title: Shepherd Reviews for draft-zhang-idr-sr-policy-enhanced-detnet
description: Shepherd draft-zhang-idr-sr-policy-enhanced-detnet
published: true
date: 2026-01-07T01:05:05.379Z
tags: 
editor: markdown
dateCreated: 2025-02-26T00:20:37.936Z
---

# Shepherd reviews for draft-zhang-idr-sr-policy-enhanced-detnet

 ## Summary 
**draft:**  [draft-zhang-idr-sr-policy-enhanced-detnet](https://datatracker.ietf.org/doc/html/draft-zhang-idr-sr-policy-enhanced-detnet) 

**Type:** Proposed Standard 
**status:** Individual Draft (expired 12/29/2024) 
**Pre-Adoption:** Needs -04.
**current version:** 03, Needs 
**Unicast and Multicast or both:** Bogh 
**Early Allocation**: will need 
**Cross-WG review:** Spring (TBD) and detnet (may take time) 
**implementations:**  TBD
**bgp-ls draft:** none


## Review -03 
**draft:**  [draft-zhang-idr-sr-policy-enhanced-detnet](https://datatracker.ietf.org/doc/html/draft-zhang-idr-sr-policy-enhanced-detnet)

**email:** https://mailarchive.ietf.org/arch/msg/idr/5K1cJuiMX28Z28k03fxCnPyhRmA/
**status:** Needs revision (-04) 

### Technical issues 

#### Issue-1.) Abstract changes to add [RFC9012]

> Old text:/
>    SR Policy is a set of candidate SR paths consisting of one or more
>    segment lists and necessary path attributes.  It enables
>    instantiation of an ordered list of segments with a specific intent
>    for traffic steering.  DetNet provides the capability to carry
>    specified unicast or multicast data flows with extremely low data
>    loss rates and bounded end-to-end latency within a network domain.
>    This document defines the SR policy enhancement to carry the Bounded
>    Latency Information with a candidate path of SR policy.  So that BLI
>    behavior can be enabled automatically when the SR Policy is applied./
{.is-info}

>    
> new text:/
>    SR Policy is a set of candidate SR paths consisting of one or more
>    segment lists and necessary path attributes.  It enables
>    instantiation of an explicit ordered list of segments with a specific intent
>    for traffic steering.  BGP distributes the SR Policy for unicast 
>    Segment Routing (SR) paths via the SR-Policy NLRIs accompanied 
>    with the Tunnel Encapsulation attribute for the SR Policy Tunnel. 
>    For multicast SR paths, BGP distributes the SR P2MP NLRIs accompanied 
>    by the SR P2MP Policy tunnel.    
>    
>    DetNet provides the capability to carry specified unicast or 
>    multicast data flows with extremely low data loss rates and 
>    bounded end-to-end latency within a network domain.
>    This document defines the SR policy enhancement to carry the Bounded
>    Latency Information with a candidate path of unicast and multicast 
>    SR paths. The distribution of the Bounded Latency Information (BLI)
>    allows the behavior can be enabled automatically when the SR Policy 
>    is applied./
{.is-info}



#### Issue-2. Sections 1-8 , needs to be updated to correct references. 

[draft-ietf-spring-segment-routing-policy] has been replace by [RFC9256]
[draft-ietf-idr-segment-routing-te-policy] has been replaced by 
[draft-ietf-idr-sr-policy-safi] and [draft-ietf-idr-sr-segtypes-ext].

#### Issue-3. Section 1, text needs to indicate what SR Policy is 

> Old text:/
>    Segment Routing Policy is defined
>    in[I-D.ietf-spring-segment-routing-policy].  A SR Policy is a set of
>    candidate path which consist of one or more segment lists.  The
>    headend node instructs the source routing and writes it into package.
>    The packets steered into an SR Policy have an ordered list of
>    segments associated with that SR Policy written into them. [RFC8655]
>    provides the overall architecture for Deterministic Networking
>    (DetNet), which provides the capability to carry specified unicast or
>    multicast data flows with extremely low data loss rates and bounded
>    end-to-end latency within a network domain. /
>    /
{.is-info}

   
> New text:/
>    Segment Routing (SR) Policy is defined in [RFC9256]. A SR Policy is a set of
>    candidate path which consist of one or more segment lists.  The
>    headend node instructs the source routing and writes it into SR Header. 
>    The packets steered into an SR Policy have an ordered list of
>    segments associated with that SR Policy written into them./
>     
>     
>    An explicit SR Candidate Path is described in [RFC9256] in section 5.1.  
>    BGP passes the explicit segment paths for unicast Segment Routing (SR) paths 
>    via the SR-Policy NLRIs accompanied with the Tunnel Encapsulation 
>    (Tunnel-Encaps) attribute with the SR Policy Tunnel type TLV
>    for unicast traffic as defined in [draft-ietf-idr-sr-policy-safi] 
>    and augmented by [draft-ietf-idr-sr-segtypes-ext].  BGP pases the 
>    explicit segment paths for multicast SR paths via the 
>    SR P2MP Policy NLRI accompanied by the Tunnel-Encaps attribute 
>    for the SR P2MP Policy tunnel type as defined by
>    [draft-ietf-idr-sr-p2mp-policy].    
>    
>    
>   [RFC8655] provides the overall architecture for Deterministic Networking
>    (DetNet), which provides the capability to carry specified unicast or
>    multicast data flows with extremely low data loss rates and bounded
>    end-to-end latency within a network domain. (continue on with paragraph)/
{.is-info}

   
   
 Old text at end of section:/
    This document defines the SR policy enhancement to carry the Bounded
   Latency Information with a candidate path of SR policy.  So that BLI
   behavior can be enabled automatically when the SR Policy is applied./
   
>  new text:/
>     This document defines a new sub-TLV for Segment List Sub-TLV 
>     that defines the Unicast Explicit SR Path for an SR candidates policy./
{.is-info}


Note: If you intend to add this to multicast, then add the following text:

> New-text-adition: 
>     This document defines a new Sub-TLV for the Segment List Sub-TLV that
> 	defines bounded latency information (BLI) that can be part of a 
>     Segment List Sub-TLV for a Unicast Explicit SR Candidate Policy. 
>     This new Sub-TLV for BLI can also be a part of the segment-list of 
> 	the SR P2MP Tunnel TLV. /
{.is-info}

	
#### Issue 4 - Section 4, fix references to Unicast SR Policy

[draft-ietf-idr-segment-routing-te-policy] has been replaced by 
[draft-ietf-idr-sr-policy-safi] and [draft-ietf-idr-sr-segtypes-ext].

#### Issue-5 - Add a Section for P2MP - if you wish to add BLI to P2MP (multicast)


#### Issue-6: Add an operations or manageability section 

#### Issue-7: Add a Security section 
See [draft-ietf-sr-policy-safi] for ideas. 
You do not need to add text that is in [draft-ietf-sr-policy-safi], but
you need to add security comments about BLI as new critical information. 
 
   