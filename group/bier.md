---
title: BIER WG - Bit Indexed Explicit Replication
description: 
published: true
date: 2023-08-28T19:48:54.100Z
tags: 
editor: markdown
dateCreated: 2022-11-05T16:35:42.289Z
---

# Welcome to BIER(Bit Indexed Explicit Replication) working group

## Description of BIER working group

The BIER (Bit Index Explicit Replication) Working Group has defined an architecture [RFC 8279] for multicast forwarding that uses an encapsulation [RFC 8296] that can be used on MPLS or Ethernet transport.
The BIER-WG is now chartered to produce Standards Track RFCs, including the status update for RFCs 8279 and 8296.

The BIER working group's original charter required the publication of an Informational RFC describing the benefits, problems, and trade-offs for using BIER instead of traditional multicast forwarding mechanisms as well as an analysis of the impact and benefit of the BIER data-plane to the overall Internet architecture. The WG did not produce this RFC, but the goals of that milestone have nevertheless been reached; i.e., the industry has demonstrated interest in deploying BIER and the trade-offs are now well understood. Therefore, BIER is proceeding with work on the Standards Track.

## Charters of BIER working group

The focus of the BIER-WG is on deployment: transition, partial deployments, applicability and management.

First and primarily, the BIER-WG will complete its work on:

1) Transition Mechanisms and Partial Deployments: The WG will describe how BIER can be introduced in existing multicast networks to shift multicast delivery, either end-to-end or in part of a network, from mechanisms such as PIM, ng-MVPN, etc. BIER operation in networks where not all routers are BIER capable or have other BIER support constraints should be addressed. How to handle routers supporting BIER with different BitStringLengths and encapsulations should be addressed. Each new mechanism should include an applicability statement that clearly describes its utility and distinctions from already standardized mechanisms.

2) Applicability Statements: The WG will continue to work on documents describing how BIER can be applied, as has been done for MVPN in RFC8556. A document describing applicability to EVPN should be published.

3) Use Case: The WG will produce one use-case document that clearly articulates the potential benefits of BIER for different use-cases.

4) Manageability and OAM: The WG will describe how OAM will work in a BIER domain and what simplifications BIER offers for managing the multicast traffic. A strong preference will be given to extensions to existing protocols.

5) Management models: The WG will work on YANG models to manage BIER.

6) Link-State Routing and BGP extensions: The BIER-WG has already defined the basic information needed to set up the BIER forwarding tables via advertisements in OSPFv2 and ISIS; the extensions to OSPFv3 will be specified. Additional extensions may be needed - for example, to support constraining the topology on which a particular BIER sub-domain operates. Any necessary extensions to the IGP will be specified by the WG as Standards Track, in cooperation with the LSR WG. The BIER-WG shall also specify the extensions to support BIER for BGP when used as an IGP (see RFC7938) and to provide BIER-specific information in BGP-LS, incooperation with IDR.

The BIER-WG is additionally chartered to start Standards Track work on:
7) BIER in IPv6 : A mechanism to use BIER natively in IPv6 may be standardized if coordinated with the 6MAN WG and with understood applicability.
8) Forwarding Plane Mechanisms for BIER Traffic Engineering: definition of how the new BIER forwarding plane structures (e.g. BIFT) can be used to support engineered multicast trees. No control-plane work will be done in BIER-WG.

The BIER-WG will serve as a forum to discuss how BIER can be applied. The BIER-WG will coordinate and collaborate with other WGs as needed. Specific
expected interactions include:
* mpls on the associated MPLS-based OAM mechanisms,
* lsr on OSPF and ISIS extensions to flood BIER-related information,
* babel on Babel extensions to support BIER,
* bess and idr on BGP extensions to flood BIER-related information and the applicability of existing BGP-based mechanisms for providing multicast group membership information,
* pim and mboned on the applicability of and extensions to PIM, IGMP, and MLD to support BIER operations and transition,
* pce on extensions to program BIER forwarding on the BFIRs,and
* teas on architecture and control-plane mechanisms to use BIER-TE forwarding mechanisms. 

