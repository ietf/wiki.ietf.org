---
title: Implementation report for draft-ietf-idr-flowspec-redirect-ip
description: 
published: true
date: 2026-01-28T12:56:30.808Z
tags: 
editor: markdown
dateCreated: 2023-03-29T05:50:50.566Z
---

# draft-ietf-idr-flowspec-redirect-ip Implementations

## Implementations 

### Cisco IOS-XR
Organization: Cisco
Implementation Name: Cisco IOS-XR
Description: 
Maturity: Widely used.
Version Compatibility: draft-ietf-idr-flowspec-redirect-ip-00
Licensing: Proprietary
Implementation Experience:
Contact Information: Jakob Heitz
Last Updated: 14 October 2024 - IDR mailing list

###  HPE / Juniper Networks
Organization: HPE / Juniper Networks
Software Name: Junos 18.4R1 and later
Description: Juniper redirect-to-ip feature
Maturity: Widely Used
Version Compatibility: draft-ietf-idr-flowspec-redirect-ip-02
Licensing: Proprietary
Implementation Experience: 
Contact Information: 
- Jeffrey Haas - jhaas@juniper.net

Last Updated: August 2025

### Huawei Versatile Routing Platform Software
Organization: Huawei Technologies Co., Ltd.
Implementation Name: VRP V800R019C10 and later 
Description: Huawei redirect-to-ip feature
Maturity: Widely used.


Version Compatibility:
draft-ietf-idr-flowspec-redirect-ip-02
Licensing: Proprietary
Implementation Experience: Nothing specific.
Contact Information: 
- Shunwan Zhuang - zhuangshunwan@huawei.com
- Ming Shen - shenming2@huawei.com

Last Updated: December 2025

## Coverage 
         
Section| Description | Cisco |  HPE/Juniper | Huawei | 
|----|----|----|----|----| 
| 2 | IPv4 Extended Community | Not Implemented | Implemented |  Implemented | 
| 2 | IPv6 Extended Community | Not Implemented | Not Implemented |  Implemented | 
| 2 | Redirect (C == 0) | Not Implemented | Implemented  |  Implemented | 
| 2 | Copy (C == 1)  |  Not Implemented | Not Implemented |   Not Implemented | 
| 2.1 |  Validation | Not Implemented |  Implemented  |  Implemented | 
| 2.2 |  Longest prefix match | TBD | Implemented  | Implemented | 
| 2.2 | Best path ECMP | TBD  | Implemented   | Implemented | 
| 2.2 | Multiple communities ECMP load sharing | Not Implemented | Implemented  | Not Implemented | 
| 2.2 | Redirect-to-IP in Redirect-to-VRF | Not Implemented | Implemented  | Not Implemented | 
{dense}
