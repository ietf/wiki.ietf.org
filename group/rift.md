---
title: RIFT WG - Routing In Fat Trees
description: 
published: true
date: 2023-02-27T04:39:59.173Z
tags: 
editor: markdown
dateCreated: 2022-12-21T21:37:49.588Z
---

# RIFT Wiki Page

RIFT is specialized, dynamic routing protocol for Clos and fat-tree networks and its' variants. The protocol

(1) deals with fully automated construction of fat-tree topologies based on detection of links,

(2) minimizes the amount of routing state held at each level,

(3) automatically prunes and load balances topology flooding exchanges over a sufficient subset of links,

(4) supports automatic disaggregation of prefixes on link and node failures to prevent black-holing and suboptimal routing,

(5) allows traffic steering and re-routing policies,

(6) allows loop-free non-ECMP forwarding,

(7) automatically re-balances traffic towards the spines based on bandwidth available and finally

(8) provides mechanisms to synchronize a limited key-value data-store that can be used after protocol convergence to e.g. bootstrap higher levels of functionality on nodes.

# Implementation Status

- Juniper has an ongoing implementation including publically available binaries under https://www.juniper.net/us/en/dm/free-rift-trial/
- Very well documented and comprehensive open source version is maintained under https://github.com/brunorijsman/rift-python
- ZTE is implementing RIFT according to the working group drafts
# Hackathons

Hackathons 102/103/104 have been held on the open source version, presentations can be found under https://github.com/brunorijsman/rift-python

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-05-01. It was migrated from the old Trac wiki on 2022-12-21.*