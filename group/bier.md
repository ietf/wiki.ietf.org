---
title: BIER WG - Bit Indexed Explicit Replication
description: 
published: true
date: 2025-03-06T07:39:18.547Z
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

The BIER (Bit Index Explicit Replication) Working Group has defined an architecture [RFC 8279] for a dedicated multi-point forwarding plane that can use a variety of encapsulations. Current encapsulation specifications are [RFC 8296] that can be used on MPLS or Ethernet transport, which has received an Ethertype assignment [0xAB37] from the IEEE. In addition, the WG has adopted draft-ietf-bier-bierin6 to progress as a proposed standard solution for native IPv6 encapsulation in coordination with the 6MAN and OPSAWG working groups. The BIER-WG is chartered to produce Standards Track, Informational, Best Current Practices, and Experimental RFCs, including the status update for RFCs 8279 and 8296. Some Informational drafts may be published, others may progress through WGLC but not be published.

The focus of the BIER-WG is on deployment: transition, partial deployments, applicability and management.

First and primarily, the BIER-WG will complete its work on:

1) Transition Mechanisms and Partial Deployments: The WG will define mechanisms to integrate BIER into existing multicast networks, enabling partial or end-to-end adoption alongside protocols like PIM and various MVPN solutions, addressing scenarios with non-BIER-capable routers, mixed BitStringLengths, and varying encapsulations. This includes connecting legacy multicast non-BIER domains over a BIER core, the mixing of BIER-capable routers with non-BIER routers within the same domain, and introducing BIER-only replication points as part of a legacy multicast network. This work is to include all connection and transition mechanisms to be specified. (Intended status: Experimental, Informational or Proposed Standard).

2) Applicability Statements: Building on prior work (e.g., MVPN [RFC 8556], EVPN/BUM [RFC 9624]), the WG will continue developing applicability statements to articulate BIER’s use in specific scenarios. (Intended status: Informational).

3) Use Case Documentation: The WG will produce a comprehensive use-case document ([draft-ietf-bier-use-cases]) highlighting the benefits of BIER across different applications. (Intended status: Informational).

4) Operations, Administration, and Maintenance (OAM): The WG will specify mechanisms for OAM within BIER domains, emphasizing extensions to existing protocols and documenting maintenance simplifications ([draft-ietf-bier-oam-requirements]). (Intended status: Informational (for requirements) and Proposed Standard (for extensions to existing protocols).

5) Manageability: Define manageability considerations for BIER, such as the development of YANG modules for BIER, as captured in [draft-ietf-bier-bier-yang], will be prioritized to standardize management practices. (Intended status: Proposed Standard).

6) Link-State Routing and BGP Extensions: The WG will specify extensions for OSPFv3 ([draft-ietf-bier-ospfv3-extensions]) and explore additional IGP extensions for constrained topologies. Cooperation with LSR, IDR, and BESS will ensure alignment with related BGP and IGP efforts. (Intended status: Proposed Standard).

7) Forwarding Plane Mechanisms for BIER Traffic Engineering: The WG will define forwarding plane structures (e.g., BIFT) for engineered multicast trees, excluding PCE work. (Intended status: Proposed Standard).

8) Extending BIER scalability: The WG will address scalability requirements and solutions for BIER replication, using ( [draft-zzhang-bier-unmasked-bier]) as a reference draft starting point. (Intended status: Experimental).

Additionally, the WG will coordinate with related working groups, including MPLS, LSR, BABEL, BESS, IDR, PIM, MBONED, PCE, and TEAS, to ensure alignment and interoperability in areas such as OAM, routing extensions, multicast membership management, and architecture for BIER-TE forwarding. These collaborations will support the advancement of BIER as a scalable and efficient solution for multicast forwarding.

This charter reflects the commitment of the BIER-WG to provide practical, interoperable, and standardized mechanisms for BIER in modern networks.

## Current Published RFC

