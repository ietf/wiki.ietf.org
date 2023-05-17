---
title: draft-ietf-idr-rtc-no-rt implementations
description: 
published: true
date: 2023-03-13T07:10:37.738Z
tags: 
editor: markdown
dateCreated: 2023-03-13T07:10:32.662Z
---

# draft-ietf-idr-rtc-no-rt implementations

Please list implementations here. For each implementation, please list:

 -   Name of implementation
 -   Person filling out the report
 -   Date
 -   Details of compliance with Section 3:
     -  RFC 6037/MVPN: Are MDT-SAFI routes that carry RTs constrained by RTC? Are MDT-SAFI routes that do not carry RTs unconstrained? (If the implementation doesn't support RFC 6037, please say so.)
     -   GTM: Are MCAST-VPN SAFI routes that carry RTs constrained by RTC? Are MCAST-VPN SAFI routes that do not carry RTs unconstrained? (If the implementation doesn't support GTM, please say so.)
     -   Other address families: Are routes for all other supported address families (e.g., VPNv4) constrained by RTC, whenever RTC is enabled? That is, a route "R" must have an RT and the corresponding RTC interest for that RT must be advertised in order for the route "R" to be advertised? Please list the relevant address families. 
 -   If you have any other comments about the draft and its implementation, feel free to add them. 

## Example

 -   Name of implementation: Yoyodyne Networks Yoyoroute 1.42
 -   Person filling out the report: J. Random Person <person@…>
 -   Date: April 1, 2015
 -   Details of compliance with Section 3:
     -   RFC 6037/MVPN: Compliant
     -   GTM: GTM is not supported by Yoyoroute 1.42
     -   Other address families: Compliant, VPNv4. 
     
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-03-25. It was migrated from the old Trac wiki on 2023-03-12.*     