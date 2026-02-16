---
title: draft-ietf-idr-sr-policy-ift Shepherd Reports 
description: Shepherd report for draft-ietf-idr-sr-policy-ift
published: true
date: 2026-01-05T21:44:21.427Z
tags: 
editor: markdown
dateCreated: 2026-01-05T20:42:40.669Z
---

# Shepherd Report for draft-ietf-idr-sr-policy-ifit

draft: [draft-ietf-idr-sr-policy-ifit](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-ifit/)
version: -11
implementations: none 
status: WG draft
Shepherd: Susan Hares (sharesa@ndzh.com)

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
