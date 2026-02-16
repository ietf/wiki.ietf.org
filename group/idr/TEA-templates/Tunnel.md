---
title: BGP Tunnel Encapsulation Attribute - Tunnel Template 
description: BGP TEA Tunnel Template 
published: true
date: 2026-01-28T15:54:08.097Z
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

Tunnel encapsulation specification requires the following things for each tunnel: 
1. Name
2. Code 
3. Description 
4. List of All NLRIs this tunnel can be used with 
5. List of all Sub-TLVs that can be passed in in this Tunnel TLV (optional and mandatory). 
6. List of all Sub-TLVs that are not supported by this Tunnel TLV 

7. A validation procedures 
8. Multiple Tunnel interactions 
8. A security section with specific comments regarding tunnel, 
9. A management section that includes comments on how the tunel will be managed. 

It is helpful for items 1-6 be clearly laid out in one section. 
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

### 4. List of NLRIs this TLV can be attached to 
**Do:** Do list the NLRIs that your specification gives procedures for. 

**Do not:** Do not give NLRIs that your specification does not 
give validation and Error handling for. 

### 5. list of all SubTLV defined for TEA 

**Do:** 
- Look at RFC9012 and any other TEA document you reference (e.g. [RFC9830](https://datatracker.ietf.org/doc/rfc9830/))
- Look look at IANA page foar SubTLVs (https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml)
- Examine upcoming IDR drafts 
**Do not**: forget to give complete list with the form of 
name (code-number) for each item. 

 
Gather a full list of subTLVs and put it in a table.  Two Examples are shown below:

| Tunnel-name | Code | SubTLVS Mandatory | SUBTLvs Optional | SubTLVs not supported | documents | 
|---|---|---|---|----|----|
| New-tunnel-Foo | TBD1 | List-1 | List-2 | List-3 | [RFC9012](https://datatracker.ietf.org/doc/rfc9012/), [RFC5640](https://datatracker.ietf.org/doc/rfc5640/), [RFC9830](https://datatracker.ietf.org/doc/rfc9830/) | 
| New-tunnel-Foo | TBD1 | List-4 | List-5 | List-6 |	[draft-ietf-idr-sr-policy-nrp](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-nrp/), [draft-ietf-idr-sdwan-edge-discovery](https://datatracker.ietf.org/doc/draft-ietf-idr-sdwan-edge-discovery/),
| New-Tunnel-Foo | TBD1 | --   | ---  | List-9 |  [draft-ietf-bess-multicast-controller]
| New-tunnel-Foo | TBD1 | List-8 | List-9 | none  | this-draft |  
{.dense}

#### List-1 - RFC9012 and RFC9830 (Mandatory) 
Encapsulation (1), Protocol Type (2), Color (3), Tunnel Egress Endpoint (6), 
Prefix-SID (11), Preference (12), binding SID (13), Priority (15),  SRv6 Binding SID (20), 

#### List-2 - RFC9012 (optional)
DS Field (7), UDP Destination Port (8), Embedded Label Handling (9), MPLS Label Stack (10)

#### List-3  - RFC5640 and RFC9015 (not supported) 
Load-Balancing Block (5), SPI/SI (16),

#### List-4 - SR TE related (mandatory) 
NRP (123), Segment List (128) 

#### List-5 - SR TE Related (optional) 
Policy CP Name (129), Policy Name (130) 

#### List-6 - SDWAN and IPsec (Arista SDWAN) - not supported 
IPSEC-SA-ID (64),
Extended Port Property (65), Underlay ISP Properties (66), IPsec SA Nonce (67), IPsec Public Key (68), 	IPsec SA Proposal (69), 	Simplified IPsec SA (70), 
IPsec Version (71),  IPSEC DIM (194), IPSEC Key Exchange (195), IPSEC SA Proposals (196)
Service Segment List (197), 	Service Vtep (198), 	Distributed Etherlink Switch (DES) Adjacency (199). 

#### List-7 - Multicast Distribution 
RPF (124), Tree Label Stack (125), The WAN ID (192), The Bytes (193), 

#### List-8 - New SubTLVs (mandatory) 
Foo-new1-SubTLV (TBD2) 

#### list-9 - New SubTLVs (optional) 
Foo-new2-SubTLV (TBD3) 

If this information should be included in IANA Web site, Let IDR chairs knows. 
We'll write a draft to have itadded. 

### 6. List of Sub-SubTLVs
**Do:** Write-up the SubSubTLVs 
**Do not:** Forget to provide limits so that the BGP process can determine if the sub SubTLV is malformed. 

Example: See SR Policy Segment List Sub-TLVs in  [RFC9830](https://datatracker.ietf.org/doc/rfc9830/),  [RFC9831](https://datatracker.ietf.org/doc/rfc9831/). Also look at the 
Also look at [IANA web page](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml)

### 7. Validation procedure(s) 

**Do:** Write up a validation procedure for each Tunnel. 
You can look at the validation procedures for [RFC9012](https://datatracker.ietf.org/doc/rfc9012/), or  [RFC9830](https://datatracker.ietf.org/doc/rfc9830/). 

**Do Not** Assume that one tunnel validation procedure
matches another. 

### 8. Multiple Tunnel Interactions 

**Do:** Consider if this tunnel interacts with another 
tunnel specified for the prefixes (AFI/SAFI). 
If so, please give advice to the implementers. 

**Do not:** Forget to look at all existing Tunnel types at
[Tunnel types](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml)


### 9. Security Considerations 
Please look draft-ietf-idr-sr-policy-safi for a good template. 

### 10.  Manageability section. 

How is the operator going to create the three new tunnels in 
configuration?  What problems do you envision gluing 

It will be useful to have these in unique setions. 