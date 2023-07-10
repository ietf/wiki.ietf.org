---
title: Implementation report for CT
description: Implementation report
published: true
date: 2023-07-10T05:23:26.220Z
tags: 
editor: markdown
dateCreated: 2023-06-05T16:30:59.788Z
---

#  BGP CT Implementation Report


## Introduction
This document is the Implementation report for BGP CT (draft-ietf-idr-bgp-ct-11). It records the compliance of JUNOS and RARE/FreeRtr implementations of BGP CT.  
It takes into account the perspective of RFC 2119 clauses in the draft, as well as the IANA code-points used in the draft. 
Additionally, the link to interop test results from tests conducted at EANTC 2023 is included for reference.  

## RFC 2119 perspective
  

### RFC 2119 “MUST” Clauses 

| Feature  | Draft Text  |	 Implemented **Juniper** |  Implemented **FreeRTR** | Compliance **Juniper**  | Compliance  **FreeRTR** | Comments |
|---|---|---|---|---|---|---|---|----|---|
|[**Transport-Target**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-transport-class-route-targe)|Type: This 1-octet field MUST be set to 0xa.|Yes |Yes |Yes |Yes | |
|[**Transport-Target**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-transport-class-route-targe)| SubType: This 1-octet field MUST be set to 0x2 to indicate 'Route Target'.|Yes |Yes |Yes |Yes | |
|[**Transport-Target**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-transport-class-route-targe)| Reserved: A 2 octets reserved bits. That MUST be set to zero on transmission. This field SHOULD be ignored on reception and  left unaltered.|Yes |Yes |Yes |Yes | |
|[**RTC**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-transport-class-route-targe) | A BGP speaker that implements RT Constraint Route Target Constraints [RFC4684] MUST apply the RT Constraint procedures to the "Transport class" Route Target Extended community as well. |Yes |Yes |Yes |Yes | |
|[**MP_BGP Negotiation**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-bgp-classful-transport-fami) | The Classful Transport (CT) family will use the existing Address Family Identifier (AFI) of IPv4 or IPv6 and a new SAFI 76 "Classful Transport" that will applies to both IPv4 and IPv6 AFIs. These AFI/SAFI pair of values MUST be negotiated as per the Multiprotocol Extensions capability described in section 8 of [RFC4760] to be able to send and receive BGP CT routes. |Yes |Yes |Yes |Yes | |
|[**RFC8277 NLRI Label**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-bgp-classful-transport-fami) | This 3-bit field SHOULD be set to zero on transmission and MUST be ignored on reception. |Yes |Yes |Yes |Yes | |
| | When single label is advertised, this 1-bit field MUST be set to  one on transmission and MUST be ignored on reception.  |Yes |Yes |Yes |Yes | |
|[**TRDB Nexthop Resolution**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-processing-classful-transpo)  | If the resolution process does not find  a matching route in any of the associated Transport Route Databases, the BGP CT route MUST be considered unusable for forwarding purpose and be withdrawn. |Yes |Yes |Yes |Yes | |
|[**TRDB Route Addition**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-processing-classful-transpo)  | The received BGP CT route MUST be added to the TRDB corresponding to the Transport Class "C1". So that service routes can resolve over this BGP CT ingress route. RD is stripped by the ingress node from the BGP CT NLRI prefix when a BGP CT route is added to a TRDB. |Yes |Yes |Yes |Yes | |
|[**Inter-AS Link**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-border-nodes-receiving-clas)  | If the inter-AS links need to honor Transport Class, then the BN MUST follow procedures of an Ingress node described above and perform next hop resolution process. The route to directly connected PNH SHOULD be installed in the TRDB belonging to the associated Transport Class. |Yes |Yes |Yes |Yes | |
| [**TRDB Tunnel Nexthop Resolution**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-ingress-nodes-receiving-ser)| If  the resolution process does not find a Tunnel Ingress Route in any of the Transport Route Databases, the service route MUST be considered unusable for forwarding purpose and be withdrawn.   |Yes |Yes |Yes |Yes | |
|[**Best Effort Resolution Scheme**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-best-effort-transport-class) | When a BN or SN receives a BGP CT route with Best Effort Transport class route target as the mapping community… If no best effort tunnel was found to resolve the BGP nexthop, the BGP CT route MUST be considered unusable, and not be propagated further.    |Yes |Yes |Yes |Yes | |
|[**SRv6**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-srv6-support)  | The BGP Classful Transport route update for SRv6 MUST include an attribute containing SRv6 SID information.  |No |No |Yes |Yes | *SRv6 is not part of minimal requirement*|
{.dense}

