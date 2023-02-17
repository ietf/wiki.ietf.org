---
title: HTTP Authentication Proposals
description: HTTP Authentication Proposals
published: true
date: 2022-12-14T19:53:43.723Z
tags: 
editor: markdown
dateCreated: 2022-12-13T23:44:06.246Z
---

# HTTP Authentication Proposals

This page tracks proposals for new HTTP authentication schemes.

To make a proposal, please submit an Internet-Draft whose name follows this convention:

    draft-{your name}-httpbis-{proposal name}

## Current Proposals

**[RESTauth](http://tools.ietf.org/html/draft-williams-http-rest-auth)**

A proposal for authentication based on RESTful exchange of authentication messages, resulting a session URI that can be used to provide connection-independence and a good logout story. RESTfulness makes for good interaction with "HTTP routers". Simple mechanisms based on SSHv2, SASL, and GSS are described.

**[draft-oiwa-httpbis-mutualauth: HTTP Mutual authentication](/group/httpbis/HttpAuthProposals/MutualAuth)**

A secure HTTP authentication method providing user-server mutual authentication, strong secrecy on passwords, and others. Combined with auth-extension below to support Web application requirements (i.e. to replace Form authentication).

**[draft-oiwa-httpbis-auth-extension: HTTP authentication extensions for interactive clients](/group/httpbis/HttpAuthProposals/AuthExtension)**

A simple but powerful generic framework extension to HTTP authentication, to enable use of HTTP authentication for recent Web applications.

**[draft-farrell-httpbis-hoba: HTTP Origin Bound Authentication (HOBA)](http://tools.ietf.org/html/draft-farrell-httpbis-hoba)**

An even more simple, but not at all powerful mechanism based on OBC, to try end up with fewer passwords in the world.

**[SCRAM HTTP](http://tools.ietf.org/html/draft-melnikov-httpbis-scram-auth)**

A secure HTTP authentication method providing user-server mutual authentication, easier to implement than Digest in both clients and servers, etc. The mechanism is very close to SCRAM used in most other application protocols (e.g. IMAP/SMTP, XMPP)

**[Multilegged Authentication for HTTP Multiplexing](http://tools.ietf.org/html/draft-montenegro-httpbis-multilegged-auth)**

In line with the HTTP compatibility goal for HTTP 2.0, HTTP 2.0 must also be compatible with currently deployed authentication schemes. This draft addresses this goal in the presence of multiplexing (expected to be part of HTTP 2.0), while addressing some of the issues currently encountered when performing multilegged authentication.

**[REST-GSS](http://tools.ietf.org/id/draft-williams-rest-gss-01.txt)**

A WITHRDRAWN (replaced with RESTauth) proposal for authentication based on SASL/GSS at the application network layer (but at the HTTP API layer). [HTML version](http://tools.ietf.org/html/draft-williams-rest-gss-01).

**[Classification](http://tools.ietf.org/id/draft-williams-httpbis-auth-classification-01.txt)**

A proposal for classification and analysis of HTTPbis authentication proposals. [HTML version](http://tools.ietf.org/html/draft-williams-httpbis-auth-classification-01).

**[TLS-EAP](http://tools.ietf.org/html/draft-nir-tls-eap-13)**

This document extends the Transport Layer Security (TLS) protocol with a flexible and widely deployed authentication framework, namely the Extensible Authentication Protocol (EAP), to improve security of Web- as well as non-Web-based applications. The EAP framework allows so-called EAP methods, i.e. authentication and key exchange protocols, to be plugged into EAP without having to re-design the underlying protocol. The benefit of such an easy integration is the ability to run authentication protocols that fit a specific deployment environment, both from a credential choice as well as from the security and performance characteristics of the actual protocol.

**[Web Security](http://tools.ietf.org/html/draft-tschofenig-secure-the-web)**

This memorandum illustrates a shared vision for how to deal with the most pressing Web security problems.


&nbsp;
&nbsp;
&nbsp;
&nbsp;

---
*The content on this page was last updated on 2012-10-14. It was migrated from the old Trac wiki on 2022-12-13.*