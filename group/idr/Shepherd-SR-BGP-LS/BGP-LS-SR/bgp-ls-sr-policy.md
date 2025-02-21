---
title: Shepherd Reviews for BGP-LS for SR Policiy (draft-ietf-idr-bgp-ls-sr-policy)
description: Review BGP-LS for draft-ietf-idr-bgp-ls-sr-policy
published: true
date: 2025-02-21T20:20:46.500Z
tags: 
editor: markdown
dateCreated: 2024-11-14T21:15:40.055Z
---

# Shepherd Reviews for BGP-LS for SR Policy (draft-ietf-idr-bgp-ls-sr-policy)



## -13 at AD Review 
**AD-Review:** https://mailarchive.ietf.org/arch/msg/idr/IcSkiOQXuP9431iATnvxIgO_E2I/

## -11 at AD Review 
**AD Review:** https://mailarchive.ietf.org/arch/msg/idr/PFzh_zMvqfz13-KyUSs4r54fK5A/

## -10 submitted to IESG
**Early RTG-DIR review:** (Joel Halpren): https://mailarchive.ietf.org/arch/msg/idr/iuD4n-9b4-dMI1SQa1vkCPK7nfA/ 
**Early OPS-DIR review:** (Tina Tsou): https://mailarchive.ietf.org/arch/msg/idr/PRhis-VEcyVEjQItu2VUYNLtj0Y/
**SEC-DIR (telehat):** (Ned Smith): https://mailarchive.ietf.org/arch/msg/idr/ca-Xo4WS-gsGXZ4Jg7I74XK5gxA/

## Review for -09
**draft:** draft-ietf-idr-bgp-ls-sr-policy-08 
**status:** Ready for publication 
**email:** https://mailarchive.ietf.org/arch/msg/idr/0dL1E-C74DUgkjyOlvFStqingfg/
**2nd email:** https://mailarchive.ietf.org/arch/msg/idr/BwcU5Bmxd_7RyULcwQAcG5uTUmg/

## Review for -08
### Summary: 
**Shepherd:** Susan Hares 
**draft:** draft-ietf-idr-bgp-ls-sr-policy-08 
**status:** review in process. 
**email:** 
**Summary:** Resolved all but 15, 18, and 30.  John OKed the resolution. 

Ketan has resolved the shepherd’s points except issues 15, 18, and 30. 
- On issue 15, you believe that the base BGP-LS handles the maximum case in section 5.3 
See [RFC9552](https://www.rfc-editor.org/rfc/rfc9552.html#section-5.3). 

- On issue 18 and 30, you feel that implementers understand by the assignments what values are in scope and what values are not in scope. 

> **Ketan states regarding issues 18 and 30:** BGP-LS is simply carrying the information about these metric types - it is not consuming this information. As such, any new metric types that need to be conveyed using the specific TLVs/sub-TLVs can be done by simply doing IANA code point allocations. There is no need for any change in TLV/sub-TLV encoding as far as BGP-LS is concerned.
{.is-info}

I believe Ketan's argument is solid.  

**My resolution** to issues 15, 18, and 30 is to send a note to IDR’s WG’s AD (John Scudder) to confirm that your resolution is acceptable to him.  By confirming it now, it set a precedence for the subsequent AD review. 

John OKed resolution: 
https://mailarchive.ietf.org/arch/msg/idr/bje6-B888d6Eykk7Q7IJ-GMM7wA/



## Review for -06

### Summary: 
**Shepherd:** Susan Hares 
**draft:** draft-ietf-idr-bgp-ls-sr-policy-06 
**status:** Needs -07 
**email:** https://mailarchive.ietf.org/arch/msg/idr/JJnFs4pJZhdMQ2f1bESK9Qtr0Us/
**Summary:** Thanks to Ketan for resolving a great deal of the issues. 

### Technical Issues in -06 
Issues resolved from -05: most

The following technical issues still need to be resolved:

- Issue 4e (definition of F-Flag when clear),
- Issue 8a and 8b (bit definitions when bit is cleared)
- Issue 10 (bit definitions when cleared, reference to 9252 specific section)
- Issues 13, 14, 15, 16, 19, 20, 31 - all request clarity of on definition of bit (or bits) when cleared.
- Issue 18 and 30:  Values for type of metric (consider values 6-120 in section 8.6)
- Issue 28: Awaiting validation on p2p question, before I close the issue.

The Two major issues are:
a) definition of Flags when the flag is cleared,
b) the metric types (section 8.6) being full defined when values 6-120 are not assigned.

