---
title: Mailing List Manager Modeling Exercise
description: 
published: true
date: 2023-02-27T03:14:14.791Z
tags: 
editor: markdown
dateCreated: 2023-02-27T03:14:14.791Z
---

# Mailing List Manager Modeling Exercise

Given an MLM model, we should be able to compare and contrast behaviors with some degree of consistency.

## Authentication

Using DKIM or SPF in order to authenticate posters is commonly neglected by MLM software. As a workaround, signing ML messages is among the few occurrences of end-user crypto that enjoy a noticeable diffusion. However, modern standards provide for hiding signatures inside MIME structures, which are typically altered by MLMs, so that MUAs can hardly display which parts are signed --it was better when it was worse.

DKIM and SPF validation options can be stored among a subscriber's preferences, setting their initial values on first use. ​DKIM&ML provides for non-authenticated messages to be held for moderation or rejected outright. None of the models below do so.

## Models
### SMTP compliant ML

[SMTP](http://tools.ietf.org/html/rfc5321#section-3.9) distinguishes ML "explosion" from alias expansion. MLMs replace the Reverse-path in order to relief list posters from delivery details that they're not interested in, since they have no say on what addresses the list contains.

MLMs modify no other part of the envelope, and don't touch the content. That way, they are DMARC compatible (they just dis-align SPF).
### Classical ML

The "continuation in email transit" model provided by SMTP has been progressively driven into full blown MLMs, which perform additional, sometimes extensive, modifications to a message and its envelope. Typically:

|   part   |     field    |               content               |
|:--------:|:------------:|:-----------------------------------:|
|  tag     |  Subject:    |  List identifier                    |
|          |  To: or Cc:  |  the order of recipients may vary   |
|  footer  |  Body        |  List info, legal boilerplate       |
{.dense}

As DKIM was designed assuming SMTP compliance, Classical ML likely break signatures.
### BBS style mailings

These include forums and web-based groups as well as issue tracking systems. Posts can be addressed toward specific sections of a collective work. From: can be the poster's name and address; in that case, they have the same problem as Classical ML. It seems that an author's email address in From: is definitely more appealing than the list name.

### Dynamic lists

Another case is [dynamic lists](http://systers.org/wiki/doku.php/good_to_know), featuring well-defined threads. They change the address to listname+new@domain for new threads. They have the same problem as Classical ML, of course. The interesting point is their search for a new ML model.
### Ugly hack

Advent of DMARC and large mail domains obnoxiously publishing strong policies required some workaround. For example:

|      part      |  field  |                                                                             content                                                                             |
|:--------------:|:-------:|:---------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|  Domain        |  From:  |  If the original From:  domain publishes a strong DMARC policy, the domain is changed by  appending a different two (or more) extra labels to the domain name   |
|  other fields  |         |  See classical ML                                                                                                                                               |
{.dense}

Installation is DNS-intensive. The resulting behavior is uneven and difficult to understand.
### Publishing house metaphor

This is an untested idea, so it's described in greater detail. The point is not to convince anyone to marry it, but to show that it is possible to redesign a MLM anew, such that its behavior is coherent and uniform, yet minimizing changes. As the result is SMTP-compliant, DMARC won't hinder delivery.


|         part         |    field   |                                                                                                                                                                       content                                                                                                                                                                      |                                                                                                                        why                                                                                                                         |
|:--------------------:|:----------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------:|
|  Display phrase      |  From:     |  List tag + Author name (from subscription, display phrase, or whatever)                                                                                                                                                                                                                                                                           |   Conveys the right info in a MUA's message list.  The list tag is  necessary to avoid messing up with the address book.  Semantically, a  publisher tag is appropriate in this field.  For example, the ietf-dmarc  list could have [ietf] here   |
|  Local part          |  From:     |  The List-Post: address, possibly extended with a thread-id                                                                                                                                                                                                                                                                                        |  Reply-to-author button works the same as Reply-to-list                                                                                                                                                                                            |
|  Domain              |  From:     |  The list domain                                                                                                                                                                                                                                                                                                                                   |  MLMs who alter messages need to be viewed as full MUAs which accept a delivery and post a new message (per Section 3.9.2 of RFC 5321)                                                                                                             |
|  tag                 |  Subject:  |  Traditional tag or thread-id                                                                                                                                                                                                                                                                                                                      |   Since a tag already appears in the display phrase, there is no need to  duplicate it.  For example, the ietf-dmarc list could have [dmarc] here                                                                                                  |
|  1st recipient       |  To:       |  The original From: field                                                                                                                                                                                                                                                                                                                          |  Reply-all  button works as expected.  Semantically, it makes sense to deliver the  first copy to the author, just like some publishers of printed works do.                                                                                       |
|  further recipients  |  To:       |  The original To:,  shifted one place to the right, but strike the one with the list  address and avoid duplicates.  If threads are tracked, the last few  authors can be added here even if the poster didn't, for informative  purposes, complementary to in-body quotations.  Anyway, this munging  doesn't affect the actual list explosion.   |                                                                                                                                                                                                                                                    |
|  Author              |  Author:   |  The original From:, saved for any use as per RFC 9057.                                                                                                                                                                                                                                                                                            |                                                                                                                                                                                                                                                    |
{.dense}


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2022-08-28. It was migrated from the old Trac wiki on 2023-02-26.*