---
title: Extensions for Scalable DNS Service Discovery (dnssd)
description: Wiki for DNSSD WG
published: true
date: 2022-12-07T00:02:07.922Z
tags: 
editor: markdown
dateCreated: 2022-12-07T00:02:07.922Z
---

# Welcome to the DNS Service Discovery WG Wiki


## dns-sd implementations to play with - asked for at IETF 93

* ohybridproxy (GPL, static command line configuration, POSIX-ish platform): https://github.com/sbyx/ohybridproxy/
* hnetd (GPL, dynamic autoconfiguration of multiple homenet routers): http://www.homewrt.org (or http://www.openwrt.org if former is broken; install hnet-full, edit /etc/config/network, and you're done) 

## LLQ Options Discussion at IETF 91
### UDP and TCP or TCP only?

1. Standardize existing UDP draft [draft-sekar-dns-llq](http://tools.ietf.org/html/draft-sekar-dns-llq) and add TCP support
2. Deprecate UDP and only standardize TCP 

### Same Packet Format?

1. Use existing DNS packet format with LLQ option but drop setup and possibly refresh
2. Create new protocol for connection oriented LLQ only, not bound by existing DNS packet format 

### TLS

1. Require TLS for TCP and DTLS for UDP?
2. If we require TLS, do we need to support STARTTLS? 

### DNSSEC

1. require TSIG and/or SIG0? 

### Recommendations from the meeting

* Simplify the protocol by just using TCP
* Require TLS but don't support STARTTLS (may need a new default port number)
* DNSSEC is optional
* Using existing packet format would be easier for DNSSEC support (Sullivan only vocal advocate for new format). We could poll the list. 

## What should dnssd WG standardize?

(from WG meeting discussion, IETF 90, 7/2014; http://www.ietf.org/proceedings/90/slides/slides-90-dnssd-5.pdf)

1. Proxying mDNS/DNS 

   *   Proxy between dns-sd over mDNS and dns-sd over unicast DNS
   *   Need to be able to publish and resolve services
   *   Potential solution: [draft-cheshire-mdnsext-hybrid-01](http://tools.ietf.org/html/draft-cheshire-mdnsext-hybrid-01)
   *   Related label issue: [draft-sullivan-dnssd-mdns-dns-interop-00](http://tools.ietf.org/html/draft-sullivan-dnssd-mdns-dns-interop-00)

2. Service discovery zone enumeration 

   *   We use the word ‘zone’ here in the absence of anything better – probably unrelated to “DNSzone”
       *   "Scope" isn't a good choice, either, because of confusion with multicast scopes 
   *   How do clients (people, devices) and advertisers (services) discover what zones are available?
   *   A zone could be based on various attributes:
       *   Network topology
       *   Physical location
       *   Organizational group
       *   ??? 
   *   One attribute can be expressed in FQDN hierarchy
   *   Challenge: handling/enumerating physical locations, e.g. “this room”, or “this hotel”, or administraLve operaLon, e.g. “IETF” 

3. Change notification 

   *   Service Discovery can be an interactive process - for example, a service browsing window
       *   New services need to be displayed as they become available
       *   Services need to be retracted when no longer available 
   *   Likely will lose some immediacy in responses when extending dns-sd
       *   How do proxies fit into the architecture
       *   What is ‘stale’ information? 
   *   Should we push ahead with a form of DNS-LLQ here (see above)? 