### NITS 
All NITs are closed, but I would like to you to look at NIT-8b following (I've copied it below).






## Review for -05 
### Summary:  
**Shepherd:** Susan Hares
**draft:** draft-ietf-idr-bgp-ls-sr-policy-05 
**Status:** Needs revision 
**email link**: https://mailarchive.ietf.org/arch/msg/idr/DLfvkhT7HOClFSfUzFNQ9z8bSFc/


### Technical Issues 
**Issue 1: Section 1, introduction**
Does this draft cover explicit Candidate Policy (CP) information in BGP-LS or dynamic and explicit CP information?  
Please specify whether this is appropriate for explicit, dynamic, or composite Candidate Paths. 

**Issue 2: Section 3 diagram:**

“Node Descriptor TLV (for the Headend)” in the diagram in section 3 should be “Local Node Descriptor”

**Issue 3: Section 4, Flags** 

– Why is “cleared” used for bits?  It would seem that “zero would be better”.  
>  Other bits MUST be cleared by the originator and 
>           and MUST be ignored by a receiver. 

Suggested new text: 
>   Other bits MUST be cleared (set to zero) 
>   by the originator and MUST be ignored 
>   by a receiver. 

**Note:** You can simply indicate that you will be using “cleared”/”sets” for bits. I am looking for consistency across the document. 
 
**Issue 4: Section 5.1, Bit Definition** 

Summary:  The Bit Definition (D-Flag, B-Flag, U-Flag, L-Flag, and F-flag) link to section in RFC9256 are unclear. 

 4a) D-Flag:  

 Draft text:
>          D-Flag: Indicates the dataplane for the BSIDs and if they are
>          16 octet SRv6 SID when set and are 4 octet SR/MPLS label value
>          when clear.

 New text:
>          D-Flag: Indicates the dataplane for the BSIDs. If D-Flag is set, 
>          the BSID is 16 octet SRv6 SID. If D-Flag is clear, the BSID is
>          the 4-octet SR/MPLS label value.  [RFC9256, section 6.2] 
> 

 Text in RFC9256, section 6.2, text:/
>   “When the active candidate path has a specified BSID, 
>    the SR Policy uses that BSID if this value 
>   (label in MPLS, IPv6 address in SRv6) is available.
 
 4b) B-Flag 
 Draft text:/ 
>        B-Flag: Indicates the allocation of the value in the BSID field
>        when set and indicates that BSID is not allocated when clear. 

**Question:** Does the “B-Flag” set indicate a specified BSID-only case per 
  [RFC9256, section 6.2.3].  Does B-Flag clear, indicate unspecified 
  BSID (RFC9256, section 6.2.1)? Or just that the node has allocated (or not-allocated)
  the BSID value. The problem with this definition is the linkage to 
  RFC9252. 

4c) U-Flag – Does this U-Flag link to the Unspecified BSID (RFC9256, section 6.2.1)? 
     Or is it just that the BSID is unavailable due to another cause? 

4d) L-Flag – If this explanation references RFC9256 section 6.2, please add the section to the text.  

RFC9256 text:/Optionally, instead of only checking that the BSID of the active path is available, 
a headend MAY check that it is available within the given SID range i.e., 
Segment Routing Local Block (SRLB) as specified in [RFC8402]./ 

4e) F-Flag – The explanation is clear, but the link to RFC9256 is not clear. 
    Is this a reference to section 9 in RFC9256.  

**Issue 5: Section 5.1 text on length of BSID fields**

Old text:/ 
>    The BSID fields above are 4-octet carrying the MPLS Label or 16-octet
>    carrying the SRv6 SID based on the BSID D-flag.  When carrying the
>    MPLS Label, as shown in the figure below, the TC, S, and TTL (total
>    of 12 bits) are RESERVED and MUST be set to 0 by the originator and
>    MUST be ignored by a receiver.

