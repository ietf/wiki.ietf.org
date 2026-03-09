---
title: Untitled Page
description: 
published: true
date: 2026-03-09T18:24:14.819Z
tags: 
editor: markdown
dateCreated: 2026-03-09T18:19:05.525Z
---

# Implementation Report for draft-ietf-idr-next-next-hop-nodes-00
## BGP Next-next Hop Nodes
  
 ### Abbreviations 
 
- **NHC** - Next Hop Dependent Characteristics Attribute
- **NNHN** - Next-next Hop Nodes Characteristic

## Author(s) 

Kevin Wang (kevin.wang@hpe.com) 

## Components of Conformance 

### 2. BGP Next-next Hop Nodes (NNHN) Characteristic

#### 2.2 Sending the NNHN

- Under what conditions does the implementation include the NNHN in the NHC?
  - If it advertises a BGP route with next-hop self, is the NNHN originated? (MAY)
  - If it advertises a BGP route with next-hop self, is the NNHN received from a downstream peer ever forwarded to an upstream peer? (MUST NOT)
  - If it advertises a BGP route without next-hop self, is the NNHN originated? (MUST NOT)
  - If it advertises a BGP route without next-hop self, is the validated NNHN received from a downstream peer forwarded to an upstream peer? (SHOULD)
- Is the "Next-hop BGP ID" field set to the BGP Identifier the BGP speaker uses for the advertising peer? (MUST)
- Are the peer BGP Identifiers of all ECMP paths encoded as "Next-next-hop BGP IDs"? (MUST)
- Are the "Next-next-hop IDs" encoded in the numerically ascending order? (MUST)
- Is the NNHN ever advertised with no "Next-next-hop IDs"? (MUST NOT)

#### 2.3 Receiving the NNHN

- Is the NNHN ignored and discarded if the "Next-hop BGP ID" does not match the receiving peer's BGP Identifier? (MUST)
- Can the receiver accepte a NNHN with the "Next-next-hop IDs" encoded in any order? (MUST)
- Are duplicated "Next-next-hop IDs" ignored? (MUST)

#### 2.4 NNHN Error Handling

- If a NNHN has length less than 8 or not a multiple of 4, is it discarded (MUST)
- If more than one instance of the NNHN is included in a received NHC, are instances beyond the first disregarded? (MUST)

# Juniper Networks Implementation Report for Junos 24.4R1
## Reported By
Kevin Wang <kevin.wang@hpe.com>

Conformant on all points, details below.

## Components of Conformance 

### 2. BGP Next-next Hop Nodes (NNHN) Characteristic

#### 2.2 Sending the NNHN

- Under what conditions does the implementation include the NNHN in the NHC?
  - If it advertises a BGP route with next-hop self, is the NNHN received from a downstream peer ever forwarded to an upstream peer? (MUST NOT) **NO**
  - If it advertises a BGP route without next-hop self, is the NNHN originated? (MUST NOT) **NO**
  - If it advertises a BGP route without next-hop self, is the validated NNHN received from a downstream peer forwarded to an upstream peer? (SHOULD) **YES**
- Is the "Next-hop BGP ID" field set to the BGP Identifier the BGP speaker uses for the advertising peer? (MUST) **YES**
- Are the peer BGP Identifiers of all ECMP paths encoded as "Next-next-hop BGP IDs"? (MUST) **YES**
- Are the "Next-next-hop IDs" encoded in the numerically ascending order? (MUST) **YES**
- Is the NNHN ever advertised with no "Next-next-hop IDs"? (MUST NOT) **NO**

#### 2.3 Receiving the NNHN

- Is the NNHN ignored and discarded if the "Next-hop BGP ID" does not match the receiving peer's BGP Identifier? (MUST) **YES**
- Can the receiver accepte a NNHN with the "Next-next-hop IDs" encoded in any order? (MUST) **YES**
- Are duplicated "Next-next-hop IDs" ignored? (MUST) **YES**

#### 2.4 NNHN Error Handling

- If a NNHN has length less than 8 or not a multiple of 4, is it discarded (MUST) **YES**
- If more than one instance of the NNHN is included in a received NHC, are instances beyond the first disregarded? (MUST) **YES**

# H3C Implementation Report for Comware V9R1B83D001 
## Reported By
Changwang Lin <linchangwang.04414@h3c.com>

Conformant on all points, details below.

## Components of Conformance 

### 2. BGP Next-next Hop Nodes (NNHN) Characteristic

#### 2.2 Sending the NNHN

- Under what conditions does the implementation include the NNHN in the NHC?
  - If it advertises a BGP route with next-hop self, is the NNHN received from a downstream peer ever forwarded to an upstream peer? (MUST NOT) **NO**
  - If it advertises a BGP route without next-hop self, is the NNHN originated? (MUST NOT) **NO**
  - If it advertises a BGP route without next-hop self, is the validated NNHN received from a downstream peer forwarded to an upstream peer? (SHOULD) **YES**
- Is the "Next-hop BGP ID" field set to the BGP Identifier the BGP speaker uses for the advertising peer? (MUST) **YES**
- Are the peer BGP Identifiers of all ECMP paths encoded as "Next-next-hop BGP IDs"? (MUST) **YES**
- Are the "Next-next-hop IDs" encoded in the numerically ascending order? (MUST) **YES**
- Is the NNHN ever advertised with no "Next-next-hop IDs"? (MUST NOT) **NO**

#### 2.3 Receiving the NNHN

- Is the NNHN ignored and discarded if the "Next-hop BGP ID" does not match the receiving peer's BGP Identifier? (MUST) **YES**
- Can the receiver accepte a NNHN with the "Next-next-hop IDs" encoded in any order? (MUST) **YES**
- Are duplicated "Next-next-hop IDs" ignored? (MUST) **YES**

#### 2.4 NNHN Error Handling

- If a NNHN has length less than 8 or not a multiple of 4, is it discarded (MUST) **YES**
- If more than one instance of the NNHN is included in a received NHC, are instances beyond the first disregarded? (MUST) **YES**

# *Vendor* Implementation Report, *Software* *Version*
## Reported By
(name)
(contact information)

## Components of Conformance 