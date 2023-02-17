---
title: MNA Documents - copied from the old wiki
description: List of MNA documents posted before IETF 166
published: true
date: 2022-12-19T16:18:16.058Z
tags: 
editor: markdown
dateCreated: 2022-12-19T16:06:27.232Z
---

# MNA Documents posted Prior to IETF 116
The of MNA project documents are listed here MNA project documents and classifies them by purpose within the MPLS MNA ODT Project


## Requirements and use cases
* draft-ietf-mpls-mna-requirements: Requirements for MPLS Network Action Indicators and MPLS Ancillary Data

* draft-ietf-mpls-mna-usecases: Use Cases for MPLS Network Action Indicators and MPLS Ancillary Data


## Framework

* draft-andersson-mpls-mna-fwk: MPLS Network Actions Framework


## Supporting Documents

* draft-bryant-mpls-dev-primer: A Primer on the Development of MPLS

* draft-kbbma-mpls-1stnibble: IANA Registry for the First Nibble Following a Label Stack

* draft-li-mpls-entropy Entropy Values


##  Candidate Solutions

  
### Post-stack Ancillary Data (PSD) ==
The following proposed solutions are based on extension headers:


* draft-andersson-mpls-eh-architecture: MPLS Extension Header Architecture
 
* draft-andersson-mpls-eh-label-stack-operations: MPLS Label Operations in MPLS EH capable networks

* draft-song-mpls-eh-indicator: Options for MPLS Extension Header Indicator

*  draft-song-mpls-extension-header: MPLS Extension Header


### In-stack Ancillary Data (ISD)

The following are based on the use of in-stack data

* draft-kompella-mpls-mspl4fa: Multi-purpose Special Purpose Label for Forwarding Actions This is a mixture of ISD solution and application. This is a candidate for splitting into two drafts one describing the solution and one describing the application.

* draft-liu-mpls-nas-combination: Combination Method of NASs

* draft-jags-mpls-mna-hdr: MPLS Network Action (MNA) Header Encodings

* draft-dong-mpls-mna-encaps: General solution of encapsulating MNA information as either ISD or PSD. 


### Control Plane

The following relies  on the use of the control plane - this contrasts with the other proposals which are currently pure dataplane
* draft-raszuk-mpls-raf-fwk: Framework of MPLS Reference Augmented Forwarding

## Applications
The following are applications of the MNA MPLS infrastructure

*  draft-gandhi-mpls-ioam: MPLS Data Plane Encapsulation for In-situ OAM Data

*  draft-zzhang-intarea-generic-delivery-functions: Generic Delivery Functions An (expired) draft describing an application of  draft-song-mpls-extension-header

* draft-li-mpls-enhanced-vpn-vtn-id-02 : Carrying Virtual Transport Network Identifier in MPLS Packet An application that assumes the existence of an extension header solution

* draft-kompella-mpls-nffr: No Further Fast Reroute


## Reuse of Entropy Label

Not part of the MPLS ODT MNA work, but related to the overall solution space


* draft-decraene-mpls-slid-encoded-entropy-label-id: Using Entropy Label for Network Slice Identification in MPLS networks.

* draft-li-mpls-redefining-eli: Redefining ELI considered harmful; NPL considered harmful.