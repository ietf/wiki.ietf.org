---
title: Add Path Section 5.8 Multiple Address Family Support (Part 2)
description: 
published: true
date: 2023-02-21T06:13:30.101Z
tags: 
editor: markdown
dateCreated: 2023-02-21T06:13:26.236Z
---



   Functionality Description: Which (AFI, SAFI) pairs does your implementation support when using the ADD-PATH capability?

   RFC2119: N/A

|  Implementation  |   Comments                                                                |    |
|------------------|---------------------------------------------------------------------------|----|
|  Cumulus         |  IPv4 unicast and IPv6 unicast                                            |    |
|       Cisco      |  ipv4 unicast and ipv6 unicast                                            |    |
|       Exa        |  1/1 2/1 1/4 2/4                                                          |    |
|  Juniper         |  IPv4 Unicast, IPv6 Unicast, IPv4 Labeled Unicast, IPv6 Labeled Unicast   |    |
|       ALU        |  1/1, 1/4, 1/128, 2/1, 2/4, 2/128                                         |    |
|  CZ.NIC          |  IPv4 unicast and IPv6 unicast                                            |    |
|  freeRouter      |  ipv4/ipv6 (labeled)unicast/multicast                                     |    |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-26. It was migrated from the old Trac wiki on 2023-02-17.*
