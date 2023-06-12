---
title: Implementation report for CT 
description: Implementation report 
published: true
date: 2023-06-12T18:49:15.205Z
tags: 
editor: markdown
dateCreated: 2023-06-05T16:30:59.788Z
---

#  BGP CT Implementation report

## Author

## RFC 2119 perspective 

### RFC 2119 “MUST” Clauses 

| Feature  | Draft Text  |	 Implemented?  | | Compliance |
|---|---|---|---|---|---|---|---|
| | |	**Juniper** | **FreeRTR**  | **Juniper**| **FreeRTR** |
|TransportTarget | They MUST be set to zero on transmission, SHOULD be ignored on reception and  left unaltered.| Yes |	Yes| Yes | Yes |
{.dense}