---
title: IETF 105 WG High Level Summaries
description: 
published: true
date: 2022-12-20T02:29:06.751Z
tags: 
editor: markdown
dateCreated: 2022-12-20T02:29:02.325Z
---

# IETF 105 - Montreal.

## ANIMA

   New charter text has just passed IESG review. Last change has removed obscure words on the scope. There is still external review procedure before the new charter go into effect.
  
  Update on WG drafts: Autonomic Control Plane, modifications according to IESG review; GRASP API, ready for WGLC; BRISK, in the IESG review, some modifications; Constrained Voucher Artifacts for Bootstrapping Protocols.
  
  New works presented: Autonomic setup of fog monitoring agents, Information Distribution in Autonomic Networking, Guidelines for ASA & Transferring Bulk Data over GRASP, Scenarios and Requirements for Layer 2 ACP, Constrained Join Proxy for Bootstrapping Protocols, Support of asynchronous enrollment in BRSKI, ACME Integrations with BRSKI. 

## BMWG

BMWG met on Monday with about 30 participants (4 remote participants, all presenters). Following 2 WG last calls and completion of her requests, Sarah has called WG Consensus on the EVPN /PBB draft. WG list ratification and Doc Shepherd form completion are the next steps, then Publication review. Most other WG and individual drafts made progress, with list activity on Next-Gen FW, B2B Frame, EVPN Multihome, MLR (multi-level packet loss, similar for PLR) and others. Reviewers were lined-up for almost all drafts.

## DIME

## DNSOP

DNSOP met twice, a 1hr session on Monday and a 2hr session on Tuesday. There were several items which came out of the hackathon which were presented. Several documents were presented which there was discussion about adopting - draft-hoffman-dns-terminology-ter and draft-sah-resolver-information. The larger discussion was around solving the problem of "CNAME at the APEX". The current draft moving through the working group is draft-ietf-dnsop-aname. There are some complexities in the configuration. An alternative proposal was presented - draft-nygren-httpbis-httpssvc - which addresses the CNAME issue, plus additional HTTP information. This draft was gathering strong consensus for adoption.

## GROW

## MBONED

## NETCONF 

met on Monday to discuss the "client-server", YANG Push Notifications, Multi Stream Originator, and HTTPS-based transport for Configured Subscriptions drafts. The WG felt the need to push through the set of "client-server" drafts soon as the authors try to work with the assigned Security Directorate to approve the relevant documents. Notification capabilities draft received comments so is not ready for LC. The Multiple Streams Originators draft ran into some headwinds with questions of scope and applicability of the problem statement; a design team was requested to help the draft authors, and Benoit Claise volunteered to help. HTTPS notification draft got some comments, and will be taken to the mailing list for an adoption call.

## NETMOD

## OPSAWG

OPSAWG+OPS AREA met on Wednesday morning. There was a full agenda with MUD making up three of the presented items. The big takeaways from the meeting include talk about what should happen with the body of MUD work. Should it spin off into its own WG or stay in opsawg? Joe Clarke will take this back up on the opsawg mailing list to get feedback from the WG and the ADs. Additionally, there was discussion around how to evolve the network management virtualization work. There are opinions that both a living set of modules that are known to work together should be kept as well as guidelines as to how IETF module classes work together. Finally, the work around an SD-WAN YANG module for customer consumption seems interesting and needed by the WG. That work will continue in partnership with MEF.

## OPSEC

## RADEXT

## SIDROPS

## V6OPS

v6ops met on Monday, had a talk by Andrew Alston of Liquid Telecom, reviewing issues he faces in IPv6 deployment. His fundamental issue is brittleness in IP routing - he finds MPLS traffic engineering to be far more effective in his regulatory environment, and has difficulties with deep packet inspection due to product availability. Jen Linkova discussed an issue in RFC 4861 and suggested an operational workaround, which we are taking as a working group draft and discussingg with 6man for a possible update to RFC 4861. Jordi Palet Martinez discussed a solution for Telecom Argentina in deployment with IPv4 disabled; user homes may use IPv4 with private addresses, and T.A. proposes to use 464XLAT across its network. This has issues with CDNs, which Jordi is working around. Additionally, we requested commentary on behalf of LSR and Opsec, and discussed two other proposals breifly.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-08-08. It was migrated from the old Trac wiki on 2022-12-19.*