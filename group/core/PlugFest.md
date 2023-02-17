---
title: PlugFest
description: 
published: true
date: 2023-01-24T00:28:08.971Z
tags: 
editor: markdown
dateCreated: 2023-01-24T00:28:04.378Z
---

# CoAP Plugfest at IETF-80 in Prague
- **When**: Mar 27th from 10-16 CEST (UTC+2)
- **Where**: Room at the IETF TBD and the Internet
- **What**: Implementation, interop and specification testing of CoAP and related drafts
- **Protocol**: [draft-ietf-core-coap-05](http://tools.ietf.org/html/draft-ietf-core-coap-05) [draft-ietf-core-link-format-03](http://tools.ietf.org/html/draft-ietf-core-link-format-03) [draft-ietf-core-block-02](http://tools.ietf.org/html/draft-ietf-core-block-02) [draft-ietf-core-observe-02](http://tools.ietf.org/html/draft-ietf-core-observe-02)
- **Experimental**: [draft-hartke-core-coap-http-00](http://tools.ietf.org/html/draft-hartke-core-coap-http-00) [draft-eggert-core-congestion-control-01](http://tools.ietf.org/html/draft-eggert-core-congestion-control-01)

A second, much shorter plugfest repeat sometime during the week in the terminal room.

## Plugfest Technical Information
- **Chat**: irc.freenode.net #coap
- **Default port**: 61616
- **IP version**: IPv6 by default, IPv4 optional
### CoAP test servers on-line
- Carsten's little test server: coap://ns.tzi.org:61616/ (IPv4/IPv6)
- (your server here)
### CoAP implementations
- Olaf's C-Implementation: [libcoap](http://libcoap.sourceforge.net/) (GPLv2)
- The source of Carsten's little test server is available at coap://ns.tzi.org:61616/
- The current [Wireshark](http://www.wireshark.org/) Development Release (1.5.0) supports coap-03 ([svn](http://anonsvn.wireshark.org/wireshark/trunk/epan/dissectors/packet-coap.c))
- There's a Firefox extension implementing coap-03 called [Copper](http://people.inf.ethz.ch/mkovatsc/#pro)
- [Contiki](http://www.sics.se/contiki/) comes with a coap-03 server ([git](http://contiki.git.sourceforge.net/git/gitweb.cgi?p=contiki/contiki;a=tree;f=apps/rest-coap;hb=HEAD)) and example client ([git](http://contiki.git.sourceforge.net/git/gitweb.cgi?p=contiki/contiki;a=tree;f=examples/rest-example;hb=HEAD))
- (your implementation here)
### Minimal CoAP client configuration
- CoAP header and Option header
- CON, NON, ACK and RST messages
- GET, PUT, POST and DELETE requests
- Content-Type and Uri-* options
### Minimal CoAP server configuration
- CoAP header and Option header
- CON, NON, ACK and RST messages
- GET, PUT, POST and DELETE requests
- Content-Type and Uri-* options
- Max-Age, ETag and Location-* options
- /.well-known/core
### Minimal CoAP proxy configuration
Just in case someone wants to try out proxying (CoAP-CoAP or CoAP-HTTP), here are the minimal requirements in addition to those above:

- Proxy-Uri option ('coap', 'http', 'https' URIs)
- Caching (Max-Age and ETag options)
### Optional feature sets
- Block option ([draft-ietf-core-block-02](http://tools.ietf.org/html/draft-ietf-core-block-02))
- Observation ([draft-ietf-core-observe-02](http://tools.ietf.org/html/draft-ietf-core-observe-02))
- CoRE Link Format ([draft-ietf-core-link-format-03](http://tools.ietf.org/html/draft-ietf-core-link-format-03)) with query string support
- Multicast
### Experimental features for verification
- Congestion control mechanisms ([draft-eggert-core-congestion-control-01](http://tools.ietf.org/html/draft-eggert-core-congestion-control-01))
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2011-03-21. It was migrated from the old Trac wiki on 2023-01-23.*