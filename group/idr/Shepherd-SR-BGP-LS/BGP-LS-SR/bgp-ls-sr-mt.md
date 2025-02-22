---
title: Shepherd Reviews for draft-ietf-idr-bgpls-sr-vtn-mt
description: Shepherd draft-ietf-idr-bgpls-sr-vtn-mt
published: true
date: 2025-02-22T17:20:34.669Z
tags: 
editor: markdown
dateCreated: 2025-02-22T17:09:57.739Z
---

# Shepherd Reviews for draft-ietf-idr-bgpls-sr-vtn-mt

## Overvie3w 
**draft:** [draft-ietf-idr-bgpls-sr-vtn-mt](https://datatracker.ietf.org/doc/draft-ietf-idr-bgpls-sr-vtn-mt/)
**type:** Informational 
**WG status:** in WG LC (2/17/2025 to 3/3/2025) 
**early allocation:** none 

## Review of -07 

**Document Status:** in WG LC
**Review Status:** Pending Shepherd's review
**version:** -07
**email link:** 

### Technical issues

#### Issue-1) The following 3 drafts listed as normative are only WG drafts:
draft-ietf-spring-resource-aware-segment-10,
draft-ietf-spring-sr-for-enhanced-vpn-08 and
draft-ietf-teas-enhanced-vpn-20,


#### Issue-2) The review points out a potential issue with RFC9552 described below. The IDR chairs feel this should be addressed as a correction to RFC9522.

**Desription:**  It is possible for a single eBGP session to be established between the two ASes and BGP-LS could signal for all links between those ASes that each side is up.  However, this can have issues previously identified for the base BGP-LS specification when this is done.  Consider this small example:

> 
>      +------+
>      |  L1  |
>    --+......+---
> R1........... R2
>    --+      +---
>      |  L2  |
>      +------+
{.is-info}




R1 and R2 peer via eBGP over L1.

R1 advertises to the rest of the network links L1 and L2 at R1

R1 propagates the state for links L1 and L2 received from R2.



R1 and R2 do not peer over L2.



If the link status of L2 at R1 and R2 is Up, but there is no connectivity between them (connectivity is down), it is possible that a controller will compute traffic over the down L2.



This issue was covered in RFC 9952, Section 5.2.2 - Link Descriptors:



: An implementation MAY suppress the advertisement of a Link NLRI,

: corresponding to a half-link, from a link-state IGP unless the IGP has

: verified that the link is being reported in the IS-IS LSP or OSPF Router LSA

: by both the nodes connected by that link. This 'two-way connectivity check'

: is performed by link-state IGPs during their computation and can be

: leveraged before passing information for any half-link that is reported from

: these IGPs into BGP-LS. This ensures that only those link-state IGP

: adjacencies that are established get reported via Link NLRIs. Such a

: 'two-way connectivity check' could also be required in certain cases (e.g.,

: with OSPF) to obtain the proper link identifiers of the remote node.



The issue with RFC9552 here that is that the inter-domain case doesn't have an IGP on both sides to do the check.



For typical eBGP, if the router advertised its connectivity at a link only when the session is up, we're good.  R1 would get each half side only if the session is up on each link.



As Jie Dong point out, draft-ietf-idr-bgpls-sr-vtn-mt-07 covers the following cases:



1. Multiple eBGP sessions, each over an inter-domain link. As Jeff said, this case should be good.

2. One EBGP session over an L2 bundle, which consists of multiple layer-2 member links. This should also be good as there is a layer-2 detection mechanism for the liveness of the bundle members.

3. One EBGP session is established using loopback addresses, and there are multiple layer-3 inter-domain links between the ASBRs.



Note that only #3, may have the problem above. However, in deployments there is some detection mechanism (e.g. BFD) to check the availability of the connection.



 3. Editorial issues

     *   Section 2.1, paragraph 2, block quote - the block quote is not indented.  Typically, block quotes are indented.  Please indent in your next version.



## Review of -06 (internal to chairs) 
- post information here (Jeff and Keyur's review) 

## Review of -05 by Adrian Farrell
**Status:** Needs revision (various fixes) prior to WG LC 
**version:** -05 
**email link:** draft-ietf-idr-bgpls-sr-vtn-mt-05 (Post Adrian Review) 


## Review of -04 
**status:** WG Draft  
**type:** informational 
**version: **revision suggested
**Ready for WG LC: **The content is OK, but a few editorial suggestions are made. 
**Email link: **https://mailarchive.ietf.org/arch/msg/idr/B5WNT42awr-dpSbSL95czcnj_YM/



## Technical Issues - None 

### Editorial NITs


#### NIT-1. Abstract, sentence 1, incorrect use of "etc"
**
Old text:/**
>    Enhanced VPNs aim to deliver VPN services with enhanced
>    characteristics, such as guaranteed resources, latency, jitter, etc.,
>    so as to support customers requirements for connectivity services
>    with these enhanced characteristics./
{.is-info}

   
**New text:/**
>    Enhanced VPNs aim to deliver VPN services with enhanced
>    characteristics to connect customers who require specific 
>    guaranteed resources, latency, or jitter./ 
{.is-info}

   
 #### Nit-2. Introduction, sentence 1, incorrect use of "etc."
 
 
**Old text:/**
>    Enhanced VPNs aim to deliver VPN services with enhanced
>    characteristics, such as guaranteed resources, latency, jitter, etc.,
>    so as to support customers requirements for connectivity services
>    with these enhanced characteristics./
{.is-info}

   
**New text:/**
   Enhanced VPNs aim to deliver VPN services with enhanced
   characteristics to connect customers who require specific 
   guaranteed resources, latency, or jitter./ 
   
   
 #### NIT-3. Introduction, paragraph 4, incorrect capitalization 

**Old text:/ **
>    To allow NRP-specific constraint-based path computation and/or NRP-
>    specific shortest path computation to be performed by network
>    controller and network nodes, The set of resource-awere SR SIDs and
>    the associated topology and resource attributes of an NRP need to be
>    distributed using a control plane./
{.is-info}

   
** New text:/**
>   To allow NRP-specific constraint-based path computation and/or NRP-
>    specific shortest path computation to be performed by network
>    controller and network nodes, the set of resource-awere SR SIDs and
>    the associated topology and resource attributes of an NRP need to be
>    distributed using a control plane./
{.is-info}

   
#### NIT-4. Introduction, paragraph 5, sentence clarity
 **
 Current:/**
>   [I-D.ietf-lsr-isis-sr-vtn-mt] describes the IGP Multi-
>    Topology (MT) [RFC5120] based mechanism to advertise the topology and
>    the associated SR SIDs, together with the resource and TE attributes
>    for each SR based NRP./
{.is-info}

   
** New:/**
>   [I-D.ietf-lsr-isis-sr-vtn-mt] describes the IGP Multi-
>    Topology (MT) [RFC5120] based mechanism to advertise an independent topology and
>    the associated SR SIDs, together with the resource and TE attributes
>    for each SR based NRP. /
{.is-info}

   
#### NIT-5. Section 2.2, paragraph 4, sub-paragraph 1, starting with "One EBGP"
 
** Problem:** clarity in sentence due to "comma".
 
** Current text:/**
>       In both cases, different BGP Peer-Adj-SIDs or SRv6
>       End.X SID need to be allocated to each underlying physical or
>       virtual member link, the association between the BGP Peer Adj-SID/
>       End.X SID and the MT-ID of the NRP need to be advertised by the
>       ASBR./
{.is-info}

	  
 **Current text:/**
>       In both cases, different BGP Peer-Adj-SIDs or SRv6
>       End.X SID need to be allocated to each underlying physical or
>       virtual member link, and the association between the BGP Peer Adj-SID/
>       End.X SID and the MT-ID of the NRP need to be advertised by the
>       ASBR./
{.is-info}


#### NIT-6. section 4, paragraph 1, clarity due to "comma"

**old text:/ **
>    For example, even if multiple NRPs share the same
>    topology, each NRP still need to be identified using a unique MT-ID
>    in the control plane, thus independent path computation needs be
>    executed for each NRP. 
> 
{.is-info}

**new text:/ **
>     For example, even if multiple NRPs share the same
>    topology, each NRP still need to be identified using a unique MT-ID
>    in the control plane. Thus independent path computation needs be
>    executed for each NRP. /
{.is-info}

   
 #### NIT-7. Section 4, paragraph 1, - ", as no" - please review word choice
 
** Old text:/ **
>    The mechanism 
>    described in this document is considered useful for network scenarios
>    in which the required number of NRPs is small, as no control protocol
>    extension is required. /
{.is-info}


A more normal word choice would be "because" as shown below, 
but you may wish ", as no".

** New text:**
>     / The mechanism 
>    described in this document is considered useful for network scenarios
>    in which the required number of NRPs is small because no control protocol
>    extension is required. /   
{.is-info}

   
 #### NIT-8. Section 4, paragraph 1, 

** Current text:/**
>    For network scenarios where the number of
>    required NRPs is large, more scalable solution would be needed, which
>    may require further protocol extensions and enhancements. /
{.is-info}

   
**New text:/ **
    For network scenarios where the number of
>    required NRPs is large, more scalable solution would be needed which
>    may require further protocol extensions and enhancements. /
{.is-info}

   