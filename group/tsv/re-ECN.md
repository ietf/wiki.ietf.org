---
title: Congestion Exposure BoF (ConEx)
description: (was re-ECN)
published: true
date: 2023-03-13T00:43:05.128Z
tags: 
editor: markdown
dateCreated: 2023-03-13T00:42:59.606Z
---

# Congestion Exposure BoF (ConEx)

(was re-ECN)
## Draft Charter

http://www.ietf.org/mail-archive/web/re-ecn/current/msg00497.html
## BoF minutes & slides

http://www.ietf.org/proceedings/76/conex.html
## BoF Chairs

Leslie Daigle & Philip Eardley
## Description

Congestion Exposure (ConEx) is a proposed new IETF activity to enable congestion to be exposed along the forwarding path of the Internet. By revealing expected congestion in the IP header of packets, congestion exposure provides a generic network capability which allows greater freedom over how capacity is shared. Such information could be used for many purposes, including congestion policing, accountability and inter-domain SLAs. It may also open new approaches to QoS and traffic engineering.

The Internet is, in essence, about pooling resources. The ability to share capacity has been paramount to its success and has traditionally been managed through the voluntary use of TCP congestion control. However, TCP doesn't account for how much an application (and a user) occupies capacity over time. This has led ISPs to deploy ad-hoc mechanisms such as volume accounting, rate policing and deep packet inspection. These try to protect the experience of the majority of users by limiting persistent traffic such as peer-to-peer file-sharing or video streaming. These ad-hoc practices can stifle innovation at the transport and application layer, and have led to calls for government regulations (see for example, the problem statement I-D (ref below) and RFC5594).

We believe these problems stem from the lack of a network-layer system for accountability -- among all parties -- for sending traffic which causes congestion. We propose a metric where IP packets carry information about the expected rest-of-path congestion, so that any network node may estimate how much congestion it is likely to cause by sending or forwarding traffic. A network operator can then count the volume of congestion about to be caused by an aggregate of traffic as easily as it can count the volume of bytes entering its network today.

Once ISPs can see rest-of-path congestion, they will no longer need to unnecessarily limit volume or bit-rate or p2p just in case it leads to congestion. They can limit only those users who actually cause large volumes of congestion, and they can discourage other networks from allowing their users to cause congestion. This will allow ISPs to encourage transports like LEDBAT that send large amounts of volume while causing little congestion. And end-hosts may be freed from peak rate restrictions when their traffic causes little congestion.

The purpose of the BoF is to explore the support for and viability of pursuing an IETF activity to define a basic protocol to expose the expected rest-of-path congestion in the IP header. Any such protocol should work with minimal changes to the existing network, in particular it should work with unmodified routers. There is already one existing proposal that builds on ECN to provide rest-of-path congestion information in IP headers and other proposals may come forward.

If supported, an eventual WG would focus on the development of its chosen congestion exposure protocol as its main work item. The chosen protocol will need to be deployable with minimal changes to the existing Internet, preferably working with unmodified routers. Additional work items could include detailing the motivations for congestion exposure, a threat analysis of the subsequent protocol, reporting on experimental trials and describing deployment considerations. Importantly, the proposed WG would encourage experimentation but not deliberate on how congestion exposure should be used: our concern would be how flexibly the resulting protocol can support differing needs at run-time, rather than dictating a particular usage at design time.

Related Internet-Drafts include:

ConEx Problem statement:
http://tools.ietf.org/id/draft-moncaster-conex-problem
http://tools.ietf.org/html/draft-tschofenig-conex-ps
re-ECN protocol spec:
http://tools.ietf.org/id/draft-briscoe-tsvwg-re-ecn-tcp
re-ECN motivation:
http://tools.ietf.org/id/draft-briscoe-tsvwg-re-ecn-tcp-motivation

Other useful reference material:

Overview: problem & solution (7pp):
http://www.bobbriscoe.net/projects/refb/FairerFasterWP.pdf

Mailing list for discussion: re-ecn@ietf.org
Subscribe: https://www.ietf.org/mailman/listinfo/re-ecn
## IETF 76 BoF Proposal

   - IETF-76 Hiroshima: [Congestion Exposure BoF Proposal](http://bobbriscoe.net/projects/refb/cex-bof-proposal-01.txt) 

## Meeting Notes

 -   [Ad Hoc Bar BoF](https://trac.ietf.org/trac/tsv/wiki/0907re-ECNBarBoF), IETF-75 Stockholm, 30 Jul '09 

 -   http://www.ietf.org/proceedings/76/conex.html, IETF-76 Hiroshima, CONEX BoF 

## Other Related Resources

 -   [re-PCN](http://www.bobbriscoe.net/projects/refb/#repcn) 

 -   [IRTF Internet Capacity Sharing Architecture Design Team](/group/irtf/CapacitySharingArch) 

 -   [Congestion in wireless](http://tools.ietf.org/id/draft-johansson-wireless-congestion-properties) 
    
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2010-03-05. It was migrated from the old Trac wiki on 2023-03-10.*    