---
title: IETF 103 Routing Area Working Group Summary
description: 
published: true
date: 2023-01-07T00:37:33.675Z
tags: 
editor: markdown
dateCreated: 2023-01-07T00:37:28.746Z
---

# IETF 103 Routing Area Working Group Summary 

Summaries and Status through IETF 103

The information in this page should be the same as the Status Update in the datatracker.
https://datatracker.ietf.org/group/xxx/about/status/edit/


## BABEL

## BESS

## BFD
* Updated Status on WG datatracker page per Álvaro.
* Updated BFD wiki with current document status: https://trac.ietf.org/trac/bfd/wiki

## BIER

## CCAMP

##  DETNET

## I2RS

## IDR

## LISP

The LISP WG is chartered to continue work on the Locator/Id Separation Protocol (LISP) base specifications and produce standard-track documents.
Indeed, experimental specification exists, but they need to be completed with on the field experience.
In addition, the LISP WG is also chartered to tackle LISP related issues like Multi-protocol support; Alternative Mapping System Design;  Mobility;  Multicast; Data-Plane Encryption; NAT-Traversal.

The working group is actually pretty close to finishing its main task, the main specifications. 
The following documents are the core of the lisp specifications and are under IETF review.
- LISP Data Plane: https://datatracker.ietf.org/doc/draft-ietf-lisp-rfc6830bis/
- LISP Control Plane: https://datatracker.ietf.org/doc/draft-ietf-lisp-rfc6833bis/ 

The IESG raised a bunch of security-related concerns, which the authors addressed in a huge effort just before IETF 103.
Part of the concerns are solved by the LISP-SEC document https://datatracker.ietf.org/doc/draft-ietf-lisp-sec/
This document is on hold in the WG for no other reason to wait for the final version of control- and data-plane of LISP so to be able to double check consistency with those documents.

[Last Updated: November 27, 2018]

## LSR

## LSVR

The LSVR WG met during IETF103. Work progressed well and the LSVR BGP-SPF specification went successful through OPS-DIR and Routing Directorate.
The WG found the LSVR draft in well enough stable state and decided that its time for initiating a WGLC.

In addition Link neighbor discovery and liveliness was further discussed and explored. The WG decided to launch a working group adoption call for LSoE.  

## MANET

## MPLS

## NVO3

## PALS

The PALS WG defines, specifies, and extends network services based on pseudowires and/or signaled using the Label Distribution Protocol (LDP). It is a continuation of work that originated in the now-concluded PWE3 and L2VPN WGs.

The WG has primarily been working on wrapping up its work. It has published all of its extant working group drafts as RFCs, and is currently discussing an individual draft that intends to make it easier to incrementally introduce the pseudowire control word into networks that don't currently support it.

[Last Updated: November 7, 2018.]

## PCE

The PCE working group is responsible for the Path Communication Element Communication Protocol (PCEP).  PCEP allows a Path Computation Client (PCC - for example, a head-end router) to request paths from, or have paths created by, a Path Computation Server (PCE).

The WG is concluding the recent effort on generalizing PCEP to include segment routing paths for an MPLS data plane [1].  Another piece of work reaching its conclusion is the extension of PCEP for GMPLS networks [2].  We are also concluding the protocol extensions to allow for a hierarchical structure of PCEs (H-PCE) which provides a parent PCE to coordinate the operation of per-domain child PCEs [3].

The WG is actively working on adding to PCEP the concept of an "association group" which binds together arbitrary sets of LSPs and/or policies for the purposes of path computation.  The base draft for this [4] is very flexible and allows for many follow-on innovations, ranging from associations reflecting common policies to those mandating resource diversity and other relationships such as bidirectionality and resource sharing. Another significant piece of work in progress is the extension that allows a PCE to act as a network controller, by instantiating path state on each hop in an LSP [5] and using a flow specifier to add traffic classification to the head-end node of the LSP [6].

[Last Updated: November 8, 2018.]

[1] https://datatracker.ietf.org/doc/draft-ietf-pce-segment-routing/

