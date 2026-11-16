---
title: draft-ietf-idr-sr-policy-ift Shepherd Reports 
description: Shepherd report for draft-ietf-idr-sr-policy-ift
published: true
date: 2026-10-18T22:18:44.093Z
tags: 
editor: markdown
dateCreated: 2026-01-05T20:42:40.669Z
---

# Shepherd Report for draft-ietf-idr-sr-policy-ifit

draft: [draft-ietf-idr-sr-policy-ifit](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-ifit/)
version: -13
implementations: none 
status: WG draft
Shepherd: Susan Hares (sharesa@ndzh.com)
Summary: -13 was a good improvement.  We just need a few more improvement prior to ealry allocation. 

## Revision - 13 Shepherd's review 
### Technical issues in -13
#### Technical issue 1, section 4, Text need changes 

current text:/
>    As defined in [RFC9830], a new SAFI is defined (the SR Policy SAFI
>    with codepoint 73) as well as a new NLRI./ 
{.is-info}

new text:/ 
>    [RFC9830], defines the SR Policy SAFI (73) and the NLRI format./ 
{.is-info}

**current text:/ **
>    The NLRI contains the SR
>    Policy candidate path and, according to [RFC9830], the content of the
>    SR Policy Candidate Path is encoded in the Tunnel Encapsulation
>    Attribute defined in [RFC9012] using a new Tunnel-Type called SR
>    Policy Type with codepoint 15. /
{.is-info}


