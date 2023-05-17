---
title: draft-ietf-idr-add-paths implementations
description: 
published: true
date: 2023-03-16T18:50:16.788Z
tags: 
editor: markdown
dateCreated: 2023-03-13T05:47:11.632Z
---

# Implementations of draft-ietf-idr-add-paths
 This web page has the results of a survey of the implementations of

   ADD-PATH [draft-ietf-idr-add-paths] which is a BGP [RFC4271] extension

that that allows the advertisement of multiple paths for the same address prefix without the new paths implicitly replacing any previous ones is defined. The essence of the extension is that each path is identified by a path identifier in addition to the address prefix.

The ADD-PATH implementation survey had 22 detailed questions about compliance with [draft-ietf-idr-add-paths]. Seven implementers (Cumulus Networks, Cisco Systems, Exa Networks, Juniper Networks, Alcatel- Lucent, CZ.NIC and freeRouter ) completed the survey.

This web page has the following sections

 -   overview of results of the survey
 -   [implementations](/group/idr/implementations)
 -   [detailed reports](/group/idr/Add-Path) 

## Overview of Survey Results
### Overview of Interoperability 

|            |  Cumulus  |  Cisco  |  Exa  |  Juniper  |  ALU  |  CZ.NIC  | freeRouter  |
|:----------:|-----------|---------|-------|-----------|-------|----------|-------------|
| Cumlus     |           |  Yes    |       |           |       |   Yes    |             |
| Cisco      |           |  yes    |       |           |       |          |   yes       |
| Exa        |           |  yes    |       |           |       |          |             |
| Juniper    |           |         |       |           |       |          |             |
| ALU        |           |  yes    |       |           |       |          |             |
| CZ.NIC     |           |         |       |           |       |          |             |
| freeRouter |           |  yes    |       |           |       |          |             |

### Overview of Survey Methodology

   The respondents replied "Yes" or "No" to the survey's questions to indicate whether their implementation supports the Functionality/ Description of the [RFC2119] language in [draft-ietf-idr-add-paths]. The respondents replied "Other" to indicate an alternate behavior and had the opportunity to provide comments in all cases. Some questions were informative.

### Overview of Differences

   This section provides the reader with a shortcut to the points where the implementations differ.

   Two of the implementations work only in receive-mode; they don't implement any advertisement of routes. Obviously, those implementations are not compliant with the sections related to the advertisement of routes. Taking that fact into account, all the responders had consistent and compliant answers to all the sections of the survey.


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-26. It was migrated from the old Trac wiki on 2023-03-12.*