New text:/ 
>    The BSDI fields above depend on the dataplane (SRv6 or MPLS)
>    indicated by the BSID D-Flag.  If D-Flag set (SRv6 dataplane), then 
>    the length of the BSID fields is 16 octets.  If the D-Flag is clear 
>    (MPLS dataplane), then the length of the BSDI Fields is 4 octets.  
>    When carrying the MPLS Label, as shown in the figure below, the TC, S, and TTL (total
>    of 12 bits) are RESERVED and MUST be set to 0 by the originator and
>    MUST be ignored by a receiver.


**Issue 6: Section 5.2 – bit definitions link to RFC9256 is not clear.**

The following text describing the “bit positions” does not give a clear and specific reference to sections in RFC9256: 
   Draft-text:/
>      “The following bit 
>      positions are defined and the semantics are described in detail 
>      in [RFC9256].  

   See my comments on section 5.1 regarding my questions on each bit.  
 

**Issue 7: Section 5.2 – Text on which sub-TLVs can be used in the SR Binding SID TLV**

    Note: This is a technical issue because the unclear text could impact interoperability 

    Two points are being made in the following paragraph: 
1.	SRv6 Endpoint Behavior TLV (1250) and SRv6 SID Structure TLV (1252) are defined in RFC9514
2.	These two sub TLVs may optionally be used in the SRv6 Binding SID 

Old text:/
>    The SRv6 Endpoint Behavior TLV (1250) and the SRv6 SID Structure TLV
>    (1252) defined in [RFC9514] are used as sub-TLVs of the SRv6 Binding
>    SID TLV to optionally indicate the SRv6 Endpoint behavior and SID
>    structure for the Binding SID value in the TLV.
New text:/
>    The SRv6 Endpoint Behavior TLV (1250) and the SRv6 SID Structure TLV
>    (1252) MAY optionally be used as sub-TLVs of the SRv6 Binding SID TLV
>    to indicate the SRv6 Endpoint behavior and SID structure for the 
>    Binding SID value in the TLV. [RFC9514] defines SRv6 Endpoint Behavior TLV
>    And SRv6 SID Structure TLV. 
> 

**Issue 8: Section 5.3 – Flag bits definitions** 
•	S-Flag – Please define what it means when S-Flag is clear (zero), and give RFC9256 reference. 
•	A-Flag – Please define what it means when A-Flag is clear (zero), and give RFC9256 reference.
•	E-Flag – Please define what it means when B-Flag is clear (zero), and give RFC9256 reference.  
•	V-Flag – Please give RFC9256 reference 
•	O-Flag – Please define what it means when O-Flag is clear (zero). [Here the RFC9256 reference is given.]  
•	D-Flag – Please define what it means when D-Flag is clear (zero), and give RFC9256 reference. 
•	C-Flag – Please define what it means when C-Flag is clear (zero), and give RFC9256 reference.
•	I-Flag – Please define what it means when I-Flag is set (one) or cleared (zero). 
•	T-flag – Please define what it means when the T-Flag is clear (zero) 
•	U-Flag – Please define what it means when the U-Flag is clear (clear), and give RFC9256 reference. 

Please give references to specific sections in RFC9256 since you state in the bit descriptions that: 
> 
> “The following bit positions are defined and the semantics are described in detail in [RFC9256].”

**Issue 9: Section 5.6 – Only Explicit CP and Dynamic CP discussion**

This section describes usage by:
•	explicit candidate paths (tunnels), and 
•	dynamic candidate paths (on-demand tunnels). 
It does not discuss usage by a composite path.  Is it valid to apply to composite? 

**Issue 10: Section 5.6 – Bit flags definitions** 
•	P-Flag, U-Flag, A-Flag, T-Flag, S-flag, F-Flag, H-Flag – do not indicate what a cleared flag means. 
•	What does mutual exclusive mean between P-Flag and U-Flag.  (I think it means both cannot be set). 

**Issue 11: Section 5.6, What sub-TLVs can be included**

concern:  The text does not clearly state which sub-TLVs MAY be included.  

