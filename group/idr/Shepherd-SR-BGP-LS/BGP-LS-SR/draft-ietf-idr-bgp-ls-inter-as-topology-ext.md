---
title: draft-ietf-idr-bgp-ls-inter-as-topology-ext Shepherd Reviews 
description: Shepherd for draft-ietf-idr-bgpl-s-inter-as-topology-ext
published: true
date: 2026-04-08T11:03:27.107Z
tags: 
editor: markdown
dateCreated: 2026-01-06T00:11:12.999Z
---

# Shepherd reviews for 
# draft-ietf-idr-bgpls-inter-as-topology-ext

Note: I am going to ask the authors to change draft name to:
draft-ietf-idr-bgp-ls-inter-as-topology-ext 

**Version:** -22
**status:** - Waiting for WG LC, -23 needed prior to WG LC due to IANA issues 
**next steps**: 
1. Authors change to fix IANA issues (required) and should fix editorial. 
https://wiki.ietf.org/group/idr/implementations/draft-ietf-idr-bgpls-inter-as-topology-ext

2. IDR chair has requested early Directorate reviews for return by May 4th. 
3. IDR chair will request IDR Chair review 
4. If IDR Chair Review has no commets, we'll start WG LC on 1/9/2026
   If IDR Chair Review has comments, then I'll post the comments to
   the shepherd review page. 
   
## Review -22

### 1. Technical issues in the draft
 I find no technical issues in the text.  All of the parameters are specified carefully. 
Well done! 

### 2.  IANA Issues 
Status: Must change prior to WG LC 

The following sections need to specify the registry group as well as the registry: 

#### 2.1) Section 9.1
> 
> Old text:/ 
>    IANA has allocated codepoint for the Stub Link NLRI type from the
>    "BGP-LS NLRI Types" registry as follows:/ 
{.is-info}

> 
> New text:/
>    IANA has allocated codepoint for the Stub Link NLRI type from the
>    "BGP-LS NLRI Types" registry in the “Border Gateway Protocol – 
>    Link State (BGP-LS) Parameter” Group: / 
{.is-info}


#### 2.2) Section 9.2 
> Old text/. 
>    IANA has allocated codepoints for the following TLVs from "BGP-LS
>    NLRI and Attribute TLVs" registry:/ 
{.is-info}


> New text:/ 
>    IANA has allocated codepoints for the following TLVs from "BGP-LS
>    NLRI and Attribute TLVs" registry in the “Border Gateway Protocol – 
>    Link State (BGP-LS) Parameter” Group: / 
> 
{.is-info}


### 3. Editorial – eventually needs 

#### 3.1. Section 5, paragraph 3
**What:** Clarify what test by including the closing parenthesis. 
**Status:** SHOULD be added prior to WG LC 

