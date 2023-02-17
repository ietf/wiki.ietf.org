---
title: HTTP/2.0 Proposals
description: HTTP/2.0 Proposals
published: true
date: 2022-12-13T23:34:23.531Z
tags: 
editor: markdown
dateCreated: 2022-12-13T23:33:34.736Z
---

# HTTP/2.0 Proposals

This page tracks proposals for the HTTP/2.0 work.

To make a proposal, please submit an Internet-Draft whose name follows this convention:

``` draft-{your name}-httpbis-{proposal name}```

## Current Proposals

### [SPDY](http://tools.ietf.org/html/draft-mbelshe-httpbis-spdy)

This document describes SPDY, a protocol designed for low-latency transport of content over the World Wide Web. SPDY introduces two layers of protocol. The lower layer is a general purpose framing layer which can be used atop a reliable transport (likely TCP) for multiplexed, prioritized, and compressed data communication of many concurrent streams. The upper layer of the protocol provides HTTP- like [RFC2616](http://tools.ietf.org/html/rfc2616) semantics for compatibility with existing HTTP application servers.
&nbsp;

### [HTTP Speed + Mobility](http://tools.ietf.org/html/draft-montenegro-httpbis-speed-mobility)

This document describes "HTTP Speed+Mobility," a proposal for HTTP 2.0 that emphasizes performance improvements and security while at the same time accounting for the important needs of mobile devices and applications. The proposal starts from both the Google SPDY protocol and the work the IETF has done around WebSockets. The proposal is not a final product but rather is intended to form a baseline for working group discussion.
&nbsp;

### [Network-Friendly HTTP Upgrade](http://tools.ietf.org/html/draft-tarreau-httpbis-network-friendly)

This document proposes an upgrade to HTTP messaging which aims at being faster, more robust and more friendly to mobile networks than the current version, while retaining the same semantics and offering a high enough compatibility level to make it possible to implement highly efficient gateways between existing implementations and this presently described version, thus offering a smooth upgrade path for legacy applications.
&nbsp;

## Proposed Input Documents

### [Explicit Proxies for HTTP/2.0](http://tools.ietf.org/html/draft-rpeon-httpbis-exproxy)

This document describes a method for connecting to a proxy via a secure channel, allowing, disallowing, and detecting any transforms that the proxy may perform, and allowing the proxy to connect via secure channel to another site on the user's behalf.
&nbsp;

### [Connection Reuse for Multiple Hostnames and for Fast Redirect](http://tools.ietf.org/html/draft-safruti-httpbis-connection-reuse)

This document describes a suggested enhancement to HTTP, in which a user-agent and a server can use a single connection to exchange requests/responses for multiple requested hostnames for which the server is authorized to serve. This enhancement suggests that user- agents will prefer to re-use an existing connection if it can be used to other hosts, and presents methods for a server to announce hosts that are served by it, as well as a mechanism for the user-agent to validate that the server is indeed trusted to serve this hosts.

This is highly relevant when the server is actually a surrogate (like in a case of a CDN server), or in multi-hosts hosting environments, where the same server serves multiple hostnames/domains and can improve performance by the reuse of established and already optimized connections.
&nbsp;

### [Method for suggestion Alternative Servers to Enhance Connection Level Performance](http://tools.ietf.org/html/draft-nygren-httpbis-connection-redirect)

This memo presents a method for allowing an HTTP server to provide hints in its HTTP responses to a user-agent that indicate the user could be better off connecting to a different IP than what they are currently connected to. This is highly relevant in a multi-homed server world where DNS may not have all of the relevant state necessary to make a proper routing decision. Additionally it is done in a manner that does not require application level changes as could be the case for an application level redirect such as a 3xx response


&nbsp;
&nbsp;
&nbsp;
&nbsp;

---
*The content on this page was last updated on 2012-06-25. It was migrated from the old Trac wiki on 2022-12-13.*