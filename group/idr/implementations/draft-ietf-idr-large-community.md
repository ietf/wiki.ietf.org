---
title: draft-ietf-idr-large-community implementations
description: 
published: true
date: 2023-03-13T06:06:38.838Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:06:33.561Z
---

# Implementations of draft-ietf-idr-large-community
## Known Implementations

 -   Cisco IOS XR
 -   ExaBGP
 -   GoBGP
 -   BIRD
 -   OpenBGPD
 -   pmacct
 -   Quagga
 -   FreeRangeRouting? (FRR) 

## Implemented Features 

|                                                                             |   IOS XR   |             ExaBGP            |   GoBGP   |   BIRD   |   OpenBGPD  |   pmacct   |   Quagga   |   FRR       |
|:---------------------------------------------------------------------------:|:----------:|:-----------------------------:|:---------:|:--------:|-------------|:----------:|:----------:|:-----------:|
|  Send correctly formatted Large Communities                                 |   yes      |             yes               |   yes     |   yes    |   yes       |   no       |   yes      |   yes       |
|  Receive and display Large Communities with Routes                          |   yes      |             yes               |   yes     |   yes    |   yes       |   yes      |   yes      |   yes       |
|  Aggregate routes with multiple Large Communities, removing duplicates      |   yes      |             yes               |           |          |             |   yes      |            |             |
|  Match Large Communities using the 3 decimal uint32 representation          |   yes      |             yes               |   yes     |   yes    |   yes       |   yes      |   yes      |   yes       |
|  Set/delete Large Communities using the 3 decimal uint32 representation     |   yes      |             yes               |   yes     |   yes    |   yes       |   no       |   yes      |   yes       |
|  Separator used in the canonical representation                             |  colon     |  colon in log, comma in json  |   colon   |  comma   |   colon     |   colon    |   colon    |   colon     |
|  Treat as withdraw a route with Large Community of invalid length           |   yes      |             yes               |   no      |   yes    |   yes       |   ??       |   yes      |   yes       |
|  No restriction on the value of Global Administrator field                  |   yes      |             yes               |   yes     |   yes    |   yes       |   yes      |   yes      |   yes       |
|  Canonical representation, integers not omitted, even when zero             |   yes      |             yes               |   yes     |   yes    |   yes       |   yes      |   yes      |   yes       |
|  Duplicate Large Communities not transmitted                                |   yes      |             yes               |   no      |   yes    |             |   yes      |   yes      |   yes       |
|  Removing duplicate Large Communities from received UPDATEs                 |   yes      |             yes               |   yes     |   no     |             |   yes      |   yes      |   yes       |
{.dense}

### Overview of Interoperability

|                 |  IOS XR   |  ExaBGP  |  GoBGP  |  BIRD   |   OpenBGPD   |   pmacct           |   Quagga   |   FRR       |
|:---------------:|-----------|----------|---------|---------|:------------:|:------------------:|:----------:|:-----------:|
|  Cisco IOS XR   |   yes     |   yes    |         |         |              |                    |   yes      |   yes       |
|  ExaBGP         |   yes     |   yes    |   yes   |   yes   |   yes        |   yes              |   yes      |   yes       |
|  GoBGP          |           |   yes    |   yes   |   yes   |              |   yes              |            |             |
|  BIRD           |           |   yes    |   yes   |   yes   |   yes        |   yes              |            |             |
|  OpenBGPD       |           |   yes    |         |   yes   |   yes        |                    |   yes      |   yes       |
|  pmacct         |           |   yes    |   yes   |   yes   |              |   not applicable   |            |             |
|  Quagga         |   yes     |   yes    |         |         |   yes        |                    |            |             |
|  FRR            |   yes     |   yes    |         |         |   yes        |                    |            |             |
{.dense}


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-05-29. It was migrated from the old Trac wiki on 2023-03-12.*