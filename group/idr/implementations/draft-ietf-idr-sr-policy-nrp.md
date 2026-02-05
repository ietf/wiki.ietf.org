---
title: Implementatino Reprot for draft-ietf-idr-sr-policy-nrp
description: Implementations draft-ietf-idr-sr-policy-nrp
published: true
date: 2026-02-05T18:31:55.302Z
tags: 
editor: markdown
dateCreated: 2025-02-22T13:30:13.907Z
---

# Implementation Report for draft-ietf-idr-sr-policy-nrp

Draft:  [draft-ietf-idr-bgp-ls-sr-policy-nrp](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-sr-policy-nrp/)
Current version: -04 
Status: WG draft, adopted (8/12/2024 upload), WG LC requested 
WG LC: needs 2 implementations and joint WG LC with draft-ietf-idr-sr-policy-nrp. 

Implementations: 
1) Huawei, model CE16800 equipped with A series cards, V200R021C00, VRP-8 or later 
2) Cisco, IOS XR Release 7.11.x or XIOS 
3) 



Implementations: 

| Core Functionality | section |	Cisco IOS-XR |	Huawei VRP	| H3C  | 
|---|---|---|---|---|---|---|---|
| NRP Sub-TLV  | 2 | TBD |	yes | yes    | 
| NRP Sub-TLV Error Handling Procedures | 2 and 4 | TBD | yes | yes   | 
| Error handling of SR Policy TLV with malformed NRP-ID  |	2 | TBD | yes | yes |   |
| NRP ID headend encapsulation for SRv6  | 3 | TBD | yes | TBD    | 
| NRP ID headend encapsulation for SR-MPLS | 3 | TBD | yes |  yes  |
{.dense} 
 	

## Configuration examples 
### H3C 
#### Define NRP Instance:
text
> [H3C] system-view
> [H3C] nrp-instance 100
> [H3C-nrp100] description Slice_1
{.is-info}

 
#### Configure SR Policy with Color for NRP:
> [H3C] segment-routing
> [H3C-segment-routing] sr-policy-group 10
> [H3C-segment-routing-policy-10] color 100 end-point 1.1.1.1
> [H3C-segment-routing-policy-10] nrp-id 100
{.is-info}

#### BGP Route Target/Color Steering:

> [H3C] bgp 100
> [H3C-bgp-default] peer 2.2.2.2 as-number 100
> [H3C-bgp-default] peer 2.2.2.2 connect-interface LoopBack0
> [H3C-bgp-default] address-family vpnv4
> [H3C-bgp-default-vpnv4] peer 2.2.2.2 enable
> [H3C-bgp-default-vpnv4] peer 2.2.2.2 route-policy set_color import
{.is-info}

#### Route Policy Definition
> [H3C] route-policy set_color permit node 10
> [H3C-route-policy-set_color-10] apply extcommunity color 100
> 
{.is-info}


### Huawei 
Configuration for Huawei with NRP 
1. Enable Global Segment Routing 
> Enable SR and configure the Segment Routing Global Block (SRGB). 
> bash
> system-view
> segment-routing
>   segment-routing global-block 16000 24000
> commit
{.is-info}

2. configure SR policy 

> bash 
> bgp 65001
>  peer 1.1.1.1 as-number 65001
>  ! Enter the SR-Policy address family
>  ipv4-family sr-policy
>   peer 1.1.1.1 enable
> commit
{.is-info}


3. define NRP globally 

> ! Define the NRP globally
> network-resource-partition nrp-id 10
>   description Premium_Slice
> commit
> 
> !Bind the NRP to an interface to isolate resources
> interface GigabitEthernet 0/1/0
>   nrp 10
> commit
{.is-info}


4. Associate Policy SR Candidate Path with Specific NRP 

> bash
> segment-routing
>  sr-te policy name NRP_Policy
>   endpoint 2.2.2.2 color 100
>   
> ! Associate the policy path with a specific NRP
>   candidate-path preference 100
>    nrp 10
>    explicit-path name PATH_01
> commit
{.is-info}


5. Verify it is set
- Check BGP Peer Status: display bgp peer.
- Check SR Policy: display sr-te policy.
- Check NRP Info: display network-resource-partition. 