Draft-Text:/
> sub-TLVs: optional sub-TLVs MAY be included in this TLV to describe other constraints.
>    The following constraint sub-TLVs are defined for the SR CP Constraints TLV./ 
New text:/ 
> sub-TLVs: A sequence of optional sub-TLVs MAY be included in this TLV 
>              to describe other constraints. The optional sub-TLVs that can be 
>               included are: SR Affinity Constraint, SR SRLG Constraint, SR Bandwidth
>               Constraint, SR Disjoint Group Constraint, SR Bidirectional Group Constraint, 
>               and SR Metric Constraint. These constraint Sub-TLVs are defined below. / 

**Issue-12: Section 5.6.3, text description of SR Bandwidth Sub-TLV**

old text:/  
> 					  Only a single instance of
>             this sub-TLV is advertised for a given CP./ 
   
problem: I think you mean for a given CP Constraint TLV. 
         Since the link is unclear, I have added this as a technical issues. 
		     I suspect the issues is mostly editorial. 

New text:/
       Only  a single instance of 
       this sub-TLV is advertised for a given 
		   CP Constraint TLV, and CP.  Recall that only one 
		   CP constraint TLV is allowed per CP./ 
		 
**Issue-13: Section 5.6.4, clear of Request Flag Bits when cleared**

The descriptions of the request flags (S-Flag, N-Flag, L-Flag, F-Flag, and I-Flag)
do specify a behavior when the bit is set.  What is the behavior when the bit is cleared?  
This needs to be described either in the introduction the request bits or on each bit. 

**Issue-14, Section 5.6.4, clear meaning of Status Flag bits when cleared**

The descriptions of the status flags (S-Flag, N-Flag, L-Flag, F-Flag, I-Flag, and X-flag)
do specify the status meaning when the bit is set.   What is the behavior when the bit is cleared?   

This needs to be described either in the introduction the status bits or on each bit. 

**Issue-15: Section 5.6.5, length maximum**

The minimum length is clearly stated.  Is there a maximum length for this field? 

**Issue-16: Section 5.6.5, C-Flag, what does C-Flag mean if clear**

Current text:
>       -  C-Flag: Indicates that the bidirectional path is co-routed when
>          set/
		 
Problem: What does it mean when the C-Flag is clear? 

**Issue-17: Section 5.6.6**

The SR Metric Constraint Sub-TLV is used for a dynamic path and an explicit path. 
Is this sub-TLV supported for a composite path? 

**Issue-18: Section 5.6.6, Metric-Type**

Are all other values except the values in section 8.6 invalid? 

**Issue-19: Section 5.6.6, Flags** 

a) What is the meaning of the O-Flag when the bit is cleared? 
b) What is the meaning of the M-Flag when the bit is cleared? 
c) What is the meaning of the B-Flag when the bit is cleared? 

**Issue-20: Section 5.7, Flags clarity**

The link between RFC9256 and the Flag bits (D-Flag, E-Flag, C-Flag, V-Flag, 
R-Flag, F-Flag, A-Flag, T-Flag, M-Flag)is vague.  Please give a 
section reference per flag bit in the form (RFC9256, section x.x (or x.x.x)). 

Please indicate what action occurs when the following flags are clear: C-Flag, 
A-Flag, and T-Flag, 

**Issue-21: Section 5.7, Algorithm values**

Please indicate what values can be set in the Algorithm octet. 

**Issue-22: Section 5.7, Methodology paragraph clarity, ";" issue**

The ";" causes the methodology to be unclear.  
 
 old text:
>   A SID-List may be empty in certain cases
>    (e.g. for a dynamic path) where the headend has not yet performed the
>    computation and hence not derived the segments required for the path;
>    in such cases, the SR Segment List TLV SHOULD NOT include any SR
>    Segment sub-TLVs. 
   
  New text (suggested):
>     A SID-List may be empty in certain situations 
> 	(e.g. for a dynamic path) where the headend has not yet performed 
> 	the computation and hence not derived the segments required for the path.
>     In such cases where the SID-LIST is empty, the SR Segment List TLV 
> 	SHOULD NOT include any SR Segment sub-TLVs. 

**Issue-23, Section 5.8, Segment type** 

  Other proposed specifications give other segment types. 
  The following text does not take this into consideration: 
  
 Old text:/
>     Segment Type: 1 octet which indicates the type of segment (refer
>       Section 5.8.1 for details)
	  
