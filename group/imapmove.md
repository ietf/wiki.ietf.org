---
title: IMAPMOVE WG Wiki
description: 
published: true
date: 2022-12-01T16:16:55.382Z
tags: 
editor: markdown
dateCreated: 2022-12-01T16:16:55.382Z
---

At least the following servers implemented the MOVE extension (draft-ietf-imapmove-command-05):[[BR]]

Archiveopteryx[[BR]]
Dovecot 2.2[[BR]]
Cyrus 2.5 (devel branch)[[BR]]
!WinGate[[BR]]
Isode M-Box 16.0 (next release)[[BR]]
Schlund (.de ISP/email provider)
Earthlink[[BR]]
o2.pl - older draft, but should be updated shortly.[[BR]]
AOL and Zarafa - supports a semantically equivalent command to the MOVE but uses a different command/extension name.[[BR]]

At least the following clients implemented the MOVE extension:[[BR]]

Trojita [http://trojita.flaska.net/][[BR]]
IMP [http://www.horde.org/imp/][[BR]]
One other email client in the process of being written.[[BR]]
Thunderbird - implements what AOL supports.[[BR]]


Note in particular that the following changes in the document were made as a
result of implementation experience:[[BR]]

The use of COPYUID response code in untagged OK (instead of tagged OK) was made in order to avoid confusing clients by EXPUNGEs that would always precede the tagged OK response.[[BR]]

The discussion about restrictions on pipelining MOVE/UID MOVE commands were brought up
by the developer of the Trojita email client.[[BR]]

Additional text about interaction with RFC 4314 (IMAP ACL extension) and RFC 5162 (IMAP QRESYNC extension) was added based on experience implementing MOVE in several IMAP servers.[[BR]]
