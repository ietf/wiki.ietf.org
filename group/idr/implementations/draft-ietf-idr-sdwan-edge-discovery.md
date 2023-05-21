---
title: SDWAN Implementation Page 
description: 
published: true
date: 2023-05-21T16:36:08.940Z
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

| Draft | Description | Arista veersion | 
|---|---|---|
| none | SAFI = 79  |  BGP-DPS (Dynamic Path Selection]
use a new SAFI = 79 and 2 BGP Tunnel Encapsulation Attribute Tunnel Types:
https://www.iana.org/assignments/safi-namespace/safi-namespace.xhtml
…
79	BGP-DPS (Dynamic Path Selection)	[https://eos.arista.com/eos-4-26-2f/dps-vpn-scaling-using-bgp]

https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml

BGP Tunnel Encapsulation Attribute Tunnel Types:
…
22	Dynamic Path Selection (DPS) Tunnel Encapsulation	[Venkit_Kasiviswanathan]

24	Dynamic Path Selection (DPS) Policy	[https://eos.arista.com/eos-4-26-2f/dps-vpn-scaling-using-bgp][Sarah_Chen]


BGP Tunnel Encapsulation Attribute Sub-TLVs:
…
192	The WAN ID Sub-TLV	[Venkit_Kasiviswanathan]

193	The Bytes Sub-TLV	[Venkit_Kasiviswanathan]

194	IPSEC DIM sub-TLV	[Venkit_Kasiviswanathan]

195	IPSEC Key Exchange sub-TLV	[Venkit_Kasiviswanathan]

196	IPSEC SA Proposals sub-TLV	[Venkit_Kasiviswanathan]


