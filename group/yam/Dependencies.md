---
title: Dependencies
description: 
published: true
date: 2023-01-21T03:47:25.438Z
tags: 
editor: markdown
dateCreated: 2023-01-21T03:47:21.380Z
---

# Dependencies
This is a synopsis of the dependencies each of our documents have on each other.

| RFC+Title                                  | Dependencies                                         |
|--------------------------------------------|------------------------------------------------------|
| [4409](http://tools.ietf.org/html/rfc4409) Message Submission                    | smtp                                                 |
| [5321](http://tools.ietf.org/html/rfc5321) SMTP                                  | imf                                                  |
| [5322](http://tools.ietf.org/html/rfc5322) Internet Message Format               | none                                                 |
| [2045](http://tools.ietf.org/html/rfc2045) MIME 1: format of message bodies      | none                                                 |
| [2046](http://tools.ietf.org/html/rfc2046) MIME 2: media types                   | none                                                 |
| [2047](http://tools.ietf.org/html/rfc2047) MIME 3: message header extensions     | imf, mime 1/2/4/5                                    |
| [2049](http://tools.ietf.org/html/rfc2049) MIME 5: conformance criteria          | smtp, imf, mime 1/2/3/4/5                            |
| [1864](http://tools.ietf.org/html/rfc1864) Content-MD5                           | mime 1                                               |
| [1652](http://tools.ietf.org/html/rfc1652) 8BITMIME                              | mime 1/3                                             |
| [3282](http://tools.ietf.org/html/rfc3282) Content-language                      | mime 1/2/3/4/5, imf                                  |
| [3461](http://tools.ietf.org/html/rfc3461) DSNs (smtp.dsn)                       | smtp, imf, msg.fmt.dsn                               |
| [3462](http://tools.ietf.org/html/rfc3462) Multipart/Report?                     | smtp, imf, msg.fmt.dsn, mime 2, smtp.dsn             |
| [3463](http://tools.ietf.org/html/rfc3463) Enhanced Status Codes                 | smtp, smtp.dsn                                       |
| [3464](http://tools.ietf.org/html/rfc3464) Message Format for DSNs (msg.fmt.dsn) | dsn, mime 1/3, smtp.dsn, imf, smtp                   |
| [3798](http://tools.ietf.org/html/rfc3798) Message Disposition Notification      | smtp, imf, mime 1/2/3, multiport/report, msg.fmt.dsn |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-08-10. It was migrated from the old Trac wiki on 2023-01-20.*