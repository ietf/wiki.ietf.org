---
title: Implementatino Reprot for draft-ietf-idr-sr-policy-nrp
description: Implementations draft-ietf-idr-sr-policy-nrp
published: true
date: 2026-02-07T00:11:53.301Z
tags: 
editor: markdown
dateCreated: 2025-02-22T13:30:13.907Z
---

# Implementation Report for draft-ietf-idr-sr-policy-nrp

Draft:  [draft-ietf-idr-bgp-ls-sr-policy-nrp](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-sr-policy-nrp/)
Current version: -04 
Status: WG draft, adopted (8/12/2024 upload), WG LC requested 
WG LC: needs 2 implementations and joint WG LC with draft-ietf-idr-sr-policy-nrp. 

### Implementations: 
1) Huawei,  VRP-8 or later 
3) H3C, Comware V9R1B60D001 or later



### Functionality 

| Core Functionality | section |	Huawei VRP	| H3C  | 
|---|---|---|---|---|---|---|---|
| NRP Sub-TLV  | 2  |	yes | yes    | 
| NRP Sub-TLV Error Handling Procedures | 2 and 4 | yes | yes   | 
| Error handling of SR Policy TLV with malformed NRP-ID  |	2 | yes | yes |   |
| NRP ID headend encapsulation for SRv6  | 3 |  yes | yes    | 
| NRP ID headend encapsulation for SR-MPLS | 3 | yes |  TBD  |
{.dense} 
 	

## Configuration examples 
### H3C 
#### Define NRP Instance:
text
> [H3C] system-view
> [H3C] nrp-instance 100
>[H3C-network-slice-instance100] description Slice_100
{.is-info}

 
#### Configure SR Policy with Color for NRP:
> [H3C] segment-routing ipv6
> [H3C-segment-routing-ipv6] traffic-engineering
> [H3C-srv6-te] policy 10
> [H3C-srv6-te-policy-10] candidate-paths
> [H3C-srv6-te-policy-10-path] preference 20
> [H3C-srv6-te-policy-10-path-pref20] network-slice 100
{.is-info}

#### BGP Route Target/Color Steering:
> [H3C] bgp 100
> [H3C-bgp-default] peer 2.2.2.2 as-number 100
> [H3C-bgp-default] peer 2.2.2.2 connect-interface LoopBack0
> [H3C-bgp-default] address-family ipv6 sr-policy
> [H3C-bgp-default-srpolicy-ipv6] peer 2.2.2.2 enable
{.is-info}




### Huawei 

#### 1. Enable Global Segment Routing 
> Enable SR and configure the Segment Routing Global Block (SRGB). 
> bash
> system-view
> segment-routing
>   segment-routing global-block 16000 24000
> commit
{.is-info}

#### 2. configure SR policy 

> bash 
> bgp 65001
>  peer 1.1.1.1 as-number 65001
>  ! Enter the SR-Policy address family
>  ipv4-family sr-policy
>   peer 1.1.1.1 enable
> commit
{.is-info}


#### 3. define NRP globally 

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


#### 4. Associate Policy SR Candidate Path with Specific NRP 

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


#### 5. Verify it is set
- Check BGP Peer Status: display bgp peer.
- Check SR Policy: display sr-te policy.
- Check NRP Info: display network-resource-partition. 