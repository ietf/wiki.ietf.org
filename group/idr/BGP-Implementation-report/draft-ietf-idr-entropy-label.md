---
title: draft-ietf-idr-entropy-label Implementation Report
description: IDR WG report on implementations of draft-ietf-idr-entropy-label (BGP Router Capabilities Attribute)
published: true
date: 2023-10-27T20:27:46.329Z
tags: 
editor: markdown
dateCreated: 2023-07-10T20:19:48.279Z
---

# Implementation Report for draft-ietf-idr-entropy-label-13
## BGP Next Hop Dependent Capabilities Attribute
  
 ### Abbrevatiations 
 
- **NHC** - Next Hop Dependent Capabilities Attribute
- **ELCv3** - Entropy Label Capability
- **EL-capable** - Capable of processing entropy labels as described in §3 of the spec

## Author(s) 

John Scudder (jgs@juniper.net) 

## Components of Conformance 

### 2.  BGP Router Capabilities Attribute

#### 2.1 Encoding

- Does the implementation ever include more than one instance of a capability with the same Capability Code, Capability Length, and Capability Value? (MUST NOT)
- Is the implementation prepared to accept such multiple instances? (MUST)
- Does the implementation insert TLVs in increasing order of Capability Code? (MUST) 
- Does the implementation consume TLVs in any order? (MUST)

#### 2.2 Sending the NHC

- When originating a route with NHC, does the implementation set the header portion to be equal to the next hop of the route? (MUST)
- When propagating a route with NHC, if changing the next hop, does the implementation... 
  - remove all unrecognized TLVs? (This is a MUST although is expressed in other terms, paragraph 4 of §2.2.) *Conformance to this requirement is especially important.*
  - include all recognized TLVs, constructed appropriately? (SHOULD)
- Is NHC propagated by default to all types of peers? (SHOULD)
- Is NHC sent with any NLRI type that does not include a next hop? (MUST NOT)

#### 2.2.1 Aggregation

- When aggregating routes, are the rules for forming a new NHC followed? (MUST)
- If there are no eligible capabilities, is the NHC included? (MUST NOT)

#### 2.3 Receiving the NHC

- Is NHC accepted by default from all types of peers? (SHOULD)
- Does the implementation provide configuration options to permit NHC to be sent to/received from EBGP peers? (SHOULD)
- Does the implementation compare the address given in the header portion of the NHC to the next hop in the received route, and disregard the NHC if they don't match? (MUST)
- Does the implementation silently ignore unrecognized TLVs? (MUST)
- Does the presence of any supported TLVs affect route selection? (SHOULD NOT)

#### 2.4 Attribute Error Handling

- Are updates with malformed NHC handled using the approach of "attribute discard"? (MUST, written as SHALL)
- Are unknown TLVs considered to be an error? (MUST NOT)
- Are malformed TLVs ignored, and other supported TLVs processed as usual? (SHOULD, although if only a single TLV type is supported this requirement is vacuous since in such a case there would be no other supported TLVs. There could be a variance from the SHOULD if there were a new TLV type defined that defined different behavior.)

#### 2.5 Network Operation Considerations

Although this section makes use of RFC 2119 terminology, the requirement is addressed to the network operator; there is no requirement for the implementation.

### 3. Entropy Label Capability (ELCv3)

#### 3.2 Sending the ELCv3

- Under what conditions does the implementation include the ELCv3 in the NHC? 
  - If it is the egress, and is EL-capable? (MAY)
  - If it is re-advertising a route that was received with a valid ELCv3,
    - ...and is not changing the next hop? (MAY)
    - ...and is changing the next hop, but knows that the new next hop is EL-capable or need not process the entropy label? (MAY; if this option is YES please provide details.) 
  - If it knows by implementation-specific means that the egress is EL-capable? (MAY)
  - If it is redistributing a route learned from another protocol and that protocol conveyed the knowledge that the egress was EL-capable? (MAY; if this option is YES please provide details.)
- Is the ELCv3 included with labeled, entropy label capable routes? (SHOULD)
- Is the ELCv3 ever advertised with routes that are not labeled? (MUST NOT)

#### 3.2.1 Aggregation

- Will an aggregate route only include ELCv3 if every contributing route also is eligible to include ELCv3? (MUST, phrased as MUST NOT in the spec)

#### 3.3 Receiving the ELCv3

- Is the ELCv3 discarded if received with an unlabeled route? (MUST)
- Does the implementation insert an entropy label if a valid ELCv3 is received? (MAY)

#### 3.4 ELCv3 Error Handling

- If more than one instance of the ELCv3 is included in a received NHC, are instances beyond the first disregarded? (MUST)

### 4. Legacy ELC

- Does the implementation discard any received ELC attribute (BGP Attribute 28)? (MUST)

# Juniper Networks Implementation Report for Junos 23.3R1
## Reported By
Kevin Wang <kfwang@juniper.net>

Conformant on all points, details below.

