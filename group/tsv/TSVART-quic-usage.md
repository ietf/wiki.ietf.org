---
title: Protocol Considerations for using QUIC
description: A collection of considerations needed to go through when defining a protocol or application's usage of QUIC as transport protocol. 
published: true
date: 2026-08-24T08:18:36.941Z
tags: 
editor: markdown
dateCreated: 2026-07-24T07:58:48.215Z
---

# Considerations for Using QUIC

This page is provided to assist in the review and development of Internet Drafts seeking to use QUIC as a transport service for upper layer protocols and applications that do not use HTTP. 

Defining application usage of QUIC is potentially challenging and this section captures some resources, recommendations and examples. We expect this to change and evolve. 

### Resources

The QUIC [Applicability statement](https://datatracker.ietf.org/doc/rfc9308/) includes some guidance on aspects of QUIC to consider. 

## QUIC Connections

### Application Identification

Applications needs to consider how to identify themselves; this can include both registered port numbers as well as TLS ALPNs. 

### Authentication

As QUIC uses TLS for the security handshake, any method that is available in TLS for authentication of the peer (either server-only or mutual authentication, e.g. mTLS) can be used on the transport connection level. 

### 0-RTT

QUIC enables 0-RTT data; as noted by TLS, usage of this data requires considerations as this data cannot be replay protected. Section 9.2 of RFC 9001 creates several requirements for the use of 0-RTT in an application.

### Long-Lived Connections

Applications that require long-lived QUIC connections, with that we mean connections that last several hours or that transfer large quantities of data (more than 100 GB) should consider forward secrecy and periodic rekeying with re-authentication to mitigate impact of any key leakage. Governmental recommendations for rekeying and re-authentication using forward secrecy exists that stipulate from every hour or couple of hours for IPsec, for example [ANSSI](https://messervices.cyber.gouv.fr/documents-guides/NT_IPsec_EN.pdf) recommends that one rekey and re-authenticate every hour and every 100 Gbytes. Applications should consider what requirements apply to their protocol using QUIC. 

If one have requirements on periodic rekeying and re-authentication one will have to consider how they handle some of the existing limitations of QUIC. QUIC only does ephemeral key exchange at the intitial TLS handshake. One potential solution to this is to require using [TLS extended key update for QUIC](https://datatracker.ietf.org/doc/draft-ietf-quic-extended-key-update/) for ephemeral key updates, and can consider [Exported Authenticators in TLS](https://datatracker.ietf.org/doc/rfc9261/) for re-authentication. The other alternative, if the application is capable of supporting this, is to ensure that new QUIC connections are established periodically and used to replace those that have been used. 

## QUIC Streams

QUIC supports multiple streams (multistreaming) within a connection. Each stream is an independent data flow. This avoids head-of-line-blocking between streams. However, there are no ordering or priority guarantees between data sent using different streams. Managing this is application-specific.

### Reliable Streams

QUIC provides in-order reliable delivery using a Stream. These can be uni- or bi-directional and initiated by either client or server. Closing streams can be done reliably or using a reset, which does not provide delivery guarantees. [Reliable Reset-at extension](https://datatracker.ietf.org/doc/draft-ietf-quic-reliable-stream-reset/) provides more control over data delivery for reset streams. 

Applications need also to consider defining error codes to indicate reasons for closing streams. 

### Unreliable Datagrams

The [QUIC DATAGRAM frame](https://datatracker.ietf.org/doc/rfc9221/) is a widely-implemented QUIC extension. This provides unreliable datagrams, where the datagram payload must fit within the MTU available to the QUIC connection. 

Datagrams are congestion-controlled, but not subject to flow control. Because there are no reliability or order guarantees, applications may need to build these on top if they are required.

### Stream resets can occur asynchronously

A QUIC stream can be reset by the sender, but a reset can be requested by the receiver. To the application, such a request looks like the stream being reset by the receiver.

[It's probably worth explaining that RFC 9000 allows a bidi stream to be reset in one direction but operate normally in the other, but also assess if real implementations actually allow this.]

## Designing for new QUIC versions/evolution

QUIC may be expected to continue to evolve as new versions and options emerge. The design is intentionally flexible. Some QUIC features are defined as extensions or are supported by options. Not all stacks are equal in what they offer, nor in the APIs that they provide.

# To-do (Possible topics to also consider)

### What is the logical byte stream model? (bidirectional vs. unidirectional streams, datagram, etc)

### Not all paths (currently) support QUIC (How does the application fall-back to a different transport service?)

### How is flow control used? and what is the design of application interaction with streams?

### Does a new QUIC application need a unique UDP Port? 

### Consider using a service over HTTP or TCP instead?

### Are there deployment incentives / implementation experience - especially when there are alternate mechanisms to achieve similar objectives?

### NAT and Firewall Traversal

### Peer to Peer






