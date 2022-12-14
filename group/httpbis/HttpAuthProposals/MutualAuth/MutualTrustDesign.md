---
title: Why we propose mutual authentication?
description: Why we propose mutual authentication?
published: true
date: 2022-12-14T19:08:04.503Z
tags: 
editor: markdown
dateCreated: 2022-12-14T18:44:54.892Z
---

# Why we propose mutual authentication?

* Trust model of recent Web applications, and which part we fix 

## Security and Trust Model of recent Web application

### Some history

Recent Web application platform (HTTP, HTTPS, HTML, JavaScript?, HSTS, WebSocket? etc.) became much more complex than the last decade, and its trust model seems more complex, too. However, in this document we propose one point of view first - server-user authentication vs. application-resource authorization.

From the very beginning of HTTP, there is a concept of user authentication. The purpose of authentication was twofold: to identify (with authenticity) which user is accessing the resource, and to decide whether the user is allowed to access the resource. At this time, "the resource" is just the HTTP-provided resource corresponding to the original request-URI. This technology is implemented as server-user authentication, but at this time the distinguishing these two properties are not required.

Next, we have HTTPS with server certificate authentication. The naive purpose of server authentication is whether the accessed server is authentic, from the client's view. However, with open-setting of Web world, this trust is not so simple, because anyone is authorized to deploy their web server and distribute web contents. The introduced solution is like this:

* The client will check whether provided server certificate correspond to the domain which the user has specified to access.
* CAs will provide attribute information of the server owner, and (at least conceptually) ensure that there is only one entity who is granted to used the accessed domain.
* *Users are responsible* for accessing the correct intended resource, at least on the domain level. 

The third concept is client-side scripting and same-origin concept. Introduction of client-scripting greatly enhanced the ability of Web application, but at the same time greatly threatened the security model of Web applications. Now, the entity who can provide script will have a whole access to the entire resources on the same web server, and any path-level separation of applications are useless for security (of course, it is useful for other purposes). This is the current model of Web security in the client side.

The next is introduction of federated access authorization (OAuth and other closed protocols); At this point, Web applications can have several identities (entitled with separate access tokens, which are different from user-authenticating Cookies etc.) which is not related but directly bound to the single authenticated user; users can delegate part of their privileges (e.g. access to Twitter tweets) to other Web applications (e.g. Foursquare), and can still keep their identity separately. OAuth is the typical example of concept that clearly separates resource authorization from user authentication.

The last concept is script-level access to data resources (XMLHTTP and others). This concept enabled several things, introduced several non-HTML use cases of HTTP protocol (REST etc.) to the Web world, and they also introduced possibility for managing separate data access authorization in the client-side application scripts.

### Web application security model

From the security point of view, we want to know how we can trust the Web applications (or, how we cannot establish the trusts). This becomes complex when scripts loads various resources which is externally managed outside the server's entity. Simple and only answer to this, under current Web scripting capabilities, is the *trust inheritance model* (or trust tree):

(list 1)

1. Users are responsible for correctly accessing the valid resource specified by the top URI (that shown in the address bar).
2. HTTP and TLS (HTTPS) is only responsible for delivering the requested resources with sufficient authenticity level provided by the protocol.
3. Top-URI web page is responsible for the security of itself, and also for importing scripts and other resources which are trustful enough.
4. Each imported resource is responsible for the security of itself and for further importing scripts and other resources which are trustful enough, too.
5. If any trust chain is broken, it is responsibility of the ancestors in the importing relations. Especially, it is the responsibility of the top resource for users. 

This responsibility holds for any kind of security properties, such as application data confidentiality, resource access privilege (e.g. OAuth access keys), and others.

## What we address in the Mutual authentication proposal

Provided the all above, we focus on the following goal: to establish mutual authenticity between users and the top-resource HTTP (Web) servers with enough security level.

It is clearly focusing on the user-server authentication issue. The technique can be applied also for application-resource authorizations, but it is not the main target. For that purpose, we already have OAuth 2.0 and other proposals which handle it well.

As shown in list 1, item 3, users must trust the top-page web resource (both for their honesty (against forgeries) and carefulness (against bugs)). Users can do nothing about security of externally-provided imported scripts anyway, so the top-page Web scripts must be responsible on that.

However, the authenticity of the "top-page" web resource is partly eleft to user's responsibility. TLS does, unfortunately, only half about this; They ensure that man-in-the-middle attackers cannot intervene the communication to the requested servers, but they does not tell whether the "requested server" is trustful or not. In other words, the PKI model assumes that every validly-owned domains are almost equally trustful (or distrustful). There is several partially-promising proposals such as EV-SSL, but still their trust model is the "same trust for all human beings" model.

