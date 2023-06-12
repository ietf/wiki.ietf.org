---
title: Implementation report for CT
description: Implementation report
published: true
date: 2023-06-12T19:15:00.640Z
tags: 
editor: markdown
dateCreated: 2023-06-05T16:30:59.788Z
---

#  BGP CT Implementation report

## Author

## RFC 2119 perspective 

### RFC 2119 “MUST” Clauses 

| Feature  | Draft Text  |	 Implemented  | | Compliance || Comments |
|---|---|---|---|---|---|---|---|----|
| | |	**Juniper** | **FreeRTR**  | **Juniper**| **FreeRTR** | |
|[**Transport-Target**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-04.html#name-transport-class-route-targe)| The remaining 2 octets after SubType field are Reserved. They MUST be set to zero on transmission, SHOULD be ignored on reception and  left unaltered.|Yes |Yes |Yes |Yes | |
|**RTC** | A BGP speaker that implements RT Constraint Route Target Constraints [RFC4684] MUST apply the RT Constraint procedures to the "Transport class" Route Target Extended community as well. |Yes |Yes |Yes |Yes | |
|**MP_BGP Negotiation**  | These AFI, SAFI pair of values MUST be negotiated in Multiprotocol Extensions capability described in [RFC4760] to be able to send and receive BGP CT routes. . |Yes |Yes |Yes |Yes | |
|**RFC8277 NLRI Label**  | This 3-bit field SHOULD be set to zero on transmission and MUST be ignored on reception. |Yes |Yes |Yes |Yes | |
| | When single label is advertised, this 1-bit field MUST be set to  one on transmission and MUST be ignored on reception.  |Yes |Yes |Yes |Yes | |
|**TRDB Nexthop Resolution**  | When single label is advertised, this 1-bit field MUST be set to  one on transmission and MUST be ignored on reception.  |Yes |Yes |Yes |Yes | |
|  | If  the resolution process does not find a Tunnel Ingress Route in any of the Transport Route Databases, the service route MUST be considered unusable for forwarding purpose and be withdrawn.   |Yes |Yes |Yes |Yes | |
|**Best Effort Resolution Scheme**  | When a BN or SN receives a BGP CT route with Best Effort Transport class route target as the mapping community… If no best effort tunnel was found to resolve the BGP nexthop, the BGP CT route MUST be considered unusable, and not be propagated further.    |Yes |Yes |Yes |Yes | |
|**SRv6**  | The BGP Classful Transport route update for SRv6 MUST include an attribute containing SRv6 SID information.  |Yes |Yes |Yes |Yes | SRv6 is not part of minimal requirement|
{.dense}


### RFC 2119 “SHOULD” Clauses 

| Feature  | Draft Text  |	 Implemented  | | Compliance || Comments |
|---|---|---|---|---|---|---|---|----|
| | |	**Juniper** | **FreeRTR**  | **Juniper**| **FreeRTR** | |
|TransportTarget | They MUST be set to zero on transmission, SHOULD be ignored on reception and  left unaltered.|Yes |Yes |Yes |Yes | |{.dense}


### RFC 2119 “MAY” Clauses 

| Feature  | Draft Text  |	 Implemented  | | Compliance || Comments |
|---|---|---|---|---|---|---|---|----|
| | |	**Juniper** | **FreeRTR**  | **Juniper**| **FreeRTR** |
|TransportTarget | They MUST be set to zero on transmission, SHOULD be ignored on reception and  left unaltered.|Yes |Yes |Yes |Yes |{.dense}