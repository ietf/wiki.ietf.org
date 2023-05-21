---
title: SDWAN Implementation Page 
description: 
published: true
date: 2023-05-21T16:56:26.750Z
tags: 
editor: markdown
dateCreated: 2023-03-29T03:28:02.241Z
---

# SDWAN Implementation Page 
Implementation report for [draft-ietf-idr-sdwan-edige-discovery]
(https://datatracker.ietf.org/doc/draft-ietf-idr-sdwan-edge-discovery/)

## Feature Support  

| Section | Description | Huawei VRP v5| Huawei VRP v8 |  
|---|---|---|---|
  | | |
|  6	| SDWAN Underlay UPDATE	| Yes | -- |
|  6  | 	SAFI = 74	|  Yes  |  Yes  |
|  6  | NLRI for SDWAN Underlay Tunnel Update | Yes | Yes | 
|  6  | SDWAN-Hybrid Tunnel | Yes | Yes |
|  6  | 	IPsec SA ID	|  Yes	|  Yes  |
|  6  |  Extended Port Attribute | Yes | Yes | 
|  6  | Underlay Network Properties | Yes  | Yes | 
|  7  | IPsec SA Property Update  | Yes  | Yes | 
|  7  | IPsec SA Nonce Sub-TLV    |	Yes	 | Yes | 
|  7  | IPsec Public Key Sub-TLV  | 	Yes | Yes | 
|  7  | IPsec SA Proposal Sub-TLV	|  Yes	| Yes |
|  7  | Simplified IPsec SA Sub – TLV	| Yes | Yes | 
{.dense}

## Other implementations of SDWAN: 
### Arista:
Document: https://eos.arista.com/eos-4-26-2f/dps-vpn-scaling-using-bgp

| IETF Draft | Description | Arista veersion | IANA name | IANA reference | draft | contact | 
|---|---|---|---| 
| none [1] | SAFI = 79  |  eos-4-26-2f | BGP-DPS (Dynamic Path Selection) | https://www.iana.org/assignments/safi-namespace/safi-namespace.xhtml | 	[draft-previdi-idr-segment-routing-te-policy] | IDR | 
| none [1]  | BGP Tunnel type 22 | eos-4-26-2f | Dynamic Path Selection (DPS) Tunnel Encapsulation | https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml | [Venkit_Kasiviswanathan] | 
| none [1] | BGP Tunnel type 24 | eos-4-26-2f |  Dynamic Path Selection (DPS) Tunnel Encapsulation | https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml | [Sarah_Chen] | 


BGP Tunnel Encapsulation Attribute Sub-TLVs:
…
192	The WAN ID Sub-TLV	[Venkit_Kasiviswanathan]

193	The Bytes Sub-TLV	[Venkit_Kasiviswanathan]

194	IPSEC DIM sub-TLV	[Venkit_Kasiviswanathan]

195	IPSEC Key Exchange sub-TLV	[Venkit_Kasiviswanathan]

196	IPSEC SA Proposals sub-TLV	[Venkit_Kasiviswanathan]


