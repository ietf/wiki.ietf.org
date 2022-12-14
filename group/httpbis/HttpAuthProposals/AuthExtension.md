---
title: HTTP Authentication Extensions for Interactive Clients
description: HTTP Authentication Extensions for Interactive Clients
published: true
date: 2022-12-14T00:19:50.653Z
tags: 
editor: markdown
dateCreated: 2022-12-14T00:19:50.653Z
---

# HTTP Authentication Extensions for Interactive Clients

## The Internet-Draft

http://tools.ietf.org/html/draft-oiwa-httpbis-auth-extension-00

Previous versions are available as [draft-oiwa-http-auth-extension](http://tools.ietf.org/html/draft-oiwa-http-auth-extension)

* It was designed for [HTTP Mutual authentication](/group/httpbis/HttpAuthProposals/MutualAuth) at first, but it is generic to every interactive authentication scheme on HTTP. 

## Overview

* Fill gaps between current HTTP authentication framework and Web application needs
   *     Concurrent support for guest (unauthenticated) users on the same page as for authenticated users (optional authentication)
   *     Log-out
    *    Session timeout
    *    Customized pages for log-in/log-out interface (incl. announcements, warnings or advertisement)
        etc. 
* Easily-understandable API used from Web applications
    *    Optional authentication: configure it to Web server and it's all OK
    *    Others: just set an Authentication-Control: HTTP header and it's all
 &nbsp; *  Easy deployment: the header can be configured statically
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; * no CGIs required on common cases
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;          *   carefully designed so that these headers will be ignored whenever not applicable or meaningful 
* Not harmful for non-Web applications, too: base authn. semantics is not changed, so just ignore the header is enough 

## Use cases

See the Section 5 of the draft for information on how to use this extension.

## Implementations

Reference implementations for [Mutual authentication](/group/httpbis/HttpAuthProposals/MutualAuth), available on [project homepage](https://www.rcis.aist.go.jp/special/MutualAuth/), implements these extensions, too.


&nbsp;
&nbsp;
&nbsp:

---
*The content of this page was last updated on 2012-06-05. It was migrated from the old Trac wiki on 2022-12-13.*