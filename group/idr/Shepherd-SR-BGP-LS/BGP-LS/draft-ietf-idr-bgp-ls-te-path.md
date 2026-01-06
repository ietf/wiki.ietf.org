---
title: Shepherd Review: draft-ietf-idr-bgp-ls-te-path
description: Review draft-ietf-idr-idr-bgp-ls-te-path
published: true
date: 2026-01-06T22:30:09.131Z
tags: 
editor: markdown
dateCreated: 2025-02-21T21:25:30.138Z
---

# Shepherd review for draft-ietf-idr-bgp-ls-te-path

# Review for draft-ietf-idr-bgp-ls-te-path-02 
**Status:**
Document: [draft-ietf-idr-bgp-ls-te-path](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-te-path/) -
Status:  needs revision 
Technical status:  Generally valid, needs revision to cover all issues 
Editorial status: Needs revision for clarity 
Email link to review:  https://mailarchive.ietf.org/arch/msg/idr/SLDpob6bXRvSPhn0AZ_tpaiqdcc/

# Review for draft-ietf-idr-bgp-ls-te-path-01 
### overview 

Why reviewed: 
1. Part of full review of BGP-LS and SR documents in August 2024 
2.  WG LC requested for draft-ietf-idr-bgp-ls-sr-policy-05. 
draft-ietf-idr-bgp-ls-sr-policy-05 
references draft-ietf-idr-bgp-ls-te-path-01. 

**Status:**
Document: draft-ietf-idr-bgp-ls-te-path-01 
Status: expired, needs revision 
Technical status:  Generally valid, needs revision to cover all issues 
Editorial status: Needs revision for clarity 
Email link to review: https://mailarchive.ietf.org/arch/msg/idr/2zOuNqEeRe8kMqdKoLCfCV9_Htw/


### Technical Issues 

#### **Issue-1:** Introduction, paragraph starting with "BGP has been", Replace RFC7552 with [RFC9552]. 

current text:/
   BGP has been extended to distribute link-state and traffic
   engineering information to external components [RFC7752].  
   
New text:/
   BGP has been extended to distribute link-state and traffic
   engineering information to external components [RFC9552]. 

#### Issue-2: Section 2, Replace [RFC7752] with [RFC9552]

Old text:/ 
   The "Link-State NLRI" defined in [RFC7752] is extended to carry the
   TE Path information.  New TLVs carried in the Link_State Attribute
   defined in [RFC7752] are also defined to carry the attributes of a TE
   Path in the subsequent sections.

   The format of "Link-State NLRI" is defined in [RFC7752] as follows:/
 
New text:/

   The "Link-State NLRI" defined in [RFC9552] is extended to carry the
   TE Path information.  New TLVs carried in the Link_State Attribute
   defined in [RFC9552] are also defined to carry the attributes of a TE
   Path in the subsequent sections.

   The format of "Link-State NLRI" is defined in [RFC9552] as follows:
 
#### Issue-3: Section 3, Common Definitions, Protocol-ID 

Current text:/ 
   *  Protocol-ID field specifies the component that owns the TE Path
      state in the advertising node.  The existing protocol-id value of
      5 for Static Configuration applies for some of the NLRI types and
      the "RSVP-TE" Protocol-ID (value 8) is defined for some of the
      other types in this document./

Problem:  The Protocol-ID field definition should give "Static Configuration" as 
main identifier. 

New text:/
   *  Protocol-ID field is 1 octet value that specifies the component 
      that owns the TE Path state in the advertising node.  
	     Some NLRI types in this document use the existing Protocol-ID 
		 for Static Configuration (value 5).  Other NLRI types in 
		 this document use a new Protocol-ID of "RSVP-TE" (value 8). 
		 
#### Issue-4: Section 3, Common definitions, RFC7752 

Issue- Replace [RFC7752] with [RFC9552] and add section were defined in RFC7752.

old text:/ 
   *  "Identifier" is an 8 octet value as defined in [RFC7752].

   *  "Local Node Descriptor" (TLV 256) as defined in [RFC7752] that
      describes the headend node./
	  
new text: / 
   *  "Identifier" is an 8 octet value as defined in [RFC9552] in section 5.2. 

   *  "Local Node Descriptor" (TLV 256) as defined in [RFC9552] in section 5.2.1.4 
       that describes the headend node./

old text:/
   *  Autonomous System Number (TLV 512) [RFC7752], which contains the
      ASN or AS Confederation Identifier (ASN) [RFC5065], if
      confederations are used, of the node originating the TE Path
      advertisement./
New text:/
   *  Autonomous System Number (TLV 512) [RFC9552], which contains the
      ASN or AS Confederation Identifier (ASN) [RFC5065]. If
      confederations are used, the ASN of the node originating the TE Path
      advertisement. /

