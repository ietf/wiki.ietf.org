---
title: DeployReport1652
description: 
published: true
date: 2023-01-21T03:56:15.377Z
tags: 
editor: markdown
dateCreated: 2023-01-21T03:56:11.556Z
---

Deployment Report for [RFC 1652](http://tools.ietf.org/html/rfc1652)
September 13, 2009
Moonesamy, YAM WG Secretary

### Summary

[RFC 1652](http://tools.ietf.org/html/rfc1652) defines the SMTP Service Extension for 8bit- MIMEtransport (8BITMIME). This report summarizes the deployment experience for four independent implementations of [RFC 1652](http://tools.ietf.org/html/rfc1652).

### Methodology

A question about deployment was sent to the YAM mailing list in August 2009. Four responses were received. The responses were for four independent implementations.

### Deployment experience

Isode M-Switch supports 8BITMIME since early 1998. It was deployed for the isode.com domain shortly after. Isode is not aware of any problems with it.

AT&T's in-house MTA used for its ISP services, Maillennium, has had 8BITMIME deployed for about 12 years.

Process Software's PMDF has supported 8BITMIME ever since the specification was first released.

Qmail, a popular freeware MTA for Unix and Unix-like systems has supported 8BITMIME at least since version 1.03 in 1998. John Levine is a long time qmail user and the author of a book on the package. He reported that he has never encountered any interoperability problems related to 8BITMIME.

Sun's Messaging Server product is derived from PMDF and has supported 8BITMIME from its inception. This MTA is used by many large ISPs around the world.

The single interoperability problem it has caused is probably largely due to 8BITMIME being a parameterless announcement that in practice introduces no new error states and doesn't alter the dialogue in any significant way.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-09-13. It was migrated from the old Trac wiki on 2023-01-20.*