---
title: Embedded Devices
description: 
published: true
date: 2023-02-27T03:15:49.073Z
tags: 
editor: markdown
dateCreated: 2023-02-27T03:15:49.073Z
---

# Embedded Devices

Embedded devices often send email containing log entries or status reports. This page documents known issues with embedded devices sending email, with an eye towards describing issues with interoperability with DMARC.

No embedded device we've seen can apply DKIM signatures, so the mail needs to be recognized in some other way.

## Older devices

The simplest and oldest devices often have no mail configuration beyond the IP address of the mail server and the e-mail address to which the mail is sent. If the mail server is not on the same network as the device, special and usually ad-hoc means are needed to distinguish the device's mail from hostile relay attempts.

## Newer devices

These typically are full SUBMIT clients, and can configure sending and recipient e-mail addresses, server address, and login credentials. Key management remains a problem--does each device get its own credentials? How does an organization with 1000 printers or routers put the right credentials in each one?

## Security issues

Embedded devices tend not to be very secure. If devices all have submission credentials, they become an attractive target for malware. This could be somewhat mitiigated if the device credentials were limited to sending mail to specific addresses, but that adds complexity to the submission server and the key management.



&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-10-03. It was migrated from the old Trac wiki on 2023-02-26.*