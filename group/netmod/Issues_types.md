---
title: Open Issues for "Common YANG Data Types"
description: 
published: true
date: 2022-12-16T20:51:46.681Z
tags: 
editor: markdown
dateCreated: 2022-12-16T20:47:02.962Z
---

# Open Issues for "Common YANG Data Types"

[Go to the top of the wiki](/group/netmod/)

The document authors and the WG chairs will track issues.

## types-001: duplicate uri definition

**Status:** closed

**Creation:** 2008-07-31

**Description:** There are currently two definitions of the URI type.

**Discussion:** See IETF-72 meeting minutes and [this thread](http://www.ietf.org/mail-archive/web/netmod/current/msg00855.html).

**Consensus:** Remove uri from the yang-types module and keep it in the inet-types module. See IETF-72 meeting minutes. See [this mail thread on this issue](http://www.ietf.org/mail-archive/web/netmod/current/msg00855.html).

## types-002: multiple pattern

**Status:** closed

[This issue has been moved to the YANG issue list](/group/netmod/Issues_yang) and is issue yang-002.

## types-003: reusable groupings

**Status:** interim consensus, but concrete proposals needed

**Creation:** 2008-07-31

**Description:** Add reusable groupings where we are sure we need them i.e., there is already a module using such a grouping. Add them to the existing document, adapting title etc. as needed. Groupings are conceptually a good thing, but we need concrete proposals.

**Discussion:** See IETF-72 meeting minutes.

## types-004: coordination with IEEE on ieee-types

**Status:** closed

**Creation:** 2008-07-31

**Description:** The definitions in ieee-types should be reviewed by IEEE experts.

**Consensus:** Dan Romascanu volunteered to be the IEEE contact person. See IETF-72 meeting minutes.

**Discussion:** See IETF-72 meeting minutes.

## types-005: boilerplate text

**Status:** closed

**Creation:** 2008-07-31

**Description:** Add proper boilerplate text, similar to what we use in SMIv2 modules.

**Consensus:** The editor will create boilerplate text similar to the suggestions in RFC 4181.

**Discussion:** See IETF-72 meeting minutes.

## types-006: IEEE types to include

**Status:** interim consensus, but edits needed.

**Creation:** 2008-07-31

**Description:** Determine the set of IEEE related types to include in the ieee-types module. Candidates are port lists or additional vlan related types.

**Discussion:** See IETF-72 meeting minutes. The IEEE is revising the BRIDGE-MIB and also expanding the VLAN number space. Dan Romascanu will help us getting access to IEEE documents under development.

## types-007: IANA suggestions for namespaces

**Status:** interim consensus, need edits

**Creation:** 2008-07-31

**Description:** It is suggested to follow RFC 5226 page 16 and to suggest namespace names to IANA for assignment. The current proposal is to request the namespace urn:ietf:params:xml:ns:yang:foo-bar for a YANG module called foo-bar.

**Discussion:** See IETF-72 meeting minutes.

## types-008: XSD translations of YANG types

**Status:** interim and IETF72 consensus to include the XSD and RelaxNG appendices. Specifics will need to be reviewed as the documents appear.

**Creation:** 2008-07-31

**Description:** A proposal was made to add XSD translations to an appendix of the document. The translations would be generated automatically using YANG to XSD translators and not be normative.

**Discussion:** See IETF-72 meeting minutes. It was suggested to also add RelaxNG translations to the appendix.

## types-009: document relationships to SMIv2/XSD definitions

**Status:** IETF72 and interim consensus; needs ML confirmation.

**Creation:** 2008-07-31

**Description:** Addition of text to the description clauses of typedefs indicating whether they are semantically and in terms of the value set identical to well known SMIv2 / XSD data types and to spell out any differences there might be and how to potentially deal with them.

**Discussion:** See IETF-72 meeting minutes.

## types-010: tagging types that can be used for SMIv2 translation

**Status:** closed

**Creation:** 2008-07-31

**Description:** Addition of text indicating which types can be used for SMIv2/SNMP - YANG/NETCONF translations.

**Consensus:** This issue is part of issue types-009.

## types-011: multiple lexical representations

**Status:** Interim consensus is that there should be normalization rules. Consensus not reached on whether it should be in DESCRIPTION or special clause. Ran will propose a special clause for normalization.

**Creation:** 2008-10-01

**Description:** Some types allow multiple lexical representations for a single value. It needs to be determined if and when normalization occurs or whether this is a good thing to have in the first place. A typical example are IPv6 addresses such as ::1.

**Discussion:** See NETMOD mailing list discussion under the thread "equality of keys". If you send "1.0", will you get back "1.0" or might you get back "1.00" or "1". Does the implementation need to remember the actual form sent? What can applications expect? Will it impact comparions? Should the DESCRIPTION clause specify the behavior for the object? Do we need to make normalization part of the data types, a normalization field in the object defintion, or part of the DESCRIPTION? A normalization clause might include a constraint pattern.

## types-012: date-and-time normalization

**Status:** open

**Creation:** 2008-12-18

**Description:** The time-offset Z and +00:00 mean the same thing (but note that -00:00 means unknown time zone according to RFC 3339 but the same as Z according to XSD).

**Discussion:** XSD says the canonical time-offset format is Z. Proposal:

 -   Make Z the canonical time-offset format
 -   Clarify that -00:00 means unknown time zone
 -   Clarify that 00:00 and Z mean the same thing 


## types-013: zone index normalization

**Status:** open

**Creation:** 2008-12-18

**Description:** The zone index allows numeric (interface index) and string (interface name) representations.

**Discussion:** Assuming that the native identification of interfaces in YANG will be interface names instead of interface index numbers, make the name representation the canonical format.

## types-014: ipv6 address normalization

**Status:** open

**Creation:** 2008-12-18

**Description:** The type currently supports full, shortened,mixed, and shortened mixed formats.

**Discussion:** Proposal:

 -   Allow multiple formats and representations
 -   Make the shortened format the canonical format
 -   The :: substitution must be applied to the longest sequence of zeros in an IPv6 address (if there is a tie, the first sequence of zeros is replaced by :: ) 

## types-015: ipv4-prefix / ipv6-prefix normalization

**Status:** open

**Creation:** 2008-12-18

**Description:** The two representations 192.0.2.0/24 and 192.0.2.8/24 mean the same thing.

**Discussion:** Proposal:

 -   Require that all bits that are not part of the prefix are set to zero (192.0.2.8/24 becomes an invalid representation of an IPv4 prefix)‏
 -   For IPv6, the shortened form will be the canonical format, other representations are allowed
 -   Results in a 1:1 mapping between lexical representation and the value space for IPv4 but not for IPv6 

## types-016: domain name normalization

**Status:** open

**Creation:** 2008-12-18

**Description:** The domain-name type currently allows upper-case and lower-case characters in the domain name.

**Discussion:** Proposal:

-    Follow the text in the description clause of the uri data type which requires that all case-insensitive characters are set to lowercase
-    Results in a 1:1 mapping between lexical space and value space
-    Implementations can still be lenient in what they accept 

## Issue number and title

(The number is useful for referring to the issue in mail and the like)

**Status:** open / closed

Closed issues will be made obvious in some way... by italics fonts, color, a red dot, overstrike, or something...

**Creation date:** YYYY-MM-DD

**Description:** a paragraph or two on the issue

**Consensus of the working group:**

(This will definitely have a pointer to mail, a reference to a place in minutes, or something that documents the consensus.)

**Discussion:** the alternatives and the like

(This should also include a pointer to other places where it has been discussed. Most of the time, that will mean the mailing list.)

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2008-12-18. It was migrated from the old Trac wiki on 2022-12-16.*
