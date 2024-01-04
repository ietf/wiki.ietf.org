---
title: Plenary83
description: 
published: true
date: 2023-12-06T00:04:45.536Z
tags: 
editor: markdown
dateCreated: 2023-12-06T00:04:40.650Z
---

# Implementation Challenges With Browser Security Models
## Announcement Text
High-profile data breaches and security incidents on the Internet are gaining increasing attention from the public and the press. A few examples may illustrate the problems: DigiNotar, a Dutch certificate authority had a security breach had resulted in the fraudulent issuing of certificates. Earlier this year a Comodo affiliate was compromised resulting in the fraudulent issue of certificates. During the first half of 2011 LulzSec, a computer hacker group, claimed responsibility for several attacks, including the compromise of user accounts from Sony.

The IETF has done a significant amount of work in the area of Internet security and for Web security in particular. To pick a few examples: HTTP is documented in RFC 2616 and by 1999/2000 the core Web security specifications had been finalized: HTTP basic and digest authentication were published in RFC 2617 and existing deployments make heavy use of TLS with server-side authentication. The HTTP state management mechanism, namely cookies, was initially published in 1997 as RFC 2109, reworked in 2000 by RFC 2965, and just recently revisited with RFC 6265. For non-Web based applications the work on Kerberos as well as the Simple Authentication and Security Layer (SASL, RFC 4422) as well as the Generic Security Service Application Program Interface (GSS-API, RFC 2743, which are application layer authentication frameworks, have found widespread usage on the Internet.

With the rise of the Web during the last 10 years the application landscape has seen a fundamental change. The widespread usage of JavaScript, which effectively turned the Web into a mobile code distribution platform, bundled with the ever increasing capabilities of JavaScript have changed the Web security model. Today, a typical Web site collects content from multiple other sources (as a mashup) and delivers it to browsers for execution and display.

A number of security building blocks are available to application developers and various IETF working groups work hard on new protocols and extensions, for example in the Javascript Object Signing and Encryption (JOSE), Web Authorization Protocol (OAuth), Transport Layer Security (TLS), Application Bridging for Federated Access Beyond web (ABFAB), Web Security (WebSec), IP Security Maintenance and Extensions (IPSECME) and DNS-based Authentication of Named Entities (DANE) working groups. At the same time we see a rapid increase of security attacks and data breaches.

This raises the obvious question: What has gone wrong?

Are our tools ineffective? Are the available tools used in the appropriate way? Are we developing the right set of tools? What can we do better to improve on the Internet?

At this IAB technical plenary selected experts from the security community will initiate a discussion. For those interested in more details a draft is available: http://tools.ietf.org/html/draft-tschofenig-secure-the-web-00

## Plenary Style
Short presentations to provide an introduction to the topic for the audience. Then, the audience is asked to share their views about the problems, lessons learned from past and ongoing security efforts, and suggestions about future work at the end.

### Agenda
- Introduction: Eric Rescorla on the current state of Internet and Web security problems
- Aren't our tools sufficient?
  - Mike Hanson (Mozilla) on the challenges with password-based authentication
  - Russ Housely on PKI problems
  - Jeff Hodges on Web security challenges (JavaScript, HTTP/Web vulnerabilities)
- What are we doing?
  - Tim Polk on an example project to improve SSO deployments on the Internet (based on NSTIC)
  - Sean Turner & Stephen Farrell on IETF and W3C security efforts
- What else could we do? (discussion – all)

## Goal of the Plenary
- Illustrate that the IETF is the main venue for doing security standardization for Internet protocols.
- Create more visibility for the work that is currently (RTCWEB Security, WebSec, WebApplicationSec, DANE, etc.)
- Solicit feedback from the audience about possible further work that is needed.
- Advertise the "big picture" draft write-up and announcement of our IAB program on that topic.

### Participating IAB Members
Candidates are: Danny, Alissa, Jon, Bernard.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-09-26. It was migrated from the old IAB wiki on 2023-12-05.*