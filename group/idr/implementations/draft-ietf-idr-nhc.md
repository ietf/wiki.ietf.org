---
title: draft-ietf-idr-nhc Implementation Report
description: 
published: true
date: 2026-02-06T14:46:31.086Z
tags: 
editor: markdown
dateCreated: 2025-11-07T22:55:05.682Z
---

# Implementation Report for draft-ietf-idr-nhc-00
## BGP Next Hop Dependent Characteristics Attribute
  
 ### Abbreviations 
 
- **NHC** - Next Hop Dependent Characteristics Attribute

## Author(s) 

John Scudder (jgs@bgp.nu) 

## Components of Conformance 

### 2.  BGP Next Hop Dependent Characteristics Attribute

#### 2.1 Encoding

- Does the implementation ever include more than one instance of a characteristic with the same Characteristic Code, Characteristic Length, and Characteristic Value? (MUST NOT)
- Is the implementation prepared to accept such multiple instances? (MUST)
- Does the implementation insert TLVs in increasing order of Characteristic Code? (MUST) 
- Does the implementation consume TLVs in any order? (MUST)

#### 2.2 Sending the NHC

- When originating a route with NHC, does the implementation set the header portion to be equal to the next hop of the route? (MUST)
- When propagating a route with NHC, if changing the next hop, does the implementation... 
  - remove all unrecognized TLVs? (This is a MUST although is expressed in other terms, paragraph 4 of §2.2.) *Conformance to this requirement is especially important.*
  - include all recognized TLVs, constructed appropriately? (SHOULD)
- Is NHC propagated by default to all types of peers? (SHOULD)
- Is NHC sent with any NLRI type that does not include a next hop? (MUST NOT)

#### 2.2.1 Link-Local-Only Next Hops

- Is the implementation able to originate a route whose next hop has no global part?
- If so, when it originates such a route, does it include a BGPID TLV? (MUST)

#### 2.2.2 Aggregation

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

Although this section uses RFC 2119 terminology, the requirement is addressed to the network operator; there is no requirement for the implementation.

### 3. BGP Identifier Characteristic

#### 3.2. Sending the BGPID

(This is reported under 2.2.1.)

#### 3.3. Receiving the BGPID

- When receiving a route that encodes only a link-local address and no global address, is a NEXT_HOP considered a semantic match only if the BGPID matches (MUST, expressed as MUST NOT).

##### 3.3.1. Not Receiving the BGPID

- When receiving a route that encodes only a link-local address and no global address, is the NEXT_HOP match considered to have failed if the BGPID is not present? (MUST)

# Juniper Networks Implementation Report for Junos 26.2R1
## Reported By
Kevin Wang <kevin.wang@hpe.com>

## Components of Conformance 

### 2.  BGP Next Hop Dependent Characteristics Attribute

#### 2.1 Encoding

- Does the implementation ever include more than one instance of a characteristic with the same Characteristic Code, Characteristic Length, and Characteristic Value? (MUST NOT) **NO**
- Is the implementation prepared to accept such multiple instances? (MUST) **YES**
- Does the implementation insert TLVs in increasing order of Characteristic Code? (MUST) **YES**
- Does the implementation consume TLVs in any order? (MUST) **YES**

#### 2.2 Sending the NHC

- When originating a route with NHC, does the implementation set the header portion to be equal to the next hop of the route? (MUST) **YES**
- When propagating a route with NHC, if changing the next hop, does the implementation... 
  - remove all unrecognized TLVs? (This is a MUST although is expressed in other terms, paragraph 4 of §2.2.) *Conformance to this requirement is especially important.* **YES**
  - include all recognized TLVs, constructed appropriately? (SHOULD) **YES**
- Is NHC propagated by default to all types of peers? (SHOULD) **YES**
- Is NHC sent with any NLRI type that does not include a next hop? (MUST NOT) **NO**

#### 2.2.1 Link-Local-Only Next Hops

- Is the implementation able to originate a route whose next hop has no global part? **YES**
- If so, when it originates such a route, does it include a BGPID TLV? (MUST) **YES**

#### 2.2.2 Aggregation

- When aggregating routes, are the rules for forming a new NHC followed? (MUST) **YES**
- If there are no eligible capabilities, is the NHC included? (MUST NOT) **NO**

#### 2.3 Receiving the NHC

