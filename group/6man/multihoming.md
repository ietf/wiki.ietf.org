---
title: IPv6 multi-homing
description: A comparison table of IPv6 multi-homing solutions
published: true
date: 2023-11-11T10:55:47.169Z
tags: 
editor: markdown
dateCreated: 2023-11-11T10:55:42.316Z
---

# IPv6 multihoming
- Provider Independent and BGP
- Multi Prefix MultiHoming (MPMH)
- RFC2260
- NPTv6
- LISP
- NAT66
- NAPT66
- Shim6

## Multi-homing requirements
  *  redundancy
  *  load sharing
  *  traffic engineering
  *  policy constraints
  *  simplicity of approach
  *  transport-layer survivability
  *  DNS compatibility
  *  packet filtering capability
  *  scaleability
  *  legacy compatibility
  

### Additionally
   *  interaction with routing systems,
   *  aspects of a split between endpoint-identifier and forwarding
         locator,
  *  changes to packets on the wire, and
  *  the interaction between names, endpoints, and the DNS.





## References
RFC2260: Scalable Support for Multi-homed Multi-provider Connectivity

RFC3178: IPv6 Multihoming Support at Site Exit Routers 

RFC3582: Goals for IPv6 Site-Multihoming Architectures
RFC4177: Architectural Approaches to Multi-homing for IPv6

RFC4218 Threats Relating to IPv6 Multihoming Solutions
RFC4219: Things Multihoming in IPv6 (MULTI6) Developers Should Think About

RFC5533: Shim6: Level 3 Multihoming Shim Protocol for IPv6
RFC5534: Failure Detection and Locator Pair Exploration Protocol for IPv6 Multihoming

RFC6629: Considerations on the Application of the Level 3 Multihoming Shim Protocol for IPv6 (Shim6)

RFC7157: IPv6 Multihoming without Network Address Translation

RFC8043: Source-Address-Dependent Routing and Source Address Selection for IPv6 Hosts: Overview of the Problem Space

RFC8475: Using Conditional Router Advertisements for Enterprise Multihoming

RFC8678: Enterprise Multihoming Using Provider-Assigned IPv6 Addresses without Network Prefix Translation: Requirements and Solutions

RFC6296 NPTv6

draft-fbnvv-v6ops-site-multihoming-01
IPv6 Site connection to many Carriers


RFC4908 Multi-homing for small scale fixed network Using Mobile IP and NEMO