---
title: draft-ietf-idr-bgp-flowspec-oid implementations
description: 
published: true
date: 2023-03-13T06:39:01.250Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:38:16.975Z
---

 **Implementation report for draft-ietf-idr-bgp-flowspec-oid**
## Implementations 

|  Implementation    |         Version         |   Reported by   |
|--------------------|:-----------------------:|-----------------|
|  Cisco             |  IOS-XR 5.2.x and later |  see [1] [2]    |
|  Cisco             |  IOS-XE 3.15 and later  |  see [3]        |
|  Huawei Networks   |  NE4OE V800R010C00      |  see [4]        |
|  Juniper Networks  |  JunOS 15.1 and later   |  see [5] [6]    |
|  Nokia             |   SR-OS 9.OR1           |  see [7]        |

## Feature Support

|  Protocol Feature                                                                                   |  Cisco IOS-XR          |  Cisco IOS     |    Huawei |  Juniper Networks  |  Nokia     |
|-----------------------------------------------------------------------------------------------------|------------------------|----------------|----------:|--------------------|------------|
|  Revised Validation Procedure (required)                                                            |  Yes[1] [2]            |  Yes [3]       |  Yes [4]  |  Yes [5] [6]       |  Yes [7]   |
|  Configuration to disable Validation that AS Path does not have AS Sets or Sequence * 1 (optional)   |  No                    |  No            |  Yes      |  No                |  No        |
|  Huawei Networks                                                                                    |  NE4OE V800R010C00     |  see [4]       |           |                    |            |
|  Juniper Networks                                                                                   |  JunOS 15.1 and later  |  see [5] [6]   |           |                    |            |
|  Nokia                                                                                              |   SR-OS 9.OR1          |  see [7]       |           |                    |            |

 1 - full description: Configuration to disable validation that AS Path Attribute of Flow specification does not contain AS-SET and/or AS Sequence segments.
## References

[1] Cisco IOS XR Routing Configuration Guide for the Cisco CRS Router, Release 5.2.x: https://www.cisco.com/c/en/us/td/docs/routers/crs/software/crs_r5-2/routing/configuration/guide/b_routing_cg52xcrs/b_routing_cg52xcrs_chapter_011.html

[2] Cisco IOS XR Routing Configuration Guide for the Cisco ASR 9000 Series Routers, Release 7.1.x: https://www.cisco.com/c/en/us/td/docs/routers/asr9000/software/asr9k-r7-1/routing/configuration/guide/b-routing-cg-asr9000-71x/b-routing-cg-asr9000-71x_chapter_011.html#concept_84659F57AD2B44D2930F25C59A81A3F3

[3] Cisco IP Routing: BGP Configuration Guide, Cisco Release 3S: https://www.cisco.com/c/en/us/td/docs/ios-xml/ios/iproute_bgp/configuration/xe-3s/irg-xe-3s-book/bgp-flowspec-route-reflector-support.html

[4] Huawei NE40E V800R010C00 Configuration Guide - Security 01: https://support.huawei.com/enterprise/en/doc/EDOC1100028534?section=j032&topicName=configuring-dynamic-bgp-flow-specification

[5] Juniper JunOS BGP User Guide: https://www.juniper.net/documentation/en_US/junos/topics/topic-map/multiprotocol-bgp.html#id-understanding-bgp-flow-routes-for-traffic-filtering

[6] Juniper JunOS BGP User Guide: https://www.juniper.net/documentation/en_US/junos/topics/reference/configuration-statement/no-validate-edit-protocols-bgp.html

[7] Nokia Services Overview Guide R16.0.R1, Standards and Protocol Support: https://infocenter.nokia.com/public/7750SR160R1A/index.jsp?topic=%2Fcom.sr.unicast%2Fhtml%2Fbgp.html 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2020-06-30. It was migrated from the old Trac wiki on 2023-03-12.*