---
title: ITS BOF (Concluded) - Intelligent Transportation Systems
description: 
published: true
date: 2023-02-27T01:03:10.890Z
tags: 
editor: markdown
dateCreated: 2022-12-05T22:11:36.312Z
---

### Intelligent Transportation Systems (its), Charter

### Chairs
   Russ Housley
   Carlos Pignataro

### Assigned Area Director
   Suresh Krishnan

### Mailing list
   Address: its@ietf.org 
   To Subscribe: https://www.ietf.org/mailman/listinfo/its 
   Archive: http://www.ietf.org/mail-archive/web/its/current/maillist.html 
   Archive: https://mailarchive.ietf.org/arch/search/?email_list=its

### Additional web page
   TBD

### Charter

Automobiles and vehicles of all types are increasingly connected to
the Internet.  Comfort-enhancing entertainment applications, road
safety applications using bidirectional data flows, and connected
automated driving are but a few new features expected in automobiles
to hit the roads from now to year 2020.

Today, there are several deployed Vehicle-to-Internet technologies
(V2Internet) that make use of embedded Internet modules, or through
driver's cellular smartphone: mirrorlink, carplay, android auto.
However, Vehicle-to-Vehicle (V2V) and Vehicle-to-Infrastructure (V2I,
not to be mistaken with V2Internet) communications are still being
developed.

Some vehicle and infrastructure communications will use IP and
others will not.  Multiple applications need to share one data
link, including non-IP-based protocols sharing the data link with
IP-based protocols.### 

This group will work on V2V and V2I use-cases where IP is well-suited
as a networking technology, supporting also applications that involve
exchanges of safety-related messages between vehicles and
infrastructure if necessary.

This group will develop IP-based protocols to establish direct and
secure connectivity between a vehicle, which is often comprised of
moving networks, and other vehicles and stationary systems.  Some
communications will be extremely short lived, but others will last for
many hours or days.

Moving network to nearby moving or fixed network communications may
involve various kinds of link layers: 802.11-OCB (Outside the Context
of a Basic Service Set, also called 802.11p), 802.15.4 with 6lowpan,
802.11ad, VLC (Visible Light Communications), IrDA, LTE-D, LP-WAN.  One
of the most used link layers for vehicular networks is IEEE 802.11-OCB,
as a basis for DSRC.  However, IPv6 on 802.11-OCB is not yet defined.

The group will work only on IPv6 solutions.

The group will leverage on technologies for Internet of Things (IoT)
which are developed in other IETF and IRTF efforts: 6lo WG, LP-WAN WG,
and T2T RG.  Co-existence with techniques of infrastructure mobility
management will be coordinated with the DMM WG, LISP WG, and other
mobility solutions.

The group will coordinate with IEEE 802.11.  Other SDOs interested
in this work include ISO/TC204, ETSI TC ITS, 3GPP, and NHTSA.

This group will not work on V2V or V2I use-cases where IP is not
well-suited.  Without re-chartering, this group will not work on
Delay-Tolerant Networking nor on Information-Centric Networking.

If the group is successful in accomplishing its first goals, then it
can be rechartered to work on other things (examples include but are
not limited to: a 1-hop mechanism of IP prefix exchange between moving
networks, an n-hop extension, naming for moving networks;
generalization for trains, air, unmanned and space use-cases).

### Work items


1. Standards Track RFC "IPv6 over 802.11p"

2. Potential Informational RFC "ITS General Problem Area" covering:
  - What is ITS?
     -- Explain V2V, V2I, and related terms
  - Why is IPv6 needed?
     -- Explain why some traffic will not use IPv6
     -- Explain why other traffic will use IPv6
  - Use-cases, illustrating the expected areas for initial focus
  - Informative references, relationship with other SDOs 

3. Potential Informational RFC "Problem Statement" covering:
   - Problem statement
   - Security considerations
   - Privacy considerations

### Goals and milestones


Oct 2016 - Draft for "IPv6 over 802.11-OCB" adopted by WG

Dec 2016 - Draft for "ITS General Problem Area" adopted by WG

Mar 2017 - Draft for "Problem Statement" adopted by WG

May 2017 - Submit "IPv6 over 802.11-OCB" to IESG

Oct 2017 - Submit "ITS General Problem Area" to IESG

May 2018 - Submit "Problem Statement" to IESG


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-07-28. It was migrated from the old Trac wiki on 2023-02-26.*
