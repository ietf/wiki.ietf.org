---
title: BIER WG - Bit Indexed Explicit Replication
description: 
published: true
date: 2023-03-02T08:31:56.148Z
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

2) Applicability Statements: The WG will continue to work on documents describing how BIER can be applied, as has been done for MVPN in draft-ietf-bier-mvpn. A document describing applicability to EVPN should be published.

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

[BIER Architecture](https://datatracker.ietf.org/doc/rfc8279/) -- BIER Architecture
[BIER MPLS and non-MPLS encapsulation](https://datatracker.ietf.org/doc/rfc8296/) -- BIER MPLS and non-MPLS encapsulation
[BIER ISIS extensions](https://datatracker.ietf.org/doc/rfc8401/) -- BIER ISIS extensions
[BIER OSPF extensions](https://datatracker.ietf.org/doc/rfc8444/) -- BIER OSPF extensions
[BIER MVPN](https://datatracker.ietf.org/doc/rfc8556/) -- BIER MVPN
[BIER TE Architecture](https://datatracker.ietf.org/doc/rfc9262/) -- BIER TE Architecture
[BIER BAR IPA](https://datatracker.ietf.org/doc/rfc9272/) -- BIER BAR IPA

## Current Proposals

[BIER Usecases](http://tools.ietf.org/wg/bier/draft-ietf-bier-use-cases/) -- BIER Usecase
[BIER OAM requirements](http://tools.ietf.org/wg/bier/draft-ietf-bier-oam-requirements/) -- BIER OAM requirements
[BIER YANG](http://tools.ietf.org/id/draft-chh-bier-bier-yang-03.txt/) -- BIER YANG
[BIER TE YANG](https://tools.ietf.org/id/draft-zhang-bier-te-yang-01.txt/) -- BIER TE YANG 

## Open Issue 1: BIER Ethernet

BIER Ethernet provides a non-MPLS encapsulation for BIER forwarding, which holds all BIER forwarding related information in the BIER header, including subdomain-id/BSL/Set ID information, and just let MPLS as an independent layer protocol to help BIER forwarding.

Currently, there are many concerns about BIER Ethernet, and working group need us focus on some usecases using BIER Ethernet first, hence here BIER Ethernet in Virtualization Data Center Usecase is illustrated to attract people's interest. Of course, more usecases are solicited from everyone who are interested in using BIER Ethernet and would like to do some contributions to BIER Ethernet.

You are welcomed to contribute to this item.

 - **Usecase 1: BIER Ethernet in virtualization Data Center**
    For multicast service in current Data Center, ingress replication using multiple end-to-end IP tunnels is widely used. It is really not an optimal forwarding for multicast packets. Hence, BIER can definitely be introduced in Data Center to provide the optimal multicast forwarding. Furthermore, BIER Ethernet can provide the clean cut design for the underlay ASIC switches. Then the newly designed switches can optimally forward multicast traffic according to the information directly in the BIER header.

 - **Usecase 2: BIER Ethernet in Service Provider**

	For multicast service in Service Provider network, it is really tough procedures to explicitly built multicast distribution trees and maintain per-flow state in intermediate routers. Hence, BIER Ethernet, acting as 2.5 multicast solution, can take advantage of underlay network to fulfil multicast service instead of current multicast solution in Service Provider network.

 - **Usecase 3: Solicit your contribution** 

 - **Usecase 4: Solicit your contribution ......** 

## TO DO List

 - **BIER Deployment Evaluation:** 

Require a deployment experience draft describing the benefits, problems, and trade-offs for using BIER instead of traditional multicast forwarding mechanisms. Ideally, this should also contain an analysis of the impact and benefit of the new BIER data-plane to the overall Internet architecture.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-04-18. It was migrated from the old Trac wiki on 2023-01-12.*
