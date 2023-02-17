---
title: Oauth Use Cases
description: 
published: true
date: 2022-12-19T20:50:41.692Z
tags: 
editor: markdown
dateCreated: 2022-12-19T20:50:01.573Z
---

# OAuth Use Cases
## HTTP

A web user can grant a printing service access to its private photos stored at a photo sharing service without sharing its credentials with the printing service. Instead, the user authenticates directly with the photo sharing service and issue the printing service delegation-specific credentials.

## SIP

A user access a product's support page and does not find the relevant information. He clicks a 'telephone' symbol to call a live representative. He's redirected to his VoIP provider's login page and enters his SIP credentials. After another redirect, the browser starts a VoIP applet and makes the call. The call center's PBX assigns the call to a free agent who sees the calling party Id and can refer to previous calls of the user.

(see also draft-beck-oauth-sip-eval-00)

## XMPP

A User wishes to authorize a Consumer (say, an application called FindMeNow as represented by a JID to access the User's geolocation feed at a Service Provider called WorldGPS (as represented by a publish-subscribe node).

As a result, FindMeNow gets updated every time the User publishes items to his geolocation node at WorldGPS.

(see [XMPP XEP-0235](http://xmpp.org/extensions/xep-0235.html))


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2010-03-08. It was migrated from the old Trac wiki on 2022-12-19.*
