---
title: SDWAN Implementation Page 
description: 
published: true
date: 2025-01-16T21:17:44.373Z
tags: 
editor: markdown
dateCreated: 2023-03-29T03:28:02.241Z
---

# SDWAN Implementation Page 
Implementation report for [draft-ietf-idr-sdwan-edge-discovery](https://datatracker.ietf.org/doc/draft-ietf-idr-sdwan-edge-discovery/)

## Feature Support  

| Section | Description | Huawei VRP v5 | Huawei VRP v8 |  
|---|---|---|---|
|  3  | Hybrid SD-WAN tunnel TEA attached to 1/1 and 1/2 (Secure Links | yes | Yes |
|  3  | Hybrid SD-WAN tunnel TEA attached to 1/128 and 2/128 (Secure L3VPN) | Yes |  yes | 
|  3.1  | Hybrid SD-WAN Tunnel in TEA | Yes | Yes |
|  3.2	| SDWAN Underlay UPDATE	| Yes | Yes |
|  3.2  | SD-WAN NLRI AFI/SAFI 1/74, 2/74  (SDWAN Tunnel Underlay) |  Yes  |  Yes  |
|  3.2.2 | Validation of SD-WAN NLRI | Yes | Yes | 
|  3.2.3 | Passes Req BGP Attributes | Yes | Yes |
|  3.2.3 | Optional attributes Supported | xx | xx | 
|  3.3.1  | IPsec SA ID SubTLV	|  Yes	|  Yes  
|  3.3.2  | IPsec SA ReKey Counter | 	Yes | Yes | 
|  3.3.3  | IPsec Public Key Sub-TLV  | 	Yes | Yes | 
|  3.3.4  | IPsec SA Proposal Sub-TLV	|  Yes	| Yes |
|  3.3.5  | IPsec SA Proposal Sub-TLV	|  Yes	| Yes |
|  3.3.6  | Extended Port Attribute SubTLV | Yes | Yes |
|  3.4    | Client Route procedure  | Yes | Yes | 
|  3.5    | Underlay Routes procedures | Yes | Yes | 
|  3.6    | Error handling             | Yes | Yes | 
|  4      | Manageability              | Yes | Yes |      


{.dense}

## Other implementations of SDWAN: Arista
### Note that Arista was granted SubTLVs by IANA in FCFS for same content.  Authors reached out to Arista team and agreed upon future direction. This section of the implementation report details the current IANA assignments given to Arista.   

| IETF Draft | Description | Arista version | IANA name |  contact | 
|---|---|---|---|---|
  | | | 
| none [1] | SAFI = 79  |  eos-4-26-2f | [BGP-DPS (Dynamic Path Selection](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-types) |	 [Venkit_Kasiviswanathan] | 
| none [1]  | BGP TEN tunnel type 22 | eos-4-26-2f | [Dynamic Path Selection (DPS) Tunnel Encapsulation](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-types) | [Venkit_Kasiviswanathan] | 
| none [1] | BGP TEN tunnel type 24 | eos-4-26-2f |  [Dynamic Path Selection (DPS) Policy](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-types) | [Sarah_Chen] | 
| none  | BGP TEN subTLV 192 | eos-4-26-2f |  [The WAN ID Sub-TLV](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-sub-tlvs) | [Venkit_Kasiviswanathan] | 
| none  | BGP TEN subTLV 193 | eos-4-26-2f | [The Bytes  Sub-TLV]( https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-sub-tlvs) | [Venkit_Kasiviswanathan] | 
| none  | BGP TEN subTLV 194 | eos-4-26-2f | [IPSEC DIM  Sub-TLV](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-sub-tlvs) | [Venkit_Kasiviswanathan] | 
| none  | BGP TEN subTLV 195 | eos-4-26-2f | [IPSEC Key Exchange  Sub-TLV](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-sub-tlvs) | [Venkit_Kasiviswanathan] | 
| none  | BGP TEN subTLV 196 | eos-4-26-2f | [IPSEC SA Proposals  Sub-TLV](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml#tunnel-sub-tlvs) | [Venkit_Kasiviswanathan] | 
{.dense}

none [1]: https://eos.arista.com/eos-4-26-2f/dps-vpn-scaling-using-bgp
BGP TEN = BGP tunnel encapsulation attribute 
{.dense}

