---
title: Implementation Report for IDR for draft-ietf-idr-sr-policy-seglist-id
description: Implementations of draft-ietf-idr-sr-policy-seglist-id 
published: true
date: 2026-01-22T01:23:40.129Z
tags: 
editor: markdown
dateCreated: 2026-01-19T21:34:23.177Z
---

# Implementation Report for draft-ietf-idr-sr-policy-seglist-id 

## Vendor Implementations
1. H3C: New H3C Technologies, H3C CR16000, CR19000 series routers (Maturity Level: Product, Version 7.1.099 and above), all the "MUST" and "SHOULD" clauses have been implemented.

2. ZTE: ZTE Corporation, ZXR10 core router (Maturity Level: Product), all the "MUST" and "SHOULD" clauses have been implemented.

The protocol extensions described in the draft implemented by H3C and ZTE are as follows:

* Segment List ID Sub-TLV

All the codepoints use the numbers assigned by the IANA. 
## Implemented sections 

| Function                   | Section |  H3C  | ZTE | comments | 
|----------------------------|---------|-------|-----|----------|
| Segment list ID SubTLV     |    2    |  YES  | YES |          | 
| Segment list ID Validation |    2    |  YES  | YES |          |
