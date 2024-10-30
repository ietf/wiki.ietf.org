---
title: Implementation report for draft-ietf-idr-vpn-prefix-orf
description: Implementation report for draft-ietf-idr-vpn-prefix-orf
published: true
date: 2024-10-30T01:55:41.450Z
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

|---|---|---|---|---|---|---|---|----|---|
| Feature  | Section | Description |	 Implemented **H3C**|  Implemented **Vendor2** |  Compliance **H3C**  | Compliance  **Vendor2** | 
|  Unique RD, One RT   |  4.1.1 |  (describe) | yes | TBD |   |    | 
|  Unique RD, multiple RT   |  4.1.2|  (describe) | yes | TBD |   |    | 
|  Universal RD  |  4.1.3|  (describe) | yes | TBD |   |    | 
| Source PE Extended Community | 5 | (describe) | no | TBD |  |  | 
| Source PE TLV | 6.1 | (describe) | yes | TBD |  |  | 
| Source PE TLV | 6.1 | (describe) | yes | TBD |  |  | 
{.dense}