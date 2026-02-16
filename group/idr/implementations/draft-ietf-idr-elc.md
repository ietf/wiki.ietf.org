---
title: draft-ietf-idr-elc Implementation Report
description: 
published: true
date: 2025-11-07T23:03:05.844Z
tags: 
editor: markdown
dateCreated: 2025-11-07T23:03:05.844Z
---

# Implementation Report for draft-ietf-idr-elc-00
## BGP Entropy Label Characteristic
  
 ### Abbreviations 
 
- **NHC** - Next Hop Dependent Characteristics Attribute
- **ELCv3** - Entropy Label Characteristic
- **EL-capable** - Capable of processing entropy labels as described in §3 of the spec

## Author(s) 

John Scudder (jgs@bgp.nu) 

## Components of Conformance 

### 2. Entropy Label Characteristic (ELCv3)

#### 2.2 Sending the ELCv3

- Under what conditions does the implementation include the ELCv3 in the NHC? 
  - If it is the egress, and is EL-capable? (MAY)
  - If it is re-advertising a route that was received with a valid ELCv3,
    - ...and is not changing the next hop? (MAY)
    - ...and is changing the next hop, but knows that the new next hop is EL-capable or need not process the entropy label? (MAY; if this option is YES please provide details.) 
  - If it knows by implementation-specific means that the egress is EL-capable? (MAY)
  - If it is redistributing a route learned from another protocol and that protocol conveyed the knowledge that the egress was EL-capable? (MAY; if this option is YES please provide details.)
- Is the ELCv3 included with labeled, entropy label capable routes? (SHOULD)
- Is the ELCv3 ever advertised with routes that are not labeled? (MUST NOT)

#### 2.2.1 Aggregation

- Will an aggregate route only include ELCv3 if every contributing route also is eligible to include ELCv3? (MUST, phrased as MUST NOT in the spec)

#### 2.3 Receiving the ELCv3

- Is the ELCv3 discarded if received with an unlabeled route? (MUST)
- Does the implementation insert an entropy label if a valid ELCv3 is received? (MAY)

#### 2.4 ELCv3 Error Handling

- If more than one instance of the ELCv3 is included in a received NHC, are instances beyond the first disregarded? (MUST)

### 3. Legacy ELC

- Does the implementation discard any received ELC attribute (BGP Attribute 28)? (MUST)

# Juniper Networks Implementation Report for Junos 23.3R1
## Reported By
Kevin Wang <kfwang@juniper.net>

Conformant on all points, details below.

## Components of Conformance 

### 2. Entropy Label Characteristic (ELCv3)

#### 2.2 Sending the ELCv3

- Under what conditions does the implementation include the ELCv3 in the NHC? 
  - If it is the egress, and is EL-capable? (MAY) **YES**
  - If it is re-advertising a route that was received with a valid ELCv3,
    - ...and is not changing the next hop? (MAY) **YES**
    - ...and is changing the next hop, but knows that the new next hop is EL-capable or need not process the entropy label? (MAY; if this option is YES please provide details.) **YES**
  - If it knows by implementation-specific means that the egress is EL-capable? (MAY) **NO**
  - If it is redistributing a route learned from another protocol and that protocol conveyed the knowledge that the egress was EL-capable? (MAY; if this option is YES please provide details.) **YES**
- Is the ELCv3 included with labeled, entropy label capable routes? (SHOULD) **YES**
- Is the ELCv3 ever advertised with routes that are not labeled? (MUST NOT) **NO**

#### 2.2.1 Aggregation

- Will an aggregate route only include ELCv3 if every contributing route also is eligible to include ELCv3? (MUST, phrased as MUST NOT in the spec) **YES**

#### 2.3 Receiving the ELCv3

- Is the ELCv3 discarded if received with an unlabeled route? (MUST) **YES**
- Does the implementation insert an entropy label if a valid ELCv3 is received? (MAY) **YES**

#### 2.4 ELCv3 Error Handling

- If more than one instance of the ELCv3 is included in a received NHC, are instances beyond the first disregarded? (MUST) **YES**

### 3. Legacy ELC

- Does the implementation discard any received ELC attribute (BGP Attribute 28)? (MUST) **YES**

# *Vendor* Implementation Report, *Software* *Version*
## Reported By
(name)
(contact information)

## Components of Conformance 