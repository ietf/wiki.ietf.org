---
title: Shepherd Reviews for draft-chen-idr-bgp-ls-sr-policy-cp-validity
description: Shepherd draft-chen-idr-bgp-ls-sr-policy-cp-validity
published: true
date: 2026-01-09T14:23:32.459Z
tags: 
editor: markdown
dateCreated: 2025-02-22T18:35:29.831Z
---

# Shepherd Reviews for draft-chen-idr-bgp-ls-sr-policy-cp-validity


## Overview

**draft:** [ draft-chen-idr-bgp-ls-sr-policy-cp-validity](https://datatracker.ietf.org/doc/ draft-chen-idr-bgp-ls-sr-policy-cp-validity)
**WG status:** Individual
**current version:** 01
**Next Steps:** adoptoin ok,  Needs -04 RFC and IANA update"


## Review -03 
** draft:** [draft-chen-idr-bgp-ls-sr-policy-cp-validity-03](https://datatracker.ietf.org/doc/html/draft-chen-idr-bgp-ls-sr-policy-cp-validity-03)

### Technical issues 
#### Issue 1: Please update to RFC 
Please update draft-ietf-idr-bgp-ls-sr-policy ro RFC9857. 

#### Issue 2: Please update IANA format 

   [I-D.ietf-idr-bgp-ls-sr-policy].

### Issues 3: Open issues from -01 
Issues 1 and 2 are coovered in revision -03. 
Issue 3 (indicating that BGP-lS) is covered by use of RFC9552. 
Issue 4 is covered by use of RFC9857. 
Issue 5 is covered by security text in -03 


## Review -01 

** draft:** [draft-chen-idr-bgp-ls-sr-policy-cp-validity-01](https://datatracker.ietf.org/doc/html/draft-chen-idr-bgp-ls-sr-policy-cp-validity-01)
**WG status:** Individual draft 
**current version:** 01
**review email:** https://mailarchive.ietf.org/arch/msg/idr/gUAvOQnTXt1hZD1WASzn3mDUkFo/

### Technical Issues 

  #### Issue 1: Please update your drafts to the latest revision.

- [draft-ietf-idr-te-lsp-distribution] is replaced by [draft-ietf-idr-bgp-ls-te-path] and [draft-ietf-idr-bgp-ls-sr-policy].  
- Please update [RFC7752] to [RFC9552]

#### Issue-2: Please indicate why the CP Validity Sub-TLV adds value to the BGP-LS stream

Why does the CP Validity Sub-TLV adds value to the BGP-LS streamgiving the count of segments in a segment list. 


#### Issue-3: Are you using BGP-LS in a read only mechanism? 

If so, please adjust your text to indicate BGP-LS is read-only.


#### issue-4: What happnens if the desired information does not exist? 

Please augment your procedures to indicate what happens of the information is not available.  What gets sent in BGP-LS? 

 #### Issue-5: Please add a security section.


