---
title: Shepherd Reviews for draft-jiang-idr-sr-policy-composite-path
description: Shepherd draft-jiang-idr-sr-policy-composite-path
published: true
date: 2026-01-05T02:02:32.362Z
tags: 
editor: markdown
dateCreated: 2025-02-25T15:20:31.757Z
---

# Shepherd Reviews for draft-jiang-idr-sr-policy-composite-path


## Summary 
**draft:**  [draft-jiang-idr-sr-policy-composite-path](https://datatracker.ietf.org/doc/draft-jiang-idr-sr-policy-composite-path/)
**Type:** Proposed Standard 
**status:** Individual Draft 
**adoption status:** adoption requested 
**current version:** 01
**Early Allocation**: yes, need early allocation 
**implementations:**  
**bgp-ls draft:** none

## Review -03 

**draft:** [draft-jiang-idr-sr-policy-composite-path-03](https://datatracker.ietf.org/doc/html/draft-jiang-idr-sr-policy-composite-path-03) 
**summary**: Technical Issues 1, 2 are resolved.  Technical issues: 3-11 are not resolved.  Editorial issues 1-2 are not resolved. 
**email**: 
**Next steps:** 
1. publish a -04 version that resolves technical issues 3-11 and editorial issues 1-2. 
2. Get a shepherd's review of -04 
3. WG adoption call 


## Review -00 
**draft:** [draft-jiang-idr-sr-policy-composite-path-00](https://datatracker.ietf.org/doc/html/draft-jiang-idr-sr-policy-composite-path-00)
**Status**: needs revision (-01) 
**implementations:** unknown 
**email:** [hares review](https://mailarchive.ietf.org/arch/msg/idr/z4e2595Boa7T7swXSKze8yQJIZ4/)


### Technical Issues 

#### Issue-1:  Abstract, English text, Last sentence. 

Since the SR Policy module determines the status of 
explicit, dynamic or composite, this should not be mentioned in 
the abstract. 
 

#### Issue-2: Section 1 (Introduction),  paragraph 1, augmentation needed. 

> Old text:/ In order to distribute SR policies to the headend,
>   [I-D.ietf-idr-sr-policy-safi] specifies a mechanism by using BGP. /
{.is-info}

  
> Old text:/ In order to distribute SR policies to the headend,
>   [I-D.ietf-idr-sr-policy-safi] specifies a mechanism by using BGP
>   to pass SR Policy NLRIs with a Tunnel Encapsulation attribute for 
>   the SR Policy Tunnel (23). The SR Policy NLRIs support the SR Policy SAFI 
>   for IPv4 Unicast(AFI-1/SAFI=73) and IPv6 Unicast (AFI=1, SAFI=73).
{.is-info}

  
#### Issue-3: Approval of Use cases in Spring 

You mention that [draft-jiang-spring-parent-sr-policy-use-cases](https://datatracker.ietf.org/doc/draft-jiang-spring-parent-sr-policy-use-cases/)
provides the use cases for composite candidate path. 
This draft is not on the [Spring WG adoption queue](https://wiki.ietf.org/group/spring)
What is the status of this use case draft? 

#### Issue-4: Explict, Dynamic and Composite Paths, 

Please provide clear descriptions of how BGP passes 
information about explicit, dynamic, and composite information.

[draft-ietf-idr-sr-policy-safi](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) defines the segments as explicit path segments. 

[draft-jiang-idr-sr-policy-composite-paths-00]
defines constituent SR Policy as the 
segments for composite policy. 

What is the reference for dynamic paths? 

Please add to your description that Segment list are for only explicit paths. 


#### Issue-5: Many Colors in Sub-TLVs in Tunnel Attribute with Color + Extended Communities 

[RFC9012] defines a color SubTLV. 

[draft-ietf-idr-sr-policy-safi](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) in Section 2.3 states that 
Tunnel Egress Endpoint Sub-TLV and Color Sub-TLV in the Tunnel 
Encapsulation Attribute are not used for SR Policy Encodings, 
and must be ignored by BGP speaker.

Now you are redefining a color within the Constituent SR Policy Sub-TLV. 
You are not definition Color as a sub-TLV. 
 
[draft-ietf-idr-sr-policy-safi](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) defines a color Extended Community 
to help steer traffic into a SR Policy. 

Any color that you define, must also discuss how you handle 
a) Color Sub-TLV - you must repeat Color Sub-TLV
is not supported as stated  [draft-ietf-idr-sr-policy-safi](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/).
b) You must indicate that Tunnel Egress Endpoint Sub-TLV 
is not valid for [draft-ietf-idr-sr-policy-safi](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/) and 
this draft. 
c) You must indicate that the validation for the tunnel for 
SR Policy Tunnel is done via SRPM. 
d) You must refine the figure showing Constituent SR Policy 
to remove color.  It is not a sub-TLV. 

e) Please provide figure numbers on your diagrams of the 
SR Policy SAFI. 


#### Issue-6: Section 2.0 + 2.1, Constituent SR Policy Sub-TLV, EndPoint identification 

The Constituent SR Policy section states it addresses a single 
end point. However, [draft-ietf-idr-sr-policy-safi](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)
does not allow the Tunnel Egress Endpoint Sub-TLV. 
Instead, it is passed in the SR Policy SAFI. 

Therefore, the Constituent Segments may be applied to many NLRIs
End points (Distinguisher, Policy-Color, Endpoint). 
You need to address this point in your text in section 2.0 and 2.1. 

#### Issue-7: Section 2.1 - Sub-TLVs

Please change to indicate Color is not a sub-TLV (diagrams and text)
Please clarify which Sub-TLVs are valid for hte Constitute SR Policy. 
My understanding is that you only allow two Sub-TLVs:
Weight and Forwarding Class. 

Length needs to be specfically identified:
a) reserved (1-octet) + Contituent SR Policy Color (4 octets) + 
[optional] Weight [8 octets] + [optional] Per Flow FC [8 octets]. 
The total length is 5, or 13, or 21.  

