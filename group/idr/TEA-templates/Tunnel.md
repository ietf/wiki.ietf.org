---
title: BGP Tunnel Encapsulation Attribute - Tunnel Template 
description: BGP TEA Tunnel Template 
published: true
date: 2026-01-19T16:34:35.445Z
tags: 
editor: markdown
dateCreated: 2024-12-06T13:27:02.904Z
---

# BGP Tunnel Encapsulation Attribute - Tunnel Template 


Tunnel Encapsulation Attribute [RFC9012](https://datatracker.ietf.org/doc/rfc9012/)
defines a BGP attribute that passes tunnel information. 
BGP passes this attribute to associate prefixes with a 
particular tunnel.  

Authors of BESS and IDR draft have begun to expand on the 
tunnel types and Sub-TLVs specifed in [RFC9012](https://datatracker.ietf.org/doc/rfc9012/).  

The IDR chairs provide these templates for authors to 
help them provide the necessary information for tunnels or 
sub-TLVs. 

## New Tunnel Types 
[Tunnel-type template](https://wiki.ietf.org/e/en/group/idr/TEA-templates/Tunnel)

Tunnel encapsulation specification requires the following things for each tunnel: 
1. Name
2. Code 
3. Description 
4. List of all Sub-TLVs that can be passed in in this Tunnel TLV (optional and mandatory). 
5. List of all Sub-TLVs that are not supported by this Tunnel TLV 
6. A validation procedures 
7. Multiple Tunnel interactions 
8. A security section with specific comments regarding tunnel, 
9. A management section that includes comments on how the tunel will be managed. 

It is helpful for items 1-5 be clearly laid out in one section. 
If new sub-TLVs are defined, it is helpful that these subTLVs 
go before the list of all subTLVs. 

Suggestions for each section are listed below. 


### 1. Name -

**Do:** Give a short name 
**Do not:** Please do not replicate a subTLV name (segment lists) 
### 2. Code 
**Do:** Use a TBDxx unless assigned a number by IANA
**Do not:** assign your own number for tunnel type

### 3. Description
**Do:** Do you give a short description regarding the tunnel, 
and link to a more extended text block giving a detailed description.  

**Do not:** Forget to give information in the longer text about:
- conflicts with any other tunnels if both are attached to the same route, 
- what network applications use the tunnel, and
- pros/cons about using tunnel, 


### 4. list of all SubTLV defined for TEA 

**Do:** Look at RFC9012 and any other TEA document you reference
(draft-ietf-idr-sr-policy-safi)
 
Gather a full list of subTLVs and put it in a table 

| Tunnel-name | Code | SubTLVS Supported | SubTLVs not supported | documents | 
|---|---|---|---|----|
| New-tunnel | TBD1 | List-1 | List-2 | drafts | 
{.dense}

#### List-1 
Encapsulation (1), Protocol Type (2), Color (3), Tunnel Egress Endpoint (6), 	DS Field (7), UDP Destination Port (8), 
Embedded Label Handling (9), MPLS Label Stack (10), Prefix-SID (11), Preference (12), binding SID (13), ENLP (14), Priority (15),  SRv6 Binding SID (20), NRP (123), Segment List (128), 	Policy CP Name (129), Policy Name (130), New-TLV1 (TBD2), new-TLV2 (TBD3)

#### List-2
Load-Balancing Block (5), SPI/SI (16), IPSEC-SA-ID (64),
Extended Port Property (65), Underlay ISP Properties (66), IPsec SA Nonce (67), IPsec Public Key (68), 	IPsec SA Proposal (69), 	Simplified IPsec SA (70), IPsec Version (71), RPF (124), Tree Label Stack (125), The WAN ID (192), The Bytes (193), IPSEC DIM (194), 
IPSEC Key Exchange (195), IPSEC SA Proposals (196), Service Segment List (197), 	Service Vtep (198), 	Distributed Etherlink Switch (DES) Adjacency (199). 


**Do not**: forget to give complete list with the form of 
name (code-number) for each item. 

**Remember**: Forget to look at other drafts. 

If this information should be listed on IANA web site, 
let us know.  We'll write a draft to add it. 

### 5. Validation procedure(s) 

**Do:** Write up a validation procedure for each Tunnel. 
You can look at the validation procedures for [RFC9012], 
but you do not have validate using Tunnel-Egress Endpoint. 

**Do Not** Assume that one tunnel validation procedure
matches another. 

### 6. Multiple Tunnel Interactions 

**Do:** Consider if this tunnel interacts with another 
tunnel specified for the prefixes (AFI/SAFI). 
If so, please give advice to the implementers. 

**Do not:** Forget to look at all existing Tunnel types at
[Tunnel types](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml)


### 7. Security Considerations 
Please look draft-ietf-idr-sr-policy-safi for a good template. 

### 8.  Manageability section. 

How is the operator going to create the three new tunnels in 
configuration?  What problems do you envision gluing 

It will be useful to have these in unique setions. 