### RFC 2119 “MUST NOT” Clauses 

| Feature  | Draft Text  |	 Implemented **Juniper** |  Implemented **FreeRTR** | Compliance **Juniper**  | Compliance  **FreeRTR** | Comments |
|---|---|---|---|---|---|---|---|----|---|
|[**SRv6**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-srv6-support)  |If the Prefix-SID attribute is used, it MUST NOT include SRv6 SID structure for Transposition described in  |No |No |Yes |Yes | *SRv6 is not part of minimal requirement*|
|  [**MPLSandSRv6**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#section-20.2.2)|In order to interoperate with MPLS only device R3, R1 MUST NOT use SRv6 Transposition scheme described in RFC 9252  |No |No |Yes |Yes | *SRv6 is not part of minimal requirement*|
{.dense}
 
### RFC 2119 “SHOULD” Clauses 

| Feature  | Draft Text  |	 Implemented **Juniper** |  Implemented **FreeRTR** | Compliance **Juniper**  | Compliance  **FreeRTR** | Comments |
|---|---|---|---|---|---|---|---|----|---|
|[**Transport-Target**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-transport-class-route-targe)| Reserved: A 2 octets reserved bits. That MUST be set to zero on transmission. This field SHOULD be ignored on reception and  left unaltered.|Yes |Yes |Yes |Yes | |
|[**BGP CT Transport Routes Resolution scheme**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-resolution-scheme)  | A transport route received in BGP Classful Transport family SHOULD use a Resolution Scheme that contains the primary Transport Class without any fallback to best effort tunnels. |Yes |Yes |Yes |Yes | |
|[**RFC 8277 NLRI Label**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-bgp-classful-transport-fami)  | This 3-bit field SHOULD be set to zero on transmission and MUST be ignored on reception.  |Yes |Yes |Yes |Yes | |
|[**Usage of Unique RD**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-originating-classful-transp)  | Unique RD SHOULD be used by the originator of a Classful Transport route to disambiguate the multiple BGP advertisements for a transport end point. |Yes |Yes |Yes |Yes | |
|[**Label allocation mode**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-readvertising-classful-tran)  | The label SHOULD be allocated with "per-prefix" label allocation semantics.The IP prefix in the TRDB context (Transport-Class, IP-prefix) is used as the key to do per-prefix label allocation.  |Yes |Yes |Yes |Yes | |
|[**Transport-Class awareness of Inter-AS link.**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-border-nodes-receiving-clas)  | If the inter-AS links need to honor Transport Class, then the BN MUST follow procedures of an Ingress node described above and perform next hop resolution process. The route to directly connected PNH SHOULD be installed in the TRDB belonging to the associated Transport Class. |Yes |Yes |Yes |Yes | |
|[**Addpath for BGP CT routes**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-avoiding-path-hiding-throug)  | Hence, ADDPATH SHOULD be used for Classful Transport family, to avoid path-hiding through RRs. |Yes |Yes |Yes |Yes | |
|[**Loop avoidance between redundant ABRs**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-avoiding-loops-between-rout)  | Implementations SHOULD provide a way to alter the tie-breaking rule specified in Section 9 of BGP RR [RFC4456] so as to tie-break on CLUSTER_LIST step before ORIGINATOR_ID step, when performing path selection for BGP CT routes. |Yes |No |Yes |Yes | |
|  | The following rule SHOULD be inserted between Steps e) and f): a BGP Speaker SHOULD prefer a route with the shorter CLUSTER_LIST length. The CLUSTER_LIST length is zero if a route does not carry the CLUSTER_LIST attribute.  |Yes |No |Yes |Yes | |
|[**Renumbering support for Resolution Schemes**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-coordination-between-domain)  | The Resolution Schemes SHOULD allow association with multiple Mapping Communities.  This helps with renumbering, network mergers or transitions.  |Yes |Yes |Yes |Yes | |
|[**Best Effort TC ID**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-best-effort-transport-class)  | This document reserves the Transport class ID value 0 to represent "Best Effort Transport Class ID". However implementations SHOULD provide configuration to use a different value for this purpose. |Yes |Yes |Yes |Yes | |
|[**On Demand Nexthop using RTC for BGP CT**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-constrained-distribution-of)  | A BGP ingress SN receiving a BGP service route with next hop of eSN SHOULD generate a RTC/Extended-RTC route for Route Target prefix.. |No |Yes |Yes |Yes | *Not part of minimal requirement.*|
| | Such a BN in the core of the network SHOULD import BGP CT routes with Transport-Target:0:<TC> and generate a RTC route for.. |No |Yes |Yes |Yes | *Not part of minimal requirement.*|
{.dense}
  
