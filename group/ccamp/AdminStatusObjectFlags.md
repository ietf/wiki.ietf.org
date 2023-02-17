---
title: Temporary Registry of Bits in the Administrative Status Object
description: 
published: true
date: 2023-01-13T19:22:13.450Z
tags: 
editor: markdown
dateCreated: 2023-01-13T19:22:10.112Z
---

# Temporary Registry of Bits in the Administrative Status Object

RFC3471 defines Administrative Status Information in section 8. Section 8.1 of that RFC defines several bits that may be encoded in that information.

RFC3473 describes how the Administrative Status Information is carried in the Admin_Status Object.

Several other Internet Drafts have defined new bits to be included in the Administrative Status Information.

This temporary registry tracks those bits so that there is no overlap and so that experimental work may be safely carried out. This registry does NOT replace the work of IANA. IANA will be expected to manage this registry in the long term.



>   0                   1                   2                   3
>   0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
>  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
>  |R|                        Reserved               |H|L|I|C|T|A|D|
>  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+
> 

 R-bit [RFC3471]
H-bit [M2C]
L-bit [RFC4872]
I-bit [RFC4783]
C-bit [RFC4974]
T-bit [RFC3471]
A-bit [RFC3471]
D-bit [RFC3471]

References:

[RFC3471] RFC 3471
[M2C] draft-ietf-ccamp-pc-spc-rsvpte-ext-00.txt
[RFC4872] RFC 4872
[RFC4783] RFC 4783
[RFC4974] RFC 4974

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-10-24. It was migrated from the old Trac wiki on 2023-01-12.*
