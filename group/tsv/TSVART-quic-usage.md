---
title: Protocol Considerations for using QUIC
description: A collection of considerations needed to go through when defining a protocol or application's usage of QUIC as transport protocol. 
published: true
date: 2026-07-24T11:52:16.940Z
tags: 
editor: markdown
dateCreated: 2026-07-24T07:58:48.215Z
---

# Considerations for Using QUIC

This page is provided to assist in the review and development of Internet Drafts seeking to use QUIC as a transport service to support upper layer protocols and applications that do not use HTTP. Defining application usage of QUIC is potentially challening and this section captures some resources, recommendations and examples. We expect this to change and evolve. 

### Resources

The QUIC [Applicability statement](https://datatracker.ietf.org/doc/rfc9308/) includes some guidance on aspects of QUIC to consider. 

### Application Identification

Applications needs to consider how to identify applications, this can include both registered port numbers as well as TLS ALPNs. 

### Authentication

As QUIC uses TLS for the security handshake any method that is available in TLS for authentication of the peer, either server only or mutual authentication (mTLS) can be used on transport connection level. 

### 0-RTT

QUIC enables 0-RTT data as noted by TLS usage of this data requires considerations as this data can't be replay protected. 

### Reliable Streams

QUIC provides multiple streams with in-order reliable delivery. They can be uni- or bi-directional and initiated by either client or server. Closing streams can be done reliably or using a reset, which does not provide delivery guarantees. Reset-at extension provides mor control. 

Applications need also to consider defining error codes to indicate reasons for closing streams. 

### Unreliable Datagrams

QUIC's [Datagram Extension] (https://datatracker.ietf.org/doc/rfc9221/) provides unrelilable datagrams, where the datagram payload must fit within the MTU available to the QUIC session. As there are no reliability or in-order guarantees applications may need to build on top or require additional information from the QUIC implementation.  

### Long Lived Connections

Applications that require long-lived QUIC connections will have to consider how they handle some of the existing limiations of QUIC. QUIC only do ephemeral key exchange at the intitial TLS handshake. This may be unsuitable for application that exchange larger amounts of data or maintain connections longer than an hour. One potential solution to this is to require using [TLS extended key update for QUIC] (https://datatracker.ietf.org/doc/draft-ietf-quic-extended-key-update/) for ephemeral key updates, and can consider [Exported Authenticators in TLS](https://datatracker.ietf.org/doc/rfc9261/). The other alternative if the application is capable of supporting this is to ensure that new QUIC connections are established periodically and used to replace those that have been used. 

# To-do (Possible other topics)
### What is the logical byte stream model (bidirectional vs. unidirectional streams, datagram, etc)
### What is the use of Streams (multistreaming)
### Flow control and design of application interaction
### Client or Server functions
### Does a QUIC application need a unique UDP Port? 
### Stream resets can happen asynchronously...
### Design considerations around QUIC versions/evolution
### Not all paths (currently) support QUIC (how to fall-back tro a differnt transport service)
### When to consider using a service over HTTP or TCP instead?
### Can you identify deployment incentives / implementation experience - especially when there are alternate mechanisms to achieve similar objectives?