## Current Published RFC

[RFC8279](https://datatracker.ietf.org/doc/rfc8279/) -- BIER Architecture
[RFC8296](https://datatracker.ietf.org/doc/rfc8296/) -- BIER MPLS and non-MPLS encapsulation
[BIER Problem Statement](https://datatracker.ietf.org/doc/draft-ietf-bier-problem-statement/) -- BIER Problem Statement for reference
[RFC8401](https://datatracker.ietf.org/doc/rfc8401/) -- BIER ISIS extensions
[RFC8444](https://datatracker.ietf.org/doc/rfc8444/) -- BIER OSPF extensions
[RFC8556](https://datatracker.ietf.org/doc/rfc8556/) -- BIER MVPN
[RFC9262](https://datatracker.ietf.org/doc/rfc9262/) -- BIER TE Architecture
[RFC9272](https://datatracker.ietf.org/doc/rfc9272/) -- BIER BAR IPA

## Current Proposals

### 1.WG drafts in IESG
1. [BIER OSPFv3 extensions](https://datatracker.ietf.org/doc/draft-ietf-bier-ospfv3-extensions/) -- State: AD Evaluation::AD Followup
1. [BIER PIM](https://datatracker.ietf.org/doc/draft-ietf-bier-pim-signaling/) -- State: Waiting for Referenced Document, Revised I-D Needed - Issue raised by AD. 
The latest AD review: https://mailarchive.ietf.org/arch/msg/bier/P1eMkoEWk8981SNeu5J3FeGpwUw/

### 2.WG drafts in WGLC
1. [BIER BGP-LS extensions](https://datatracker.ietf.org/doc/draft-ietf-bier-bgp-ls-bier-ext/) -- ***Needs WG state change.*** 
Shepherd assigned: Gyan Mishra. Shepherd review done. 
WGLC finished: https://mailarchive.ietf.org/arch/msg/bier/j22QbjpHUpeExQLfu3yTgqVwdrs/
1. [BIER EVPN](https://datatracker.ietf.org/doc/draft-ietf-bier-evpn/) -- ***Needs WG state change***.
Shepherd review done by Mankamana Mishra.
WGLC finished: https://mailarchive.ietf.org/arch/msg/bier/GvOmw82cDD7a7Rn65J4mk1f6XZI/)
1. [BIER non-MPLS extension](https://datatracker.ietf.org/doc/draft-ietf-bier-lsr-non-mpls-extensions/) -- ***Needs shepherd review.***
Shepherd assigned: Huaimo Chen. Shepherd review not done yet. 
WGLC passed: https://mailarchive.ietf.org/arch/msg/bier/o-c-pE1luMBZgjiNzrQWWq41yL4/
1. [BIER PHP](https://datatracker.ietf.org/doc/draft-ietf-bier-php/) -- ***Needs WG state change*** 
Shepherd assigned: Xiao Min.
WGLC finished: https://mailarchive.ietf.org/arch/msg/bier/9nHdVuCGhgl3qTbOCF83OETriFg/

### 3.Documents requested by authors for WG Last Call
1. [BIER IDR extensions](https://datatracker.ietf.org/doc/draft-ietf-bier-idr-extensions/) -- ***Needs second WGLC.***
Shepherd assigned: Ran Chen. Shepherd review done. 
The first WGLC finished. Waiting for a second WGLC due to the new update.
1. [BIER MLDP](https://datatracker.ietf.org/doc/draft-ietf-bier-mldp-signaling-over-bier/) -- ***Needs WG WGLC*** 
Shepherd assigned: Nabeel Cocker.
Waiting for WGLC.
1. [BIER Prefix Redistribute](https://datatracker.ietf.org/doc/draft-ietf-bier-prefix-redistribute/) -- ***Needs WG WGLC*** 
Shepherd assigned: Xiao Min.
Waiting for WGLC.
1. [BIER TETHER](https://datatracker.ietf.org/doc/draft-ietf-bier-tether/) -- ***Needs WG WGLC*** 
Shepherd assigned: Ran Chen. Shepherd review done.
Waiting for WGLC. 

### 4.Documents requested by authors for WG adoption

### 5.Other WG Documents
1. [BIER IPv6 Encapsulation](https://datatracker.ietf.org/doc/draft-ietf-bier-bierin6/) -- 
1. [BIER FRR](https://datatracker.ietf.org/doc/draft-ietf-bier-frr/) -- 
1. [BIER HTTP](https://datatracker.ietf.org/doc/draft-ietf-bier-multicast-http-response/) -- 
Suspended. Authors requested a new thread which is not in BIER WG: https://datatracker.ietf.org/doc/draft-trossen-rtgwg-frrm/
1. [BIER MAAS](https://datatracker.ietf.org/doc/draft-ietf-bier-multicast-as-a-service/) -- 
1. [BIER OAM requirements](http://tools.ietf.org/wg/bier/draft-ietf-bier-oam-requirements/) -- 
1. [BIER Ping](https://datatracker.ietf.org/doc/draft-ietf-bier-ping/) -- ***Attention***
Author Gregory Misky requested to change editor: https://mailarchive.ietf.org/arch/msg/bier/g-_1LhRPwoqi-M6r0VbGzkAAw9M/
1. [BIER PMTU](https://datatracker.ietf.org/doc/draft-ietf-bier-path-mtu-discovery/) -- 
Shepherd assigned: Hooman Bidgoli
1. [BIER Redundant Ingress Router Failover](https://datatracker.ietf.org/doc/draft-ietf-bier-source-protection/) -- 
1. [BIER YANG](http://tools.ietf.org/id/draft-chh-bier-bier-yang-03.txt/) -- BIER YANG
1. [BIER Usecases](http://tools.ietf.org/wg/bier/draft-ietf-bier-use-cases/) -- 
1. [BIER-TE ISIS extensions for BP advertisement](https://datatracker.ietf.org/doc/draft-ietf-bier-te-isis/) -- 
1. [BIER-TE OSPF extensions for BP advertisement](https://datatracker.ietf.org/doc/draft-ietf-bier-te-ospf/) -- 
1. [BIER-TE OSPFv3 extensions for BP advertisement](https://datatracker.ietf.org/doc/draft-ietf-bier-te-ospfv3/) -- 
1. [BIER TE YANG](https://tools.ietf.org/id/draft-zhang-bier-te-yang-01.txt/) -- 

## BIER Interop at IETF118 Hackathon

We're considering an interop event as part of the IETF118 hackathon. Arrcus, Cisco, FreeRtr, Juniper, Nokia, and ZTE have shown interest (this is not the final list - please add/remove to truly reflect your organization's intent).

It is expected to have mixed virtual and physical BFRs connected by a switch. The exact environment is to be figured out.

The following functionalities are expected to be tested:
*	MPLS encapsulation, multiple sub-domains, BitStringLen 256
* ISIS signaling, BFIR/BFER/BFR
* MVPN overlay
	* Upstream-assigned VPN labels
	* DCB VPN labels (https://datatracker.ietf.org/doc/draft-ietf-bess-mvpn-evpn-aggregation-label/)

This page will be updated with more details as we figure things out.



## TO DO List

 - **BIER Deployment Evaluation:** 

Require a deployment experience draft describing the benefits, problems, and trade-offs for using BIER instead of traditional multicast forwarding mechanisms. Ideally, this should also contain an analysis of the impact and benefit of the new BIER data-plane to the overall Internet architecture.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-04-18. It was migrated from the old Trac wiki on 2023-01-12.*
