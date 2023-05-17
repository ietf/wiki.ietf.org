---
title: Expert Topics
description: 
published: true
date: 2023-02-19T07:43:37.344Z
tags: iesg
editor: markdown
dateCreated: 2022-09-07T14:15:47.058Z
---

# Expert Topics
This page summarizes some key topics in each IETF area that are frequently found to be tricky to get right. Each area's summary has a link to more detailed explanations for the indicated topics to help in understanding the scope of the topic. In general, document authors and working groups who make use of any of these technologies are strongly encouraged to consult with a relevant subject matter expert or area director early in the development of protocol proposals. Doing so can avoid surprises late in the document publication cycle, which can in turn cause delays to publication and changes to already-deployed solutions.

This page is intended to provide an easy-to-skim starting point to understand whether your work might require additional input. If in doubt, please do not hesitate to reach out to an area director for guidance.

## Applications and Real-Time Area (art) 

For a more complete discussion of these topics, please see https://wiki.ietf.org/group/art/TypicalARTAreaIssues

* Internationalization and Localization: Unicode, UTF-8, UTF-16, Usernames and/or Passwords, anything to be displayed to a user or otherwise involving a phrase like "human-readable"
* Resource identification: URLs, URIs, URNs, IRIs (see also the security page, below)
* Application-layer "transport" technologies: HTTP / CoAP
* Application-layer generic data encoding: JSON, CBOR, XML (including XPATH),
  Base64
* Application-layer purpose-specific data encoding: iCalendar, vCard, jCard, jCal
* Email protocols: SMTP, POP, IMAP, JMAP
* Media types (frequently called "MIME types")
* Application layer security: JWT, CWT, JWS, OAuth
* Dates, times, and timestamps
* ABNF and BNF
* Error code definitions
* Protocol versioning

## Internet Area (int) 

For a more complete discussion of these topics, please see https://wiki.ietf.org/group/int/IntAreaIssues

* Addresses
  * use of IPv4 and IPv6 addresses
  * use of link-local addresses
  * the range of IP addresses used in examples
  * IP address privacy
* ICMPv6 Neighbor Discovery Protocol (NDP)
  * new ICMPv6 ND Options
  * ND proxying and caching
* Extensions
  * new IPv6 Extension Headers and Extension Header Options
  * IPv6 extension header handling
* MTU and Fragmentation: any use of datagrams needs to consider these issues.  See also the transport issues, below.
* Protocol tunneling

## Operations and Management Area (ops) 

For a more complete discussion of these topics, please see https://wiki.ietf.org/group/ops

* DNS: special use names / top-level domains, reverse DNS, transport of DNS, TXT record types, name components starting with underscores
* Use of IPv6 packets with extension headers or fragments
* Assumptions of how end-user networks connect to the Internet
* Use of QoS markings
* Use of MIBs and YANG modules

## Routing Area (rtg) 

For a more complete discussion of these topics, please see individual routing area working groups’ charters

* Application of centralized control architectures in support of enhanced traffic engineering and network slicing
* Software defined networking and network programmability
* New routing protocols in support of data centers, cloud architectures, virtualization
* API and YANG development for routing
* Security considerations for routing protocols and architectures
* Operational and management considerations

## Security Area (sec) 

For a more complete discussion of these topics, please see https://wiki.ietf.org/en/group/secdir/SecDirReview/TypicalSECAreaIssues

* Threat modeling: what needs to be protected and in what environment(s)?
* Trusted and untrusted parties
* Terminology relating to security concepts
* Matching threats to threat mitigation
* Use of TLS and IPsec, especially parameter recommendations and peer authentication procedures
* Creating new cryptographic approaches (spoiler: don't)
* Randomness
* Documents describing YANG modules have a specific security considerations template
* Assumptions that implementations won't maliciously ignore protocol requirements
* Agility of cryptographic algorithms
* "This document introduces no new security considerations" is nearly always wrong (though the new considerations may not be very interesting)


## Transport Area (tsv) 

For a more complete discussion of these topics, please see https://wiki.ietf.org/en/group/tsv/TSVART-common-issues

* Port registrations, ADs should encourage a check early if they really are well motivated. 
* Using _tcp and _udp in SRV DNS records
* Use of UDP (congestion control, checksum, message sizes, etc.)
* Use of timers
* QUIC
* Protocol message retries and feedback (incl. ECN)
* MTU considerations 
* Traversing middleboxes (NATs, firewalls)
* IANA considerations: reserving codepoints, and the use of experimental or unregistered codepoints
* Use of UDP/TCP/SCTP/etc ports for protocols
* Non-WG modifications of transport protocols
* Tunneling of protocols
  * If UDP is used then considerations for zero-checksum with IPv6 is likely needed (RFC6935, RFC6936).
  * ECN usage with tunnels (RFC 6040)
  * Nested congestion control and repair mechanisms interactions
