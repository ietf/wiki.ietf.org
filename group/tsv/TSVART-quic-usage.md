---
title: Protocol Considerations for using QUIC
description: A collection of considerations needed to go through when defining a protocol or application's usage of QUIC as transport protocol. 
published: true
date: 2026-07-24T11:30:49.769Z
tags: 
editor: markdown
dateCreated: 2026-07-24T07:58:48.215Z
---

# Considerations for Using QUIC

Defining application usage of QUIC are potentially challening and this section captures some resources, recommendations and examples. We expect this to change and be evolved. 

### Resources

The QUIC [Applicability statement](https://datatracker.ietf.org/doc/rfc9308/) includes some guidance on aspects of QUIC to consider. 

### Application Identification

Applications needs to consider how to identify applications, this can include both registered port numbers as well as TLS ALPNs. 

### Authentication

As QUIC uses TLS for the security handshake any method that is available in TLS for authentication of the peer, either server only or mutual authentication (mTLS) can be used on transport connection level. 

### 0-RTT

QUIC enables 0-RTT data as noted by TLS usage of this data requires considerations as this data can't be replay protected. 

### Reliable Streams

QUIC provides multiple streams with in-order reliable delivery. They can be uni- or bi-directional and initiated by either client or server. Closing streams can be done reliably or using reset which does not provide delivery guarantees. Reset-at extension provides mor control. Applications will also need to consider defining error codes to indicate reasons for closing streams. 

### Unreliable Datagrams

QUIC's [Datagram Extension] (https://datatracker.ietf.org/doc/rfc9221/) provides unrelilable datagrams, where the datagram payload must fit within the MTU available to the QUIC session. As there are no reliability or in-order guarantees applications may need to build on top or require additional information from the QUIC implementation.  

### Long Lived Connections

Applications that require long-lived QUIC connections will have to consider how they handle some of the existing limiations of QUIC. QUIC only do ephemeral key exchange at the intitial TLS handshake. This may be unsuitable for application that exchange larger amounts of data or maintain connections longer than an hour. One potential solution to this is to require using [TLS extended key update for QUIC] (https://datatracker.ietf.org/doc/draft-ietf-quic-extended-key-update/) for ephemeral key updates, and can consider [Exported Authenticators in TLS](https://datatracker.ietf.org/doc/rfc9261/). The other alternative if the application is capable of supporting this is to ensure that new QUIC connections are established periodically and used to replace those that have been used. 
