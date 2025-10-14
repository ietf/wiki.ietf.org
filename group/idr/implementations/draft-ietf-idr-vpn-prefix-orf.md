---
title: Implementation report for draft-ietf-idr-vpn-prefix-orf
description: Implementation report for draft-ietf-idr-vpn-prefix-orf
published: true
date: 2025-09-08T06:07:03.713Z
tags: 
editor: markdown
dateCreated: 2024-08-23T01:55:25.072Z
---

# Implementation Report for draft-ietf-idr-vpn-prefix-orf 


## Vendor or Open Source Implementations 

H3C has implemented some VPN Prefix ORF mechanism related functions as follows:
- By configuring VRF Prefix limit and quota, achieve the use of RD and Source PE to control VPN routing. 
- Generating, transmitting and processing Type 1 and Type 2 Source PE TLV.	
- Using the Offending VPN routes process method to revoke all routes.	
 		
We also implemented the following functions based on the open-source BGP implementation (FRR):	
- VPN Prefix ORF mechanism triggered based on VRF limit in intra-domain and inter-domain scenarios.	
- RD based VPN routing filtering in intra-domain and inter-domain scenarios.



## Support of features 
| Feature  | Section | Description |	 Implemented **H3C**|  Implemented **FRR** |  Compliance **H3C**  | Compliance  **FRR** 
|---|---|---|---|---|---|---|
|  Unique RD, One RT   |  4.1.1 |  (describe) | yes | yes |   |    | 
|  Unique RD, multiple RT   |  4.1.2|  (describe) | yes | yes |   |    | 
|  Universal RD  |  4.1.3|  (describe) | yes | yes |   |    | 
| Source PE Extended Community | 5 | (describe) | no | no |  |  | 
| Source PE TLV | 6.1 | (describe) | yes | no |  |  | 
| Source AS TLV | 6.2 | (describe) | yes | no |  |  | 
| Route Target TLV | 6.3 | (describe) | yes | no |  |  | 
{.dense}