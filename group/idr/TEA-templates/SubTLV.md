---
title: IDR  Template for Tunnel Encapsulation Attribute SubTLVs
description: TEA SubTLVs Template 
published: true
date: 2024-12-13T14:12:14.876Z
tags: 
editor: markdown
dateCreated: 2024-12-13T12:52:54.872Z
---


# Template for New SubTLV for Tunnel Encaps TLV

## What goes in the template 

**A new SubTLV** needs the following information: 

1. Title  
2. Type Code 
3. Encoding of Value bytes  
  3.1 diagram of value byte 
  3.2 Description of each field in Encoding 
  3.3 Error handling per field 
4. What tunnel types this subTLV can go in. 
5. Does this subTLV play a part in validation of the TLV 

It is helpful for items 1-5 be clearly laid out in one section. 
If new sub-TLVs are defined, it is helpful that these subTLVs 
go before the list of all subTLVs. 

In addition, the SUB-tLV may be part of discussions on 
1. Multiple Tunnel interactions 
2. A security section with specific comments regarding tunnel, 
3. A management section that includes comments on how the tunel will be managed. 

## Template with instrucdtions 

### 1. Title
**format:** Title: One-line summary

The Title should be the name that you want to be added to the [IANA SubTLV list](https://www.iana.org/assignments/bgp-tunnel-encapsulation/bgp-tunnel-encapsulation.xhtml)

The One line summary should be less that 80 characters.  

### 2 Type 
**format:** Type: code-value 

Code value is either either value (IANA) or TBDnn. 

### 3. Encoding of value byte

The encoding of the type value starts with the 

 #### 3.1 diagram of byte layout 
 (most people use 32 bit, but you can use 16 bit)
 
   0                   1
   0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 
  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
  |               |               |
  +---------------+---------------+

(on the RPF, I cannot tell if you have 1 byte or no bytes)  

#### 3.2 Description of each field with: 

Please specify: 
  a) title
  b) definition  
  c) limits on the field - what values the field can take.  If the field is variable give 
     some indication of what the range or how it is calculated. 

#### 3.3) Error handling 

**Do:** 1. Specify what constitutes malformed subTLV, and how a malformed subTLV is process. 
           [RFC9012](https://datatracker.ietf.org/doc/rfc9012/) specifies silently ignoring the subTLV. 
           
**Do:** 2. Point to a description of content checking. 
           If content checking is done in another process, still give a general hint on what that processing is.   
**Dont:** Hide the SubTLV error processing in an error handling section. 
           The Error handling section should contain an overall summary of error handling. 
           Refer to this section, but provide the specific details for this subTLV in this section. 

### 4. What Tunnels types this SubTLV can go in  

**Do:** Give a list on what existing Tunnel types this SubTLV can go in. (at time of writing). 
      Exisxting tunnel types MUST include tunnel types in RFCs and WG document.
      It may include the tunnel types in individual drafts. 
     
**Do:** Give the tunnel types by name and number.  

### 5. Does this subTLV play a part in validation 

  Please indicate whether this subTLV is involved in the validation of the tunnel. 
  
  One way to provide this is a Table. Below is an example. 
   
 | Tunnel-name | Code | SubTLVS Supported | SubTLVs not supported | documents | 
|---|---|---|---|
| New-tunnel | TBD1 | List-1 | List-2 | 
{.dense}

List 1: Encapsulation (1), Protocol Type (2), Color (3), Tunnel Egress Endpoint (6), 	DS Field (7), UDP Destination Port (8), 
Embedded Label Handling (9), MPLS Label Stack (10), Prefix-SID (11), Preference (12), binding SID (13), ENLP (14), Priority (15),  SRv6 Binding SID (20), NRP (123), Segment List (128), 	Policy CP Name (129), Policy Name (130), New-TLV1 (TBD2), new-TLV2 (TBD3)

List 2: Load-Balancing Block (5), SPI/SI (16), IPSEC-SA-ID (64),
Extended Port Property (65), Underlay ISP Properties (66), IPsec SA Nonce (67), IPsec Public Key (68), 	IPsec SA Proposal (69), 	Simplified IPsec SA (70), IPsec Version (71), RPF (124), Tree Label Stack (125), The WAN ID (192), The Bytes (193), IPSEC DIM (194),  IPSEC Key Exchange (195), IPSEC SA Proposals (196), Service Segment List (197), 	Service Vtep (198), 	Distributed Etherlink Switch (DES) Adjacency (199). 
   
## Information that might be added 

### 1. Multiple SubTLVs in the same Tunnel TLV  

If multiple SubTLVs are specified in the same Tunnel TLV, does 
this subTLV impact other SubTLV?  Are there checks? 

### 2. SubTLVS in another Tunnel TLV of the same type in same TEA 

If this SubTLV can be listed in multiple Tunnel TLVs of the same type, 
is there any restriction or cross checking?  

#### 3. SubTLV in another tunnel TLV of a different type in same TEA 

If this subTLV can be listed in two different Tunnel TLVs of different types, 
Is there any restriction or cross checking? 

#### 4. Specific Security requirements for this SubTLV (in Security Section)

If this subTLV exposes critical information, how is it protected? 

#### 5. Specific Management issues regarding this subTLV (in Manageability Section) 

If this subTLV exposes a name or an identifier (e.g. binding SID) that helps 
the management systems track something for provisioning or debugging, give hints 
on how this might be gathered or passed to management system. 

One example, is that the BGP-LS might gather this information in an SR routing system. 
