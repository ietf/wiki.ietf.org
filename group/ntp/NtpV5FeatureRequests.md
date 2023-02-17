---
title: Requests for new features for version 5 of NTP
description: 
published: true
date: 2022-12-19T20:20:45.752Z
tags: 
editor: markdown
dateCreated: 2022-12-19T20:20:42.346Z
---

# Requests for new features for version 5 of NTP
 This page compiles possible features for a new version of NTP that are currently not available with NTPv4.

## Specification

1. Stronger modularity regarding the different building blocks (on-wire protocol / measurement collection & evaluation / clock disciplining)
         -   Would enable better tailoring to specific use-cases, for example those where only a single time source is desired and all the selection and weighing algorithms of NTP are superfluous 

2. Clearer specification work, specifically a specification that is a ground-up design rather than a description of a historically grown programming effort.
        -    Would reduce complexity and counteract issues such as hard-coded outdated values or parts of the protocol that are "untouchable" because nobody knows how to remove or change them 

## Enhancements to the on-wire-protocol

1. Security
     -    Security treatment (or abandonment) of Broadcast mode
        -     Would close a security hole 
     -   Tracking levels of security (accuracy) per association
        -    Would enable informed decisions of the measurement collection & evaluation module 
     -   Definition of minimal „core“ vs. „extension(s)“
        -    Would reduce complexity and enable nice features such as two-step time transfer 
     -   Integrated system to manage Extension Fields
        -    Would enable the use of arbitrarily many/large extensions and facilitate future-proofing 
     -   Fixing MAC/better symmetric authentication 

2. Feature parity with PTP

3. Worst-case error bounds ala TrueTime?

    Useful for distributed transactions 

4. Bindings to both UDP+security and QUIC transports 


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2020-04-06. It was migrated from the old Trac wiki on 2022-12-19.*