---
title: Design Decisions regarding Layering of HTTP Mutual
description: Design Decisions regarding Layering of HTTP Mutual
published: true
date: 2022-12-14T18:42:06.888Z
tags: 
editor: markdown
dateCreated: 2022-12-14T01:18:49.307Z
---

# Design Decisions regarding Layering of HTTP Mutual

As you may see, the HTTP Mutual authentication proposal is completely stay in HTTP layer. This is not just a rationale of our design, but also a **result** of several design decisions. There are some discussions regarding layering designs, so it may be worth clarifying our design considerations.

Throughout this document, "the user" means a real-world entity which uses a browser (in usual cases, it is a human); "the client" is a entity (usually software) which understands and uses HTTP and other electronic communication protocols.

# Design principles

Our design goals regarding design of Mutual authentication is as follows:

* (Mutual authentication) It gives strong Mutual authentication, which can be easily verified by users, with a help from clients.
  *  To this purpose, it must be clear and easy for clients to decide the status of mutual authentication, which will be provided to users. 
* (Strong authentication) It will not leak user's any password credentials to any entities other than the client. It should hold how ever the leaked informations are analyzed, compared, dictionary-attacked, of whatever.
* (Simple for simple cases) For simple use cases of current HTTP authentication (Basic and Digest), it must be simple to deploy the new technology.
* (More-or-less simple for current use cases) For most of the current use cases of HTTP (i.e. Cookie-based authorization with authentication forms), there will be a pre-designed transition paths from those.
* (User authentication) The primary goal of the technology is to authenticate the user; This goal might be clarified in the following picture:
  *  Imagine that there is a Web application which "mashes up" contents from several external entities.
  *  There will be two separate phases for authentication/authorization.
      *    The first-phase authentication is to determine who is using the client, to determine which contents will be provided to the client.
      *    The second-phase authentication is for acquiring the contents from externals. 
  *  If there is any contradicting design choices between them, the primary goal of the technique is to best-serve the first phase.
  *  The technology can be used to the second-phase too, but there may be a different, co-existing technologies best fitted for the latter case (e.g. OAuth). 

# Background
## How HTTP servers will work on the authentication?

There are several models of HTTP server implementations regarding the authentication (more precisely, the handling of "Authorization:" header).

* "no-passthrough": Some servers do not permit transferring of any authentication-related headers to the Web application software layer. They instead handles all kinds of authentication in the server layer and pass the authentication result to the Web application software layer. The famous instance of this is a CGI interface of Apache web server. This is because there may be an information leakage problem with HTTP Basic authentication when the server provides multiple applications (for different authentication entity) within the same host. For details, see the latest discussion (as of June 2012) in httpbis mailing list for ticket #348 ([archived here](http://lists.w3.org/Archives/Public/ietf-http-wg/2012AprJun/0426.html)).
* "app-passthrough": Some servers do not handle authentication and pass the whole header to the web application software layer.
* "hyblid": Some servers do the both, depending on the configuration: the example is the embedded PHP handler for the Apache web server. 

These three instances are referred by the latter discussions.

## Several different kinds of "layering"

In many cases, we use terms like "protocol layer" or "application layer" for referring "some" entities. During our work of designing and implementing our proposal, we found that we need to distinguish several aspects of layered systems, which are usually thought as a single unified classifications.

We will use the following terms for specifying a specific "layer" of things.

