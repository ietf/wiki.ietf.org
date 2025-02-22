---
title: Shepherd Reviews for draft-ietf-idr-bgpls-sr-vtn-mt
description: Shepherd draft-ietf-idr-bgpls-sr-vtn-mt
published: true
date: 2025-02-22T17:09:57.739Z
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

## Review of -04 
status: WG Draft  
Status: Informational
version: revision suggested
Ready for WG LC: The content is OK, but a few editorial suggestions are made. 
Email link: 


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

   