- Is NHC accepted by default from all types of peers? (SHOULD) **YES**
- Does the implementation provide configuration options to permit NHC to be sent to/received from EBGP peers? (SHOULD) **YES**
- Does the implementation compare the address given in the header portion of the NHC to the next hop in the received route, and disregard the NHC if they don't match? (MUST) **YES**
- Does the implementation silently ignore unrecognized TLVs? (MUST) **YES**
- Does the presence of any supported TLVs affect route selection? (SHOULD NOT) **NO**

#### 2.4 Attribute Error Handling

- Are updates with malformed NHC handled using the approach of "attribute discard"? (MUST, written as SHALL) **YES**
- Are unknown TLVs considered to be an error? (MUST NOT) **NO**
- Are malformed TLVs ignored, and other supported TLVs processed as usual? (SHOULD, although if only a single TLV type is supported this requirement is vacuous since in such a case there would be no other supported TLVs. There could be a variance from the SHOULD if there were a new TLV type defined that defined different behavior.) **YES**

#### 2.5 Network Operation Considerations

Although this section uses RFC 2119 terminology, the requirement is addressed to the network operator; there is no requirement for the implementation.

### 3. BGP Identifier Characteristic

#### 3.2. Sending the BGPID

(This is reported under 2.2.1.)

#### 3.3. Receiving the BGPID

- When receiving a route that encodes only a link-local address and no global address, is a NEXT_HOP considered a semantic match only if the BGPID matches (MUST, expressed as MUST NOT). **YES**

##### 3.3.1. Not Receiving the BGPID

- When receiving a route that encodes only a link-local address and no global address, is the NEXT_HOP match considered to have failed if the BGPID is not present? (MUST) **YES**

# H3C Implementation Report, Comware V9R1B83D001
## Reported By
(Changwang Lin)
(linchangwang.04414@h3c.com)

## Components of Conformance 
### 2.  BGP Next Hop Dependent Characteristics Attribute

#### 2.1 Encoding

- Does the implementation ever include more than one instance of a characteristic with the same Characteristic Code, Characteristic Length, and Characteristic Value? (MUST NOT) **NO**
- Is the implementation prepared to accept such multiple instances? (MUST) **YES**
- Does the implementation insert TLVs in increasing order of Characteristic Code? (MUST) **YES**
- Does the implementation consume TLVs in any order? (MUST) **YES**

#### 2.2 Sending the NHC

- When originating a route with NHC, does the implementation set the header portion to be equal to the next hop of the route? (MUST) **YES**
- When propagating a route with NHC, if changing the next hop, does the implementation... 
  - remove all unrecognized TLVs? (This is a MUST although is expressed in other terms, paragraph 4 of §2.2.) *Conformance to this requirement is especially important.* **YES**
  - include all recognized TLVs, constructed appropriately? (SHOULD) **YES**
- Is NHC propagated by default to all types of peers? (SHOULD) **YES**
- Is NHC sent with any NLRI type that does not include a next hop? (MUST NOT) **NO**

#### 2.2.1 Link-Local-Only Next Hops

- Is the implementation able to originate a route whose next hop has no global part? **YES**
- If so, when it originates such a route, does it include a BGPID TLV? (MUST) **NO**

#### 2.2.2 Aggregation

- When aggregating routes, are the rules for forming a new NHC followed? (MUST) **YES**
- If there are no eligible capabilities, is the NHC included? (MUST NOT) **NO**

#### 2.3 Receiving the NHC

- Is NHC accepted by default from all types of peers? (SHOULD) **YES**
- Does the implementation provide configuration options to permit NHC to be sent to/received from EBGP peers? (SHOULD) **YES**
- Does the implementation compare the address given in the header portion of the NHC to the next hop in the received route, and disregard the NHC if they don't match? (MUST) **YES**
- Does the implementation silently ignore unrecognized TLVs? (MUST) **YES**
- Does the presence of any supported TLVs affect route selection? (SHOULD NOT) **NO**

#### 2.4 Attribute Error Handling

- Are updates with malformed NHC handled using the approach of "attribute discard"? (MUST, written as SHALL) **YES**
- Are unknown TLVs considered to be an error? (MUST NOT) **NO**
- Are malformed TLVs ignored, and other supported TLVs processed as usual? (SHOULD, although if only a single TLV type is supported this requirement is vacuous since in such a case there would be no other supported TLVs. There could be a variance from the SHOULD if there were a new TLV type defined that defined different behavior.) **YES**

