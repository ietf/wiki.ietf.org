---
title: Milestone One Wiki
description: 
published: true
date: 2022-11-29T19:36:21.869Z
tags: dmarc
editor: markdown
dateCreated: 2022-08-10T17:44:34.410Z
---

# Milestone One Wiki
The deliverable for Milestone 1 is [https://trac.tools.ietf.org/html/draft-ietf-dmarc-interoperability documentation of all known interoperability issues with DMARC and indirect mail flows].

**This documentation exercise is now complete. What remains of this page is for the archives.**

Current work is tracked in MilestoneTwoWiki.

## List of known interoperability issues 

* [#aliasing Automatic aliasing]
  * [#mbox-fwding mailbox-level forwarding]
  * [#sieve-fwding Sieve level forwarding]
  * [#mua-fwding MUA forwarding]
  * [#mta-fwding MTA forwarding]
  * [#multi-fwd multi forwarding]
* [#sieve-mod Sieve modification]
* [#ml-mod Mailing lists]
* [#unrelated-relay "Unrelated" relay]
* [#commercial-freemail Use of freemail in commercial context]
* [#send-this-article-to Newspaper sites and similar.]
* [#mx-scanning MX gateway/scanning/backup services]
* [#indirect-combo Combinations of indirect flows]
* [#calendar-invite Calendar invites]
* [#EAI EAI]


### Automatic aliasing (aka dot-forwarding)  #aliasing

<<Note:  This discussion should be cast in terms of RFC5598 language, such as aliasing.  /DCrocker>> 

Automatic forwarding is when an original recipient configures their target email account (call it displayed_email_account@example.org) to forward email to a new destination (alias_email@sample.net).  This is done for any number of reasons including a fondness for a new interface at @example.net, to consolidate where and how the user processes email from many accounts, as part of an "email-for-life" service offered by a university or professional association.

Aliasing poses special challenges if the forwarder modifies the message, causing DKIM failure.  In this case, all forwarded-to mailbox providers must decide to either reject email falling under a DMARC reject policy or to ignore DMARC policy (perhaps with supplying an "override" reason of "forwarder" back to the domain owner in DMARC aggregate feedback).

The implementation choice for performing aliasing can affect likely changes to the message:

#### mailbox-level forwarding #mbox-fwding

Automatic aliasing can occur at the level of the mailbox, making transparent forwarding possible (where no modifications are made to content of a message therefore increasing chance of DKIM passing).  This is what is most commonly referred to as "dot-forwarding".

#### Sieve level forwarding #sieve-fwding

The Sieve action command 'redirect' can be used to forward/redirect mail. When message content is preserved this may have no influence on DKIM verification, but in general forwarding/redirection has impact on SPF verification.
 
#### MUA forwarding #mua-fwding

Some users forward email using their MUA, which almost always modifies the content of email (breaking DKIM).  Several different known forwarding "modes":

* '''Simple forwarding:''' Forward by creating an entirely new message and adding "Begin forwarded message:" before the MUA inserts content from the to-be-forwarded message.
* '''Forward as attachment:''' Forward by placing content of to-be-forwarded message into an attachment.
* '''Resend:''' Forward by resending a message.

#### MTA forwarding #mta-fwding

Some MTAs can be configured to forward email according to domain.  That is, if the recipient domain matches a forwarding rule, then the email is forwarding to the next configured hop.  MTAs that support this can sometimes be configured to forward in two distinct modes:

* '''Forward without modification.'''  This is most similar to "dot-forwarding", except on a domain-wide basis.
* '''Forward while rewriting message.'''  When this occurs, the message's domains are rewritten to reflect the new destination domain.  Although this behavior is more commonly seen in outbound email flows (eg, to make sure email coming from an acquisition's email domain reflects the new parent company), the same processing can be applied for inbound email.

#### Presence of multiple automatic forwards  #multi-fwd

It is possible to create a chain of automatic forwarding, further complicating the flow of email and increasing the likelihood of message modification (and DKIM breaking).

### Sieve level modification of message header or content  #sieve-mod

The Sieve 'addheader' and 'deleteheader' actions can be used to delete or replace headers, that were used to construct the DKIM-Signature h= tag value, including the RFC5322.From. The Sieve editheader extension [1] explicitly prescribes that implementations must support deleting and adding the RFC5322.Subject header, while DKIM [2] advises to sign the Subject field. The Sieve action 'replace' [3] can be used to replace a bodypart. All of these Sieve actions may invalidate the DKIM-Signature and as a result, may cause DMARC tests to fail.

### Mailing lists #ml-mod

Mailing list management (MLM) software often alters header fields (typically adding list ID or serial numbers to the Subject field) or the body (typically adding unsubscribe information, which may be required by law in some cases).  These alterations usually invalidate the DKIM signature.  Furthermore in most cases the host providing the mailing list is not authorized under SPF by the Author domain.  Thus in the common case messages transmitted via a mailing list will fail From alignment.  In case of a p=reject DMARC policy at the Author Domain, all messages from users at that domain will be rejected by destination hosts participating in the DMARC protocol.

[wiki:MailingListModel An effort to document a generic model of MLM behavior (so that comparing and contrasting of MLMs can be made easier) can be found here.]

Consequences:

    1.  Recipients at destinations participating in the DMARC protocol (below denoted "DMARC recipients") experience non-delivery of desired mail.

    2.  In the common case where the MLM is configured to direct errors to itself, the rejected messages may be recognized as bounces from DMARC recipients.
    Such bounces may cause suspension of delivery to DMARC recipients, or even termination of their subscriptions.  Even if a standard status code were provided for 
    such DSNs, it may not be possible to reliably recognize such "DMARC bounces", as many sites consider their authorization policies to be sensitive information, 
    and use an uninformative status code for all rejects due to authorization failure.

    3.  One common mitigation policy is to configure the MLM to alter the From field.  Since most list subscribers prefer to know the identity of authors, typically this 
    information is provided in the display name in the From field, which to some extent defeats the purpose of DMARC itself.  It also makes it difficult to ensure 
    that users of all mail clients can easily reply to author, list, or all using the mail client features provided for that purpose.  Use of "Reply-To" can partially, but 
    not fully, alleviate this problem.

    4.  Another common mitigation policy is to configure the MLM to "wrap" the message in a MIME message/rfc822 part.  This completely bypasses the DMARC policy 
    in clients that allow reading the part as a message.  Many mail clients (as of August 2014) have difficulty reading such messages.

    5.  Users at Author Domains with DMARC p=reject policy complain of "discrimination" to the mailing list owner or to the subscribership.

#### Differences between List and Group 

A difference between the concept of a mailing list and a group has been brought up, leading to:

- a consideration that a list could be software that changes 5321.Mailfrom to be itself,
- whereas an "alias" (or a group) might simply be software that explodes a single recipient into many.

The above distinctions may not be useful if the distinction is made due to how the functionality is presented to users.

### Use of "unrelated" outbound SMTP servers  #unrelated-relay

ISP customers often send email using their ISP's outbound SMTP server using domains that have no relation to the ISP.  This might be due to access restriction that limit connectivity for SMTP to only the ISP's outbound SMTP server to legacy configuration settings being used/evolved by the customer (or both).

Newspaper mail-an-article services often send mail through the newspaper's server with the From: address of the person who asked the mail to be sent.

[wiki:EmbeddedDevices Embedded devices send mail through whatever mail server they can use], often one on the same LAN that lets them send without authenticating.

### Commercial email using free email address  #commercial-freemail

An Email Service Provider can be hired to send email on behalf of a free email address, and that address might be associated with a DMARC reject policy.  This case may be expanded to include "ESP sends on behalf of a customer using a DMARC-protected domain where the domain is not under control of the customer".

### Newspaper Sites #send-this-article-to

Quite a few sites, such as newspapers, will allow you to "send this to <whomever>" allowing one to enter 
one's own email as the From: address.  This completely breaks any kind of sender alignment.


### MX gateway/scanning/backup services #mx-scanning

Various services exist today based on inserting a service into the email flow by placing the service into a domain's MX record.  For example, anti-spam/malware service will commonly rewrite messages to either filter out malicious content or append a footer-based advertisement.  This modification breaks DKIM.

Aside from modification due to anti-badness scanning, from the perspective of email receivers these services appear to be originating a large number of email domains.. all with broken DKIM signatures and failing SPF.

### Combining indirect email flows  #indirect-combo

It is possible to combine indirect email flows.  For example, a university student may subscribe to a mailing list (with @*.EDU account) and then create a forwarding rule to webmail account after graduation.

### Calendar invites #calendar-invite

Using Microsoft Outlook desktop client and Microsoft Exchange when B forwards to C and invite sent by A the 5322.Mailfrom is A and 5322.Sender is B.

B can add a comment, so it is a new message, and falls under the "send on the behalf of"

### EAI  #EAI

RFC6854 tolerates the group syntax during the transition period to SMTPUTF8. The case is an email forwarded from an EAI (SMTPUTF8) aware MTA to a non aware MTA. In that case the sending MTA may downgrade and transform the message to allow its transmission rather than reject it (such transformation is very likely to break DKIM too).

Section 3, applicability statement states:

   "Mailbox syntax is the normal syntax to use in the "From:" and
   "Sender:" header fields; the address syntax defined in Section 2.1,
   which allows the specification of a group, is only for Limited Use"

...

   "Many Internet email procedures and much software assumes that the
   addresses in the "From:" and "Sender:" fields can be replied to and
   are suitable for use in organizing and filtering mail.  The use of
   groups instead of mailboxes can disrupt these uses.  Consequently,
   while this specification legitimizes the use of groups, it does so
   only to enable circumstances when that use is necessary.  Because the
   use of this mechanism is new, it is important that its use be limited
   to these circumstances and that it be used with caution.  In
   particular, user agents SHOULD NOT permit the use of groups in those
   fields in outgoing messages."

Therefore if you don't support support SMTPUTF8 on receiving, then you may have to accept the group syntax, but if you support SMTPUTF8 then you have little to no reason to do so.

So here is some proposed language for the DMARC Draft on EAI:
RFC6854 adds the group syntax (address-list) in the RFC5322.From as acceptable for an MTA that do not support EAI (SMTPUTF8) and would receive an email from an MTA that does support it (see applicability statement and security considerations). Therefore a DMARC enabled MTA, not SMTPUTF8 aware, MAY accept an email with an RFC5322.From with the group syntax defined in RFC6854, while a MTA with SMTPUTF8 SHOULD NOT accept such syntax and use strictly the syntax defined in RFC5322.

Conclusion, as usual the postmaster will choose the solution best for its users but really to avoid DMARC being rendered useless (and DKIM and other anti-spam techniques) the real solution is to upgrade your MTAs to support EAI, if you want to do DMARC.

[1] https://tools.ietf.org/html/rfc5293
[2] https://tools.ietf.org/html/rfc6376
[3] https://tools.ietf.org/html/rfc5703 