> Old text: / 
>    Therefore, the "Identifier" values for the two half-
>    links (refer section 5.2.2 of [RFC9552] of the inter-AS link could be
>    different depending on the configuration of Identifiers for the two
>    IGP domains./ 
{.is-info}


New text:/
   Therefore, the "Identifier" values for the two half-
   links (refer to section 5.2.2 of [RFC9552]) of the inter-AS link could be
   different depending on the configuration of Identifiers for the two
   IGP domains./

### 3.2 Section 5, paragraph 7 

**What: **  add correct grammar (“the”, commas, periods at the end of the sub-bullets).
**Status of changes: ** I can WG LC without, but it will need to be done eventually. 

> Old text: /
>    - Autonomous System (TLV 512) [RFC9552]
> 
>    - OSPF Area-ID (TLV 514) [RFC9552] to be included only in the case of
>    OSPF when the Inter-AS TE LSA from which information is sourced is
>    being flooded with an area-scope; it is not included when the LSA is
>    flooded with AS-scope/
{.is-info}


> New text:/
> the Autonomous System (TLV 512) [RFC9552].
> 
>    -  the OSPF Area-ID (TLV 514) [RFC9552] to be included only in the case of
>    OSPF, when the Inter-AS TE LSA from which information is sourced is
>    being flooded with an area-scope. It is not included when the LSA is
>    flooded with AS-scope./ 
{.is-info}


> Old text:/ 
>    - IGP Router ID (TLV 515) encoded for either OSPF or IS-IS depending
>    on the source protocol as specified in section 5.2.1.4 of [RFC9552]./ 
{.is-info}


> New text:/ 
>    - the IGP Router ID (TLV 515) encoded for either OSPF or IS-IS, depending
>    on the source protocol as specified in section 5.2.1.4 of [RFC9552]./
{.is-info}

> 
> Old text:/ 
>    - One or both of IPv4 and IPv6 Router-ID of the ASBR using TLV 1028
>    and/or 1029 [RFC9552], depending on whether the ASBR is configured
>    with one or both of the IPv4 and IPv6 TE Router-IDs (Note: while
>    [RFC9552] introduced these TLVs for use in the BGP-LS Attribute, this
>    document also leverages the same TLVs for use in the NLRI)/
{.is-info}

> 
> new text:/ 
>    - One or both of IPv4 and IPv6 Router-ID of the ASBR using TLV 1028
>    and/or 1029 [RFC9552], depending on whether the ASBR is configured
>    with one or both of the IPv4 and IPv6 TE Router-IDs. (Note: While
>    [RFC9552] introduced these TLVs for use in the BGP-LS attribute, this
>    document also leverages the same TLVs for use in the NLRI.)/
{.is-info}



### 3.3. Section 5, paragraph 8, grammar changes 
**What: **grammar change 
**Status: **I can WG LC without the changes.  

> Old text:/ 
>    - Remote AS Number (TLV 270)
> 
>    - One or both of IPv4 and IPv6 Remote ASBR ID using TLV 271 and/or
>    272, depending on whether the Remote ASBR is configured with one or
>    both of the IPv4 and IPv6 TE Router-IDs./
> 
{.is-info}

> New text:/ 
>    - the Remote AS Number (TLV 270), and 
> 
>    - One or both of IPv4 and IPv6 Remote ASBR ID using TLV 271 and/or
>    272, depending on whether the Remote ASBR is configured with one or
>    both of the IPv4 and IPv6 TE Router-IDs./
> 
{.is-info}

#### 3.4 Section 6.1, paragraph 2, future-proof the text: 
**Why change:** “as in current deployments” will age with time.  
Best to leave it out.  

Old text:/
   The Remote AS Number field has 4 octets.  When only 2 octets are used
   for the AS number (for example, when such information is advertised
   from OSPF, as in current deployments), the left (high-order) 2 octets
   MUST be set to 0./
> 
> New text:/
>    The Remote AS Number field has 4 octets.  When only 2 octets are used
>    for the AS number (for example, when such information is advertised
>    from OSPF), the left (high-order) 2 octets
>    MUST be set to 0.
{.is-info}




## Review -18 

### Technical issues 
#### Technical issue #1 
Security section needs to consider that the 
Stub Link, and the characteristics of the Stub link
are critical information. 

Suggested text at end of Security section. 

old text:/
   Using the passive-interface features or configuring the
   Traffic Engineering (TE) parameters on the interconnect links will
   not provide the real-time Information for this single Administrative
   Domain./ 
   
new text:/
   The single Administrative domain consisting of two AS passing 
   information about the Stub-link characteristics does not 
   cause problems within a "walled garden".  However, the 
   Stub-link NLRI and characteristics (Link/local identifier, 
   IPv4 Interface Address, IPv4 Neighbor Address, 
   IPv6 interface Address, IPv6 Neighbor Address, 
   Multi-topology Identifier, Remote-AS Number, 
   IPv4 Remote ASBRI ID, and IPv6 Remote ASBR ID) 
   are critical information to a network.  
   As such, operators should handle this critical 
   information in a way that restricts it to the 
   walled garden. / 

