---
title: Enrollment Roadmap
description: 
published: true
date: 2022-12-15T06:00:43.234Z
tags: 
editor: markdown
dateCreated: 2022-12-15T05:52:56.723Z
---

 This document is part of the [NetworkEnrollment](/group/int/NetworkEnrollment) Effort.

The document: https://datatracker.ietf.org/doc/draft-richardson-enrollment-roadmap/ is being moved to this page. 

![screen_shot_2022-12-14_at_9.54.15_pm.png](/screen_shot_2022-12-14_at_9.54.15_pm.png)

## Components

A document oriented view of the relationships follows below.

**generic voucher semantics**

   The abstract semantics of the voucher, described in YANG, are in RFC8366.

**constrained voucher**

   The semantics of the constrained voucher, represented in CBOR, are described in I-D.ietf-anima-ace-constrained-voucher.

   This document has a home in ANIMA.

**JSON format voucher**

   The semantics of the basic voucher, represented in JSON, are described in RFC8366.

**COSE-8152**

   In constrained systems the voucher is signed using the COSE mechanism described in RFC8152.

**standard signature (CMS)**

   In un-constrained systems the voucher is signed using the Cryptographic Message Syntax (CMS) described in RFC5652.

**EDHOC**

   On constrained and challenged networks, the session key management can be formed by I-D.selander-ace-cose-ecdhe.

   This document does NOT have a home.

   The CoAP-EST layer on top is described by I-D.ietf-ace-coap-est

**EST-COAPS 2/DTLS sec(urity)**

   On unconstrained networks, the session key management is provided by RFC6347. The CoAP-EST layer on top is described by I-D.ietf-ace-coap-est.

   The ACE WG has adopted this document, and a virtual plugtest is planned for October.

**EST-HTTPS TLS sec(urity)**

   On unconstrained networks with unconstrained nodes, the EST layer and session key management is described by RFC7030 as modified by I-D.ietf-anima-bootstrapping-keyinfra (BRSKI).

**constrained object security (OSCORE)**

   On constained networks with constrained nodes, the CoAP transactions are secured by I-D.ietf-core-object-security using symmetric keys. The symmetric key may be pre-shared (for 6tisch minimal security), or MAY be derived using EDHOC.

**Pledge traffic proxy mechanisms**

   Traffic between the Pledge and the JRC does not flow directly as the pledge does not typically have a globally reachable address, nor does it have any network access keys (whether WEP, WPA, 802.1x, or 802.15.4 keys).

   Communication between the pledge and JRC is mediated by a proxy. This is primarily to protect the network against attacks. The proxy mechanism is provided by as many nodes as can afford to as a benefit to the network, and therefore MUST be as light weight as possible. There are therefore stateless mechanisms and stateful mechanisms. The costs of the various methods is analysized in I-D.richardson-anima-state-for-joinrouter.

**COAP proxy,stateless**

   The CoAP proxy mechanism uses the OSCORE Context Hint to statelessly store the address of the proxy within the CoAP structure. It is described in I-D.ietf-6tisch-minimal-security.

**DTLS proxy**

   A new document, [I-D.ietf-vanderstok-constrained-anima-dtls-join-proxy] has just been submitted. It does not yet have a home.

**IPIP proxy,stateless**

   An IPIP proxy mechanism uses a layer of IP-in-IP header (protocol 98) to encapsulate the traffic between Join Proxy and JRC. It has some complexities to implement on typical POSIX platforms. It is intended to be described in I-D.ietf-6tisch-dtsecurity-zerotouch-join, in an Appendix. Another home for the text is also desired.

**circuit proxy stateful**

   The circuit proxy method utilitizes either an application layer gateway (which in canonical 1990-era implementation requires a process per connection), or the use of NAT66. It maintains some state for each connection whether TCP or UDP.

   It is this most expensive and most easily abused, but also the most widely available, code-wise.

**call-home ssh/tls/usbkey**

   SZTP (RFC 8572) assumes that the pledge can access a "source of bootstrapping information", which is unbounded, though the draft defines four: removable storage devices (e.g., USB key), DNS/mDNS, DHCP v4/v6, and SZTP bootstrap server (i.e., HTTPS).

   Pledges MAY ship from manufacturing with some preconfigured well-known SZTP bootstrap servers during, the use of which entails Internet connectivity and pre-configured trust anchors. When a pledge uses an untrusted source of bootstrapping data, then the bootstrapping data MUST be signed, which entails use of both an owner certificate and an ownership voucher, the latter of which MAY be ephemeral if the pledge sends a "nonce" to the bootstrap server in its initial request.

   The end-state of the bootstrapping process is the pledge running an initial configuration that likely directs the pledge to either open ports to accept inbound management connections, or cause the pledge to proactively initiate outbound call home management connections (e.g., RFC 8071).

**manufacturer authorized signing authority (MASA)**

   The MASA is the manufacturers anchor of the manufacturer/pledge trust relationship that is established at the factory where the pledge is built.

## Document and WG oriented view of work 

![screen_shot_2022-12-14_at_9.59.24_pm.png](/screen_shot_2022-12-14_at_9.59.24_pm.png)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-07-24. It was migrated from the old Trac wiki on 2022-12-14.*