old text:/
   *  IPv4 Router-ID of Local Node (TLV 1028) [RFC7752], which contains
      the IPv4 TE Router-ID of the local node when one is provisioned.

   *  IPv6 Router-ID of Local Node (TLV 1029) [RFC7752], which contains
      the IPv6 TE Router-ID of the local node when one is provisioned.
/
New text:/
   *  IPv4 Router-ID of Local Node (TLV 1028) [RFC9552], which contains
      the IPv4 TE Router-ID of the local node when one is provisioned.

   *  IPv6 Router-ID of Local Node (TLV 1029) [RFC9552], which contains
      the IPv6 TE Router-ID of the local node when one is provisioned.
/

Old text:/
   *  Node Descriptors as defined in [RFC7752].	  
/
New text:/
   *  Node Descriptors as defined in [RFC9552].	  
/

#### Issue-5: Section 4.1, Tunnel-ID needs section reference in [RFC3209]

old text: /Tunnel ID: 2 octets as defined in [RFC3209]/
new text: /Tunnel ID: 2 octets as defined in [RFC3209] in section 4.6.1./ 

#### Issue-6 Section 4.2, LSP-ID needs section reference in [RFC3209]

old text:/LSP ID: 2 octets defined in [RFC3209]/
new text:/LSP ID: 2 octets defined in [RFC3209] in section 4.6.2]


#### Issue-7: Section 4.3, clear link with [RFC3209] for Tunnel Head-end Address

Problem: [RFC3209] uses a IPv4 Tunnel sender address (section 4.6.2.1) 
and IPv6 Tunnel sender address (section 4.6.2.2).  If you are linking to 
these definitions, you must link to the correct definitions. 

Suggested revision in description: 
Old text:/
   The IPv4/IPv6 Tunnel Head-End Address TLV contains the Tunnel Head-
   End Address defined in [RFC3209] and is used with the Protocol-ID set
   to RSVP-TE to advertise the MPLS-TE LSP NLRI Type. /
New text:/
   The IPv4/IPv6 Tunnel Head-End Address TLV contains the Tunnel Head-
   End Address defined in [RFC3209] in section 4.6.2 as the 
   IPv4/IPv6 Tunnel Sender Address. The IPv4/IPv6 Tunnel Head-End 
   Address TLV is used with the Protocol-ID set
   to RSVP-TE to advertise the MPLS-TE LSP NLRI Type. / 
   
#### Issue-8: sectison 4.4, clear link with [RFC32098] for Tunnel Tail-End (Egress) Address

Problem: [RFC3209] uses a IPv4 Tunnel End Point address (section 4.6.1.1)
for the IPv4 Tunnel Egress node, and IPv6 Tunnel End Point addresss (section 4.6.1.2) 
for the IPv6 Tunnel Egress node.  The reference does not clearly indicate this point. 

Suggested revision: 
 
Old text:/
   The IPv4/IPv6 Tunnel Tail-End Address TLV contains the Tunnel Tail-
   End Address defined in [RFC3209] and is used with the Protocol-ID set
   to RSVP-TE to advertise the MPLS-TE LSP NLRI Type./
   
New text:/
   The IPv4/IPv6 Tunnel Tail-End Address TLV contains the Tunnel Tail-
   End Address which is defined [RFC3209] as the IPv4/IPv6 Tunnel end point address
   in section 4.6.1.  The IPv4/IPv6 Tunnel Tail-End Address TLV is used with the 
   Protocol-ID set to RSVP-TE to advertise the MPLS-TE LSP NLRI Type. / 

#### Issue-9: Section 4.5, Title and Introductory paragraph

Problems: 
a) Please change the title to: Local MPLS Cross Connect TLV. 
b) Please replace [RFC7752] with [RFC9552]. 
c) "it is not specific enough in the 3rd and 4th sentence. 

Old text:/It is used with Protocol ID set to "Static
   Configuration" value 5 as defined in [RFC7752].  It is a mandatory TE
   Path Descriptor TLV for MPLS Local Cross-connect NLRI type. /

New text:/The Local MPLS Cross Connect TLV is used with Protocol ID 
   set to "Static Configuration" (value 5) as defined in [RFC9552].  
   This TLV is a mandatory TE Path Descriptor TLV for MPLS Local 
   Cross-connect NLRI type./ 


#### Issue-10: Section 4.5, Requirements for the Local MPLS Cross Connect TLV 
Problems: 
a) Interface Sub-TLV - is really MPLS Cross Connect Interface SubTLV
b) Forwarding Equivalent Class (FEC) is really MPLS Cross Connect FEC subTLV 
c) I-Flag is used before being defined. 

**Text change-1: **
Old-text:/
   *  Sub-TLVs: following Sub-TLVs are defined:
      -  Interface Sub-TLV
      -  Forwarding Equivalent Class (FEC)/
