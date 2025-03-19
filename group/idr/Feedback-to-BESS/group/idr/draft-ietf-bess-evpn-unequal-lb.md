---
title: IDR Chair Review of draft-ietf-bess-evpn-unequal-lb
description: IDR on draft-ietf-bess-evpn-unequal-lb
published: true
date: 2025-03-19T06:52:26.518Z
tags: 
editor: markdown
dateCreated: 2025-03-15T18:59:42.252Z
---

# IDR Chair Review of draft-ietf-bess-evpn-unequal-lb

## Version -24 reviewed
**Status:** All technical issues resolved from -22, and -23 

## version -23 reviewed
### Issues from -22
All addressed except for technical issue below:  

#### Technical issue for-23:  Malformed Extended Community  
Missing the "treat-as-withdrawal" approach 

> Neeraj:
> 
> Thank you for adding the BGP error handling to your text.
> 
> If I understand your addition in -23, this draft treats a malformed BGP Community as “attribute discard”.
> 
> Malformed Extended Community: If a PE detects a malformed EVPN Link
> Bandwidth Extended Community, for example because the "Value-Units"
> has a value other than 0x00 or 0x01, it MUST ignore the extended community
> and handle the BGP route as it would if it was received without this extended community.¶<https://datatracker.ietf.org/doc/html/draft-ietf-bess-evpn-unequal-lb-23#section-4.1.1-1.3.1>
> 
> Does “ignore” mean you discarding the extended community attribute and not forwarding it to another peer?
> 
> Here’s the “attribute discard text from RFC7606”:
> 
>    For any malformed attribute that is handled by the "attribute
>    discard" instead of the "treat-as-withdraw" approach, it is critical
>    to consider the potential impact of doing so.  In particular, if the
>    attribute in question has or may have an effect on route selection or
>    installation, the presumption is that discarding it is unsafe unless
>    careful analysis proves otherwise.  The analysis should take into
>    account the tradeoff between preserving connectivity and potential
>    side effects.
> 




## draft-ietf-bess-evpn-unequal-lb-22
Reviewer: Susan Hares
email: [-22]( https://mailarchive.ietf.org/arch/msg/bess/4iVjl_uu50uGMppbCRNvhd9Q2mE/)
Status: Ready with nits (small technical nits and editorial nits)


### Summary: 
This is a very useful draft for EVPN.
The draft has solid technical content and flow.
A few minor edits will fill in the gaps.

**Caveat:** Keyur Patel said he reviewed this draft, but non-of the chairs (IDR and BESS) can find it.  I'm sure Keyur's review was great.  I just can find it.

### Editorial/technical issue:

#### Section 4.1
1. you should clear state that value units outside of 0x00 or 0x01 are invalid.
2. Also, you should clearly state only 0x00 and 0x01 are valid.

#### Section 4.1 - what happens if Extended Community is malformed?  See RFC7606.
Please provide details.  You are missing a clearly delineated section on BGP error handling.

### Editorial only:

#### spelling check:

5.2 - recevied - paragraph 1, sentence 1
5.2 - badwidth - paragraph 5, stanrding Please note.
6.2 - (VLAN-a % 4) - last paragraph.

#### Section 10.0 - IANA considerastions needs to use a better formatting.



