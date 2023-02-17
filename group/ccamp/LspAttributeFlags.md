---
title: LSP Attributes Flag Registry
description: 
published: true
date: 2023-01-13T19:27:38.350Z
tags: 
editor: markdown
dateCreated: 2023-01-13T19:27:34.230Z
---

# LSP Attributes Flag Registry

RFC4420 defines attribute flags to be signaled in LSP setup (Path messages) and recorded routes (RROs).

This is a temporary registry of attribute flags to allow drafts to be written with suitable suggested values and to enable interoperable experimental implementations. This registry does NOT replace the work of IANA. IANA will be expected to manage this registry in the long term (see http://www.iana.org/assignments/rsvp-te-parameters)

Notes on the table:

1.    Bits are numbered from the left starting with bit zero.
2.    Bits are named by the documents that define them.
3.    Bits may be used in the Attribute Flags TLV on a Path or a Resv
4.    Bits may be used in the RRO Attributes Subobject.
5.    The document defining the bits is cited as the reference.
6.    An indication is given of whether the value has been assigned by IANA.

| Bit No | Name                      | Attribute Flags Path | Attribute Flags Resv | RRO | Reference | IANA  |
|--------|---------------------------|----------------------|----------------------|-----|-----------|-------|
| 0      | End-to-end re-routing     | Yes                  | No                   | No  | [RFC4920] | Yes   |
| 1      | Boundary re-routing       | Yes                  | No                   | No  | [RFC4920] | Yes   |
| 2      | Segment-based re-routing  | Yes                  | No                   | No  | [RFC4920] | Yes   |
| 3      | LSP Integrity Required    | Yes                  | No                   | No  | [RFC4875] | Yes   |
| 4      | Contiguous LSP required   | Yes                  | No                   | Yes | [RFC5151] | Yes   |
| 5      | Stitched LSP required     | Yes                  | No                   | Yes | [RFC5150] | Yes   |
| 6      | Non-PHP behavior desired  | Yes                  | No                   | Yes | [NO-PHP]  | No    |
| 7      | OOB mapping indication    | Yes                  | No                   | Yes | [NO-PHP]  | No    |
| 8      | MP2P merge allowed        | Yes                  | No                   | No  | [MP2P]    | No    |
| 9      | Bidirectional same label  | Yes                  | No                   | No  | [BIDIR]   | No    |
{.dense}

References:
[RFC4920] RFC 4920
[RFC4875] RFC 4875
[RFC5151] RFC 5151
[RFC5150] RFC 5150
[NO-PHP] draft-ali-mpls-rsvp-te-no-php-oob-mapping
[MP2P] draft-yasukawa-mpls-mp2p-rsvpte
[BIDIR] draft-xu-rsvpte-bidir-wave

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-10-24. It was migrated from the old Trac wiki on 2023-01-12.*