A suggestion for the new text is: 
New text:/
>    Segment Type: 1 octet which indicates the type of segment. Initial 
>     values are specified by this document (See Section 5.8.1 for details).
> 	  Additional segment types are possible, but out of scope for this document./

**Issue-24, Section 5.8, Flag bits** 

The link between RFC9256 and the flag bits is unclear for S-Flag, E-Flag, V-Flag, 
R-Flag, and A-Flag.  Please give a reference for a section in RFC9256 for each bit type. 

V-Flag grammar makes the meaning unclear. 

Old text:
>       -  V-Flag: Indicates the SID has passed verification or did not
>          require verification when set and failed verification when
>          clear.
		 
Suggested new text:
>       -  V-Flag: Indicates the SID has passed verification or did not
>          require verification when set.  When V-Flag is cleared, it 
>          indicates the SID has failed verification. 

R-Flag and A-Flag might als benefit from a similar rewrite. 

**Issue-25: Section 5.8, methodology paragraph at end**

Text: 
>    The SRv6 Endpoint Behavior TLV (1250) and the SRv6 SID Structure TLV
>    (1252) defined in [RFC9514] are used as sub-sub-TLVs of the SR
>    Segment sub-TLV to optionally indicate the SRv6 Endpoint behavior and
>    SID structure when advertising the SRv6 specific segment types./
  
problem: Too much compression of meaning as method is squished into 1 sentence. 

alternative text: 
>    The SRv6 Endpoint Behavior TLV (1250) and the SRv6 SID Structure TLV
>    (1252) defined in [RFC9514] are used as sub-sub-TLVs of the SR
>    Segment sub-TLV.  These twoi sub-sub-TLVs are used to optionally 
>    indicate the SRv6 Endpoint behavior and SID structure when 
>    advertising the SRv6 specific segment types.
   
**Issue-26: Section 5.8.1.1, 5.8.1.2, 5.8.1.3, and 5.8.1.4**

Algorithm: What are the valid values for Algorithm. 
Is there a Minimum and maximum value for the algorithm? 

**Issue-27: Section 5.8.1.3, 5.8.1.4, 5.8.1.5, 5.8.1.6, 5.8.1.7**

Are there any invalid IPv4 Node addresses or IPv6 Node addresses.  
If so, please indicate this in the text. 

**Issue-28: Section 5.8.1.6, 5.8.1.7, 5.8.1.10**

Please indicate why point-to-point link might not have a remote address or interface ID. 

**Issue-29: Section 5.8.1.8, 5.8.1.9, 5.8.1.1**

Are there any invalid Global IPv6 addresses? If so, please indicate what addresses are invalid. 

**Issue-30: Section 5.9, Metric type**

Metric type:  Are values not listed in Section 8.6 valid? 
I believe you are allowing additional values in the future, but 
those values are outside the scope of this work. 

**Issue-31: Section 5.9, Flag**

What is the meaning of the following flags when they are not set: 
M-Flag, A-Flag, B-Flag, and V-Flag.  Please provide this information. 

**Issue-32: Section 6, Does this text apply to all protocol origins?**

Current text:/ 
>    Then the SR Policy Candidate Path's state and attributes are encoded in
>    the BGP-LS Attribute field as SR Policy State TLVs and sub-TLVs as
>    described in Section 5.  The SR Candidate Path State TLV as defined
>    in Section 5.3 is included to report the state of the CP.  The SR
>    BSID TLV as defined in Section 5.1 or Section 5.2 is included to
>    report the BSID of the CP when one is either specified or allocated
>    by the headend.  The constraints and the optimization metric for the
>    SR Policy Candidate Path are reported using the SR Candidate Path
>    Constraints TLV and its sub-TLVs as described in Section 5.6.  The SR
>    Segment List TLV is included for each of the SID-List(s) associated
>    with the CP.  Each SR Segment List TLV in turn includes SR Segment
>    sub-TLV(s) to report the segment(s) and their status.  The SR Segment
>    List Metric sub-TLV is used to report the metric values at an
>    individual SID List level.

This text come after the PCEP discussion, so it is unclear if this applies 
to information originated by all BGP-LS producers (see table 8.4). 


### Editorial comments: 

