---
title: Welcome to BIER(Bit Indexed Explicit Replication) working group
description: 
published: true
date: 2022-11-05T16:35:42.289Z
tags: 
editor: markdown
dateCreated: 2022-11-05T16:35:42.289Z
---

# Welcome to BIER(Bit Indexed Explicit Replication) working group

## Description of BIER working group

In conventional IP multicast forwarding, the packets of a given multicast "flow" are forwarded along a tree that has been constructed for the specific purpose of carrying that flow. This requires transit nodes to maintain state on a per-flow basis, and requires the transit nodes to participate in multicast-specific tree building protocols. The flow to which a packet belongs is determined by its IP source and destination address fields.

BIER (Bit Index Explicit Replication) is an alternative method of multicast forwarding. It does not require any multicast-specific trees, and hence does not require any multicast-specific tree building protocols. Within a given "BIER domain", an ingress node encapsulates a multicast data packet in a "BIER header". The BIER header identifies the packet's egress nodes in that domain. Each possible egress node is represented by a a single bit within a bitstring; to send a packet to a particular set of egress nodes, the ingress node sets the bits for each of those egress nodes, and clears the other bits in the bistring. Each packet can then be forwarded along the unicast shortest path tree from the ingress node to the egress nodes. Thus there are no per-flow forwarding entries.

## Charters of BIER working group

 -   **BIER Architecture**
 -   **BIER encapsulation**
     -   **BIER MPLS-based encapsulation**
     -   **BIER non-MPLS encapsulation** 
 -   **Transition Mechanisms**
 -   **Applicability Statements**
 -   **BIER Usecases**
 -   **Manageability and OAM**
 -   **Management models**
 -   **IGP extensions**
 -   **Deployment Evaluation:** Once there is deployment experience, the WG will produce an Informational RFC describing the benefits, problems, and trade-offs for using BIER instead of traditional multicast forwarding mechanisms. Ideally, this should also contain an analysis of the impact and benefit of the new BIER data-plane to the overall Internet architecture. This document is intended to be used to evaluate whether to recharter BIER to produce Standards Track RFCs. 

## Current Proposals

[BIER Architecture](http://tools.ietf.org/wg/bier/draft-ietf-bier-architecture/) -- BIER Architecture
[BIER MPLS-based encapsulation](http://tools.ietf.org/wg/bier/draft-ietf-bier-mpls-encapsulation/) -- BIER MPLS-based encapsulation
[BIER Usecases](http://tools.ietf.org/wg/bier/draft-ietf-bier-use-cases/) -- BIER Usecase
[BIER ISIS extensions](http://tools.ietf.org/wg/bier/draft-ietf-bier-isis-extensions/) -- BIER ISIS extensions
[BIER OSPF extensions](http://tools.ietf.org/wg/bier/draft-ietf-bier-ospf-bier-extensions/) -- BIER OSPF extensions
[BIER OAM requirements](http://tools.ietf.org/wg/bier/draft-ietf-bier-oam-requirements/) -- BIER OAM requirements
[BIER MVPN](https://tools.ietf.org/wg/bier/draft-ietf-bier-mvpn/) -- BIER MVPN
[BIER TE Architecture](http://tools.ietf.org/id/draft-eckert-bier-te-arch-03.txt/) -- BIER TE Architecture
[BIER non-MPLS encapsulation](http://tools.ietf.org/id/draft-wang-bier-ethernet-01.txt/) -- BIER non-MPLS encapsulation
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
