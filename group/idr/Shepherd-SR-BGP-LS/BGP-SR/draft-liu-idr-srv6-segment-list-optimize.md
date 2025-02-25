---
title: Shepherd Reviews for draft-liu-idr-srv6-segment-list-optimize
description: Shepherd draft-liu-idr-srv6-segment-list-optimize
published: true
date: 2025-02-25T23:51:45.036Z
tags: 
editor: markdown
dateCreated: 2025-02-25T23:51:45.036Z
---

# Shepherd Reviews for draft-liu-idr-sr-segment-list-optimize

## Summary 
**Current name:** [draft-liu-idr-sr-segment-list-optimize/](https://datatracker.ietf.org/doc/draft-liu-idr-sr-segment-list-optimize/)
**previous name ** [draft-liu-idr-srv6-segment-list-optimize](https://datatracker.ietf.org/doc/html/draft-liu-idr-srv6-segment-list-optimize)

**Type:** Proposed Standard 
**status:** Individual draft   
**adoption call:** Needs to have Spring OK, and revisions 
**current version:** 01 of draft-liu-idr-sr-segment-list-optimize 
**Early Allocation**: yes, need early allocation 
**implementations:** H3C and ZTE in process 
**Spring problem:** mail list query says 2 problems are common. 
**Spring draft query email:** https://mailarchive.ietf.org/arch/msg/idr/_1LJyCRjn-BU8G91rdpYl6Q2fp4/
E-Flag, Segments: B, I, J, K 

## Review 00 of draft-liu-idr-sr-segment-list-optimize
**draft:** [draft-liu-idr-sr-segment-list-optimize/](https://datatracker.ietf.org/doc/draft-liu-idr-sr-segment-list-optimize/)

**Usage of flags from draft-ietf-idr-sr-policy-safi: ** E-Flag, Segments: B, I, J, K 


## Review -02 
**draft:**  [draft-liu-idr-srv6-segment-list-optimize](https://datatracker.ietf.org/doc/html/draft-liu-idr-srv6-segment-list-optimize)
**Status**: WG draft, needs revision 
**implementations:** unknown 
**allocation status:** needs early allocation 
**WG LC status: **TBD (unknown)
**email:** https://mailarchive.ietf.org/arch/msg/idr/v6GpJtriu8z0qg8OyjS9caGfy0M/
**Authors:** 4 

### Technical Issues

***Summary:** Text has a SR problem and solution. Needs a few refinements in -03. 

#### Issue-1: Please rename draft 

Please rename draft to:

[draft-liu-idr-sr-segment-list-optimize-00] 

This renaming will help the idr-chairs more easily track the draft. 

Issue-2:  Abstract, English text, clarity of text. 

Old text:/ 
   This document introduces an optimization method for segment list
   arrangement to solve the problem of the penultimate segment node
   being unable to perform PSP behavior when the egress node has both
   End SID and service SID and improve the forwarding efficiency of
   data packets.

New text:/ 
   This document introduces an optimization method for segment list
   arrangement the SR Policy TLV of the BGP Tunnel Encapsulation Attribute.
   This optimization solves the problem of the Segment Routing's 
   penultimate segment node being unable to perform the 
   penultimate Segment Pop (PSP) behavior when the egress node has both
   End SID and service SID encapsulated in Segment Routing Header's 
   segment List. This solution adds an E-Flag to the SRv6 SID 
   Endpoint Behavior sub-TLV carried in Segment List Sub-TLV of 
   the SR Policy TLV.  
   
   This optimization can improve the forwarding efficiency of data 
   packets when End SID and Service SID are present. /

   
 

#### Issue-2: All sections, remove [draft-ietf-idr-segment-routing-te-policy]
Please replace [draft-ietf-idr-segment-routing-te-policy]
with [draft-ietf-idr-sr-policy-safi].

  
#### Issue-3: How does the E-Flag interact with the Segment flags 
specified in [draft-ietf-idr-sr-policy-safi] and 
[draft-ietf-idr-sr-segtypes-ext]

It seems the B-Flag must be on when E-Flag is set. 

V-Flag - SID Verification
B-Flag - SRv6 Endpoint Behavior exist in draft. 
A-Flag - presence of SR Algorithm 
S-Flag - presence of SR-MPLS or SRv6 SID 


From [draft-ietf-idr-sr-segtypes-ext]

V-Flag applies to all Segment Types including the ones introduced by this document.
A-Flag applies to Segment Types C, D, I, J, and K. 
 If A-Flag appears with Segment Types A, B, E, F, G, and H, it MUST be ignored.

S-Flag applies to Segment Types C, D, E, F, G, H, I, J, and K. 
  If S-Flag appears with Segment Types A or B, it MUST be ignored.

B-Flag applies to Segment Types B, I, J, and K. 
  If B-Flag appears with Segment Types A, C, D, E, F, G, and H, it MUST be ignored.

It appears the SRv6 SID Endpoint Behavior and Structure is on segment types B, I, J, and K. 


#### Issue-4: E-Flag as set of Flags and IANA Section 

It would be wise to create E-Flag as a set of flags in the reserved section. 
As such, it would be useful to create a registry for such flags. 