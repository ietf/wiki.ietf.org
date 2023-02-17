---
title: TICTOC WG - Timing over IP Connection and Transfer of Clock
description: 
published: true
date: 2023-01-05T00:04:22.773Z
tags: 
editor: markdown
dateCreated: 2022-12-21T22:40:34.397Z
---

# Welcome to the IETF TICTOC Wiki 
This Wiki contains additional information for the IETF TICTOC working group.

The Timing over IP Connections and Transfer Of Clock (TICTOC) WG is concerned with highly accurate time and frequency distribution over native IP and MPLS-enabled IP Packet Switched Networks (PSNs).

We presently have 4 WG documents: draft-ietf-tictoc-ptp-mib-05 (after WG LC) draft-ietf-tictoc-security-requirements-05 (after WG LC) draft-ietf-tictoc-1588overmpls-05 (WG LC just finished) draft-ietf-tictoc-ptp-enterprise-profile-00 (new WG item)

# Requirements for Management of Timing Protocols
At IETF-92 the issue of requirements for management of timing distribution protocols was raised, and it was suggested that we use this wiki to propose issues that need to be addressed.

First one needs to consider the mechanism used to distribute the management information i.e., native mechanisn inside the timing protocol, use of a standard management protocol (e.g., SNMP, netconf, restconf), etc.

Next one should address the data modeling language (MIB and YANG being the 2 prime examples).

One should also realize that there are at least 2 different actors that require different treatment, master/servers vs. slave/clients. There may be other types of "clocks" as well, including boundary clocks and transparent clocks.

Regarding content, there are two kinds of parameters in timing mangement, namely configuration and performance monitoring. Configuration information includes things like the list of master/servers a slave/client should be observing, IP addresses, packet rates, modes and feature set to be used, stratum level of a master/server clock and from whom it received timing, security mechanisms, etc. Monitoring information includes ToD and/or frequency accuracy (if can be ascertained by comparison to a known reference), observed PDV, dispersion, etc. I am not sure that the requirements need to include an exhaustive list.

Comments ?

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-03-25. It was migrated from the old Trac wiki on 2022-12-21.*