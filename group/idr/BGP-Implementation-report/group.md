---
title: draft-ietf-idr-entropy-label Implementation Report
description: IDR WG report on implementations of draft-ietf-idr-entropy-label (BGP Router Capabilities Attribute)
published: true
date: 2023-07-10T20:23:02.008Z
tags: 
editor: markdown
dateCreated: 2023-07-10T20:19:48.279Z
---

# Implementation Report for draft-ietf-idr-entropy-label
## BGP Router Capabilities Attribute
  
 ### Abbrevatiations 
 
- **RCA** - Router Capabilities Attribute
- **ELCv3** - Entropy Label Capability

## Author(s) 

John Scudder (jgs@juniper.net) 

## Components of Conformance 

### 2.  BGP Router Capabilities Attribute

#### 2.1 Encoding

- Does the implementation ever include more than one instance of a capability with the same Capability Code, Capability Length, and Capability Value? (MUST NOT)
- Is the implementation prepared to accept such multiple instances? (MUST)
- Does the implementation insert TLVs in increasing order of Capability Code? (MUST) 

#### 2.2 Sending the RCA

- When originating a route with RCA, does the implementation set the header portion to be equal to the next hop of the route? (MUST)
- When propagating a route with RCA, if changing the next hop, does the implementation remove all unrecognized TLVs? (This is a MUST though is expressed in other terms, paragraph 4 of §2.2.) *Conformance to this requirement is especially important.*
- Is RCA sent by default to EBGP peers? (MUST NOT)

#### 2.3 Receiving the RCA

- Is RCA accepted by default from EBGP peers? (MUST NOT)
- If RCA is received from EBGP peers, is it discarded without further processing (unless configured to accept)? (MUST)
- Does the implementation provide configuration options to permit RCA to be sent to/received from EBGP peers? (SHOULD)
- Does the implementation compare the address given in the header portion of the RCA to the next hop in the received route, and disregard the RCA if they don't match? (MUST)
- Does the implementation silently ignore unrecognized TLVs? (MUST)
- Does the presence of any supported TLVs affect route selection? (SHOULD NOT)

#### 2.4 Attribute Error Handling

- Are updates with malformed RCA handled using the approach of "attribute discard"? (MUST, written as SHALL)
- Are unknown TLVs considered to be an error? (MUST NOT)
- Are malformed TLVs ignored, and other supported TLVs processed as usual? (MUST, although if only a single TLV type is supported this requirement is vacuous since in such a case there would be no other supported TLVs.)

#### 2.5 Network Operation Considerations

Although this section makes use of RFC 2119 terminology, the requirement is addressed to the network operator; there is no requirement for the implementation.

### 3. Entropy Label Capability (ELCv3)

#### 3.2 Sending the ELCv3

- Under what conditions does the implementation include the ELCv3 in the RCA? 
	- If it is the egress, and is EL-capable? (MAY)
  - If it is re-advertising a route that was received with a valid ELCv3,
    - ...and is not changing the next hop? (MAY)
    - ...and is changing the next hop, but knows that the new next hop is EL-capable or need not process the entropy label? (MAY; if this option is YES please provide details.) 
  - If it is redistributing a route learned from another protocol and that protocol conveyed the knowledge that the egress was EL-capable? (MAY; if this option is YES please provide details.)
- Is the ELCv3 ever advertised with routes that are not labeled? (MUST NOT)

#### 3.3 Receiving the ELCv3

- Is the ELCv3 discarded if received with an unlabeled route? (MUST)
- Does the implementation insert an entropy label if a valid ELCv3 is received? (MAY)

### 4. Legacy ELC

- Does the implementation discard any received ELC attribute (BGP Attribute 28)? (MUST)

# *Vendor* Implementation Report, *Software* *Version*
## Reported By
(name)
(contact information)

## Components of Conformance 

(paste elements of conformance from above, and fill out)