New text:/
   *  Sub-TLVs: following Sub-TLVs are defined:
      -  MPLS Cross Connect Interface Sub-TLV
      -  MPLS Cross Connect Forwarding Equivalent Class (FEC)/
**
Text change-2:/**
> -       MAY contain an Interface Sub-TLV having the I-flag set
> -       MUST contain at least one Interface Sub-TLV having the I-flag unset
> -       MAY contain multiple Interface Sub-TLV having the I-flag unset. This is the case of a multicast MPLS cross-connect./
> -       MAY contain an FEC Sub-TLV.
> 	  
{.is-info}

New text:  
> -      MAY contain an MPLS Cross Connect Interface Sub-TLV having the I-flag set in Flags field (see section 4.5.1)
> -      MUST contain at least one MPLS Cross Connect Interface Sub-TLV having the I-flag unset in the Flags field (see section 4.5.1).  
> -      MAY contain multiple MPLS Cross Connect Interface Sub-TLVs having the I-flag unset. This is the case of a  multicast MPLS cross-connect./
> -      MAY contain an MPLS Cross Connect FEC Sub-TLV.	 
{.is-info}

----

**Text change-3:**
Old text:/ These are defined in the following sections:/
New text:/ These MPLS Cross Connect sub-TLVs are defined in the following sections./ 


#### Issue-13: Section 4.5.1, Flags, undefined fields

The non-defined flags need to be described.  These fields should be set to zero for transmission, and ignored upon reception. 

Issue-14: Section 4.5.2, Flags, undefined fields 

The non-defined fields need to be described. These fields should be set to zero for transmission, 
and ignored upon reception. 

Issue-15: Section 5, introductory paragraph, RFC7752 + full list of object 

The BGP-LS RFC needs to be changed to [RFC9552].

Old text:/
   These MPLS-TE LSP characteristics include the
   characteristics and attributes of the LSP, its dataplane, explicit
   path, Quality of Service (QoS) parameters, route information, the
   protection mechanisms, etc./ 
New text:/
   These MPLS-TE LSP characteristics include characteristics and attributes 
   of the following: LSP, its dataplane, explicit path, 
   Quality of Service (QoS) parameters, route information, and the
   protection mechanisms.  These characteristics defined in this 
   documents come from RSVP objects (see section 5.1) and 
   PCEP objects (see section 5.2).  Please note that the 
   lists of MPLS TE LSP Object in sections 5.1 and 5.2 
   are not exchaustive. Other characteristics of MPLS TE LSP 
   from RSVP or PCEP MAY be carried in the MPLS TE Path State
   object field. /

Problem: How compliance be measured if you do not have a full 
list of supported RSVP-TE objects or PCEP objects? 
What does person know what is implemented? 

#### Issue-16: section 6, last paragraph, procedural issue 

Problem: the run on sentence makes the procedure below unclear.  
**
Old text: /**
>    When a SR Policy [RFC9256] is setup with the help of PCEP signaling
>    [RFC8664] then a MPLS-TE Path State TLV MAY be used to encode the
>    related PCEP objects corresponding to the LSP as defined in
>    Section 5.2 specifically to report information and status that is not
>    covered by the SR Policy State TLVs specified in #draft-ietf-idr-bgp-
>    ls-sr-policy#. In the event of a conflict of information, the
>    receiver MUST prefer the information originated via the SR Policy
>    State TLVs over the PCEP objects reported via the TE Path State TLV./
{.is-info}

   
**New text:/**
>    When a SR Policy [RFC9256] is setup with the help of PCEP signaling
>    [RFC8664] then a MPLS-TE Path State TLV MAY be used to encode the
>    related PCEP objects corresponding to the LSP as defined in
>    Section 5.2.  The MPLS-TE Path State TLV specifically reports information and 
>    status that is not covered by the SR Policy State TLVs specified in 
>    [draft-ietf-idr-bgp-ls-sr-policy]. In the event of a conflict of information,
>    the receiver MUST prefer the information originated via the SR Policy
>    State TLVs over the PCEP objects reported via the TE Path State TLV./
{.is-info}


#### Issue-17: Section 7, please replace [RFC7752] with [RFC9552]

#### Issue-18: Normative References: Replace [RFC7752] with [RFC9552].
   
  
### Editorial:

#### NIT-1: Abstract,  use of "etc." in an abstract. 
**
Current text:/**
>    Such information
>    can be used by external components for path computation, re-
>    optimization, service placement, network visualization, etc./
{.is-info}

   
**New text:/**
   This traffic information 
   can be used by external components for path computation, re-
   optimization, service placement, network visualization, 
   and other applications./ 
   
 #### NIT-2: Introduction section, Unclear use of "etc." 
**Current text: **
>    /In
>    the rest of this document we refer to TE Paths as the set of
>    information related to the various instantiation of policies: MPLS TE
>    LSPs, Local MPLS cross-connects, etc./
{.is-info}

  
**  New text:/ **
>    /In
>    the rest of this document we refer to TE Paths as the set of
>    information related to the various instantiation of any of 
>    the following policies: MPLS TE LSPs, Local MPLS cross-connects. /
{.is-info}

   
 #### NIT-3: Introduction, paragraph 2, unclear use of "e.g."
 
** current text: /**
>    TE Paths are generally instantiated at the head-end and are based on
>    either local configuration or controller-based programming of the
>    node using various APIs and protocols, e.g., PCEP/
{.is-info}

   
**  new text:/ **
>    TE Paths are generally instantiated at the head-end and are based on
>    either local configuration or controller-based programming of the
>    node using various APIs and protocols. Two protocols that support 
>    TE Paths are stateful PCEP [RFC8231], and BGP-LS [RFC9552]./
{.is-info}

   
  #### NIT-4: Introduction, paragraph 4, run-on sentence. 
  
  **current text:/**
>    In many network environments, the configuration, and state of each TE
>    Path that is available in the network is required by a controller
>    which allows the network operator to optimize several functions and
>    operations through the use of a controller aware of both topology and
>    state information./
{.is-info}

   
 **  New text: /**
>    In many network environments, the network operator uses a controller to 
>    optimize the functions and operations of a network.  The controller
>    needs to gather the configuration, the topology, and the state of 
>    each available TE Path. This introduction contains examples of 
>    three controllers based on PCE (management-based PCEP, composite PCE-nodes, 
>    parent-child PCE), a centralized controller, and a NMS-controller
>    providing virtualization./ 
{.is-info}

    
   
 #### NIT-5: Introduction, paragraph 5, run-on sentence.
   
**   Current text:/**
>    One example of a controller is the stateful Path Computation Element
>    (PCE) [RFC8231], which could provide benefits in path optimization.
>    While some extensions are proposed in the Path Computation Element
>    Communication Protocol (PCEP) for the Path Computation Clients (PCCs)
>    to report the LSP states to the PCE, this mechanism may not be
>    applicable in a management-based PCE architecture as specified in
>    section 5.5 of [RFC4655].  As illustrated in the figure below, the
>    PCC is not an LSR in the routing domain, thus the head-end nodes of
>    the TE-LSPs may not implement the PCEP protocol.  In this case, a
>    general mechanism to collect the TE-LSP states from the ingress LERs
>    is needed.  This document proposes a TE Path state collection
>    mechanism complementary to the mechanism defined in [RFC8231]./
{.is-info}


   
**   New text:/**
>    The three controller based on the stateful Path Computation Element
>    (PCE) [RFC8231] provide benefits in path optimization. 
>    A management-based PCE architecture as specified in
>    section 5.5 of [RFC4655] may require the support of BGP-LS for the 
>    Path Computation Clients (PCCs) to report the LSP states to the PCE.   
>    As illustrated in the figure below, the PCC is not an LSR in the 
>    routing domain. Thus, the head-end nodes of
>    the TE-LSPs may not implement the PCEP protocol.  In this case, a
>    general mechanism to collect the TE-LSP states from the ingress LERs
>    is needed.  This document proposes a TE Path state collection
>    mechanism via BGP Link State [RFC9552] complementary 
>    to the mechanism defined in [RFC8231]./
{.is-info}



#### NIT-6 Introduction, last paragraph in Introduction,  run-on sentence 

**Old text: /**
>    BGP-LS is extended to carry TE Path information via [draft-ietf-idr-bgp-ls-sr-   
>    policy] so that the same protocol may be used to also collect Segment
>    Routing traffic engineering paths information such that external
>    components like controllers can use the same protocol for network
>    information collection.  
{.is-info}


**New text:/**
>    BGP-LS [RFC9552] has been extended to carry TE Path information via 
>    [draft-ietf-idr-bgp-ls-sr-policy] so that BGP-LS may be used
>    to collect both Segment Routing TE Path information and 
>    other traffic engineering information. / 
{.is-info}



#### NIT-7, Section 4.1, title, clarity of text 

It would be better to include Tunnel Identifier TLV for the title. 

#### NIT-8, Section 7, paragraph 2, "e.g." cause text confusion. 
**
Old text :/ **
>    In general, it is assumed that the TE Path head-end nodes are
>    responsible for the advertisement of TE Path state information, while
>    other nodes, e.g. the nodes in the path of a policy, MAY report the
>    TE Path information (if available) when needed. /
{.is-info}

 
** New text:/**
>    In general, it is assumed that the TE Path head-end nodes are
>    responsible for the advertisement of TE Path state information.
>    Other nodes (such as nodes in the path of a policy) MAY report the
>    TE Path information (if available) when needed. /
{.is-info}

   
 