**New text:/**
>    [RFC930] associates this NLRI with the SR Policy Candidate Path 
>    encoded in the Tunnel Encapsulation Attribute defined in [RFC9012] 
>    using a new Tunnel-Type called SR Policy TLV./ 
{.is-info}

#### Technical issues 2, Section 5 IFIT SubTLV defines sub-SubTLVs 

You define the following Sub-SubTLVS, please adjust the naming in your text:  
-       * IOAM Pre-allocated Trace Option Sub-TLV (TBD3) 
-       * IOAM Incremental Trace Option Sub-TLV (TBD4) 
-       * IOAM Directly Export Option Sub-TLV (TBD5) 
-       * IOAM Edge-to-Edge Option Sub-TLV (TBD6) 
-       * Enhanced Alternate Marking (EAM) sub-TLV (TBD7) 

#### Technical issues 3, Section 5.1 

**replace** 
> /5.1.  IOAM Pre-allocated Trace Option SubTLV/
{.is-info}

**with**
> /5.1  IOAM Pre-allocated Trace Option sub-SubTLV/ 
{.is-info}

#### Technical issues 4, Section 5.2

**replace** 
> /5.2 IOAM Incremental Trace Option Sub-TLV/ 
{.is-info}

**with**
> /5.2 IOAM Incremental Trace Option sub-SubTLV/ 
{.is-info}

#### Technical issues 5, Section 5.3
**replace** 
> /5.2 IOAM Incremental Trace Option Sub-TLV/ 
{.is-info}

**with**
> /5.2 IOAM Incremental Trace Option sub-SubTLV/ 
{.is-info}

Change:
> / All the other fields definition is the same as the pre-allocated
>    trace option sub-TLV in section 5.1./
{.is-info}

to:    
> / All the other fields definition **are** the same as the pre-allocated
>    trace option sub-TLV in section 5.1./
{.is-info}

#### Technical issues 6, Section 5.4

**Change:/**
> 5.4.  IOAM Edge-to-Edge Option Sub-TLV/ 
{.is-info}

**to: /**
> 5.4.  IOAM Edge-to-Edge Option sub-SubTLV/
{.is-info}

#### Technical issues 7, Section 5.6

**Change:/**
> 5.5.  Enhanced Alternate Marking (EAM) sub-TLV/ 
{.is-info}

**to: /**
> 5.5.  Enhanced Alternate Marking (EAM) sub-SubTLV/ 
{.is-info}

#### Technical issues 8, Section 6

Change:/
   The error handling actions are also described in [RFC9830],indeed a
   BGP Speaker MUST perform the syntactic validation of the SR Policy
   NLRI to determine if it is malformed, including the TLVs/sub-TLVs./
 New text:/
   The error handling actions are also described in [RFC9830]. A BGP 
   Speaker MUST perform the syntactic validation of the SR Policy
   NLRI to determine if it is malformed, including the TLVs/sub-TLVs.

#### Technical issue 9, please add appendix with cross-WG information 

Please add an appendix to the end of the document summarizing the following: 

1) IFIT documents 
2) Spring documents support the inclusion of IFIT 
3) OPS area document supporting the IFIT 
4) PCE documents referenced 

Your text provides enough to request allocation. The addition of the appendix is to provide a quick reference for Area Directors, cross-area review (OPSdir, RTGdir, Secdir)  and IANA expert reviewers,


## Revision -11 Shepherd's review 
### Technical issues in -11 
#### Technical issue 1, sections 4, TBD1 form for IANA 

> Section 4, old text:/
>    Type: to be assigned by IANA./
{.is-info}

   
>  new text:/
>     Type: TBD1 to be assigned by IANA./
{.is-info}

    
#### Technical issue 2, Section 5.2, correct references to 4.1

> Old text:/
>    All the other fields definition is the same as the pre-allocated
>    trace option sub-TLV in section 4.1./
{.is-info}

   
> New text:/
>    All the other fields definition is the same as the pre-allocated
>    trace option sub-TLV in section 5.1./ 
{.is-info}

#### Technical issue 3, Section 5, 2 IFIT SubTLVs 
Is it valid to have 2 different IFIT SubTLVs as show in the following diagram 
with IFIT Attributes being a SubTLV under the Tunnel Type 
SR Policy. 

What processing occurs if the 2 IFIT SubTLVs are duplicates?  

>       SR Policy SAFI NLRI: <Distinguisher, Color, Endpoint>
>       Attributes:
>          Tunnel Encapsulation Attribute (23)
>             Tunnel Type: SR Policy (15)
>                 Binding SID
>                 Preference
>                 Priority
>                 SR Policy Name
>                 SR Policy Candidate Path Name
>                 Explicit NULL Label Policy (ENLP)
>                 IFIT Attributes 1
>                 IFIT Attributes 2 
>                 Segment List
>                     Weight
>                     Segment
>                     Segment
{.is-info}

#### Technical issue 4, Section 5 and 6: SRPM validation versus BGP

> Section 5 Text:/ If two
>    conflicting IOAM sub-TLVs are present (e.g.  Pre-allocated Trace
>    Option and Incremental Trace Option) it means that they are not
>    usable and none of the two methods will be activated.  The same
>    applies if there is more than one instance of the sub-TLV of the same
>    type.  Anyway the validation of the individual fields of the IFIT
>    Attributes sub-TLVs are handled by the SRPM (SR Policy Module)./
{.is-info}


Does the BGP process pass two sub-TLV of the same type
within the IFIT Attribute to the SRPM?  Or does it does it 
drop these two SubTLVs before handing the data to the SRPM? 

I've read the paragraph several times, and I cannot definitely state
whether the BGP process is dropping two duplicate SubTLVs types within the 
IFIT Attribute without checking the content.  The validation 
of the content is handled by the SRPM.   

Section 6 text states:/

   The validation of the IFIT Attributes sub-TLVs introduced in this
   document MUST be performed to determine if they are malformed or
   invalid.  The validation of the individual fields of the IFIT
   Attributes sub-TLVs are handled by the SRPM (SR Policy Module)./
   
 Section 6 would suggested that the IFIT Attribute SubTLV is 
 malformed if two SubTLVs of the same type within the IFIT 
 SubTLV (e.g.  two IOAM Pre-allocated Trace Option Sub-TLV). 
 Please clarify both section 5 and 6.  
 
 #### Technical issue 5, Section 8, Critical Information. 
 
 IFIT information contains telemetry information, and this 
 is critical information for a network.  Please add comments 
 on if all IFIT data is critical information or some. 
 After adding what is critical information, please indicate 
 the networks should be careful to protect distribution of 
 critical information. 
 
 ### Cross Working group issues: 
 #### Issue 1: How does this link to Spring Work
 
Pleae provide information in the text how it links to existing Spring concepts.  Lists the RFC or draft that mention this concept. 

#### Issue 2: How does this link to SRv6OPS

Provide any mention of SRv6OPS requests for this type of OAM. 

#### Issue 3: How does this link to PCE work 

Provide any mention where PCE utilizes the concept in this draft. 

### Editorial issues in -11

#### Editorial issue-1

section 4, paragraph 4 

> old text:/
> 
>       SR Policy SAFI NLRI: <Distinguisher, Color, Endpoint>
>       Attributes:
>          Tunnel Encapsulation Attribute (23)
>             Tunnel Type: SR Policy (15)
>                 Binding SID
>                 Preference
>                 Priority
>                 SR Policy Name
>                 SR Policy Candidate Path Name
>                 Explicit NULL Label Policy (ENLP)
>                             IFIT Attributes
>                 Segment List
>                     Weight
>                     Segment
>                     Segment
{.is-info}

                    ..../ 
                    
>  New text:/
>  
>       SR Policy SAFI NLRI: <Distinguisher, Color, Endpoint>
>       Attributes:
>          Tunnel Encapsulation Attribute (23)
>             Tunnel Type: SR Policy (15)
>                 Binding SID
>                 Preference
>                 Priority
>                 SR Policy Name
>                 SR Policy Candidate Path Name
>                 Explicit NULL Label Policy (ENLP)
>                  IFIT Attributes
>                 Segment List
>                     Weight
>                     Segment
>                     Segment
>                     .../
{.is-info}

#### Editorial Issue 2, section 5, 2nd to last paragraph

> Old text:/
>   Anyway the validation of the individual fields of the IFIT
>    Attributes sub-TLVs are handled by the SRPM (SR Policy Module)./
{.is-info}

> 
> New text:/
>    The validation of the individual fields of the IFIT
>    Attributes sub-TLVs are handled by the SRPM (SR Policy Module)./
>   
{.is-info}
