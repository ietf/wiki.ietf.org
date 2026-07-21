---
title: Shepherds report for draft-ietf-idr-ts-flowspec-srv6-policy
description: Shepherd draft-ietf-idr-ts-flowspec-srv6-policy
published: true
date: 2026-07-21T02:16:39.344Z
tags: 
editor: markdown
dateCreated: 2026-07-21T01:58:32.825Z
---

# Shepherd Report for FS draft


### Status and next steps
**draft:** [draft-ietf-idr-ts-flowspec-srv6-policy/](https://datatracker.ietf.org/doc/draft-ietf-idr-ts-flowspec-srv6-policy/)
**Status:** Revision need for resubmission to IESG
**version:** 10
**requester:** Ketan's [email](https://mailarchive.ietf.org/arch/msg/idr/OKpUBXf2htMobr-IUv96SkoFHjE/)

## Version 10 - fixes
### Technical issues 
#### Technical issue #1 - Reformat draft to protocol changes 

**Ketan's comments: **
> Since this is a Proposed Standard document, it must first and foremost
> cover the protocol specification. This aspect was likely missed when the
> document changed its track from Informational.
> 
> The core of the document is section 3 and this should be perhaps named
> Procedures instead of Operations. In this section, please specify the
> sender's and receiver's behavior clearly and in detail. How is the flowspec
> route formed, and what are the semantics of ECs and BGP Prefix SID Attr
> (including which TLVs are used and which SIDs are signaled). Perhaps
> specify the common aspects first, followed by the SR-MPLS and SRv6 parts.
> Consider rolling the examples (from sections 4 and 5) into the text but
> ensure the normative text fully describes the procedures without relying on
> the examples.
{.is-info}

#### Technical issues #2 - Use case descriptions in different section 

**Ketan's commments: **
> If authors would like to describe the operations or the use-case, please
> place this description in a section before the Procedures so readers can
> better understand the context. Feel free to add operational considerations.
{.is-info}

#### Technical issues #3 - Whether Changes RFC8669 

**Ketan's comments:** ketan's comments are below.  After you've reformat the document, the Wg will reformat the issues

> I would also like the WG to consider if this document really updates
> RFC8669. If this is only about using the BGP Prefix SID Attribute with the
> flowspec address family, then this is not changing what RFC8669 specified,
> as it explicitly allowed future documents to do so (see below).
> 
> The BGP Prefix-SID attribute defined in this document can be attached to
> prefixes from Multiprotocol BGP IPv4/IPv6 Labeled Unicast ([RFC4760
> <https://www.rfc-editor.org/rfc/rfc8669.html#RFC4760>] [RFC8277
> <https://www.rfc-editor.org/rfc/rfc8669.html#RFC8277>]). *Usage of the BGP
> Prefix-SID attribute for other Address Family Identifier (AFI) / Subsequent
> Address Family Identifier (SAFI) combinations is not defined herein but may
> be specified in future specifications.*
{.is-info}


### Editorial Suggestions 
#### Editorial-01 - Simply reference RFC8402 and RFC9256 

Ketan's comment: 
> a) The document spends too much text describing Segment Routing and SR
> Policies and it uses language that doesn't align with those specifications.
> This can be trimmed by simply referencing RFC8402 and RFC9256. If you must
> provide an overview, use language directly from those documents.
{.is-info}

#### Editorial-02 - remove discussions of FSv1 and FSv2  

Ketan's comment: 
> b) Remove all references to and discussion of FSv1 and v2. At this point in
> the process, the term FSv1 does not exist, and FSv2 is something still with
> the WG. So, just referring to FlowSpec (RFC8955/6) is sufficient.
{.is-info}


#### Editorial-03 - Rename "Running Code" to Implementation Status 

**Ketan's comment: **
> c) Rename "Running Code" to Implementation Status and add a note for RFC
> Editor to remove that section before publication.
{.is-info}

#### Editorial-04 - Revise Security setion 

**ketan's comment:** 
> d) In the security considerations, at a minimum refer to the security
> considerations of base flowspec and quite likely also the relevant Segment
> Routing RFCs. There may be something more, but I suggest getting another
> Secdir review after the document better reflects the procedures.
> e) Please consider submitting the XML so that reviewers see a proper HTML
> rendering.
