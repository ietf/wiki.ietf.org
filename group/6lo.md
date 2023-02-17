---
title: 6lo WG - IPv6 over Networks of Resource-constrained Nodes
description: 
published: true
date: 2023-01-12T00:14:25.033Z
tags: 
editor: markdown
dateCreated: 2022-07-23T19:47:28.584Z
---

# Welcome to the 6LO Working Group
The [6LO working group](https://datatracker.ietf.org/group/6lo/about/) focuses on the work that facilitates IPv6 connectivity over constrained node networks with the characteristics of:

* limited power, memory and processing resources
* hard upper bounds on state, code space and processing cycles
* optimization of energy and network bandwidth usage
* lack of some layer 2 services like complete device connectivity and broadcast/multicast

It originated as the 6LoWPAN working group, chartered to develop a compression scheme for IPv6 over IEEE 802.15.4 link layers. Of historical interest, the original [6LoWPAN wiki](http://6lowpan.tzi.org/)

# Starting Points

**RFC 4944** :: **Transmission of IPv6 Packets over IEEE 802.15.4 Networks**
This document describes the frame format for transmission of IPv6 packets and the method of forming IPv6 link-local addresses and statelessly autoconfigured addresses on IEEE 802.15.4 networks. Additional specifications include a simple header compression scheme using shared context and provisions for packet delivery in IEEE 802.15.4 meshes.

**RFC 6282** :: **Compression Format for IPv6 Datagrams over IEEE 802.15.4-Based Networks**
(updates RFC 4944) This document specifies an IPv6 header compression format for IPv6 packet delivery in Low Power Wireless Personal Area Networks (6LoWPANs) that relies on shared context to allow compression of arbitrary prefixes. This document specifies compression of multicast addresses and a framework for compressing next headers. UDP header compression is specified within this framework.

**RFC 6775** :: **Neighbor Discovery Optimization for IPv6 over Low-Power Wireless Personal Area Networks (6LoWPANs)**
(updates RFC 4944) This document describes simple optimizations to IPv6 Neighbor Discovery, its addressing mechanisms, and duplicate address detection for Low-power Wireless Personal Area Networks and similar networks.

# Recent Developments

* [Summary of RPL artifact compression approaches](/group/6lo/RplArtifactsCompressionApproaches)
* RFC6775 (6LoWPAN-ND) Update Requirement Proposal
* [6lo Usecase Document](https://datatracker.ietf.org/doc/draft-hong-6lo-use-cases/)

# Meeting Materials

* [IETF 94 6lo WG Internet Area materials](https://datatracker.ietf.org/meeting/94/materials.html#int)

# Useful Links

* [6lo List Archive](https://mailarchive.ietf.org/arch/search/?email_list=6lo)
* [6lo Documents](https://datatracker.ietf.org/wg/6lo/documents/)

# Events

**IETF94 ETSI Plugtest Event**
The event was free of charge and was open to both ETSI members and non-members. All information related to this event along with registration details may be found at the following address: http://www.etsi.org/news-events/events/1003-6lo-plugtests
* [Pictures](https://www.dropbox.com/sh/mtabektxqq4e2ct/AADEyoVx_KpI8P9269vDi3Ada?dl=0)
* Contact Details : Plugtests@… or Miguel Angel Reina Ortega MiguelAngel?.ReinaOrtega@…

# 6lowPAN Deployment Examples

TBD

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-11-12. It was migrated from the old Trac wiki in 2022.*
