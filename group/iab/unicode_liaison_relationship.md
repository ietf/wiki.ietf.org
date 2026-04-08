---
title: Unicode Liaison Relationship
description: 
published: true
date: 2026-03-27T17:35:32.775Z
tags: 
editor: markdown
dateCreated: 2026-03-27T17:35:32.775Z
---

# Unicode liaison relationship

The IETF/IAB maintains a liaison relationship with the [Unicode Consortium](https://home.unicode.org/), the organization responsible for the Unicode Standard and related specifications. The liaison covers areas where Unicode's character encoding work intersects with IETF protocols, most prominently Internationalized Domain Names (IDN).

## Contact

To reach the IETF/IAB liaison to the Unicode Consortium, or to ask questions about the IDNA specifications and their relationship to Unicode, send email to Patrik Fältström \<paf@netnod.se\>. Patrik is also a co-author of for example RFC 8753 and the maintainer of the [createtables](https://github.com/Netnod/createtables/) tooling described below.

## Relevant RFCs

### Current Standards Track

- **[RFC 3492](https://datatracker.ietf.org/doc/html/rfc3492)** — Punycode: A Bootstring encoding of Unicode for IDNA. Proposed Standard. Updated by RFC 5891.
- **[RFC 5890](https://datatracker.ietf.org/doc/html/rfc5890)** — IDNA: Definitions and Document Framework. Proposed Standard. Obsoletes RFC 3490; updates RFC 4343.
- **[RFC 5891](https://datatracker.ietf.org/doc/html/rfc5891)** — IDNA: Protocol. Proposed Standard. Obsoletes RFC 3491; updates RFC 3492.
- **[RFC 5892](https://datatracker.ietf.org/doc/html/rfc5892)** — The Unicode Code Points and IDNA. Proposed Standard. Updated by RFC 6452 and RFC 8753.
- **[RFC 5893](https://datatracker.ietf.org/doc/html/rfc5893)** — Right-to-Left Scripts for IDNA. Proposed Standard.
- **[RFC 6452](https://datatracker.ietf.org/doc/html/rfc6452)** — The Unicode Code Points and IDNA — Unicode 6.0. Proposed Standard. Updates RFC 5892.
- **[RFC 8753](https://datatracker.ietf.org/doc/html/rfc8753)** — IDNA Review for New Unicode Versions. Proposed Standard. Updates RFC 5892.

### Informational

- **[RFC 5894](https://datatracker.ietf.org/doc/html/rfc5894)** — IDNA: Background, Explanation, and Rationale. Informational.
- **[RFC 5895](https://datatracker.ietf.org/doc/html/rfc5895)** — Mapping Characters for IDNA 2008. Informational (Independent Submission; not an IETF consensus document).
- **[RFC 4690](https://datatracker.ietf.org/doc/html/rfc4690)** — Review and Recommendations for Internationalized Domain Names. Informational (IAB document; not an IETF consensus document).

### Obsolete (IDNA 2003)

These documents defined the original IDNA (2003) protocol and have been superseded by the IDNA 2008 suite above:

- **[RFC 3490](https://datatracker.ietf.org/doc/html/rfc3490)** — Internationalizing Domain Names in Applications. Proposed Standard. *Obsoleted by RFC 5890 and RFC 5891.*
- **[RFC 3491](https://datatracker.ietf.org/doc/html/rfc3491)** — Nameprep: A Stringprep Profile for IDN. Proposed Standard. *Obsoleted by RFC 5891.*
- **[RFC 3454](https://datatracker.ietf.org/doc/html/rfc3454)** — Preparation of Internationalized Strings (Stringprep). Proposed Standard. *Obsoleted by RFC 8264.* Underpinned the IDNA 2003 suite.

## IANA IDNA Tables

IANA maintains derived property tables specifying which Unicode code points are PVALID, DISALLOWED, CONTEXTO, CONTEXTJ, or UNASSIGNED for use in domain names, as defined by RFC 5892 (updated by RFC 6452 and RFC 8753).

- **[IANA IDNA Tables registry](https://www.iana.org/assignments/idna-tables/)** — canonical index, currently redirects to the latest version
- **[Latest: Unicode 12.0.0](https://www.iana.org/assignments/idna-tables-12.0.0/idna-tables-12.0.0.xhtml)** — the current IANA IDNA table; links to all prior versions (5.2.0 through 11.0.0)

## Mailing List

Discussion of IDNA updates and reviews for new Unicode versions takes place on the [idna-update@ietf.org](https://mailarchive.ietf.org/arch/browse/idna-update/) mailing list.

## Tools

The **[createtables](https://github.com/Netnod/createtables/)** repository (maintained by Netnod) implements the RFC 5892 algorithm to generate IDNA derived property tables for each Unicode version. It fetches Unicode data directly from the Unicode Consortium and produces output in plain text, HTML, XML, and CSV formats.