#### 2.5 Network Operation Considerations

Although this section uses RFC 2119 terminology, the requirement is addressed to the network operator; there is no requirement for the implementation.

### 3. BGP Identifier Characteristic

#### 3.2. Sending the BGPID

(This is reported under 2.2.1.)

#### 3.3. Receiving the BGPID

- When receiving a route that encodes only a link-local address and no global address, is a NEXT_HOP considered a semantic match only if the BGPID matches (MUST, expressed as MUST NOT). **NO**

##### 3.3.1. Not Receiving the BGPID

- When receiving a route that encodes only a link-local address and no global address, is the NEXT_HOP match considered to have failed if the BGPID is not present? (MUST) **NO**

# FRRouting Implementation Report, FRRouting 10.4+
## Reported By
(Donatas Abraitis)
(donatas.abraitis@gmail.com)

## Components of Conformance 
### 2.  BGP Next Hop Dependent Characteristics Attribute

#### 2.1 Encoding

- Does the implementation ever include more than one instance of a characteristic with the same Characteristic Code, Characteristic Length, and Characteristic Value? (MUST NOT) **NO**
- Is the implementation prepared to accept such multiple instances? (MUST) **YES**
- Does the implementation insert TLVs in increasing order of Characteristic Code? (MUST) **YES**
- Does the implementation consume TLVs in any order? (MUST) **YES**

#### 2.2 Sending the NHC

- When originating a route with NHC, does the implementation set the header portion to be equal to the next hop of the route? (MUST) **YES**
- When propagating a route with NHC, if changing the next hop, does the implementation... 
  - remove all unrecognized TLVs? (This is a MUST although is expressed in other terms, paragraph 4 of §2.2.) *Conformance to this requirement is especially important.* **YES**
  - include all recognized TLVs, constructed appropriately? (SHOULD) **YES**
- Is NHC propagated by default to all types of peers? (SHOULD) **YES**
- Is NHC sent with any NLRI type that does not include a next hop? (MUST NOT) **NO**

#### 2.2.1 Link-Local-Only Next Hops

- Is the implementation able to originate a route whose next hop has no global part? **YES**
- If so, when it originates such a route, does it include a BGPID TLV? (MUST) **YES**

#### 2.2.2 Aggregation

- When aggregating routes, are the rules for forming a new NHC followed? (MUST) **YES**
- If there are no eligible capabilities, is the NHC included? (MUST NOT) **NO**

#### 2.3 Receiving the NHC

- Is NHC accepted by default from all types of peers? (SHOULD) **YES**
- Does the implementation provide configuration options to permit NHC to be sent to/received from EBGP peers? (SHOULD) **YES**
- Does the implementation compare the address given in the header portion of the NHC to the next hop in the received route, and disregard the NHC if they don't match? (MUST) **YES**
- Does the implementation silently ignore unrecognized TLVs? (MUST) **YES**
- Does the presence of any supported TLVs affect route selection? (SHOULD NOT) **NO**

#### 2.4 Attribute Error Handling

- Are updates with malformed NHC handled using the approach of "attribute discard"? (MUST, written as SHALL) **YES**
- Are unknown TLVs considered to be an error? (MUST NOT) **NO**
- Are malformed TLVs ignored, and other supported TLVs processed as usual? (SHOULD, although if only a single TLV type is supported this requirement is vacuous since in such a case there would be no other supported TLVs. There could be a variance from the SHOULD if there were a new TLV type defined that defined different behavior.) **NO**

#### 2.5 Network Operation Considerations

Although this section uses RFC 2119 terminology, the requirement is addressed to the network operator; there is no requirement for the implementation.

### 3. BGP Identifier Characteristic

#### 3.2. Sending the BGPID

(This is reported under 2.2.1.)

#### 3.3. Receiving the BGPID

- When receiving a route that encodes only a link-local address and no global address, is a NEXT_HOP considered a semantic match only if the BGPID matches (MUST, expressed as MUST NOT). **NO**

##### 3.3.1. Not Receiving the BGPID

- When receiving a route that encodes only a link-local address and no global address, is the NEXT_HOP match considered to have failed if the BGPID is not present? (MUST) **NO**