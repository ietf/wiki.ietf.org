---
title: Template and Checklist for authors of Sub-SubTLV for RFC9012 Tunnel Encapsulation Attribute  
description: SubSubTLV template
published: true
date: 2026-01-28T16:54:07.741Z
tags: 
editor: markdown
dateCreated: 2026-01-28T16:54:07.741Z
---

# Template for New SubSubTLV for Tunnel Encaps TLV

## What goes in the template 

**A new SubTLV** needs the following information: 

1. Title  
2. Description 
3. Type Code 
4. Encoding of Value bytes  
  4.1 diagram of value byte 
  4.2 Description of each field in Encoding 
  4.3 Error handling per field 
5. What SubTLV this subSubTLV can go in 
6. Does this SubSubTLV impact validation 

It is helpful for items 1-6 be clearly laid out in one section. 
If new sub-TLVs are defined, it is helpful that these subTLVs 
go before the list of all subTLVs. 

In addition, the SUB-TLV may be part of discussions on 
1. Multiple Tunnel interactions 
2. A security section with specific comments regarding tunnel, 
3. A management section that includes comments on how the tunel will be managed. 

## Template 

This template provides instructions and examples for those authors writing a SubTLV description for an [RFC9012](https://datatracker.ietf.org/doc/rfc9012/) tunnel TLVs. 

### 1. Title
**format:** Title: One-line summary

The Title should be the name that you want to be added to the Specific IANA Sub-SubTLV list. For example, IANA has SR Policy Segment List Sub-TLVs from [RFC9830](https://datatracker.ietf.org/doc/rfc9830), 	draft-ietf-idr-bgp-sr-mpls-elp-00, and 
(draft-ietf-idr-sr-policy-seglist-id-06).  
 The One line summary should be less that 80 characters.  

### 2. Description 

The description should describe the SubTLVs function. It can be 2 paragraphs or less.  

### 3 Type 
**format:** Type: code-value 

Code value is either either value (assigned by IANA in early allocation) or TBDnn. 

### 4. Encoding of SubTLV 

The encoding of the type value has the following format: 

#### 4.1 diagram of byte layout 
 (most people use 32 bit, but you can use 16 bit)

#### 4.2 Description of each field with: 

Please specify: 
  a) title
  b) definition  
  c) limits on the field - what values the field can take. 
  d) Place in the SubTLV 
 
  
If the field is variable give some indication of what the range or how it is calculated. 

Example of Segment format is the following: 

>   SR Policy SAFI NLRI: <Distinguisher, Policy-Color, Endpoint>
>    Attributes:
>       Tunnel Encapsulation Attribute (23)
>          Tunnel Type: SR Policy (15)
>              Binding SID
>              SRv6 Binding SID
>              Preference
>              Priority
>              Policy Name
>              Policy Candidate Path Name
>              Explicit NULL Label Policy (ENLP)
>              Segment List
>                  Weight
>                  Segment List Identifier
>                  Segment
>                  Segment
>                  ...
>              ...
{.is-info}

#### 4.3 Error handling 

**Do:** 1. Specify what constitutes malformed sub-subTLV and if a malformed sub-SubTLV causes the SubTLV to be malformed. 

**Note:** [RFC9012](https://datatracker.ietf.org/doc/rfc9012/) specifies silently ignoring the malformed subTLV. 
           
**Do:** 2. Point to a description of content checking. 

If content checking is done in another process, still give a general hint on what that processing is.   

**Do noy** Hide the Sub-SubTLV error processing in an error handling section. 

The Error handling section should contain an overall summary of error handling. 
Refer to this section, but provide the specific details for this sub-subTLV in this section. 

### 5. What SubTLVs this SubSubTLV can go in  

**Do:** Give a list on what SubTLVs this SubSubTTLVs can go in.      
**Do:** Give the SubTLV name and code 
**Do not:** Go beyond your specification.  If future TLVs want to include this Sub-SubTLV, the new specification will do that. 

### 6. Does this Sub-SubTLV play a part in validation 

Please indicate whether this Sub-SubTLV is involved in the validation of the SubTLV or is critical to TLV valdation. 

**Validation should include:**

#### 6.1. Multiple Sub-SubTLVs of the same type in SubTLV 

If multiple SubTLVs are specified in the same Tunnel TLV, does 
this subTLV impact other SubTLV?  Are there checks? 


### 7. Specific Security requirements for this SubTLV (in Security Section)

If this Sub-SubTLV exposes critical information, how is it protected? This should be included in the Security Section. 

If the information in the Sub-SubTLV contains "critical information" for the network that will allow an attacker to access key infrastrucre, this critical information needs to be called out in the Security section. 

### 8. Specific Management issues regarding this Sub-SubTLV (in Manageability Section) 

If this subTLV exposes a name or an identifier (e.g. binding SID) that helps the management systems track something for provisioning or debugging, give hints 
on how this might be gathered or passed to management system. 

One example, is that the BGP-LS might gather this information in an SR routing system. 
