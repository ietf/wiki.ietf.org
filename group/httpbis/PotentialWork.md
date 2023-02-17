---
title: Potential Work
description: Potential future work of HTTPBIS
published: true
date: 2022-12-14T19:26:32.926Z
tags: 
editor: markdown
dateCreated: 2022-12-14T19:26:29.929Z
---

# Potential Work

This page tracks *potential* future work of the HTTPbis WG, including new features and already-used features that need standardisation. Inclusion on this list is *not* a guarantee (yet) that we'll work in this area; it's just input to possible future re-chartering.

## Refresh Header

Most UAs implement a "Refresh" response header that instructs the browser to refresh its view. Standardising this (possibly with advice on when NOT to use it) is probably necessary.

See also:

* [wikipedia](http://en.wikipedia.org/wiki/Meta_refresh)
* [list discussion](http://www.w3.org/mid/4CA6E042.1040406@gmx.de)

## Increasing precision of Last-Modified header to allow sub-second granularity

It would be nice if the Last-Modified header could (optionally) carry more precision that one second, for the benefit of clients that wish to reliably detect when a server has changed its output faster than once per second. For example:

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Last-Modified: Fri, 27 Jan 2012 20:21:10.011483 GMT

Note that it is possible to get around the current one-second limitation using ETags, but it would be more convenient if this could be done directly in the Last-Modified header, because: (a) clients would know that it is a (high-resolution) last modified time as opposed to an opaque string in an ETag; and (b) servers would not have to set both the Last-Modified header and the ETag header when simply trying to indicate a high-resolution last modified time.

This is relevant to high-speed distributed systems that are based on HTTP.

See also:

* [Email thread](http://lists.w3.org/Archives/Public/ietf-http-wg/2012JanMar/0316.html)

&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated 2012-01-31. It was migrated from the old Trac wiki on 2022-12-14.*
