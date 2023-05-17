---
title: Multipath TCP (MPTCP) BOF
description: 
published: true
date: 2023-03-13T01:06:00.829Z
tags: 
editor: markdown
dateCreated: 2023-03-13T01:05:55.520Z
---

 *Updated: June 1, 2009*

## Multipath TCP (MPTCP) BOF

Recent research has suggested that by making better use of the multiple paths between endpoints we can better utilise the resources within the network and thus improve resource pooling. In particular, recent results include models of how multipath-capable end-systems might respond to congestion signals, and what the potential benefits might be (see [1] for a more details and references).

If end systems could spread their load across multiple paths in the right way, with the right reaction to the right congestion signals from the network, then traffic would quickly move away from congested or failed links in favor of available uncongested links.

It is fairly intuitive to see that when multipath transport is used in conjunction with congestion-dependent load-distribution, it is possible to push more traffic through the network and to achieve enhanced fault tolerance. Traffic will flow throught any available path that has spare capacity, filling unused resources, while moving away from failures and congested resources. The result is a more flexible network, capable of functioning well, even when the actual traffic matrix differs substantially from the traffic matrix envisaged when the network was designed for.

Currently used transport protocols use only one path at a time for sending data. In particular TCP and DCCP use only one path and they respond to congestion reducing their sending rate. SCTP on the other hand, is aware of multiple paths, but it uses only one at the time, reserving the alternative paths as backups in case of failure.

The proposed work is to define the mechanisms to enable transport protocols to use multiple paths simultaneously and to distribute the load among the subflows of each path based on congestion.

In particular, the proposed work is to extend TCP to support simultaneous data exchange through multiple paths. Two complementary approaches are proposed: On one hand, to define a two-ended multipath TCP that uses multiple addresses a-la SCTP to obtain multiple paths and that requires support from both endpoints to use them. On the other hand, single ended multipath TCP, where only one of the endpoints involved in the communication is multipath aware and relies on multipath routing capabilities provided by the IP routing to deliver data towards a legacy TCP endpoint. These two approaches provide a smooth deployment model, starting with the one-ended multipath TCP, that only requires one end to deploy it and it results in immediate benefits, and then when multipath TCP support becomes pervasive, using the two-ended multipath TCP to obtain all the potential benefits.

The proposed work items are:

  -  A set of architectural guidelines for congestion dependent multipath transport protocols. Since different transport protocols can potentially benefit from this approach, this document describes the motivations and the general approach that should be followed to enable congestion dependent multipath transport.
 -   Extensions to current TCP to support the one-ended mutipath TCP.
 -   Extensions to current TCP to support the two-ended mutipath TCP.
 -   A threat analysis for multipath TCP
 -   An extended API describing how applications can use multipath transport. The API should also provide access to multipath information and enable the control of the usage. 

The initial goal is that the documents produced by the WG will be either experimental or informational. However, if when the documents are ready the technology seems mature enough, the WG will consider if it is appropriate to ask the IESG to advance the document as a Proposed Standard.

With respect to the work on the support for multipath in TCP, the only acceptable modifications to the TCP packet format are in the form of new TCP options.

[1] D. Wischik, M. Handley, M. Bagnulo, [The Resource Pooling Principle](http://www.cs.ucl.ac.uk/staff/d.wischik/Research/respool.html), ACM SIGCOMM Computer Communication Review archive, October 2008

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-06-01 It was migrated from the old Trac wiki on 2023-03-12.*
