---
title: Templates for Drafts specifing Tunnel Encapsulation Attribute additions (new Tunnels or SubTLVs ) 
description: TEA Templates (tunnels and subTLVs)  
published: true
date: 2024-12-06T13:02:07.632Z
tags: 
editor: markdown
dateCreated: 2024-12-06T13:02:07.632Z
---

# Tunnel Encapsulation Attribute Templates 

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
4. List of all SubTLVs that can be passed in TEA 
5. A validation procedures 
6. Multiple Tunnel interactions 
7. A security section with specific comments regarding tunnel, 
8. A management section that includes comments on how the tunel will be managed. 

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

Tunnel-name   SubTLV Supported   SubTLVs not supported 
------------  ------------------ ----------------------

**Do not**: Forget to look at other drafts. 

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


6) Security Considerations 
Please look draft-ietf-idr-sr-policy-safi for a good template. 

7) Manageability section. 

How is the operator going to create the three new tunnels in 
configuration?  What problems do you envision gluing 

It will be useful to have these in unique setions. 

=================================================