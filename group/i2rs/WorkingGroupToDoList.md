---
title: Working Group To Do List
description: 
published: true
date: 2023-01-22T02:43:21.929Z
tags: 
editor: markdown
dateCreated: 2023-01-22T02:43:17.803Z
---

# I2RS Working Group TODO List 
## Documents in WG Last Call 
- Problem statement, [draft-ietf-i2rs-problem-statement](http://tools.ietf.org/html/draft-ietf-i2rs-problem-statement)
- Architecture, [draft-ietf-i2rs-architecture](http://tools.ietf.org/html/draft-ietf-i2rs-architecture)
## Documents that need WG Last Call
- RIB Info Model, [draft-ietf-i2rs-rib-info-model](http://tools.ietf.org/html/draft-ietf-i2rs-rib-info-model) (#uc1) (2014-07-11 0 WG comments suggest more work is needed.)
## Use Cases
### Charter Text on Use Cases
1. Interactions with the Routing Information Base (RIB). Allowing read and write access to the RIB, but no direct access to the Forwarding Information Base (FIB).
2. Control and analysis of the operation of the Border Gateway Protocol (BGP) including the setting and activation of policies related to the protocol.
3. Control, optimization, and choice of traffic exit points from networks based on more information than provided by the dynamic control plane.
4. Distributed reaction to network-based attacks through rapid modification of the control plane behavior to reroute traffic for one destination while leaving standard mechanisms (filters, metrics, and policy) in place for other routes.
5. Service layer routing to improve on existing hub-and-spoke traffic.
6. The ability to extract information about topology from the network.
7. Injection and creation of topology will not be considered as an initial work item.
### Adopt in-charter Use Case Documents
- Summary of I2RS Use Case Requirements, [draft-hares-i2rs-usecase-reqs-summary](http://tools.ietf.org/html/draft-hares-i2rs-usecase-reqs-summary)
- Use Cases for an Interface to BGP Protocol (#uc2), [draft-keyupate-i2rs-bgp-usecases](http://tools.ietf.org/html/draft-keyupate-i2rs-bgp-usecases)
- Interface to the Routing System (I2RS) for Service Chaining: Use Cases and Requirements (#uc3), [draft-bitar-i2rs-service-chaining](http://tools.ietf.org/html/draft-bitar-i2rs-service-chaining)
- A YANG Data Model for Network Topologies (#uc6), [draft-clemm-i2rs-yang-network-topo](http://tools.ietf.org/html/draft-clemm-i2rs-yang-network-topo)
- Topology API Use Cases (#uc6), [draft-amante-i2rs-topology-use-cases](http://tools.ietf.org/html/draft-amante-i2rs-topology-use-cases)
- I2RS Traffic Steering Use Case (#uc3), [draft-chen-i2rs-ts-use-case-01](http://tools.ietf.org/html/draft-chen-i2rs-ts-use-case-01)
### Unclear Status Use Case Documents
- Interface to the Routing System (I2RS) Traceability: Framework and Information Model, [draft-clarke-i2rs-traceability](http://tools.ietf.org/html/draft-clarke-i2rs-traceability) (part of architecture requirements?)
- I2RS Security Architecture, [draft-hares-i2rs-security](http://tools.ietf.org/html/draft-hares-i2rs-security) (part of architecture requirements?)
- Protocol Independent Use Cases for an Interface to the Routing System (#uc4), [draft-white-i2rs-use-case](http://tools.ietf.org/html/draft-white-i2rs-use-case) (Some in-charter, some out-of-charter?)
- An Information Model for I2RS Reading Information, [draft-hares-i2rs-im-read-info-policy](http://tools.ietf.org/html/draft-hares-i2rs-im-read-info-policy) (architectural requirement?)
- I2RS overlay use case, [draft-hu-i2rs-overlay-use-case](http://tools.ietf.org/html/draft-hu-i2rs-overlay-use-case) (counts as egress selection?)
### Not In-Charter Use Case Documents
- Use Cases for an Interface to LDP Protocol, [draft-chen-i2rs-mpls-ldp-usecases](http://tools.ietf.org/html/draft-chen-i2rs-mpls-ldp-usecases)
- Use Cases for Virtual Connections on Demand (VCoD) and Virtual Network on Demand (VNoD) using Interface to Routing System, [draft-hares-i2rs-use-case-vn-vc](http://tools.ietf.org/html/draft-hares-i2rs-use-case-vn-vc)
- Use Cases for an Interface to MPLS TE, [draft-huang-i2rs-mpls-te-usecases](http://tools.ietf.org/html/draft-huang-i2rs-mpls-te-usecases)
- I2RS Use Cases for Control of Forwarding Path by Central Control Network Element (CCNE), [draft-ji-i2rs-usecases-ccne-service](http://tools.ietf.org/html/draft-ji-i2rs-usecases-ccne-service) (out of scope #7)
- An information model atchitecture of network device, [draft-jxf-i2rs-im-architecture](http://tools.ietf.org/html/draft-jxf-i2rs-im-architecture) (it is unclear what this draft is attempting to accomplish)
- Information model for Policy Based Routing, [draft-kini-i2rs-pbr-info-model](http://tools.ietf.org/html/draft-kini-i2rs-pbr-info-model)
- Large Flow Use Cases for I2RS PBR and QoS, [draft-krishnan-i2rs-large-flow-use-case](http://tools.ietf.org/html/draft-krishnan-i2rs-large-flow-use-case) [DISCUSS]
- Bulk Network Data Collection System, [draft-swhyte-i2rs-data-collection-system](http://tools.ietf.org/html/draft-swhyte-i2rs-data-collection-system)
- CDNI Request Routing with I2RS, [draft-shin-i2rs-usecases-cdni-request-routing](http://tools.ietf.org/html/draft-shin-i2rs-usecases-cdni-request-routing)
- Use Cases for an Interface to IGP Protocol, [draft-wu-i2rs-igp-usecases](http://tools.ietf.org/html/draft-wu-i2rs-igp-usecases)
- Use Cases of I2RS in Mobile Backhaul Network, [draft-zhang-i2rs-mbh-usecases](http://tools.ietf.org/html/draft-zhang-i2rs-mbh-usecases) (replaced [draft-zhang-i2rs-mbb-usecases](http://tools.ietf.org/html/draft-zhang-i2rs-mbb-usecases))
## Data Model, Protocol Model
- ForCES For I2RS, [draft-hadi-i2rs-forces-gap-analysis](http://tools.ietf.org/html/draft-hadi-i2rs-forces-gap-analysis)
- I2RS Protocol Requirements, [draft-rfernando-i2rs-protocol-requirements](http://tools.ietf.org/html/draft-rfernando-i2rs-protocol-requirements)
- Interactions of I2RS with NETCONF and YANG, [draft-tp-i2rs-yang](http://tools.ietf.org/html/draft-tp-i2rs-yang)
## Adopt In-charter Information Models
- An Information model for service topology (#uc6), [draft-hares-i2rs-info-model-service-topo](http://tools.ietf.org/html/draft-hares-i2rs-info-model-service-topo)
- An Information Model for Network Topologies (#uc6), [draft-medved-i2rs-topology-im](http://tools.ietf.org/html/draft-medved-i2rs-topology-im)
- An I2RS BGP Information Model (#uc2), [draft-hares-i2rs-bgp-im](http://tools.ietf.org/html/draft-hares-i2rs-bgp-im)
- An Information Model for I2RS Reading Information Policy (#uc2), [draft-hares-i2rs-im-read-info-policy](http://tools.ietf.org/html/draft-hares-i2rs-im-read-info-policy)
- An Information Model for Basic Network Policy (#uc2), [draft-hares-i2rs-info-model-policy](http://tools.ietf.org/html/draft-hares-i2rs-info-model-policy)
## Expired Drafts Not Classified
- Using the Publish-Subscribe Model in the Interface to the Routing System, [draft-camwinget-i2rs-pubsub-sec-00](http://tools.ietf.org/html/draft-camwinget-i2rs-pubsub-sec-00)
- Architecture Discussion of I2RS, [draft-liu-i2rs-architecture-02](http://tools.ietf.org/html/draft-liu-i2rs-architecture-02)
- I2RS use case for IPv6 transition, [draft-liu-i2rs-ipv6-use-case-00](http://tools.ietf.org/html/draft-liu-i2rs-ipv6-use-case-00)
- Programmatic Interfaces to On-demand Network Services, [draft-masum-chari-i2rs-netservices-00](http://tools.ietf.org/html/draft-masum-chari-i2rs-netservices-00)
- Topology API Requirements, [draft-medved-i2rs-topology-requirements-00](http://tools.ietf.org/html/draft-medved-i2rs-topology-requirements-00)
- YANG modifications for I2RS, [draft-rfernando-i2rs-yang-mods-00](http://tools.ietf.org/html/draft-rfernando-i2rs-yang-mods-00)
- Infrastructure to Application Information Exposure, [draft-song-alto-i2rs-01](http://tools.ietf.org/html/draft-song-alto-i2rs-01)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-07-11. It was migrated from the old Trac wiki on 2023-01-21.*