### RFC 2119 “SHOULD NOT” Clauses 
| Feature  | Draft Text  |	 Implemented **Juniper** |  Implemented **FreeRTR** | Compliance **Juniper**  | Compliance  **FreeRTR** | Comments |
|---|---|---|---|---|---|---|---|----|---|
|[**Originating BGP CT route**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-originating-classful-transp)  | This BGP CT route is advertised to EBGP peers and IBGP peers in neighboring domains. This route SHOULD NOT be advertised to the IBGP core that contains the tunnel.  |Yes |Yes |Yes |Yes | |
|[**Loop avoidance between redundant ABRs**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-11.html#name-avoiding-loops-between-rout)  | Tunnels belonging to non best effort Transport Classes SHOULD NOT be provisioned between ABRs.|Yes |Yes |Yes |Yes |*Operator provisioning*|
 {.dense}

### RFC 2119 “MAY” Clauses 
| Feature  | Draft Text  |	 Implemented **Juniper** |  Implemented **FreeRTR** | Compliance **Juniper**  | Compliance  **FreeRTR** | Comments |
|---|---|---|---|---|---|---|---|----|---|
|[**BGP Service route Resolution scheme**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-09.html#section-6)  | A service route received in a BGP service family MAY map to a Resolution Scheme that contains the primary Transport Class identified by the Mapping Community on the route and a fallback to best effort Transport Class. |Yes |Yes |Yes |Yes | |
|[**RFC8277 Multiple Labels Capability**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-09.html#section-7)  | BGP CT routes MAY carry multiple labels in the NLRI, by negotiating the Multiple Labels Capability as described in https://www.rfc-editor.org/rfc/rfc8277#section-2.1 [RFC8277] |No |No |Yes |Yes | |
|[**Auto-RD, Auto-RT**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-09.html#section-10.1)  | Implementations MAY provide automatic generation and assignment of RD, RT values; they MAY also provide a way to manually override the automatic mechanism in order to deal with any conflicts that may arise with existing RD, RT values in different network domains participating in the deployment.  |Yes |Yes |Yes |Yes | |
|[**Customize Resolution scheme**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-09.html#section-10.3)  | In cases where Transport class "C1" tunnels are not available in a domain, the administrator MAY customize the Resolution scheme to map to a different set of transport class available in that domain. |Yes |Yes |Yes |Yes | |
|[**Install BGP CT routes in FIB**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-09.html#section-10.10)  | Implementations MAY provide configuration to selectively install  BGP CT routes to the FIB, to provide reachability for control plane peering towards end points in other domains. |No |Yes |Yes |Yes | |
|[**Flowspec redirect-to-ip with Mapping community**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-09.html#section-11)  | Such Flowspec BGP routes with Redirect to IP nexthop MAY be attached with a Mapping Community (e.g.  Color:0:100), which allows redirecting the flow traffic over a tunnel to the IP nexthop satisfying the desired SLA (e.g.  Transport Class color 100  |Yes |No |Yes |Yes | |
|[**LU EPE with Mapping community**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-09.html#section-12)  | The Peer/32 or Peer/128 EPE route MAY be originated in BGP CT family with appropriate Mapping Community (e.g. transport-target:0:100), thus allowing an EPE path to the peer that satisfies the desired SLA.|Yes |No |Yes |Yes | |
|[**On Demand Nexthop using RTC for BGP CT**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-09.html#section-15.2)  | An egress SN MAY advertise BGP CT route for RD:eSN with two Route Targets: transport-target:0:TC and a RT carrying "eSN:TC". |No |No |Yes |Yes | |
| |The RT carrying eSN:TC MAY be an IP-address specific regular RT (BGP attribute code 16), IPv6-address specific RT (BGP attribute code 25), or a Wide-communities based RT (BGP attribute code 34) as described in Route Target Constrain Extension [RTC-Ext].  This document recommends using Wide-communities based RT for the same.|No |No |Yes |Yes | |
| | An ingress SN MAY import BGP CT routes with Route Target carrying eSN:TC.  The ingress SN MAY learn the eSN values either by configuration, or it MAY discover them from the BGP nexthop field in the BGP VPN service routes received from eSN. |No |No |Yes |Yes | |
| | the RTC route advertisements for OriginASN:eSN/[80/176] MAY be confined to the BNs in home region of ingress-SN, or the BNs of a super core.|No |No |Yes |Yes | |
{.dense}
  
### RFC 2119 “RECOMMENDED” Clauses 
| Feature  | Draft Text  |	 Implemented **Juniper** |  Implemented **FreeRTR** | Compliance **Juniper**  | Compliance  **FreeRTR** | Comments |
|---|---|---|---|---|---|---|---|----|---|
|[**Unique RD**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-09.html#section-10.9) | Deploying unique RDs is strongly RECOMMENDED because it helps in troubleshooting by uniquely identifying the originator of a route and avoids path-hiding.  |Yes |Yes |Yes |Yes | |
|[**Separate RIBs for SAFI 4 and SAFI 1 routes**](https://www.ietf.org/archive/id/draft-ietf-idr-bgp-ct-09.html#section-22) | To avoid such scenarios, it is RECOMMENDED that implementations support keeping SAFI 4 routes in a separate transport RIB, distinct from service RIB that contain SAFI 1 service routes.  |Yes |No |Yes |Yes | |
{.dense}
  
## IANA sections perspective 
  
| Features  |	 Implemented  | |
|---|---|---|---|---|
|	|	**Juniper** | **FreeRTR**  |
|AFI: 1, SAFI: 76 |Yes|Yes||
|AFI: 2, SAFI: 76 |Yes|Yes||
|Transport Class Route Target (Transitive) Type 0x0a, Subtype 0x2  |Yes|Yes|
|Transport Class Route Target (NonTransitive) Type 0x4a, Subtype 0x2  |No |No|
|MPLS OAM LSP-Ping Subtype 31744   |No |No |
|MPLS OAM LSP-Ping Subtype 31745    |No |No |
|Best Effort Transport Class ID 0     |Yes|Yes|
{.dense}
  

  
## Interoperability test report from EANTC 2023
https://eantc.de/fileadmin/eantc/downloads/events/2023/EANTC-InteropTest2023-TestReport.pdf  (Page 36) 
  
### Software version of participating Implementations 
| Implementation  |	 Software Version  | Platforms |
|---|---|---|
|RARE/FreeRtr  |v23.3.17-cur |BF2556X-1T |
|Junos  |23.2R2  |MX204  |
|Junos-EVO  |22.4R1.11-EVO  |PTX10001-36MR   |
{.dense}

## Authors
This report has been written by:
 - Kaliraj Vairavakkalai (Juniper)
 - Natrajan Venkataraman (Juniper)
 - Csaba Mates (FreeRTR)
 - Reshma Das (Juniper)
