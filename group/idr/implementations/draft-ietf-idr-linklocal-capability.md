---
title: BGP Linklocal Capability Implementation Report
description: 
published: true
date: 2026-01-15T18:32:20.163Z
tags: 
editor: markdown
dateCreated: 2026-01-09T18:40:46.383Z
---

# Implementation Report for draft-ietf-idr-linklocal-capability
## Link-Local Next Hop Capability for BGP

### Abbreviations
- **LLNH**: Link-Local Next Hop Capability
- **GUA**: Global Unicast Address
- **LLA**: Link-Local Address

## Author(s)
Russ White (russ@riw.us)  
Jeff Tantsura (jefftant.ietf@gmail.com)  
Donatas Abraitis (donatas.abraitis@gmail.com)

## Components of Conformance 

### 2. Link-Local Next Hop Capability
- Does the implementation advertise the LLNH Capability (Code 77) only if it is capable of sending IPv6 Link-Local-only next hops? (SHOULD)
- Does the implementation only apply the procedures of this draft if the capability has been negotiated (received and sent) by both speakers? (REQUIRED)

### 3. Changes to the Procedure for Encoding IPv6 Next Hops
- When sending a single IPv6 Link-Local forwarding address, does the implementation set the Next Hop length to 16? (MUST)
- When sending both an IPv6 Global and Link-Local forwarding address, does the implementation set the Next Hop length to 32? (MUST)
- Does the implementation provide a local configuration option to determine which address (Global or Link-Local) should be preferred for forwarding when both are present? (SHOULD)

### 4. IPv6 Next Hop Procedures for Internal and External Peers

#### 4.1 General Processing
- If, after evaluating procedures, no IPv6 next hop addresses remain, is the route treated as a withdraw (treat-as-withdraw)? (MUST)

#### 4.2 Internal Peers (iBGP)
- Does the implementation avoid modifying the Global IPv6 next hop for non-locally-originated routes unless explicitly configured to announce its own IP? (SHOULD NOT)
- Does the implementation exclude a Link-Local IPv6 next hop if the internal peer is more than one IP hop away? (MUST NOT)
- When announcing a locally-originated route (or configured for next-hop-self), does the implementation include its own LLA if the route is directly connected or the interface address is the peer's address? (MUST)

#### 4.3 External Peers (eBGP)
- For multihop eBGP, does the implementation ensure Link-Local IPv6 next hops are NOT included? (MUST NOT)
- If the external peer is one hop away and the peer shares a common subnet with an interface of the speaker, is a Link-Local IPv6 next hop included? (SHOULD)
- If no next hops are included for an external peer, is the route treated as a withdraw? (MUST)

---

# FRRouting Implementation Report for FRR 10.4.0+
## Reported By
Donatas Abraitis <donatas.abraitis@gmail.com>

## Components of Conformance 

### 2. Link-Local Next Hop Capability
- Does the implementation advertise the LLNH Capability (Code 77) only if it is capable of sending IPv6 Link-Local-only next hops? (SHOULD) **YES**
- Does the implementation only apply the procedures of this draft if the capability has been negotiated by both speakers? (REQUIRED) **YES**
- Does the presence of this capability leave the support of Global-only and Global+Link-Local next hops unaffected? (SHOULD) **YES**

### 3. Changes to the Procedure for Encoding IPv6 Next Hops
- When sending a single IPv6 Link-Local forwarding address, does the implementation set the Next Hop length to 16? (MUST) **YES**
- When sending both an IPv6 Global and Link-Local forwarding address, does the implementation set the Next Hop length to 32? (MUST) **YES**
- Does the implementation provide a local configuration option to determine which address should be preferred? (SHOULD) **YES**

### 4. IPv6 Next Hop Procedures for Internal and External Peers

#### 4.1 General Processing
- If no IPv6 next hop addresses remain, is the route treated as a withdraw? (MUST) **YES**

#### 4.2 Internal Peers (iBGP)
- Does the implementation avoid modifying the Global IPv6 next hop for non-locally-originated routes? (SHOULD NOT) **YES**
- Does the implementation exclude LLA next hops if the internal peer is more than one IP hop away? (MUST NOT) **YES**
- When announcing a locally-originated route, does the implementation include its own LLA where required? (MUST) **YES**

#### 4.3 External Peers (eBGP)
- For multihop eBGP, does the implementation ensure Link-Local IPv6 next hops are NOT included? (MUST NOT) **YES**
- If the external peer is one hop away and the peer shares a common subnet with an interface of the speaker, is a Link-Local IPv6 next hop included? (SHOULD) **YES**
- If no next hops are included, is the route treated as a withdraw? (MUST) **YES**

# ExaBGP Implementation Report for ExaBGP 5+
## Reported By
Donatas Abraitis <donatas.abraitis@gmail.com>

## Components of Conformance 

### 2. Link-Local Next Hop Capability
- Does the implementation advertise the LLNH Capability (Code 77) only if it is capable of sending IPv6 Link-Local-only next hops? (SHOULD) **YES**
- Does the implementation only apply the procedures of this draft if the capability has been negotiated by both speakers? (REQUIRED) **YES**
- Does the presence of this capability leave the support of Global-only and Global+Link-Local next hops unaffected? (SHOULD) **YES**

### 3. Changes to the Procedure for Encoding IPv6 Next Hops
- When sending a single IPv6 Link-Local forwarding address, does the implementation set the Next Hop length to 16? (MUST) **YES**
- When sending both an IPv6 Global and Link-Local forwarding address, does the implementation set the Next Hop length to 32? (MUST) **YES**
- Does the implementation provide a local configuration option to determine which address should be preferred? (SHOULD) **YES**

### 4. IPv6 Next Hop Procedures for Internal and External Peers

#### 4.1 General Processing
- If no IPv6 next hop addresses remain, is the route treated as a withdraw? (MUST) **YES**

#### 4.2 Internal Peers (iBGP)
- Does the implementation avoid modifying the Global IPv6 next hop for non-locally-originated routes? (SHOULD NOT) **YES**
- Does the implementation exclude LLA next hops if the internal peer is more than one IP hop away? (MUST NOT) **YES**
- When announcing a locally-originated route, does the implementation include its own LLA where required? (MUST) **YES**

#### 4.3 External Peers (eBGP)
- For multihop eBGP, does the implementation ensure Link-Local IPv6 next hops are NOT included? (MUST NOT) **YES**
- If the external peer is one hop away and the peer shares a common subnet with an interface of the speaker, is a Link-Local IPv6 next hop included? (SHOULD) **YES**
- If no next hops are included, is the route treated as a withdraw? (MUST) **YES**