---
title: draft-ietf-idr-rpd implementation report 
description: draft-ietf-idr-rpd implementations
published: true
date: 2025-07-11T20:44:24.362Z
tags: 
editor: markdown
dateCreated: 2025-07-11T20:44:24.362Z
---



This is an implementation report for [draft-ietf-idr-rpd](https://datatracker.ietf.org/doc/draft-ietf-idr-rpd/)

 The report created by Huaimo Chen 
 
 |                   |                                                                  |
|-------------------|------------------------------------------------------------------|
| Implementation 1: | NE40E-M2K V800R011C00 by Router Product Line in Huawei           |
| Implementation 2: | iMaster NCE IP V100R018C00 by Controller Product Line in Huawei  |

 These two Implementations are on different code bases. 
 
 ## RPD NLRI support
 
 |  NLRI                  |  MUST/MAY  |  Section  |   Implementation 1  |  Implementation 2   |
|------------------------|------------|-----------|---------------------|---------------------|
|  Feature               |  MUST      |  4.1      |   Support           |  Support            |
|  Ordering [1]          |  MUST      |  4.1      |   Support           |  Support            |

[1] ordering is by 

|  Error handing          |  MUST/MAY  |           |   Implementation 1  |  Implementation 2   |
|-------------------------|------------|:---------:|---------------------|---------------------|
|  -NLRI length check     |  MUST      |  4.1      |   Support           |  Support            |
|  -NLRI Policy (1 or 2)  |  MUST      |  4.1      |   Support 1         |  Support 1          |
|  Distinguisher checks   |  MUST      |  4.1      |   Support           |  Support            |

draft-ietf-idr-rpd options 

| Type/TLV/Atom/sub-TLV    | MUST/MAY  |  Implementation 1  |  Implementation 2  |
|--------------------------|-----------|--------------------|-------------------:|
| BGP Wide Community Type  | MUST      |  Support           |  Support           |
| (Target TLV [1])         | MUST      |  Support           |  Support           |
| (Exclude Target TLV [1]) | MUST      |  Support           |  Support           |
| (Parameter TLV [1])      | MUST      |  Support           |  Support           |
| RouteAttr_ Atom          | MUST      |  Support           |  Support           |
| MED Change sub-TLV       | MUST      |  Support           |  Support           |
| AS-Path Change sub-TLV   | MUST      |  Support           |  Support           |

 [1] - BGP Wide Community TLVs (Target, Exclude Target and Parameter TLVs) are not focus of draft-ietf-idr-rpd 
 
 
 &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2022-01-28. It was migrated from the old Trac wiki on 2023-03-17.*