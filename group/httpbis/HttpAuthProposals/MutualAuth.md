---
title: HTTP Mutual authentication protocol
description: HTTP Mutual authentication protocol
published: true
date: 2022-12-14T00:28:38.796Z
tags: 
editor: markdown
dateCreated: 2022-12-14T00:28:38.796Z
---

# HTTP Mutual authentication protocol
## The Internet-Draft

http://tools.ietf.org/html/draft-oiwa-httpbis-mutualauth-00

Previous versions are available as [draft-oiwa-http-mutualauth](http://tools.ietf.org/html/draft-oiwa-http-mutualauth)

 * To implement it, you may need a crypto suite separately: one example is available as 

[draft-oiwa-http-mutualauth-algo](http://tools.ietf.org/html/draft-oiwa-http-mutualauth-algo)

## Overview

* Strong authentication using password or any possibly-weak shared secrets
  *  Secrets will never be leaked to eavesdroppers and protocol recipients, even if they exploit exhaustive searches on possible passwords
  *  For cryptographers: using PAKE (or ZKPP) for it 
* Strong mutual authentication: Web users can distinguish their registered Websites from fake servers, protection against web frauds
  * More details: [why Mutual authentication is important?](/group/httpbis/HttpAuthProposals/MutualAuth/MutualTrustDesign) 
* Strictly based on HTTP 2617 or httpbis-p7, allowing easy system integration
  *  More details: [why designed on the HTTP layer?](/group/httpbis/HttpAuthProposals/MutualAuth/LayeringDesigns) 
* Additional support for Web applications using a [companion proposal](/group/httpbis/HttpAuthProposals/AuthExtension)
  *  Support for guest users, log-out control, page navigation on authentication events, and more
  *  See that proposal for more details 
* Strict channel binding to HTTPS, also forwarding detection on plain HTTP
* Fixed several loopholes of Digest
  *  Strong-enough hashes, no fixed cryptographic primitives, strict replay attack protection within fixed amount of memory (per each session key) 

## Implementations

Reference implementations are available on [project homepage](https://www.rcis.aist.go.jp/special/MutualAuth/)

* Web browser (modified Mozilla Firefox)
* Web server module (Apache module) 

We also have 2nd implementations on each side: a standalone client, and purely Ruby-based server implementation (to be published).

## Comparisons (or non-comparisons)

Please refer draft Section 1 for comparisons (or non-conflicting relations) to existing technologies.

## Possible deployments

* Replacing Basic and Digest is quite easy: it's just a drop-in replacement sharing httpbis-p7 framework. For Digest, even password DB can be migrated.
* Replacing Web Forms: the pair of this proposal and [the companion](/group/httpbis/HttpAuthProposals/AuthExtension) can be considered as pre-implemented API framework: refer section 5 of the companion draft for possible deployment tactics.
  * If you really want, on several application server frameworks (i.e. except Apache), you can implement the whole protocol on the web application layer (contrary to web-server layer). 
        
        
&nbsp;
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2012-06-25. It was migrated from the old Trac wiki on 2022-12-13.*