## Components of Conformance 

### 2.  BGP Router Capabilities Attribute

#### 2.1 Encoding

- Does the implementation ever include more than one instance of a capability with the same Capability Code, Capability Length, and Capability Value? (MUST NOT) **NO**
- Is the implementation prepared to accept such multiple instances? (MUST) **YES**
- Does the implementation insert TLVs in increasing order of Capability Code? (MUST) **YES** (N/A at the moment since there is only one capability defined currently)
- Does the implementation consume TLVs in any order? (MUST) **YES** (N/A at the moment since there is only one capability defined currently)

#### 2.2 Sending the NHC

- When originating a route with NHC, does the implementation set the header portion to be equal to the next hop of the route? (MUST) **YES** 
- When propagating a route with NHC, if changing the next hop, does the implementation... 
  - remove all unrecognized TLVs? (This is a MUST although is expressed in other terms, paragraph 4 of §2.2.) *Conformance to this requirement is especially important.* **YES**
  - include all recognized TLVs, constructed appropriately? (SHOULD) **YES**
- Is NHC propagated by default to all types of peers? (SHOULD) **YES**
- Is NHC sent with any NLRI type that does not include a next hop? (MUST NOT) **NO**

#### 2.2.1 Aggregation

- When aggregating routes, are the rules for forming a new NHC followed? (MUST) **TBD**
- If there are no eligible capabilities, is the NHC included? (MUST NOT) **TBD**

#### 2.3 Receiving the NHC

- Is NHC accepted by default from all types of peers? (SHOULD) **YES**
- Does the implementation provide configuration options to permit NHC to be sent to/received from EBGP peers? (SHOULD) **YES**
- Does the implementation compare the address given in the header portion of the NHC to the next hop in the received route, and disregard the NHC if they don't match? (MUST) **YES**
- Does the implementation silently ignore unrecognized TLVs? (MUST) **YES** (they are saved locally, forwarded if next-hop unchanged, and displayed in CLI show)
- Does the presence of any supported TLVs affect route selection? (SHOULD NOT) **NO**

#### 2.4 Attribute Error Handling

- Are updates with malformed NHC handled using the approach of "attribute discard"? (MUST, written as SHALL) **YES**
- Are unknown TLVs considered to be an error? (MUST NOT) **NO**
- Are malformed TLVs ignored, and other supported TLVs processed as usual? (SHOULD, although if only a single TLV type is supported this requirement is vacuous since in such a case there would be no other supported TLVs. There could be a variance from the SHOULD if there were a new TLV type defined that defined different behavior.) **YES**

#### 2.5 Network Operation Considerations

Although this section makes use of RFC 2119 terminology, the requirement is addressed to the network operator; there is no requirement for the implementation.

### 3. Entropy Label Capability (ELCv3)

#### 3.2 Sending the ELCv3

- Under what conditions does the implementation include the ELCv3 in the NHC? 
  - If it is the egress, and is EL-capable? (MAY) **YES**
  - If it is re-advertising a route that was received with a valid ELCv3,
    - ...and is not changing the next hop? (MAY) **YES**
    - ...and is changing the next hop, but knows that the new next hop is EL-capable or need not process the entropy label? (MAY; if this option is YES please provide details.)  **YES** (if it is a label swap (aka no need to process the entropy label) or it is a label pop and this node is EL-capable)
  - If it knows by implementation-specific means that the egress is EL-capable? (MAY) **TBD**
  - If it is redistributing a route learned from another protocol and that protocol conveyed the knowledge that the egress was EL-capable? (MAY; if this option is YES please provide details.) **YES** (if it is a label swap (aka no need to process the entropy label) or it is a label pop and this node is EL-capable)
- Is the ELCv3 included with labeled, entropy label capable routes? (SHOULD) **YES**
- Is the ELCv3 ever advertised with routes that are not labeled? (MUST NOT) **NO** (Note that "no" means "conform" in this MUST NOT case.)

#### 3.2.1 Aggregation

- Will an aggregate route only include ELCv3 if every contributing route also is eligible to include ELCv3? (MUST, phrased as MUST NOT in the spec) **TBD**

#### 3.3 Receiving the ELCv3

- Is the ELCv3 discarded if received with an unlabeled route? (MUST) **YES** (we still save it but it will not have any impact: we don’t use it locally to push EL and don’t re-advertise it)
- Does the implementation insert an entropy label if a valid ELCv3 is received? (MAY) **YES** (if configured with entropy-label locally for family inet labeled-unicast)

#### 3.4 ELCv3 Error Handling

- If more than one instance of the ELCv3 is included in a received NHC, are instances beyond the first disregarded? (MUST) **TBD**

### 4. Legacy ELC

- Does the implementation discard any received ELC attribute (BGP Attribute 28)? (MUST) **YES**

# *Vendor* Implementation Report, *Software* *Version*
## Reported By
(name)
(contact information)

## Components of Conformance 

(paste elements of conformance from above, and fill out)