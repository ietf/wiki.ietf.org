---
title: draft-ietf-idr-rfc8203bis implementations
description: 
published: true
date: 2023-03-13T06:35:51.398Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:35:45.647Z
---

Implementers of draft-ietf-idr-rfc8203bis please fill out the following information: 

| implementation | version            | reported by | link                                                                                                                    |
|----------------|--------------------|-------------|-------------------------------------------------------------------------------------------------------------------------|
| Juniper        | Junos 19.1R1       | Jeff Haas   | https://www.juniper.net/documentation/en_US/junos/topics/reference/configuration-statement/protocols-bgp-shutdown.html  |
| OpenBSD        | OpenBGPD 6.6       | Job         | https://github.com/openbsd/src/commit/0521032199a5c6ef3fd42399ca72fff762336379                                          |
| CZ.NIC         | BIRD 1.6.8 / 2.0.6 | Job         | https://gitlab.labs.nic.cz/labs/bird/commit/7ff34ca2cb86f3947bf049f73e76e6ce5d57e4a8                                    |


draft-ietf-idr-rfc8203bis options 

| section |  function                                                               | Required |  JunOS supports | OpenBSD supports | BIRD supports  |
|---------|-------------------------------------------------------------------------|----------|----------------:|------------------|----------------|
| 2       | Subcode values- only 2 and 4                                            | MUST     | yes             | yes              | yes            |
| 2       | Send Shutdown messages in UTF-8                                         | MUST     | yes             | yes              | agnostic[2]    |
| 2       | Receive Shutdown messages in UTF-8                                      | MUST     | yes             | yes              | agnostic[2]    |
| 2       | Field is not NUL terminated                                             | MUST     | yes             | yes              | yes            |
| 2       | Shutdown reports included in syslog                                     | SHOULD   | no              | yes              | yes            |
| 4       | Error Handling includes error messages for invalid length               | SHOULD   | no [1]          | yes              | yes            |
| 4       | Error Handling includes error messages for invalid length with hex dump | SHOULD   | no [1]          | (yes/no))        | partial        |

 [1] - There is an open PR (defect report) covering reception of invalid UTF-8 sequences. The current behavior is to truncate overly long shutdown strings to the maximum permitted length prior to display. Upon fixing of the open issue, improperly formed UTF-8 characters will be trimmed.

[2] - Does not recode, will send and display UTF-8 correctly if CLI runs in terminal with UTF-8 active (which is almost always today) 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2020-04-15. It was migrated from the old Trac wiki on 2023-03-12.*