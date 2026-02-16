---
title: IDR  Template for Tunnel Encapsulation Attribute SubTLVs
description: TEA SubTLVs Template 
published: true
date: 2026-01-28T16:40:54.666Z
tags: 
editor: markdown
dateCreated: 2024-12-13T12:52:54.872Z
---


# Template for New SubTLV for Tunnel Encaps TLV

## What goes in the template 

**A new SubTLV** needs the following information: 

1. Title  
2. Description 
3. Type Code 
4. Encoding of Value bytes  
  4.1 diagram of value byte 
  4.2 Description of each field in Encoding 
  4.3 Error handling per field 
5. What tunnel types this subTLV can go in. 
6. Does this subTLV play a part in validation of the TLV 

It is helpful for items 1-6 be clearly laid out in one section. 
If new sub-TLVs are defined, it is helpful that these subTLVs 
go before the list of all subTLVs. 

In addition, the SUB-tLV may be part of discussions on 
1. Multiple Tunnel interactions 
2. A security section with specific comments regarding tunnel, 
3. A management section that includes comments on how the tunel will be managed. 

## Template 

This template provides instructions and examples for those authors writing a SubTLV description for an [RFC9012](https://datatracker.ietf.org/doc/rfc9012/) tunnel TLVs. 

### 1. Title
**format:** Title: One-line summary

The Title should be the name that you want to be added to the [IANA SubTLV list](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml)

The One line summary should be less that 80 characters.  

### 2. Description 

The description should describe the SubTLVs function. It can be 2 paragraphs or less. 

### 3 Type 
**format:** Type: code-value 

Code value is either either value (assigned by IANA in early allocation) or TBDnn. 

### 4. Encoding of SubTLV 

The encoding of the type value starts with the 

#### 4.1 diagram of byte layout 
 (most people use 32 bit, but you can use 16 bit)

#### 4.2 Description of each field with: 

Please specify: 
  a) title
  b) definition  
  c) limits on the field - what values the field can take. If the field is variable give some indication of what the range or how it is calculated. 

#### 4.3 Error handling 

**Do:** 1. Specify what constitutes malformed subTLV, and how a malformed subTLV is process.  

[RFC9012](https://datatracker.ietf.org/doc/rfc9012/) specifies silently ignoring the malformed subTLV. 
           
**Do:** 2. Point to a description of content checking. 

If content checking is done in another process, still give a general hint on what that processing is.   

**Do noy** Hide the SubTLV error processing in an error handling section. 

The Error handling section should contain an overall summary of error handling. 
Refer to this section, but provide the specific details for this subTLV in this section. 

### 5. What Tunnels types this SubTLV can go in  

**Do:** Give a list on what existing Tunnel types this SubTLV can go in. 

Specify what existing or new tunnel types this SubTLV can be included in. 
Existing tunnel types MUST include tunnel types in RFCs and WG document.
It may include the tunnel types in individual drafts. 
     
**Do:** Give the tunnel types by name and number.  
**Do not:** Go beyond your specification.  If future TLVs want to include this SubTLV, the new TLV specification will include that. 

### 6. Does this subTLV play a part in validation 

  Please indicate whether this subTLV is involved in the validation of the tunnel. 
  
  One way to provide this is a Table. Below is an example. 
#### Sub TLV Validation 
 | Tunnel-name | Code | SubTLVs Mandatory| SubTLVs Optional | SubTLVs not supported | documents | 
|---|---|---|---|---|---|
| New-tunnel | TBD1 | List-1 | List-2 | List-3 | ietf-documents |  
{.dense}

##### List 1: 
Prefix-SID (11), Preference (12), binding SID (13), ENLP (14), Priority (15),  SRv6 Binding SID (20), NRP (123), Segment List (128), 	

##### List 2:
Encapsulation (1), Protocol Type (2), Color (3), Tunnel Egress Endpoint (6), 	DS Field (7), UDP Destination Port (8), Embedded Label Handling (9), MPLS Label Stack (10), 
Policy CP Name (129), Policy Name (130), New-TLV1 (TBD2), new-TLV2 (TBD3)

##### List 3: 
Load-Balancing Block (5), SPI/SI (16), IPSEC-SA-ID (64),
Extended Port Property (65), Underlay ISP Properties (66), IPsec SA Nonce (67), IPsec Public Key (68), 	IPsec SA Proposal (69), 	Simplified IPsec SA (70), IPsec Version (71), RPF (124), Tree Label Stack (125), The WAN ID (192), The Bytes (193), IPSEC DIM (194),  IPSEC Key Exchange (195), IPSEC SA Proposals (196), Service Segment List (197), 	Service Vtep (198), 	Distributed Etherlink Switch (DES) Adjacency (199). 
   
**Validation should include:**

#### 6.1. Multiple SubTLVs of the same type in the same Tunnel TLV  

If multiple SubTLVs are specified in the same Tunnel TLV, does 
this subTLV impact other SubTLV?  Are there checks? 

#### 6.2. Multiple SubTLVs of the same type in another Tunnel TLV with the same tunnel type 

If this SubTLV can be listed in multiple Tunnel TLVs of the same type, 
is there any restriction or cross checking?  

##### 6.3. SubTLVs of the same type in two different tunnel types (top-level TLV) 

If this subTLV can be listed in two different Tunnel TLVs of different types, 
Is there any restriction or cross checking? 


### 7. Specific Security requirements for this SubTLV (in Security Section)

If this subTLV exposes critical information, how is it protected? This should be included in the Security Section. 

If the information in the subTLV contains "critical information" for the network that will allow an attacker to access key infrastrucre, this critical information needs to be called out in the Security section. 

### 8. Specific Management issues regarding this subTLV (in Manageability Section) 

If this subTLV exposes a name or an identifier (e.g. binding SID) that helps the management systems track something for provisioning or debugging, give hints 
on how this might be gathered or passed to management system. 

One example, is that the BGP-LS might gather this information in an SR routing system. 
