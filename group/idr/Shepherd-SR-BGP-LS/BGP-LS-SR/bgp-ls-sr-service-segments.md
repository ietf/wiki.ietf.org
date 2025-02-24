---
title: Shepherd Review of draft-ietf-idr-bgp-ls-sr-service-segment
description: Shepherd draft-ietf-idr-bgp-ls-sr-service-segment
published: true
date: 2025-02-24T20:14:43.128Z
tags: 
editor: markdown
dateCreated: 2025-02-22T16:49:48.072Z
---

# Shepherd Review of draft-ietf-idr-bgp-ls-sr-service-segments


## Summary of document
**draft:** [draft-ietf-idr-bgp-ls-sr-service-segments](https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-ls-sr-service-segments/)
**Type:** Proposed Standard 
**status:** WG Draft (last publication 11/22/2022), expired, needs revision 
**current version:** -02 

**implementations:** TBD 
**SR draft:**  TBD 

## -02 Review 
**Email Link:** https://mailarchive.ietf.org/arch/msg/idr/BdAT2NbDpc9QLK-7QJEhou8fh-E/
**Status:** Needs revision 
status: WG Draft (last publication 11/22/2022), expired
version: Needs update
early allocation: Needcd for BGP-LS TLV type 
a) Service Chaining (SC) TLV
b) Opaque Metadata (OM) TLV


### Technical Issues  
#### Issue-1: Please update to most recent RFCs and drafts

[RFC7752] should be replaced with [RFC9552]
[draft-ietf-idr-bgpls-srv6-ext] should be updated to [RFC9514]
[draft-ietf-idr-segment-routing-te-policy] should be updated to the appropriate drafts. 


#### Issue-2: Section 2, Who classifies the Service Type (ST) into the 16 bit field?
Is this IANA  or the operator? Please make it clear how this value is 
derived or pulled from an IANA source. 

#### Issue-3: Section 2, Traffic Type 

Please indicate 
1. What the "0" settings for these bits mean. (e.g. IPv4 incapable)
2. Please indicat that the non-used non-used bits are set to zero upon transmission, and 
   ignored upon reception. 
   
   
#### Issue-4: Section 2, Opaque Metadata (OM) TLV

Error handling needs to be specified for the opaque data. 
What consistutes a length error?  
Can theire be propriertary malformed fields or not? 

#### Issue-5, Please update the illustration in sectino 3 to 
reference appropriate current IDR drafts. 

#### Issue-6: Please upgrade the manageability section 

Please deal with the issues in malformed opaque data. 

#### Issue-7: Upgrade the Security section

Service segments are critical pieces of infrastructure. 
Consider a write-up that indicates these critical 
pieces of infrastructure need to be protected. 
For examples, see [draft-ietf-idr-sr-policy-safi]
for BGP-LS examples see [draft-ietf-idr-bgp-ls-sr-policy]


### Editorial Nits: 

#### Nit-1: Section 1, paragraph 4, starting with "however, 

**old text:/**
>    However, if SR-C is configured to compute a constrained path from 1
>    and 6, including a DPI service (i.e., S2) it is not yet possible due
>    to the lack of service distribution.  SR-C does not know where a DPI
>    service is nor the SID for it. /
{.is-info}

   
**New text:/**
>    However, if SR-C is configured to compute a constrained path from 1
>    and 6, including a DPI service (i.e., S2) it is not yet possible due
>    to the lack of information about service distribution.  SR-C does 
>    not know where a DPI service is nor the SID for it.  It does not 
>    know that S2 is a service it needs.
{.is-info}

