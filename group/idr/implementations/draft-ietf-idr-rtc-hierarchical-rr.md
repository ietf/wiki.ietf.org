---
title: Implmentation report for draft-ietf-idr-rtc-hierarchical-rr
description: draft-ietf-idr-rtc-hierarchical-rr implementations
published: true
date: 2026-08-28T15:28:33.947Z
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
### Add path solution (3.1)  
#### Nokia 
Nokia SR OS supports BGP Add-Path for the route-target (RTC) address family.
##### Code 
 config>router>bgp context, 
 enable add-paths for the route-target address family on inter-RR sessions to satisfy the draft's Add-Path requirement.

#### Juniper/HPE  
 Add-Path supported 

##### configuration 
https://www.juniper.net/documentation/us/en/software/junos/cli-reference/topics/ref/statement/add-path-edit-protocols-bgp.html

#### FRR 
RR handles the RTC address family (address-family ipv4 rtc), but it strictly enforces standard BGP loop prevention by default.
##### config Code 
manually enable Add-Path behavior for the RTC table for bgp addpath-tx-all-paths 
or 
bgp addpath-tx-bestpath-per-AS commands under the RTC address family daemon configuration.


### Allowing Duplicated CLUSTER_ID (section 3.2) 
>    As the RT-Constrain route may be ignored due to 
>    duplicated CLUSTER_ID in the CLUSTER_LIST
>    of the received BGP Update, one knob can be introduced to control
>    whether CLUSTER_ID duplication is allowed or not, and the times of
>    duplication of any CLUSTER_ID allowed in the received CLUSTER_LIST
>    can be configurable.
{.is-info}

   
#### Huawei 
Supports this feature.  

##### configuration 


