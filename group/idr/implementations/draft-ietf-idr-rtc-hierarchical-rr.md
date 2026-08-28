---
title: Implmentation report for draft-ietf-idr-rtc-hierarchical-rr
description: draft-ietf-idr-rtc-hierarchical-rr implementations
published: true
date: 2026-08-28T13:39:15.558Z
tags: 
editor: markdown
dateCreated: 2026-08-28T13:30:51.594Z
---

# draft-ietf-idr-rtc-hierarchical-rr
# Implementation report 


## Implementations 
- NOkia 
- Juniper/HPE 
- Huawei 
- FRR 

## Details 
### Add path solution 
#### Nokia 
Nokia SR OS supports BGP Optimal Route Reflection (ORR) for Hierarchical Networks and natively supports BGP Add-Path for the route-target (RTC) address family.
##### Code 
Within the config>router>bgp context, you can enable add-paths for the route-target address family on inter-RR sessions to satisfy the draft's Add-Path requirement.

#### Juniper/HPE (Aruba)
Junos OS bypasses this issue predominantly via two mechanisms: Add-Path configuration and explicit knob relaxation.
##### Config Code 
Juniper allows you to configure add-path under the family route-target configuration. Additionally, for complex multi-cluster topologies where loop-detection dropping is a problem, Junos supports the relaxation of loop verification on infrastructure-only control targets or the use of independent cluster IDs.

#### Huawei 
(need to check with Huawei)
##### config Code 


#### FRR 
RR handles the RTC address family (address-family ipv4 rtc), but it strictly enforces standard BGP loop prevention by default.
##### config Code 
To align FRR with this draft in a hierarchical setup, you must manually enable Add-Path behavior for the RTC table using the bgp addpath-tx-all-paths or bgp addpath-tx-bestpath-per-AS commands under the RTC address family daemon configuration.