Are you restricting the processing in Constituent Sub-TLV 
to just these two Sub-TLVs? Or are you allowing other Sub-TLVs
to be added in the future.  If this specification allows other 
Sub-TLVs in the future, then the other Sub-TLVs in Constituent Sub-TLV
are out of scope of this document.    

#### Issue-8: Section 2.2, FC definition, lack of range

Is this FC, a 4 octet value?  If so, please specify. 
Is "zero" a valid value?  Is all ones, a valid value? 

Pleae specify. 

#### Issue-9: Section 3, Operations, Color 
The operations from [draft-ietf-idr-sr-policy-safi]((https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)) need to be 
expanded to discuss the issue of color. 

a) Color in the extended community - funnels the traffic to head 
b) Color Sub-TLV from Tunnel Encapsulation Attribute - is not valid for SR Policy Tunnel. 
c) Color exists in the SR Policy NLRI (Distinguisher, Color, Endpoint)
d) Color identifies the Composite Policy as the identification (not sub-TLV). 


### Issue-10, Section 3, Add Error Handling Section, 

Operations from [draft-ietf-idr-sr-policy-safi]((https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)) can apply for error handling, but 
you need to include the following:

1) What happens if Constituent SR Policy length fields is not one of the valid lengths (5, 13, or 21)? 

If you are taking "treat-as-withdraw" as [draft-ietf-idr-sr-policy-safi]((https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/))
then please indicate that point. 

2) If there are invalid values for Color, Weight, or Forwarding Class (FC),
what are those values?  For example, is zero a valid value? 

#### Issue-11, Security Consideration, Add text 

Please re-read the security considerations in [drasft-ietf-idr-sr-policy-safi]((https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/))

This document does add a new function (composite paths), and 
new critical information (Constituent paths with color, weight, and FC). 
This functions extend the risk of the SR Policy into the dynamic 
realm.  

You need to explain the security attack services regarding explicit, 
dynamic and composite paths.  You are explaining composite paths
as different from explicit paths (detailed specific links) and 
dynamic (not defined yet)  



### Editorial review: 

#### NIT-1:  section 1, paragraph 4, English-grammar
> 
> old text:/
>    This document defines extensions to Border Gateway Protocol (BGP) to
>    distribute SR policies carrying composite candidate path
>    information.So that composite candidate paths can be installed when
>    the SR policy is applied./
>    
{.is-info}

> new text:/
>    This document defines extensions to Border Gateway Protocol (BGP) to
>    distribute SR policies carrying composite candidate path
>    information. After BGP distributions valid informatino about the 
>    composite path, the SRPM will instantiate valid SR Policies. /
{.is-info}


#### NIT-2: section 2.2, paragraph 2, sub-TLV

I believe the convention from [draft-ietf-idr-sr-policy-safi]((https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-safi/)
is to use Sub-TLV for each entry.  If not, please make the 
convention clear in this text. 