[RFC8279](https://datatracker.ietf.org/doc/rfc8279/) -- BIER Architecture
[RFC8296](https://datatracker.ietf.org/doc/rfc8296/) -- BIER MPLS and non-MPLS encapsulation
[BIER Problem Statement](https://datatracker.ietf.org/doc/draft-ietf-bier-problem-statement/) -- BIER Problem Statement for reference
[RFC8401](https://datatracker.ietf.org/doc/rfc8401/) -- BIER ISIS extensions
[RFC8444](https://datatracker.ietf.org/doc/rfc8444/) -- BIER OSPF extensions
[RFC8556](https://datatracker.ietf.org/doc/rfc8556/) -- BIER MVPN
[RFC9262](https://datatracker.ietf.org/doc/rfc9262/) -- BIER TE Architecture
[RFC9272](https://datatracker.ietf.org/doc/rfc9272/) -- BIER BAR IPA
[RFC9624](https://datatracker.ietf.org/doc/rfc9624/) -- BIER EVPN

## BIER Interop at IETF118 Hackathon

We're considering an interop event as part of the IETF118 hackathon. Arrcus, Cisco, Juniper, Nokia, and ZTE have shown interest (this is not the final list - please add/remove to truly reflect your organization's intent).

It is expected to have mixed virtual and physical BFRs connected by a switch. The exact environment is to be figured out.

The following functionalities are expected to be tested:
*	MPLS encapsulation, multiple sub-domains, BitStringLen 256
* ISIS signaling, BFIR/BFER/BFR
* MVPN overlay
	* Upstream-assigned VPN labels
	* DCB VPN labels (https://datatracker.ietf.org/doc/draft-ietf-bess-mvpn-evpn-aggregation-label/)

This page will be updated with more details as we figure things out.

## EANTC Interop

## Tracking WG documents that require WGLC

| draft                       | WG<br>status                            | WGLC in<br> related<br> WGs | All Normative<br> References<br> sent to<br> IESG | shepherd<br> assigned | shepherd<br>  review<br> done | DIR early<br> review done,<br> if needed | DIR LC<br>  review<br> done | AD early<br> review<br> done | sent to<br>  IESG | notes |
|-----------------------------|-----------------------------------------|-----------------------------|---------------------------------------------------|-----------------------|-------------------------------|------------------------------------------|-----------------------------|------------------------------|-------------------|-------|
| draft-ietf-bier-frr         | Submitted to IESG for Publication       | Yes | Yes | Yes | Yes | Yes | Yes | Yes | Yes |       |
| draft-ietf-bier-tether      | Revised I-D Needed - Issue raised by AD | N/A | Not yet | Yes | Yes | N/A | Yes | Yes | Not yet |       |
|draft-ietf-bier-pmmm-oam     | Revised I-D Needed - Issue raised by AD | IPPM WG? | Yes  | Yes | better to refresh | Not yet | Not yet | Yes | Not yet |       |
|draft-ietf-bier-pim-signaling| Revised I-D Needed - Issue raised by AD | PIM WG? | Yes | Yes | better to refresh | Not yet | Not yet | Yes  | Not yet |       |
|draft-ietf-bier-use-cases    | WG Consensus: Waiting for Write-Up      | N/A | Yes | Yes  | Yes  | Not yet | Not yet | Not yet | Not yet |       |
|draft-ietf-bier-ospfv3-extensions|Revised I-D Needed - Issue raised by AD| LSR WG? | Yes | Yes | Yes | N/A | Yes  | Yes  | Not yet |       |
|draft-ietf-bier-lsr-non-mpls-extensions| WG Consensus: Waiting for Write-Up|requested review from LSR WG| Yes | Yes | Yes | Not yet | Not yet | Not yet | Not yet |       |
|draft-ietf-bier-path-mtu-discovery| WG Consensus: Waiting for Write-Up | N/A  | No | Yes | Not yet | Not yet | Not yet | Not yet | Not yet |       |
|draft-ietf-bier-oam-requirements| WG Consensus: Waiting for Write-Up   | N/A  | Yes | Yes | Not yet | N/A | Yes | Not yet | Not yet |       |
|draft-ietf-bier-bierin6      | WG Consensus: Waiting for Write-Up      | 6man WG? | No | Yes | Yes | Not yet | Not yet | Not yet | Not yet |       |
|draft-ietf-bier-prefix-redistribute| WG Consensus: Waiting for Write-Up| LSR WG? | No | Yes | Not yet | Not yet | Not yet | Not yet | Not yet |       |
|draft-ietf-bier-bgp-ls-bier-ext|In WG Last Call<br>Revised I-D Needed - Issue raised by WGLC| LSR WG done, IDR not yet?| No | Yes | Yes | Not yet | Not yet | Not yet | Not yet |       |
| draft-ietf-bier-bfd         | In WG Last Call                         | BFD WGLC done | No | Yes | Not yet | Not yet | Not yet | Not yet | Not yet |       |
| draft-ietf-bier-ping        | In WG Last Call                         | N/A | Yes | Yes | Yes | Yes | Not yet | Not yet | Not yet |       |
|draft-ietf-bier-mldp-signaling-over-bier|    WG document               | MPLS WG? PIM WG? | No | Yes | Yes | Not yet | Not yet | Not yet | Not yet |       |
|  |  |  |  |  |  |  |  |  |  |       |
|  |  |  |  |  |  |  |  |  |  |       |
|  |  |  |  |  |  |  |  |  |  |       |
|  |  |  |  |  |  |  |  |  |  |       |


