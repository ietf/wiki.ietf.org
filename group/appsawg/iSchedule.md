---
title: iSchedule
description: 
published: true
date: 2022-11-05T14:41:47.937Z
tags: 
editor: markdown
dateCreated: 2022-11-05T14:41:47.937Z
---

 No BoF was held for this; it has been discussed in appsawg.
```
iSchedule Working Group (isched)

Problem Statement:

Calendar scheduling is the process by which organizers and
attendees plan events or assign tasks.  More specifically, it
encompasses the exchange of requests/invitations and responses
between organizers and attendees of scheduled events, tasks, or
journal entries.  The iCalendar (RFC 5545) and iTIP (RFC 5546)
specifications form the basis of a data format for representing
and exchanging such scheduling messages, independent of the
transport protocol.  CalDAV Scheduling (RFC 6638) defines a
binding from iTIP to HTTP (draft-ietf-httpbis) via WebDAV (RFC
4918).  CalDAV Scheduling is a client/server protocol where the
server is responsible for sending scheduling messages and
processing incoming scheduling messages.  This protocol is only
useful for scheduling between users of the same server. The iMIP
(RFC 6047) protocol, which is a binding of iTIP to email-based
transports, currently allows scheduling between users of
different/separate calendaring and scheduling systems. 
Unfortunately, due to the nature of email, iMIP suffers from a
few short-comings, notably:

- Requests and replies are prone to delays, especially free/busy
time queries (which typically are expected to complete in
"real-time")

- Requires integration of a user's calendar and email clients
and/or requires an iMIP gateway to the calendar server(s)

- iMIP has interoperability problems; in particular many iMIP
clients are sensitive to the exact MIME structure of the email
message they receive, sometimes ignoring any calendar data if the
structure is not what is expected

- The delivery status of scheduling messages may not always be
available

- Email has inherent security/privacy problems, with spam being a
major concern

Objectives:

The iSchedule working group is chartered to develop a new
HTTP-based binding of iTIP to overcome the deficiencies present
in iMIP.  Key requirements of this new protocol are:

- Must be independent of any calendar system in use at the
endpoints (i.e., the new protocol can act as a gateway between
any standard or proprietary calendar system)

- Includes a mechanism whereby the sender of a scheduling request
can claim responsibility for sending the message as well as
verifying the authenticity of the organizer of the request

- Must be secure to circumvent problems inherent in email, such
as spam.

The working group will use existing technologies as much as
possible (HTTP, iCalendar, iTIP etc) for the core transport
features, and will attempt to use existing security technologies
to satisfy the security requirements.  The working group will
focus on ease of deployment, with the barriers to adoption made
as low as possible without compromising the security and
integrity of the process.  It is expected that this protocol will
be used by very high volume/high traffic calendar service
providers, so scalability will be addressed.

Whilst several models for a security could be considered, to
speed deployment and use of the new protocol, the working group
will first develop a "domain-level" authorization scheme that
will allow co-operating calendar service providers to accurately
determine the source and authenticity of scheduling messages.  To
that end, iSchedule will leverage the proven DKIM Signature (RFC
6376) technology.  However, because DKIM itself is designed for
signing email, it has features and requirements that do not fit
well with or apply to HTTP payloads.  As a result, an effort has
begun to extract and generalize the core technology from DKIM so
that it may be reused and extended by other protocols such as
iSchedule.  This new mechanism is being named DomainKeys Security
Tagging (DOSETA).  Use of DOSETA should not prevent additional
security models being used in the future as needed.

The working group will use draft-desruisseaux-ischedule as the
initial starting point for this work.  That specification was
originated by the Calendaring and Scheduling Consortium
(CalConnect) and there are already several experimental,
interoperable implementations in existence.


Milestones:

 Jun 2013 - Accept iSchedule and DOSETA documents as Working Group items.
 Aug 2013 - Start Working Group Last Call on DOSETA document.
 Sep 2013 - Start Working Group Last Call on iSchedule document.
 Oct 2013 - Submit DOSETA and iSchedule documents to IESG.
```