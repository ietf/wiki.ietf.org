---
title: IDR Chair Review of draft-ietf-bess-evpn-unequal-lb
description: IDR on draft-ietf-bess-evpn-unequal-lb
published: true
date: 2025-03-15T19:05:36.697Z
tags: 
editor: markdown
dateCreated: 2025-03-15T18:59:42.252Z
---

# IDR Chair Review of draft-ietf-bess-evpn-unequal-lb


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



