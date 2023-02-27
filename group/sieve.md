---
title: SIEVE WG (Concluded) - Sieve Mail Filtering Language
description: 
published: true
date: 2023-02-27T07:41:43.994Z
tags: 
editor: markdown
dateCreated: 2023-01-11T02:25:10.528Z
---

# SIEVE
## An Email Filtering Language
This page is provided as an informal coordination point for activities related to the Sieve mail filtering language. Sieve is a proposed internet-standard language for filtering mail at the time of final delivery.

## An Overview of SIEVE
The following description of Sieve is from the Internet Draft describing the Sieve language (linked below), by Tim Showalter, adapted and expanded by Matt Wall:

Sieve is a language that can be used to create filters for electronic mail. It is not tied to any particular operating system or mail architecture. It requires the use of [RFC822](http://tools.ietf.org/html/rfc822)-compliant messages, but otherwise should generalize to other systems that meet these criteria.

Sieve is designed as a proposed Internet Standard, and design and development to date has followed Internet Engineering Task Force (IETF) procedures as described in [RFC 2026](http://tools.ietf.org/html/rfc2026). It is not at this time the product of an official IETF Working Group, although advice and direction from the Applications Area directors as well as IETF procedures guide the work in progress. It is the current intention of the participants of the Sieve mailing list (information on this is listed below) to move Sieve to Proposed Standard in a timely manner (bypassing a formal Working Group if at all possible).

Sieve is a multi-vendor effort that has been discussed in various technical and standards-oriented public and private meetings since at least 1994.

The language is powerful enough to be useful, but limited in power in order to allow for a safe server-side filtering system. The intention is to make it impossible for users to do anything more complex (and dangerous) than write simple mail filters, along with facilitating GUI-based editors. The language is not Turing-complete, and provides no way to write a loop or a function. Variables are not provided.

Implementations of the language are expected to take place at time of final delivery, when the message is moved to the user-accessible mailbox. In systems where the Mail Transport Agent (MTA) does final delivery (such as with traditional UNIX mail systems) it is reasonable to sort when the MTA deposits mail into the user's mailbox. However, Sieve filters might be used at a number of "final delivery" points in a mail system: by an SMTP server, by an IMAP or POP server filing into one or more mailboxes, or by a Mail User Agent (MUA or mail client) acting as a delivery agent (for instance, a POP or offline IMAP client.)

Because of the expectation that users will make use of filtering if it is offered and easy to use, this language has been made simple enough to allow many users to make use of it, but rich enough that it can be used productively. However, it is expected that GUI-based editors will be the preferred way of editing filters for most users.

### Why a standard syntax for mail filtering?
There are a number of reasons to use a filtering system. Mail traffic for most users has been increasing due both to increased usage of e-mail, the emergence of unsolicited email as a form of advertising, and increased usage of mailing lists. Filtering is among the most common tools available for end users and system managers alike to provide sorting and disposition mechanisms for email.

There are many filtering schemes in place at present, using widely variant underlying syntaxes and representing different levels of sophistication, functionality, and detail. Virtually no two different filtering schemes interoperate with one another, forcing users and system administrators alike to re-create filters for each individual piece of software.

A standard would allow both software authors and vendors to write tools that would use common scripts. The applications for this standard are many.

### What Sieve is not
Sieve is simply a specialized standard filtering syntax/language.

Sieve is not intended to be the latest, greatest instantiation of a complete programming language.

Sieve is not particularly intended to be useful with filtering or processing anything other than [RFC822](http://tools.ietf.org/html/rfc822) messages.

Sieve is not intended as a replacement for the basis of any particular existing tool per se, although its design is informed by the experience with many existing tools.

While Sieve certainly doesn't provide the most sophisticated filtering syntax possible, it does provide fundamental basics common to all [RFC822](http://tools.ietf.org/html/rfc822) messages to establish a basic standard syntax for interoperation. It also provides an extension mechanism to allow individual implementations to provide extended functionality within an open standards framework. As such, Sieve is intended as a first-stage building block for mail filters, although one that in and of itself provides significant functionality for a large number of possible uses.

Sieve purposely makes no comment on or discussion of the transport mechanism used by end users over which Sieve scripts might be moved. Possibilities are many, and include file transfer, direct editing on a file system, http, acap, ldap, and a number of other application-level transport methods. Sieve scripts are simply data for Sieve engines to execute.

Sieve is not a once-and-for-all solution for pressing problems addressed by filtering, such as anti-Spam efforts, although it certainly is intended to facilitate construction of such solutions.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-02-13. It was migrated from the old Trac wiki on 2023-01-10.*