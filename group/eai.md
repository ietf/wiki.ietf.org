---
title: EAI WG (Concluded) - Email Address Internationalization
description: 
published: true
date: 2023-02-17T06:59:15.744Z
tags: 
editor: markdown
dateCreated: 2023-01-24T00:47:21.968Z
---

# Email Address Internationalization 
## Terminology and references to this work
When the "EAI" acronym and name were chosen for the WG, there was an explicit discussion about how the protocol extensions should be described. The preferred terminology is to refer to them using the keyword for the SMTP extension, i.e., as "SMTPUTF8 extensions", with "EAI" being only the name of the WG itself. The term "EAI" has nonetheless been used to describe extended email clients and servers, creating a certain amount of confusion. Those trying to find information about these extensions by using search engines should be aware that both sets of terms are used.

(Klensin, 2014-12-04)

## Syntax and relationships to traditional SMTP and Internet Mail Format
After some discussion within and around the WG, the authors/editors of RFCs 6531, 6532, and 6533 were instructed to write documents that specified what was being changed rather than trying to provide a comprehensive description of what email would look like in a fully-internationalized (including SMTPUTF8 extensions) world. While the latter choice would have made better tutorials, such consolidated documents would have been much more prone to errors and accidental divergences among email specifications. One consequence of the choice is that the requirement to understand RFCs 6531, 6532, and 6533 in context with RFCs 5321, 5322, and the various status notification specs that they update is very important. In particular, there are requirements about syntax and handling of "mailbox" names (both local and domain parts) in [RFC 5321](http://tools.ietf.org/html/rfc5321) that are not repeated in 6531 but that still apply. For example, the only real change that [RFC 6531](http://tools.ietf.org/html/rfc6531) makes to SMTP handling of domain names in addresses is to allow IDNA U-labels in the syntax of the domain part. IDNA A-labels are allowed by [RFC 5321](http://tools.ietf.org/html/rfc5321) (since they are ultimately ASCII labels conforming to 5321's syntax). Processing of domain names is otherwise strictly according to the requirements of [RFC 5321](http://tools.ietf.org/html/rfc5321) and the IDNA2008 specifications.

(Klensin, 2014-12-04, based in part on a discussions within the W3C internationalization working group and an email discussion with Arnt Gulbrandsen about a related issue.)

It is worth noting that this change silently imports an important new rule from IDNA: Unlike ASCII labels, u-labels are not case insensitive. blå is a valid u-label, but BLÅ is not, and the UI has to map the domains according to IDNA's rules when an address is input or a message is generated. This should perhaps have been called out in an informative section or shown in an example.

(Arnt, 2014-12-06)

## [RFC 6531](http://tools.ietf.org/html/rfc6531) (or 6530) Matching of IDN domains in U-label and A-label form
There is some question as to whether, for SMTP purposes, the U-label and A-label forms of a domain name are required to compare equal in an EAI SMTP implementation, e.g., whether asdf@… and asdf@błäh.example.com are equal. Since conforming implementations of 6531 are required to conform to IDNA2008, the answer should probably be "yes", but an update to the EAI specs should probably discuss this issue, possibly with reference to some of the discussion in [RFC 6055](http://tools.ietf.org/html/rfc6055).

(Klensin, 2014-05-07, and the email message thread initiated by Arnt Gulbrandsen on the EAI (IMA) list around this date)

## Local-parts in addresses
The mailbox local-part syntax of [RFC 6532](http://tools.ietf.org/html/rfc6532) allows some truly nasty Unicode strings, including strings that start with combining marks and that therefore may be very hard to have as input. My recollection is that was an intentional decision and not a mistake -- as with passwords, hard-to-type strings can sometimes be an advantage in email addresses. However, it seems to me that they are very much like case-sensitive strings in [RFC 5321](http://tools.ietf.org/html/rfc5321): we insist that those be treated as separate up to the point of final delivery, we forbid any message originating systems from assuming case equivalence, and forbid intermediate systems from performing case folding. Then we advise those creating mailboxes or operating delivery servers that they probably should not take advantage of case-independence except in special circumstances because case sensitive addresses are almost certain to create confusion and to be mishandled by badly-written implementations.

By simple extrapolation from [RFC 5321](http://tools.ietf.org/html/rfc5321) (see above), message originating systems, relays, address book systems, etc., MUST NOT tamper with or make any equivalence assumptions about local-parts that do not match at a bit string level.

For delivery servers, the mailboxes they allow and the aliases they might choose to support, the same principles of good sense should probably be considered and extended for non-ASCII addresses as for ASCII ones: easy-to-type and read strings are usually good. Strings containing imbedded spaces or characters that require quoting, case dependencies, etc., are probably bad ideas. For UTF-8 strings containing non-ASCII characters, avoiding strings that Unicode users would typically consider badly-formed (including leading combining marks), mixing of characters from different scripts, unnormalized strings, and use of symbols rather than letters, digits, and carefully-chosen punctuation will often be wise. Implementers looking for other hints about what to allow or avoid may also wish to track the work of the IETF PRECIS WG or at least see the discussion of Unicode strings in [RFC 5198](http://tools.ietf.org/html/rfc5198).

However, the above should be considered advisory and hints only: delivery servers and other mailbox-holding systems with different or unusual needs are free to ignore that advice and develop other conventions. Sending or processing systems, mail stores, etc., that behave in a way that prevents any address that is allowed by [RFC 6532](http://tools.ietf.org/html/rfc6532) from being usable would be non-conforming.

(Klensin, 2014-12-05, after a call for comments about the general principles on the mailing list and with suggestions from Arnt Gulbrandsen and Martin Dürst. The first paragraph above and some of the rest were just pasted out of email messages; some editing would be probably be desirable.)

## [RFC 6857](http://tools.ietf.org/html/rfc6857) (Post-delivery message downgrading)
There is one issue with this RFC, and it concerns the Return-Path header field. The example in Appendix A shows the Return-Path field being converted to group syntax ( ENCODED-WORD :; ) in accordance with section 3.2.1; however, in reality, the Return-Path field can't be so converted. This is because Return-Path is defined as a "path" ("angle-addr" or an empty pair of angle brackets) and not an "address", doesn't contain a "phrase", and isn't an unstructured header field, so the encoded word in Return-Path can't occur where it does in the example.

There are three possible solutions that ought to be discussed:

- Extending the Return-Path field to allow group syntax, but with limited use, as is done for the From and Sender header fields; or
- Reinstating the Downgraded-Return-Path header field for use in case the Return-Path header field can't be converted to ASCII in any other way; or
- Simply deleting the header field when it contains non-ASCII characters (note that Return-Path is optional under sec. 3.6.7 of [RFC 5322](http://tools.ietf.org/html/rfc5322)).

(poccil14 at gmail.com, 2014-04-14)

Another issue is that disposition notifications are not affected by downgrading as currently specified, even though they can include Original-Recipient and Final-Recipient header fields just like delivery status notifications.

(poccil14 at gmail.com, 2014-05-21)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-12-05. It was migrated from the old Trac wiki on 2023-01-23.*