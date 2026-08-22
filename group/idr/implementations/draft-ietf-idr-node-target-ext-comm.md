---
title: Information on draft-ietf-idr-node-target-ext-comm Implementations
description: draft-ietf-idr-node-target-ext-comm implement
published: true
date: 2026-08-22T18:35:48.901Z
tags: 
editor: markdown
dateCreated: 2026-08-22T18:35:48.901Z
---

# draft-ietf-idr-node-target-ext-comm 
## Implementations 
| Implementation | Version | configuration example | reference |   
|---|---|---|---|
|  FRR  | 9.0  | yes | FRR  | [FRR-BGP-docs]( https://docs.frrouting.org/en/latest/bgp.html#clicmd-set-extcommunity-nt-EXTCOMMUNITY)
|  Huawei | VRP 9 (? VRP 8) | yes | Jie Dong (VRP 8 and VRP 9 configurations | 
{.dense}


## Implementation of features 
| Features| Section | FRR  | Huawei VRP | Notes |   
|---|---|---|---|--| 
| Node Target Extended Community Transitive (0x01) | 2.0 | yes | yes | send and receive | Node Target Extended Community Non-Transitive (0x41) | 2.0 | yes yes | send and receive | 
| Node Target Ext. Community match BGP ID | 3.0 | yes | yes |   
| Node Target Ext. Community non-match BGP ID | 3.0 | yes | yes | 
|  3  | Hybrid SD-WAN tunnel TEA attached to 1/128 and 2/128 (Secure L3VPN) | Yes |  yes
(.dense)

## FRR configuration 
> set extcommunity nt EXTCOMMUNITY
{.is-info}

## Huawei configuration 