[2] https://datatracker.ietf.org/doc/draft-ietf-pce-gmpls-pcep-extensions/

[3] https://datatracker.ietf.org/doc/draft-ietf-pce-hierarchy-extensions/

[4] https://datatracker.ietf.org/doc/draft-ietf-pce-association-group/ 

[5] https://datatracker.ietf.org/doc/draft-ietf-pce-pcep-extension-for-pce-controller/

[6] https://datatracker.ietf.org/doc/draft-ietf-pce-pcep-flowspec/

## PIM

PIM focuses on Protocols for IP Multicast. We met for 2 hours on Tuesday and used every minute.
We've recently adopted 3 new drafts:
draft-ietf-pim-reserved-bits
draft-ietf-pim-null-register-packing
draft-ietf-pim-bfd-p2mp-use-case

Most interesting discussions during the meeting involved a comparative review of proposals for SR + Multicast and for multiple upstream requirements and solutions. We also had a hearty discussion on progressing igmpv3/mldv2 on standards track and agreed to do so. We will also start asking about implementations and include a section in our drafts but maintain no requirement to do so.

##  RIFT

RIFT had following presentations:
- Protocol and implementations updates
- Negative disagregation 
- milestones have been updated to reflect delay in deliverables 

## ROLL

ROLL focuses on routing issues for Low Power and Lossy Networks (LLN) and maintaining the protocols already developed, including RPL and MPL. The focus is on IPv6 work only. 

The WG recently accepted a proposal that describes RPL protocol design issues, consequences and implementation choices, with the goal of producing new documents that solve those problems. The WG finalized the work that solves the issues of the mechanisms used for a route invalidation system. The WG is in the final stage to approve a proposal that uses a reactive P2P    route discovery mechanism for both hop-by-hop routing and source  routing: Ad Hoc On-demand Distance Vector Routing (AODV) based RPL  protocol,  when some of the links between source and target node are  asymmetric.

Additionally, in the WG a proposal is presented to select the appropriate  parents to achieve ultra-low latency and jitter. Another proposal describes an objective function based on a metric that represents the amount of remaining traffic handling capacity that the node has. In The WG also, we have a proposal that describes the unicast routing  service in a RPL domain to 6LoWPAN ND nodes that are not RPL  protocol aware.

[Last Updated: November 4, 2018.]



## RTGWG

RTGWG had 2 meetings

 
1st meeting:
- number of YANG models was presented, as well as Architecture for Use of BGP as Central Controller.
- 2 different proposals to Architecture for Control and User Plane Separation on BNG.

2nd meeting:
- SD-WAN related work
- Network monitoring protocol and neighbor state monitoring in OpenSource

## SFC

## SIDR

The SIDR working group did not meet at IETF 103


The RFC 8416 "Simplified Local Internet Number Resource Management with the RPKI (SLURM)" was published 07 AUG 2018

The draft draft-ietf-sidr-rtr-keying-16 was transferred to the sidrops working group as draft-ietf-sidrops-rtr-keying-00


The SIDR working group was closed on 06 SEP 2018


[Last Updated: November 8, 2018.]


## SPRING

The Source Packet Routing in NetworkinG (SPRING) Working Group is the home of Segment Routing (SR) using MPLS (SR-MPLS) and IPv6 (SRv6).

SPRING WG serves as a forum to discuss SPRING networks operations, define new applications of, and specify extensions of Segment Routing technologies.
  
The Segment Routing architecture has been recently published as RFC 8402 and inter-working between SR-MPLS and LDP-MPLS is in RFC editor queue. SPRING has been recently re-chartered (2018-10) and is currently finishing SR-MPLS and its YANG model. SPRING is currently working on SR policy routing, which is a framework on how SR components could be bound together and used for implementation of a scalable source based routing mechanism (draft-ietf-spring-segment-routing-policy).

Candidate future works items are around management, performance monitoring, network and service programming.

[Last updated 2018-11-15].

## TEAS

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2018-11-27. It was migrated from the old Trac wiki on 2023-01-06.*