**Nit-1.	Section 1, paragraph 1, English language usage of “;”**

Old text:/
>    Each CP in turn may have one or
>    more SID-List of which one or more may be active; when multiple are
>    active then traffic is load balanced over them. This document covers
>    the advertisement of state information at the individual SR Policy CP
>    level./ 

New text:/
>    Each CP may have one or more SID-List and one or 
>    more of these SID-LIST may be active when traffic is 
>    load-balanced over them. This document covers  
>     the advertisement of state information at the individual SR Policy CP
>    level via BGP [RFC9552]. 
----
**Nit-2.	Section 1, paragraph 2, unclear sentence**

Old text:/
>    SR Policies are generally instantiated at the head-end and are based
>    on either local configuration or controller-based programming of the
>    node using various APIs and protocols, e.g., PCEP or BGP./

New text:/
>    SR Policies are generally instantiated at the head-end and are based
>    on either local configuration or controller-based programming of the
>    node using various APIs and protocols (e.g., PCEP or BGP). / 

----
**Nit-3.	Section 1, paragraph 3 run-on sentence, broken into two statements.** 

Old text:/
>    In many network environments, the configuration, and state of each SR
>    Policy that is available in the network is required by a controller
>    which allows the network operator to optimize several functions and
>    operations through the use of a controller aware of both topology and
>    state information./

 New text:/
>    In many network environments,  the network operator uses a controller
>    to optimize operations in the network.  The controller needs information
>    regarding the configuration and the state of each available SR Policy 
>    to calculate the optimized topologies.  A description of five controllers
>    that can benefit from using BGP [RFC9552] to collect SR Policy state is given below. 
>    (management-based PCE, composite PCE, parent-child PCE deployments, 
>     centralized controller, and  NMS visualization of SR Policy (tunnels)). /  

**Nit-4.	Section 1, paragraph 4, plural/singular issues and clarity of text **

Old text:/ 
>    One example of a controller is the stateful Path Computation Element
>    (PCE) [RFC8231], which could provide benefits in path optimization.
>    While some extensions are proposed in the Path Computation Element
>    Communication Protocol (PCEP) for the Path Computation Clients (PCCs)
>    to report the LSP states to the PCE, this mechanism may not be
>    applicable in a management-based PCE architecture as specified in
>    section 5.5 of [RFC4655]./ 

New text:/
>    One example of a controller is the stateful Path Computation Element
>    (PCE) [RFC8231].  The stateful PCE controller could be useful in calculating 
>    optimized paths if Path Computation Clients (PCCs) use PCE Communication 
>    Protocol (PCEP) to report LSP states to the PCE.  However, this mechanism 
>    may not be applicable in a management-based PCE architecture as specified in
>    section 5.5 of [RFC4655]./ 

Old text:/
>   This document proposes using the BGP-LS protocol [RFC9552] to collect SR Policy state 
>   In a mechanism complementary to the mechanism defined in [RFC8231]./

New text:/
>   This document proposes SR Policy state collection
>    mechanism complementary to the mechanism defined in [RFC8231]./


**Nit-5.	Section 1, paragraph 5**
 
Old text:/
>    An external 
>    component may also need to collect the SR Policy information from all
>    the PCEs in the network to obtain a global view of the SR Policy
>    paths' state in the network./

   New text:/  
>    An external
>    component may also need to collect the SR Policy information from all
>    the PCEs in the network to obtain a global view of the state of all SR Policy
>    paths (tunnels) in the network./ 


**Nit-6.	Section 3, diagram**
 

Current diagram:/
>       0                   1                   2                   3
>       0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
>      +-+-+-+-+-+-+-+-+
>      |  Protocol-ID  |
>      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
>      |                        Identifier                             |
>      |                        (64 bits)                              |
>      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
>      //            Node Descriptor TLV (for the Headend)            //
>      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
>      //           SR Policy Candidate Path Descriptor TLV           //
>      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+

New diagram: 
>       0                   1                   2                   3
>       0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
>      +-+-+-+-+-+-+-+-+
>      |  Protocol-ID  |
>      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
>      |                        Identifier                             |
>      |                        (64 bits)                              |
>      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
>      //      Local Node Descriptor TLV (for the Headend)            //
>      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
>      //           SR Policy Candidate Path Descriptor TLV           //
>      +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
	 



