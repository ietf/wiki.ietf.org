---
title: draft-ietf-rfc5575bis implementations
description: 
published: true
date: 2023-03-13T06:25:41.304Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:24:15.219Z
---

## draft-ietf-rfc5575bis Implementations
## Implementations 

| Implementation     |     Version    |   Reported by         |
|--------------------|:--------------:|-----------------------|
|  Arbor Sightline   |  9.0           |  Kirill Kasavchenko   |
|  ExaBGP            |  4.0.10        |  Thomas Mangin        |
|  Juniper Networks  |  JunOS 19.1    |  Jeffrey Haas         |
|  Cisco             |  IOS-XE 3.15S  |  Betrand Duvivier     |
|  Cisco             |  IOS-XR 5.2.x  |  Betrand Duvivier     |
|  Huawei            | VRP V800R018   | Jie Dong              |

## Feature Support

| #    |  Protocol Feature                                |  Arbor Sightline             |  ExaBGP                      |  Juniper                     |  Cisco IOS-XE 3.155S               |  Cisco IOS-XR 5.2.x                |  Huawei VRP V800R018                         |
|------|--------------------------------------------------|------------------------------|------------------------------|------------------------------|------------------------------------|------------------------------------|----------------------------------------------|
|  1   |  4. Decode/encode NLRI (Type1-12)                |  Yes                         |  Yes                         |  Yes                         |   Yes (IPv4 & IPv6)                |  Yes (IPv4 & IPv6)                 |  Yes                                         |
|  2   |  5.1. Ordering of Traffic Filtering Rules        |  not applicable              |  n/a (ro RIB)                |  yes[1]                      |  yes (4)                           |   yes (5)                          |  Yes                                         |
|  3   |  6.  Validation Procedure                        |  not applicable              |  n/a (ro RIB)                |  Yes                         |  Yes (4)                           |  Yes (5)                           |  Yes                                         |
|  4   |  7.1.   Traffic Rate in Bytes                    |  Yes                         |  Yes                         |   Yes                        |  Yes                               |   Yes                              |  Yes                                         |
|  5   |  7.2.  Traffic Rate in Packets [6]               |  pending IANA cp assignment  |  pending IANA cp assignment  |  pending IANA cp assignment  |  pending IANA cp assignment        | pending IANA cp assignment         |  pending IANA cp assignment                  |
|  6   |  7.3.  Traffic-action                            |  no                          |  yes                         |  yes                         |  yes(redirect, rate, mark & drop)  |  yes(redirect, rate, mark & drop)  |  yes (redirect, rate, mark & drop, sample)   |
|  7   |  7.4.  RT Redirect                               |  yes                         |  yes                         |   yes                        |  yes                               |  yes                               |  yes                                         |
|  8   |  7.5.  Traffic Marking                           |  no                          |  yes                         |  yes                         |  yes                               |  yes                               |  yes                                         |
|  9   |  8. Filtering in BGP/MPLS VPN Networks           |  no                          |  yes                         |  yes                         |  yes                               |  yes                               |  yes                                         |
|  10  |  10.  Traffic Monitoring                         |  not applicable              |  n/a - no dataplane          |  yes[2]                      |  yes                               |  yes                               |  yes                                         |
|  11  |  11.  Error-Handling and Future NLRI Extensions  |  not applicable              |  no                          |  no[3]                       |  no                                |  no                                |  no                                          | {.dense}
  implementers should fill out this column (yes/no) 

[1] Requires the use of "routing-options flow term-order" configuration.
[2] Traffic Monitoring in Junos can currently only count matches against rules. It does not currently log packet headers.
[3] As of Junos 19.1, unknown NLRI component types may result in session reset. Work is in progress to conform to 5575-bis behavior.
[4]IOS-XE https://www.cisco.com/c/en/us/td/docs/ios-xml/ios/iproute_bgp/configuration/xe-16/irg-xe-16-book/C3PL-BGP-Flowspec-Client.html 
[5] IOS-XR: https://www.cisco.com/c/en/us/td/docs/routers/crs/software/crs_r5-2/routing/configuration/guide/b_routing_cg52xcrs/b_routing_cg52xcrs_chapter_011.html
[6] note that without the IANA allocation, all implementations cannot comply with this specification. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-07-30. It was migrated from the old Trac wiki on 2023-03-12.*