On the contrary, every Web users have their naive intention of which servers to trust, and they only use more-or-less trustful services. We wanted to provide a way to distinguish such "decided-to-use" services from other personally-untrusted services (including rogue servers). The key technology is the personal-secret-based mutual authentication.

Of course, we still rely on every PKI-provided properties for security, and we just add an orthogonal measures for protecting users.

After mutual trust on authenticity are established, the users and Web applications can use whatever method to access the resources protected with resource access authorizations. It can also be done using the Mutual HTTP authentication with XMLHTTP or others, or they can freely use OAuth, server-side simple ID comparisons or any other technologies.

The technology is also very beneficial, we think, for federated ID management. Federated ID managements are the techniques which transfers IdP-level user authenticity to the Internet-wide trusts. Securing IdP-level base user authentication will enhance the total level of Internet-wide authenticity provided by such techniques, too.


## Appendix: protocol-design differences for user-server authentication and resource authorization

There are interesting point of differences for designing authentication protocol for these two properties.

Resource authorization happens always with specific applications which intend to use the resource, and known how to use the resource. Even if your application knows how to get authorization to access, if it does not know how to use the accessed resources, it is almost useless. It means that clients and servers must share application-level API definitions beforehand, and it further mean that they can also share any pre-agreement about authentication methods, just like APIs.

User authentication, especially for the Web browser cases, is not in such a way. Web browsers are generic application and know little about application-specific logics, and nothing about server-specific configurations.

This gives two clear differences for designing the protocols for these two kinds of uses: discovery and error recovery. We use Basic and OAuth Bearer authentications as clear examples. Everyone knows, I guess, these two are almost equivalent, simplest authentication protocol which just send a raw secret on the wire.

Basic and other generic user-authentication protocols have a discovery stage for finding that the server is requesting the specific authentication method. So, the Basic authentication is usually depicted as a two-exchange protocol like this:

| --- | --- |
|   Request w/o Authorization |	->
|   <-	| 401 Authorization Required (WWW-Authenticate: Basic)
|   Request w/ Authorization: Basic |	->
|   <-	| 200 (or 401)

On the contrary, almost the equivalent Bearer protocol is usually depicted as a single-exchange protocol like this:

| --- | --- |
 |  Request w/ Authorization: Bearer	| -> |
 |   <- |	200 (or 400)

Furthermore, there is a Form-encoded variant of Bearer protocol like this:

| --- | --- |
 |   POST request w/ auth-token field |	->
 |   <- |	200 (or 400)

As these protocols are almost equivalent, this showsn clearly not the protocol-level difference nor layer-design difference but the that of application designs.

Actually, if Bearer or any other access-authorization protocols (both HTTP- and payload-layers) are used without prior knowledge of authentication method, they need a separate discovery/negotiation protocol which involves one or more exchanges. Conversely, if there is prior agreement with authentication methods between peers, most user-authentication protocol can reduce one exchange used for discoveries (e.g. there are many Basic authentication implementations which omit the first 401 exchange). [See note 1 below for exceptions].

Another thing is recovery; there were discussions about how the Bearer clients can act upon 401 responses sent from servers. In fact, what they can do and they should do is just to do no recovery and report error to the applications. This is OK because its use is part of the higher-layer API protocol. On the contrary, user authentication protocols such as Basic and Digest has a own error-recovery procedure, and to do that, 401 responses for rejected authentication have information that is same as discovery stage. This is required because there is no shared higher-layer recovery protocol for common user authentications.

   Note 1: more about exchange numbers:

   More precisely, exchange numbers of authentication protocol is half-integers: simply because it is twice the number of messages. In this note, we count message numbers instead, including the final responses just carrying yes-or-no information for authentication results. The number of exchanges depends on the number of messages, from which side the exchange should start, and whether the prior (static) agreement about authentication methods exist. We exclude discovery exchanges from counting,

| --------      | --------- | ------- | -------------------------- |
| Examples      | #messages | starter | #exchanges(+1 for discovery) ||
|               |           |         | no agree   | 	prior agree
| Basic, Bearer |	2         |	client  |	1 + 1      |	1
| Digest        |	3         |	server  |	1 + 1      |	2
| Mutual	      | 4         |	client  |	2 + 1      |	2

   Interesting here is the irregularity in Digest: this is because that server nonces are sent to client embedded to the discovery exchange. It also support the fact that Digest authentication clients must always start with empty Authorization: requests, unable to omit the discovery stage. For Basic and Mutual, the discovery stage can be omitted if the client knows the authentication configurations beforehand.


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2012-06-25. It was migrated from the old Trac wiki on 2022-12-14.*