1. Terms for communication protocol layers
   *   Transport layer: byte-stream protocols under the HTTP protocol; TLS and TCP.
   *   HTTP layer: protocols specified within [RFC 2616](http://tools.ietf.org/html/rfc2616)/2617 and httpbis p1 to p7. This includes several headers like Host, WWW-Authenticate, Authorization, Pragma and etc.
   *   Payload layer: all things above the HTTP layer: content body, Cookie, and so on. 
2. Terms for server-side software implementations
   *   Server layer: software which communicate with clients using transport-layer protocols, understand and handle many aspect of HTTP layer. Server-layer software does not commonly understand application-specific details of behaviors. Apache httpd is the common instance of server-layer software.
   *   Application software layer: software which implements application-specific logics. Commonly implemented using CGI-protocol clients, PHP, Ruby scripts, and so on. Sometimes, they also have a "framework layer" within this layer, which handles application-specific but not resource- (page)-specific features such as session managements. 

In many literature, HTTP layer and server layer are considered equivalent, and payload layer and application software layer are also combined to be "an application layer". However, these are not necessarily true; for example, OAuth Bearer token authentication is within the HTTP layer, but is usually handled in the application software layer. Some web servers handles only messaging sublayer of HTTP layer (httpbis-p1) and delegates most per-resource HTTP-layer features (authentication, content negotiation, conditional request etc.) to be handled in application software layer. This viewpoint is important for discussing applicability of protocol layer technologies in real software applications.

# Design Decisions (1): Why choose the HTTP layer?

First important clarification here may be: Mutual authentication protocol is, from the protocol side, implemented in the HTTP layer; however, from the implementation side, it **DOES NOT** mean that it is necessarily implemented in the Web server layer. These two layering are related but not tightly-bounded things. We have a pure-Ruby authenticator implementation, which can be easily used in the Web application framework layer.

## 1. Strong authentication, credential protection

Three design principles are strongly related to this (active) choices. First things are the Strong authentication and Mutual authentication. Until now, the passwords are really loosely handled in the Web environment. Basic authentication does not provide any protocol-level protection of passwords, as everyone knows. This gives many people a feeling that passwords are equivalently handled in both protocol and Web application layers. Also they think passwords are better to be avoided for any cases for means of authentication.

However, these are not (at least not completely) true; security protocols can protect passwords from any externally-controlled entities (i.e. all but the client), and to do this, we should better keep passwords away from any external entities including HTML scripts. (Hashing or salting is too weak for protecting the raw passwords in the current decade.) Clients play a important role here, and the HTTP layer (and below) is under full control of the client. It is natural choice here.

Avoiding passwords makes some senses. However, we consider in this way:

1. First, we will in any way need passwords, at least for recovery, revocation, and first-time establishment of any secret tokens used for authentication. Password is the only thing which can be kept in person without storing it to any computers. Only the replacement here is face-to-face human authentication.
2. Federated identity management is good thing, and it need a conventional authentication for boot-strapping the authenticity; it is a framework which *transfers* authenticity established with ID provider to relying parties with proper management of trust, privacy etc. The mean of the ID-provider authentication may be either passwords or other means, and in the latter case Clause 1 applies.
3. Client certificate or other cryptographic secrets might be deployed slowly, but it will not replace authentications for casual users in short periods. 

## 2. Mutual authentication

Mutual authentication is the key feature of the Mutual HTTP authentication proposal (sorry for any name confusion here :-). Servers will give clients a proof of authenticity of them to clients, and clients will verify it and show the result to the users. To ensure security of this procedues, we need two factors here: first, in the Web use-case, we need to authenticate the very top page of the Web contents (i.e. the resource whose URI is shown in the address bar of the browser). In the security model of recent HTML (with many dynamic features) and Web browser UIs, ensuring the authenticity of the sub contents are almost meaningless. Second, the client will again need full-control of whole protocol, because without that it is difficult for clients to decide which result is trustful enough to be shown to users. Simplicity is required here.

## 3. Simplicity

HTTP use cases are vast: there are many servers which have a complex control of authentications, and at the same time there are many servers which have just a fixed set of authenticated users. There are servers which have a state-of-art application framework; or servers which implement all logics by hand; or servers with just a static pages. There are clients which are capable of handling many complex high-layer protocols, and clients which are just simple implementation of HTTPs.

As far as it is possible, we need a simple, clear design of protocols. I believe that, (again as far as it is possible,) every clients should not be required to understand five or more layers of data formats, frameworks and protocols, just to talk HTTP. Every servers should not be required to implement five or more frameworks and API endpoints, just to authenticate users. By sticking to the HTTP layer, we can capable of supporting many use cases from simpler ones to the complex ones.

Our proposal support previously-shown design criteria named "Simple for simple cases" and "More-or-less simple for current use cases".

Of course, I just said "as far as it is possible". We will dig into details in the following separate section.

# Design Decisions (2): Is it OK to be HTTP-layer?
## 1. Implementation layer choices

First question may be that "is it needed to be implemented in the Web server?", I guess. We understand that in many deployment it is not likely to move authentication to the Web server layer, because at least user management will never be moved to the server-layer logic. The short answer to this is "there are free choices, as long as many other technologies are implementable".

Recall that we had some classification of Web server implementations above: there are "no-passthrough", "apps-passthrough", and "hyblid". Regarding the protocol side, we may have the following choices:

* "http-only": whole protocol conversation lives in the HTTP layer. Basic, Digest and Mutual are under this kind.
* "mixed-layer": some kinds of initial authentication conversation lives in the payload-layer of HTTP, and the final access authorization lives in the HTTP layer. Common example is OAuth 2.0 (Bearer authorization etc.).
* "payload-only": all kinds of authentication/authorization conversation lives in the payload-layer (including Cookies here), without using any of HTTP Authorization-related headers. Common HTML Form authentication lives in this layer, and some OAuth (usually 1.0) deployment also used (had used) Form fields to send an authorization-related tokens for resources accesses (This method is still defined in [Section 2.2 of OAuth Bearer authentication](http://tools.ietf.org/html/draft-ietf-oauth-v2-bearer-08#section-2.2)). 

Let us also add the additional axis about authentication management entities, "web-server" or "applications". These three axis are related but still independent ones. We will not consider some implementation of payload-level authorization in the Web servers, as it is just "out-sourcing" application logic to the web-server layer, which is always possible from the protocol side. We will also forbid any hidden channels between web servers and applications.

Then, let's fill the matrix.

| Auth entity | || web-server || |  applications ||
| Protocol type \ server type | no-passthrough | hyblid | apps-passthrough | no-passthrough |  hyblid | apps-passthrough  |
|-----------------------------|:--------------:|:------:|:----------------:|:--------------:|:-------:|:-----------------:|
|          http-only          | O              | O      | N                | N*3            | O (2a)  | O (2b)            |
|         mixed-layer         | N              | N      | N                | N (1)          | O       | O                 |
|         payload-only        | N              | N      | N                | O              | O       | O                 |





You can see the following natural equations: "mixed-layer = http-only AND payload-only", and "hyblid = no-passthrough OR apps-passthrough".

I guess that people may surprise about (1) and (2) here. However, we already have examples there. PHP PEAR library implemented a Basic authentication within PHP layer (2a). Also, OAuth needs Bearer tokens available to application layer, if token verification is performed in the application software layer (1).

Honestly speaking, when I saw OAuth for the first time, I was a bit surprised about their choice about using Authorization: header for access authorizations. Of course, I had a concern about (1) case, and the reality assumes either "hyblid" or "apps-passthrough". If this holds true, we have no difficulty to implement HTTP-layer authentication in the web application software level, with application-level control of user entities.

> Note: if you're curious about allowing sharing DB between servers and applications, a short notice about that: if it is possible, it will turn * 3 to OK (do authentication server-side with information provided from applications), and (1) to become either OK or NG, depending on the detail of protocols (at least Bearer will be OK).

## 2. Lack of features

One big issue which people criticize about HTTP authentication is lack of features, especially status control from server application software layer. For example, there is currently no standard way of log-out from HTTP-authenticated realm, you need separate pages for general unauthenticated guests and authenticated users, when application needs per-user customization of contents.

People tend to be lazy about solving this issue. Until now, it has been justified because the security of Form authentication is almost as same as that of Basic authentication. However, to enhance security of Web authentication, we need to solve this in some ways.

Our solution is to add a simple control features atop HTTP authentication, as summarized in draft-oiwa-httpbis-auth-extension. From the client's view, it is an additional pragma which slightly, only slightly change some of its behavior depending on various status of HTTP authentication. For example, "location-when-unauthenticated" pragma almost work as same as 302 status code, only when users' response is needed for authentication.

From the application programmer's view, it is just a set of API commands to be sent to the application framework layer and client browsers, enabled by simply set the application-level HTTP headers. It is even simpler than implementing an own semantics wholly on the server side. To this purpose, the extension is designed as a separate header from WWW-authenticate (see Note below).

People may wonder how it can be realized in the real applications. Some sample tactics for such deployment is included in the draft.

Note: As obviously, it could be designed alternatively as directives (parameters) on the WWW-Authenticate headers. Such design is simpler when we only care about the protocol layer. However, if we did such a way, we MUST have a tight communication channel between server-side authenticator and Web applications. Server-side authenticator can be either in the web-server layer or in the application framework layer, but in either case it is difficult to deploy. We cared this issue, avoided such shortcomings, and so we introduced it as an additional header named "Authentication-Control:". It is also designed so that applications do not necessarily understand detailed authentication status. This makes it possible to ''statically'' configure these headers when application requirement is simple, eliminating a need for CGI applications only for that header (e.g. Apache has a simple "mod_headers" module for just setting HTTP headers from .htaccess files).

## 3. Multiple stage authentication in HTTP

There are some concerns argued about multiple-stage authentication (that using three or more messages) handling within HTTP protocol layer. Basic was single-staged (only one message), and Digest was a bit special and had 1.5 stages (two messages: challenge and response). We already had NTLM which is completely two-staged (three+ messages), although it was broken in other aspects (sharing authentication results for all requests in the same connections). Our proposal, Mutual authentication is also two-staged (three messages + response authentication).

Important thing here is: with regards to the real communications, HTTP layer and payload-layer protocols are isomorphic; if we have an payload-layer protocol which are common to several resources (URIs), we can have a embedding of that protocol into an HTTP layer; if we have an HTTP-layer protocol, we may have an trivial embedding of that into a payload-layer API (although that may be not quite beautiful). There is no fundamental difference here.

We already proved that multiple-stage authentication is possible within HTTP layer by our reference implementations. There are two possible implementation layers (server layer v.s. application software layer) as mentioned before, and we took the harder approach, i.e. using the server-layer software technologies for implementations, and it succeeded. If there is still any doubt, you can just handle authentication in the application software or application framework layers, so that you can use any technologies which enables multiple-stage payload-layer protocols.

During our stage of design Mutual authentication, one concern regarding the multiple-stage authentication was possible conflicts with load-balancing proxies. As authentication statuses are shared between clients and server-side authenticator, if there are hidden multiple instances of server-side software, any server-side endpoint for single client should share the authentication status information. However, you should also notice that, even with payload-layer protocols, the same problem arises. Common approach is to use back-end information-sharing software (e.g. RDB), and it can be applied also to the http-layer protocol implemented in the application software layer.

In addition, the design of Mutual authentication protocol considers several methods of solving this within server-layer implementations (front-end authentication proxy, shared back-end authentication server, controlling load balancing proxy, and so on). One of our testing environment was actually such a system, and we used a front-end authentication proxy to solve this (this method is also employed for wrapping existing applications to use Mutual authentications in our testing environment.)

&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2012-06-13. It was migrated from the old Trac wiki on 2022-12-13.*
