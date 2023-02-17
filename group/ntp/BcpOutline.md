---
title: Outline for NTP BCP
description: 
published: true
date: 2022-12-19T20:17:52.790Z
tags: 
editor: markdown
dateCreated: 2022-12-19T20:17:49.639Z
---


# Outline for NTP BCP

denis.reilly@spectracom.orolia.com
stenn@nwtime.org

Started: April 2015

- Keeping your NTP Deployment up to date
- General Network Security Best Practices
    -    BCP 38 
- NTP Configuration / Security Best Practices
    -    Mode 6/7
       -       Use appropriate restrict lines 
    -    Autokey [HMS: Don't use it.]
    -    Using pool servers 
- NTP in Embedded Devices
    -    Provide an update mechanism
    -    Implement/respect KISS codes
    -    Get a vendor subdomain for pool usage 
- Noteworthy NTP Configuration Examples
    -    Client-only configuration
    -    Server-only configuration
    -    Anycast 
- Startup issues
    -    Only use -g on cold-start 

More general topics that may be added if they have acceptable text and fit in

- "Carrier Grade" NTP : What is it?
- "Cloud" NTP
- Propagation of Leap Second information in NTP
- NTP on Virtual Machines 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-09-10. It was migrated from the old Trac wiki on 2022-12-19.*