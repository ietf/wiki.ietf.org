---
title: IX-RS Section 2.3.2
description: 
published: true
date: 2023-03-13T05:21:18.606Z
tags: 
editor: markdown
dateCreated: 2023-03-13T05:21:13.500Z
---

# Section 2.3 - Per-Client Policy Control in Multilateral Interconnection
## Section 2.3.2.1 Multiple Route Server RIBs

Functionality:

   The most portable method to allow for per-client policy control without the occurrence of path hiding, is by using a route server BGP implementation which performs the per-client best path calculation for each set of paths to a prefix, which results after the route server's client policies have been taken into consideration. This can be implemented by using per-client Loc-RIBs, with path filtering implemented between the Adj-RIB-In and the per-client Loc-RIB.

   Implementations MAY optimize this by maintaining paths not subject to filtering policies in a global Loc-RIB, with per-client Loc-RIBs stored as deltas.

| implementation  |  Support (yes or no)    |
|-----------------|-------------------------|
|  Cisco          |  yes                    |
|  BIRD           |  yes                    |
|  Quagga         |  yes                    |

## Section 2.3.2.2.2

Functionality:

   Using the [draft-ietf-idr-add-paths] ... allowing a BGP speaker to forward multiple paths for the same prefix on a single BGP session.

   If the ADD-PATH capability is negotiated bidirectionally between the route server and a route server client, and the route server client propagates multiple paths for the same prefix to the route server, ... then this could potentially cause the propagation of inactive, invalid or suboptimal paths to the route server, thereby causing loss of reachability to other route server clients.

   For this reason, ADD-PATH implementations on a route server SHOULD enforce send-only mode with the route server clients, which would result in negotiating receive-only mode from the client to the route server.

| implementation  |  Support (yes or no)    |
|-----------------|-------------------------|
|  Cisco          |  yes                    |
|  BIRD           |  yes                    |
|  Quagga         |  yes                    |

## Section 2.3.3 Implementation Recommendations

Functionality: A route server SHOULD implement one of the methods described in

   Section 2.3.2 to allow per-client routing policy control without "path hiding.

| implementation  |  Support (yes or no)    |
|-----------------|-------------------------|
|  Cisco          |  yes                    |
|  BIRD           |  yes                    |
|  Quagga         |  yes                    |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-08-24. It was migrated from the old Trac wiki on 2023-03-12.*
