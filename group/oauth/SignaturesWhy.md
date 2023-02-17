---
title: SignaturesWhy
description: 
published: true
date: 2022-12-19T20:53:56.595Z
tags: 
editor: markdown
dateCreated: 2022-12-19T20:53:51.928Z
---

This document tries to summaries the thread initiated by http://www.ietf.org/mail-archive/web/oauth/current/msg01235.html. 

Note the focus is on "signing requests" __not__ on "signing tokens"! Requests signing secures the direct communication between two parties (consumer and authorization server/ consumer and protected resource). In contrast, signed tokens are used in stateless authorization server designs to protect token contents from modification thus establishing trust between authorization server and protected resource. 

# Signature Usage Scenarios 
The following compilation lists the usage scenarios along with the kind of cryptographical algorithm (public-key/RSA vs. HMAC) and key (consumer key, token secret) utilized.

##  Token acquisition (consumer to authorization server) 
In this context, a consumer accesses an authorization server in order to obtain an access token for resource access. There are the following possible usage scenarios for signatures:

 1. Authenticate consumers with shared secret over unsecure channels (consumer key, ''HMAC'')
 1. Authenticate consumers by means of ''public-key-based'' signatures (consumer key, e.g. hardware security module, ''public-key based'')
 1. Authenticate users by means of ''public-key-based'' signatures (user key, e.g. electronic ID card, crypto module in mobile/gaming device, , ''public-key based'')

## Token usage (consumer to protected resource) 
In this context, a consumer uses tokens to access a protected resource. There are the following possible usage scenarios for signatures:

 1. Protect integrity of authorization data when communicating over unsecure channel (token secret, ''HMAC'')
 1. Protect integrity of whole request - authorization data and payload when communicating over unsecure channel (token secret, ''HMAC'')
 1. End-2-end message-level integrity over HTTPS (token secret, ''HMAC'')
  1. communication over multiple hops
  1. better protection when SSL is terminated far from service 
 1. Sender authentication - a signature based on the token secret might be used to prove legitimate ownership of the token even when communicating over HTTPS (token secret, ''HMAC'')
 1. None-repudation for message sender - denial of a previous request (''public-key based''), requires signing of the whole message (token or consumer secret, ''public-key based''). TLS protects only a session, not the data that need to be re-used later. Unless the whole session has been recorded and its key has been stored, the TLS does not provide non-repudiation.
 1. Message signing if intermediary (e.g. security applicance) shall verify message integrity upfront (token or consumer secret, ''public-key based'')

# Bearer Tokens (over HTTPS) vs. Signatures vs. Bearer Tokens (over HTTP) 
This is an extract of a discussion about bearer tokens over HTTPS, signatures and bearer tokens over HTTP.
 
## pro HTTPS
 * simple for developers
 * existing tools ecosystem
 * smaller client libraries, probably no client OAuth libraries needed at all
 * integrity protection of complete HTTP requests in an interoperable way 
 * integrity protection for requests and responses
 * server authentication
 * message encryption 
 * replay prevention 
 * scales both linearly and horizontally

## con HTTPS 
 * variable (CPU) costs for providers
    * authentication and key exchange (public-key based) - per session
    * message encryption (based on shared session key) - dependent on message size
       * possible workaround: usage of one-time or very-short-time bearer token with a large request (e.g. a video upload) over HTTP. Tokens can be acquired over SSL. 
 * Fixed costs for smaller providers (certificates)
 * Connection latency to bootstrap the connection 
    * can be reduced by utilizing HTTP keep-alive, warmup connects in the background and SSL Sessions reuse
 * difficulties of debugging
 * Browser limitations for cross domain communication

## pro Signatures 
 * Low latency and computational costs (HMAC)
 * Provides for authentication of request by proving possession of a secret that is bound to an account (in OAuth 1.0a)
 * Can provide message integrity (in OAuth 1.0a for single-part form-encoded requests, for query strings, and for request bodies under the body-signing extension)
 * Can provide replay protection via signed nonces (in OAuth 1.0a)
 * Can provide expiration via signed timestamps (in OAuth 1.0a)

## con Signatures 
 * in combination with replay prevention using nounces and timestamps: requires server-side, cluster-wide state and all requests must be validated against this state in serialized order. This may cause scalability and performance issues. Implementation complexity may also cause security vulnerabilities.
 * implementation complexity - can be alleviated by libraries
 * requires Client side libraries
 * proxy caching for HTTP probably endangers security 

## pro Bearer Tokens over HTTP 
 * simple to use (equivalent to cookies over HTTP)
 * should be fast (see above con SSL)

## con Bearer Tokens over HTTP 
 * risk of wiretapping and misuse - can be mitigated by short live-times and low access rights
 
# RSA vs. HMAC 
pro RSA 
 * advantages from an operational security standpoint - not need to store any private data in order to authenticate the sender of a message
 * support for hardware security moduls (and smartcards) possible

con RSA
 * slow

pro HMAC 
 * very fast (10 (verify) to 300 (sign) times faster then RSA (http://www.ietf.org/mail-archive/web/oauth/current/msg01298.html)

con HMAC
 * requires shared secret, disadvantage from operational security standpoint - best used in conjunction with session keys

Due to its performance characteristics HMAC is better suited for signing service requests. RSA (or other public-key-algorithms) can be used for initial authentication (probably even registration less) with authorization servers because of its cryptographical properties. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2010-03-17. It was migrated from the old Trac wiki on 2022-12-19.*