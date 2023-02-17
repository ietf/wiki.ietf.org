---
title: Susan Hares Review of draft-ietf-bess-evpn-ipvpn-internetworking-05.txt (Review 1) 
description: IDR Chair first review of draft-ietf-bess-evpn-ipvpn-internetwork
published: true
date: 2022-11-29T19:43:31.116Z
tags: 
editor: markdown
dateCreated: 2022-11-27T12:36:34.992Z
---

# Susan Hares Review of draft-ietf-bess-evpn-ipvpn-internetworking-05 (Review 1)

## Overview of review -05.txt

Bess chairs reminded me that IDR WG was requested at IETF 110 to review draft-ietf-bess-evpn-ipvpn-interworking-05.txt. Since we did not receive reviews from the IDR WG, the IDR chairs have taken on the task of reviewing this document.

The desire of users to have gateways between EVPNs and IPVPNs is evident due to the deployment of these technologies in the market place. The BESS chairs request is due to the changes made to BGP in addition of a BGP Attribute and changes to [RFC4271’s](https://datatracker.ietf.org/doc/rfc4271/) route selection. In addition, the IDR and BESS chairs have begun to discuss additional BGP error handling for embedded NRLIs beyond [RFC7606](https://datatracker.ietf.org/doc/rfc7606/). 

This email is about the high-level issues in this draft and major editing issues. It does not consider editorial issues in the text.

Deployment information on this draft draft-ietf-bess-evpn-ipvpn-interworking would help in the consideration of solutions to these high-level issues. If this specification has 2 implementations, then these implementation teams may be able to quickly fill in the missing pieces of the document.

## High level technical issues 

**1) Lack of error handling for NLRIs which carry semantics beyond prefixes.**

RFC7606 focused on the error handling for prefixes accompanied by attributes and Communities (basic and extended) specified by RFCs 4271, 4360, 4456, 4760, 5543, 5701, 6368.

The embedded prefixes which combine prefixes with external information (RD, EVI, ET, MPLS label, Domain, SID, and other tags) create a new class of errors where the packet can be well-formed and invalid. The handling of this information requires careful consideration of the error handling. The technology specified in this draft does not consider the error cases of well-formed and invalid.

The IDR chairs suggest that this type of error handling should be defined as a general BGP functionality to expand RFC7606 to the embedded prefixes by the IDR WG. This general functionality will then need to be applied to the handling of embedded prefixes.

This draft and existing RFCs (e.g. RFC7432) would be updated with the new error handling.

**2) Domain BGP Path Attribute (section 4) debugging and scaling**

Domain Path IDs provide parallel numbering scheme that does not have a universal definition. Debugging these Domain IDs in the Internet wild without this definition seems difficult at best. It is unclear why the Domain IDs did settle on ASN (4 byte) plus some identifier. There are numerous private AS numbers that can be used for DC tenants.

The automatic generation of AS numbers based on the starting point of private as numbers should take care of most Data Center automation tools. Why does this specification stick with AS numbers?

Error handling: (section 4 – pages 11-14) The error handling of the DPATH seeks to define: (4.a) add/delete/change conditions for transit routes and locally generated routes (4.b) malformed DPATH attributes.

It does not define error conditions if the syntax conditions cause (4.a) to fail.

**3) Route selection process modifies the RFC4271 and may not scale**

This draft modifies the RFC4271 to include D-PATH (page 17) without providing a solid reasoning why it is necessary and why it scales. Proof of the scalability may be included in another document or by public reports. As the topics of the ANRW indicates, BGP research for scalability of an application is always a “hot” research topic.

The definition of the BGP route selection changes (page 17) #3 and 4 is not tightly defined using an example rather that specification. Any proposed changes to the BGP route selection should be done in formal language for changes to the text.

Language such as “could possible leave” or “by default” is not specific (page 17) is not specific enough.

**4) Error handling in Gateway PE (section 8) between different AFI/SAFI prefixes is unclear**

This draft defines translation between certain embedded prefixes see table below. The interworking of the embedded prefix depends the basic error handling working correctly for embedded prefixes (#1) and the Domain Path (#2). Since these two items are unclear AND I do not see definitions “well-formed but invalid” case is not covered for this draft.

AFI with SAFIs 1 – 1, 128 2 - 1, 128 25 – 70

Section 8 attempts to provide this rules as an example. However section 8 requires the following syntax validity checks beyond well-formed: 
- 1)It must be a ISF route from AFI/SAFI pairs + allowed by policy (?) 
- 2) for gateway PE advertising ISF routes, must:
   a) include a D-PATH attribute,
   b) EVPN to other VPNS must append Domain 
- 3) the domain inside D-PATH must have a specific Domain-ID 
- 4) determine on what Route Distinguisher or Route Targets are valid, and
- 5) determination on what support for import/export of routes with different RD and RTs.

**5) Section 7 – normative or informative**

It is unclear if section 7 provides normative details on the Route Reflector or informative. It is also unclear if the EVPN forwarding constraints are normative or informative.

Phrases like “as a consequence of this, the indirection provided by RT’s recursive resolution and its benefits in a scaled network, will not be available in all PEs in the network” (page 20) is worrisome. If it is normative, then is this solution only partial?

**6) Section 11 security considerations needs to align with document**

The proof of phrase “a correct use of the D-PATH will prevent control plane and data plane loops in the network” exhibits facts not in evidence in the document.

The proof of the phrase “incorrect configuration of the DOMAIN-IDs on the gateway PEs may lead to the detection of false route loops and the blackholing of the traffic” also exhibits facts not in evidence in the document.

The security considerations need to be based on a revised error handling.

It is appropriate to mention that stripping path attributes at a gateway will cause problems.