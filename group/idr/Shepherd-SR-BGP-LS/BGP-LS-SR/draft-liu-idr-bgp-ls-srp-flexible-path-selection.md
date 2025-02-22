---
title: Shepherd review for draft-liu-idr-bgp-ls-srp-flexible-path-seledtion 
description: Shepherd draft-liu-idr-bgp-ls-srp-flexible-path-seledtion 
published: true
date: 2025-02-22T19:06:46.727Z
tags: 
editor: markdown
dateCreated: 2025-02-22T19:06:46.727Z
---

# Shepherd review for draft-liu-idr-bgp-ls-srp-flexible-path-selection 

## Overview of draft

**draft:** [draft-liu-idr-bgp-ls-srp-flexible-path-selection](https://datatracker.ietf.org/doc/draft-liu-idr-bgp-ls-srp-flexible-path-selection)

**type:** Proposed standard 
**WG status:** Individual draft 
**current version:** 00 
**review email:** https://mailarchive.ietf.org/arch/msg/idr/gUAvOQnTXt1hZD1WASzn3mDUkFo/


## Review -00 and -001 
**type:** Proposed standard 
**WG status:** Individual draft 
**current version:** 00 
**review email:** https://mailarchive.ietf.org/arch/msg/idr/gUAvOQnTXt1hZD1WASzn3mDUkFo/

### short technical review 

I notice that the draft-liu-spring-sr-policy-flexible-path-selection
Adds parameters for the dynamic path switching.

Is this dynamic path switching between existing explicit Candidate paths or
Composite Candidate paths?  Or are these parameters of dynamic Candidate Paths?

This concept needs to be further defined in Spring WG. After getting the
Spring work completed, this draft should have the following changes:

  1.  Give [RFC9256] reference for type of Candidate paths
  2.  Add [RFC9552] reference
  3.  Explain carefully what type of Candidate Paths (explicit, dynamic, or composite) are defining this mechanism for. 
  
  4.  Explain the mechanism with format of any TLVs and SubTLVs.  Please provide ranges for each parameter.  Please provide a processing description. 
