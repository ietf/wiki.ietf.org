---
title: draft-ietf-idr-bgp-ls-segment-routing-msd implementations
description: 
published: true
date: 2023-03-13T06:33:08.266Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:33:02.297Z
---

The following lists current implementation supported, and in some cases the initial version which includes the support.
Report created by Ketan Talaulikar (ketant@…) Apr 18, 2019 

|   TLV Code Point   |   Description   |   Cisco IOS-XR   |   Cisco IOS-XE   |                |
|:------------------:|:---------------:|:----------------:|:----------------:|:--------------:|
|  266               |  Node MSD       |  6.4.1           |  16.7            |                |
|  267               |  Link MSD       |  6.4.1           |  16.7            |                |

Other aspects: 

|                                Description                    |        Cisco IOS-XR        |        Cisco IOS-XE        |                 |                |
|:-------------------------------------------------------------:|:--------------------------:|:--------------------------:|:---------------:|:--------------:|
|  Node MSD MUST represent lowest value supported by any link   |  Yes                       |  Yes                       |                 |                |
|  Support for value of 0 as MSD                                |  Yes                       |  Yes                       |                 |                |
|  Mechanism for reporting value of 0                           |  advt with value set to 0  |  advt with value set to 0  |                 |                |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-08-08. It was migrated from the old Trac wiki on 2023-03-12.*