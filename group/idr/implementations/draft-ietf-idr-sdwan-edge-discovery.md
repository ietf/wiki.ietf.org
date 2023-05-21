---
title: SDWAN Implementation Page 
description: 
published: true
date: 2023-05-21T17:42:50.732Z
tags: 
editor: markdown
dateCreated: 2023-03-29T03:28:02.241Z
---

# SDWAN Implementation Page 
Implementation report for [draft-ietf-idr-sdwan-edige-discovery](https://datatracker.ietf.org/doc/draft-ietf-idr-sdwan-edge-discovery/)

## Feature Support  

| Section | Description | Huawei VRP v5 | Huawei VRP v8 |  
|---|---|---|---|
  | | |
|  6	| SDWAN Underlay UPDATE	| Yes | -- |
|  6  | SAFI = 74	|  Yes  |  Yes  |
|  6  | NLRI for SDWAN Underlay Tunnel Update | Yes | Yes | 
|  6  | SDWAN-Hybrid Tunnel | Yes | Yes |
|  6  | IPsec SA ID	|  Yes	|  Yes  |
|  6  | Extended Port Attribute | Yes | Yes | 
|  6  | Underlay Network Properties | Yes  | Yes | 
|  7  | IPsec SA Property Update  | Yes  | Yes | 
|  7  | IPsec SA Nonce Sub-TLV    |	Yes	 | Yes | 
|  7  | IPsec Public Key Sub-TLV  | 	Yes | Yes | 
|  7  | IPsec SA Proposal Sub-TLV	|  Yes	| Yes |
|  7  | Simplified IPsec SA Sub – TLV	| Yes | Yes | 
{.dense}

## Other implementations of SDWAN: 
### Arista:

| IETF Draft | Description | Arista version | IANA name |  contact | 
|---|---|---|---| 
| [draft-ietf-idr-segment-routing-te-policy](https://datatracker.ietf.org/doc/draft-ietf-idr-segment-routing-te-policy/) | SAFI = 79  |  eos-4-26-2f | BGP-DPS (Dynamic Path Selection) |	 IDR | 
| none [1]  | BGP TEN tunnel type 22 | eos-4-26-2f | [Dynamic Path Selection (DPS) Tunnel Encapsulation](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-types) | [Venkit_Kasiviswanathan] | 
| none [1] | BGP TEN tunnel type 24 | eos-4-26-2f |  [Dynamic Path Selection (DPS) Policy](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-types) | [Sarah_Chen] | 
| none  | BGP TEN subTLV 192 | eos-4-26-2f |  [The WAN ID Sub-TLV](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-sub-tlvs) | [Venkit_Kasiviswanathan] | 
| none  | BGP TEN subTLV 193 | eos-4-26-2f | [The Bytes  Sub-TLV]( https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-sub-tlvs) | [Venkit_Kasiviswanathan] | 
| none  | BGP TEN subTLV 194 | eos-4-26-2f | [IPSEC DIM  Sub-TLV](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-sub-tlvs) | [Venkit_Kasiviswanathan] | 
| none  | BGP TEN subTLV 195 | eos-4-26-2f | [IPSEC Key Exchange  Sub-TLV](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-sub-tlvs) | [Venkit_Kasiviswanathan] | 
| none  | BGP TEN subTLV 196 | eos-4-26-2f | [IPSEC SA Proposals  Sub-TLV](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-sub-tlvs) | [Venkit_Kasiviswanathan] | 
{.dense}

Document [1]: https://eos.arista.com/eos-4-26-2f/dps-vpn-scaling-using-bgp
BGP TEN = BGP tunnel encapsulation attribute 
{.dense}

