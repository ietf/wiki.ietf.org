---
title: draft-ietf-idr-flow-spec-v6 implementations
description: 
published: true
date: 2023-03-13T06:28:47.435Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:28:15.636Z
---

# draft-ietf-idr-flow-spec-v6 implementations

## Implementations

| Implementation     |           Version           |   Reported by             |
|--------------------|:---------------------------:|---------------------------|
|  Arbor Sightline   |  9.1                        |  Kirill Kasavchenko [1]   |
|  ExaBGP            |  4.2.8.1                    |  [2]                      |
|  Juniper Networks  |  JunOS 16.1 for MX Series.  |  [3]                      |
|  Cisco             |  IOS-XE 3.15S               |  see [4]                  |
|  Cisco             |  IOS-XR 5.2.x               |  see  [5]                 |
|  Cisco             |  ASR9000 5.2.x              |  see [6]                  |
|  Huawei            |  NE40E V800R010C00          |  see [7]                  |

## Feature Support

| #   |  Protocol Feature                            |  Arbor Sightline       |  ExaBGP        |  Juniper  |  Cisco            |  Huawei    |          |
|-----|----------------------------------------------|------------------------|----------------|-----------|-------------------|------------|----------|
|  1  |  3. Decode/encode NLRI (Type1-12)            |  Yes [1]               |  Yes [2]       |  Yes [3]  |  Yes [4] [5] [6]  |  Yes [7]   |          |
|  2  |  3. Decode/encode IPv6 Flow Label (Type 13)  |  unclear [8]           |  Yes [2]       |  Yes [3]  |  Yes [4][5][6]    |  yes [7]   |          |
|  7  |  6.1.  Redirect IPv6 [9]                     |  unclear [1][10][11]   |  yes [2] [11]  |  yes [3]  |  yes [6]          |  yes [6]   |  yes [7] |

 [1] https://www.netscout.com/sites/default/files/2019-01/Effective-DDoS-Mitigation-in-Distributed.pdf

  [This blurb indicates v4 and v6 support]

[2] https://manpages.debian.org/unstable/exabgp/exabgp.1.en.html https://manpages.debian.org/unstable/exabgp/exabgp.conf.5.en.html

[3] Juniper manual page: https://www.juniper.net/documentation/en_US/junos/topics/reference/configuration-statement/flow-ipv6-edit-routing-options.html

[4] cisco Manual page: https://www.cisco.com/c/en/us/td/docs/ios-xml/ios/iproute_bgp/configuration/xe-16/irg-xe-16-book/C3PL-BGP-Flowspec-Client.html

[5] https://www.cisco.com/c/en/us/td/docs/routers/crs/software/crs_r5-2/routing/configuration/guide/b_routing_cg52xcrs/b_routing_cg52xcrs_chapter_011.html

[6] https://www.cisco.com/c/en/us/td/docs/routers/asr9000/software/asr9k_r5-2/routing/configuration/guide/b_routing_cg52xasr9k/b_routing_cg52xasr9k_chapter_011.html

[7] Huawei manual page: https://support.huawei.com/enterprise/en/doc/EDOC1100028534?section=j034&topicName=configuring-dynamic-bgp-ipv6-flow-specification

[8] https://www.cisco.com/c/en/us/td/docs/routers/asr9000/software/asr9k_r5-2/routing/configuration/guide/b_routing_cg52xasr9k/b_routing_cg52xasr9k_chapter_011.html#reference_2654F6CD1C0F4E81A38DDC2D4CD810F6

[9] This is pending IANA CP assignment - implementations cannot correctly implement this without IANA specification.

  The implementations are using specific values.

[10] - unclear in documentation - as it lists Types 1-12 + IPv4 and Ipv6

[11] There was an early footnote on Arbor Sightline and Exabgp - indicating an exception of Type 3 and Type 13, but this shepherd can not confirm nor deny this early footnote. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2020-06-24. It was migrated from the old Trac wiki on 2023-03-12.*