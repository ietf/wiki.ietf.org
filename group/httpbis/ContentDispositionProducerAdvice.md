---
title: HTTP Frameworks and the Content-Disposition Header
description: HTTP Frameworks and the Content-Disposition Header
published: true
date: 2022-12-13T22:41:15.824Z
tags: 
editor: markdown
dateCreated: 2022-12-13T22:29:14.472Z
---

# HTTP Frameworks and the Content-Disposition Header

The [IETF HTTPbis Working Group](/group/httpbis) has recently published [RFC6266](http://tools.ietf.org/html/rfc6266), "Use of the Content-Disposition Header Field in the Hypertext Transfer Protocol."

This specification is the result of extensive testing ([detail](http://greenbytes.de/tech/tc2231/)) of existing Web browsers and other clients, as well as ongoing work with browser vendors to improve their implementations.

This RFC now defines the syntax and semantics of Content-Disposition headers. This page has been written to help authors of server-side HTTP libraries and frameworks produce Content-Disposition headers that are interoperable with the broadest number of implementations, based on that RFC.

1. [Why HTTP Frameworks Should Have a Content-Disposition API](#why-http-frameworks-should-have-a-content-disposition-api)
2. [Sample API for Content-Disposition Generation](#sample-api-for-content-disposition-generation)
3. [What Next?](#what-next)
4. [Frequently Asked Questions](#frequently-asked-questions)

## Why HTTP Frameworks Should Have a Content-Disposition API

While it's possible for content developers to produce their own Content-Disposition headers (and currently many frameworks require them to do so), there are some details that are important to get right for interoperability. Many of these issues surround internationalisation.

In simple cases, Content-Disposition looks something like this:
&nbsp;
<pre>
Content-Disposition: attachment; filename=example.html
</pre>
However, when the filename has non-ASCII characters in it, it needs to be encoded as described in [RFC5987](http://tools.ietf.org/html/rfc5987). For example:
&nbsp;

<pre>
Content-Disposition: attachment;
                     filename="EURO rates";
                     filename*=utf-8''%e2%82%ac%20rates
</pre>

Similarly, there are a number of other "gotcha" issues, such as including backslash characters and quoting parameters with spaces in them. By providing an API for developers to easily produce Content-Disposition headers, HTTP frameworks can help them avoid these common problems, and also more painlessly evolve as browser implementations improve.

Note that as the Web has evolved, HTTP's use of headers has diverged from MIME, so it's not adequate to just use a MIME library any more (for Content-Disposition or many other purposes).
## Sample API for Content-Disposition Generation

[RFC6266 Appendix D](http://tools.ietf.org/html/rfc6266#appendix-D) describes an approach to producing Content-Disposition headers that interoperates with as many browsers and other clients as possible. This advice should form the basis of a Content-Disposition API.

For example, a Python framework might have a method that looks something like:
&nbsp;
<pre>

headers.add_content_disposition(disposition, filename, fallback_filename)
</pre>
Note here that both a filename and fallback filename can be passed as parameters, so that both ```filename``` and ```filename*``` can be populated, even if there isn't a programmatic way to generate the former from the latter.
## What Next?

In the past, browsers haven't implemented Content-Disposition interoperably, causing a lot of frustration. As a result, many frameworks haven't attempted to make it work, except in simple cases.

This is changing now, and we believe that by improving things in both servers and browsers, interoperability will improve.

So, we're opening a dialogue with several large HTTP frameworks, using this document as a starting point. We'll update this document as that effort progresses.

If you are responsible for, or contribute to, one of these frameworks, we'd encourage you to offer a Content-Disposition API along these lines. If you have any questions or problems, please contact Julian Reschke (Content-Disposition editor) or Mark Nottingham (Working Group chair).
### Framework Tickets and Implementations

This is a list of implementations and associated tickets that we're aware of:

* [Sweet](https://github.com/mnot/sweet) - C-D for Node.JS
* [ticket request](https://code.djangoproject.com/ticket/16470) for Django
* [Symfony](https://github.com/symfony/symfony/commit/dccd2d5) (PHP) 

## Frequently Asked Questions
**Why shouldn't I just produce the C-D header in UTF-8 directly?**

HTTP headers are defined to be ISO-8859-1, so encoding them as UTF-8 assumes that the client will correctly "sniff" the encoding.

Unfortunately, there are some UTF-8 characters that look like ISO-8859-1 characters, such as an a with an umlaut (ä). In these cases, some browsers will treat it as UTF-8, even though it's valid ISO-8859-1, causing a loss of interoperability; your users will see the wrong filename. See [the test case](http://greenbytes.de/tech/tc2231/#attwithutf8fnplain) for details.

**Why not generate the fallback filename automatically?**

In some cases (e.g., German, which uses many characters from ASCII), this will work fine, because there are reasonable substitution characters.

However, consider Japanese, which doesn't share any characters from ASCII.

**If I follow Appendix D, how will browsers treat it?**

All current releases of mainstream browsers will use "filename*" when present, except for Safari (which falls back to the content of "filename").

Internet Explorer versions 6, 7 and 8, as well as Mozilla 3, 3.5 and 4 will use the "filename" parameter even when "filename*" is present.


---
*The content on this page was last updated on 2011-09-05. It was migrated from the old Trac wiki on 2022-12-13.*
