---
title: Usage of X-Original-From
description: 
published: true
date: 2023-02-27T03:26:59.272Z
tags: 
editor: markdown
dateCreated: 2023-02-27T03:26:59.272Z
---


# Usage of X-Original-From

This X- header is used in various contexts around the Internet. This document attempts to capture known usage.

Note that Original-From is merely adding complexity to the 'who was the author of this message' assessment, very possibly creating yet-another security hole.

## X-Original-From to save the original From: field after altering it in order to pass DMARC

>   Google Apps currently implements "aliases" as Google Groups (this has been true for a number of years now, prior to that there were separate aliases and groups). Because of this, a support@twitter.com address that redirects to internal users or an external CRM tool (salesforce) would be getting a groups rewritten message. These messages will not pass DKIM due to the rewriting, and so if they're from a DMARC p=REJECT/QUARANTINE domain such as yahoo.com, the from header will be rewritten to be the group name (support@twitter.com) and the x-original-from will be the original sender.

Brandon Long on Tue, 23 September 2014 https://mailarchive.ietf.org/arch/msg/dmarc/Ql24idIHCpond8bobVdt8mkBgrg

## Usage in IETF mailing lists

For emails from p=reject domains:

-  The From header field of such emails will be rewritten to be under @dmarc.ietf.org domain (which will have a p=none policy). For example, "alexey@…" email address would become "alexey=40example.com@…".org". The original From header field will be preserved in the X-Original-From header field, which can be used for automatic message processing by Sieve and Mail User Agents. 

Alexey Melnikov on Fri, 11 May 2018 11:48 UTC https://mailarchive.ietf.org/arch/msg/ietf/fZzt1mhBPqxG93y05ruGmMey9x4/


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2020-09-29. It was migrated from the old Trac wiki on 2023-02-26.*