**Nit-7. Section 5.6,  repeat the abbreviation (CP) before reusing it in this section.** 

Why: The refresh of the CP abbreviation provides easier reading.  
Otherwise, the reader must go back and find where CP was defined. 

Old text: / 
>    The SR Candidate Path Constraints TLV is an optional TLV that is used
>    to report the constraints associated with the candidate path./

New text:/ 
>    The SR Candidate Path Constraints TLV is an optional TLV that is used
>    to report the constraints associated with the candidate path (CP)./ 

**Nit-8. Section 5.6.3, lack of clarity of length of SRLG value.** 

old text:/
>   *  SRLG Values: One or more SRLG values (each of 4 octets)./
  
new text:/
>    * SRLG VAlues: One or more SRLG values.  Each SRLG value is 4 octets. 
/

**NIT-9, Section 5.6.4, "a" candidate path instead of "the" candidate path**

Old text:/
>    The SR Disjoint Group Constraint sub-TLV is an optional sub-TLV of
>    the SR CP Constraints TLV that is used to carry the disjointness
>    constraint associated with the candidate path. /
 New text:/
>     The SR Disjoint Group Constraint sub-TLV is an optional sub-TLV of
>    the SR CP Constraints TLV that is used to carry the disjointness
>    constraint associated with a candidate path. /
   
**NIT-10, Section 5.6.5, clarity of R-Flag description** 
 
 Old text:/
>       -  R-Flag: Indicates that this CP of the SR Policy forms the
>          reverse path when set and otherwise it is the forward path when
>          clear/
		 
 New text:/
>       -  R-Flag: Indicates that this CP of the SR Policy forms the
>          reverse path when the R-Flag is set.  If the R-Flag is clear, 
>          this CP forms the forward path./
		 
**NIT-10: Section 6, sentence clarity can be improved by breaking long sentence into two sentences.** 

Original text:/ 
>    For the reporting of SR Policy Candidate Paths, the NLRI descriptor
>    TLV as specified in Section 4 is used.  An SR Policy candidate path
>    (CP) may be instantiated on the headend node via a local
>    configuration, PCEP, or BGP SR Policy signaling and this is indicated
>    via the SR Protocol Origin.  When a PCE node is the BGP-LS Producer,
>    it uses the "reported via PCE" variants of the SR Protocol Origin so
>    as to distinguish them from advertisements by headend nodes.  Then
>    the SR Policy Candidate Path's state and attributes are encoded in
>    the BGP-LS Attribute field as SR Policy State TLVs and sub-TLVs as
>    described in Section 5. 

new text:/
>     An SR Policy candidate path 
>    (CP) may be instantiated on the headend node via a local
>    configuration, PCEP, or BGP SR Policy signaling.  The protocol 
>    that instantiates the SR Policy candidate path is indicated
>    via the SR Protocol Origin. 
>    
>    When a PCE node is the BGP-LS Producer, the PCE node uses the 
>    "reported via PCE" variants of the SR Protocol Origin to 
>    distinguish them from advertisements by headend nodes.  
>    These "report via PCE" variants include "PCEP reported via PCE/PCEP" (10),
>    "BGP SR Plicy reported via PCE/PCEP" (20), Configuration (CLI, Yang Model
>     via NETCONF, etc.) reported via PCE/PCEP).    Then
>    the SR Policy Candidate Path's state and attributes are encoded in
>    the BGP-LS Attribute field as SR Policy State TLVs and sub-TLVs as
>    described in Section 5. /
   
** NIT-11: Security considerations, paragraph 3, unclear use of ";"**
 
 Original text:/  
>    BGP peerings are
>    not automatic and require configuration; thus, it is the
>    responsibility of the network operator to ensure that only trusted
>    nodes (that include both routers and controller applications) within
>    the SR domain are configured to receive such information./
   
 Suggested revision:/
>    BGP peerings are
>    not automatic and require configuration. Thus, it is the
>    responsibility of the network operator to ensure that only trusted
>    nodes (that include both routers and controller applications) within
>    the SR domain are configured to receive such information./
   
  

 

   
   
  