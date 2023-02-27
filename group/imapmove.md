---
title: IMAPMOVE WG (Concluded) - IMAP MOVE extension
description: Implementation experience for IMAP MOVE and UID MOVE commands
published: true
date: 2023-02-27T00:37:55.546Z
tags: 
editor: markdown
dateCreated: 2022-12-01T16:16:55.382Z
---

At least the following servers implemented the MOVE extension (draft-ietf-imapmove-command-05):

- Archiveopteryx
- Dovecot 2.2
- Cyrus 2.5 (devel branch)
- !WinGate
- Isode M-Box 16.0 (next release)
- Schlund (.de ISP/email provider)
- Earthlink
- o2.pl - older draft, but should be updated shortly.
- AOL and Zarafa - supports a semantically equivalent command to the MOVE but uses a different command/extension name.

At least the following clients implemented the MOVE extension:

Trojita [http://trojita.flaska.net/]
IMP [http://www.horde.org/imp/]
One other email client in the process of being written.
Thunderbird - implements what AOL supports.


Note in particular that the following changes in the document were made as a
result of implementation experience:

The use of COPYUID response code in untagged OK (instead of tagged OK) was made in order to avoid confusing clients by EXPUNGEs that would always precede the tagged OK response.

The discussion about restrictions on pipelining MOVE/UID MOVE commands were brought up
by the developer of the Trojita email client.

Additional text about interaction with RFC 4314 (IMAP ACL extension) and RFC 5162 (IMAP QRESYNC extension) was added based on experience implementing MOVE in several IMAP servers.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2013-01-16. It was migrated from the old Trac wiki in 2023.*
