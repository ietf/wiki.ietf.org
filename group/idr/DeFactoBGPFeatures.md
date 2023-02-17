---
title: De Facto BGP Features Needing Documentation
description: 
published: true
date: 2023-02-14T23:20:08.341Z
tags: 
editor: markdown
dateCreated: 2023-01-28T23:51:06.803Z
---

This page documents existing deployed and common features for BGP that have no description in the RFC series.

- as-override (replace-peer-as). Used to override a provider's AS number in a BGP VPN when the CE protocol is BGP and the customer AS is the same on both sides of the provider core. (See also https://github.com/mjethanandani/ietf-bgp-yang/issues/70 )
- Implementations inconsistently handle the Path Attribute RESERVED flag bits. Partially discussed in [draft-hares-idr-update-attrib-low-bits-fix](http://tools.ietf.org/html/draft-hares-idr-update-attrib-low-bits-fix).
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2023-01-05. It was migrated from the old Trac wiki on 2023-01-28.*