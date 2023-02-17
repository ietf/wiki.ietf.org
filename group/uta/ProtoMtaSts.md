---
title: ProtoMtaSts
description: 
published: true
date: 2022-12-21T22:28:06.106Z
tags: 
editor: markdown
dateCreated: 2022-12-21T22:28:02.325Z
---

# STS in 60 Seconds…
SMTP MTA-STS is a mechanism enabling mail service providers to declare their ability to receive TLS-secured connections, to declare particular methods for certificate validation, and to request that sending SMTP servers report upon and/or refuse to deliver messages that cannot be delivered securely.
# Implementation Status
| Domain  | Policy                           | Fetching   | Reporting  | Enforcing |
|---------|----------------------------------|------------|------------|-----------|
| Google  | Policy Published ([DNS](https://mxtoolbox.com/SuperTool.aspx?action=txt%3a_mta_sts.gmail.com&run=toolpage) and [HTTPS](https://policy.mta-sts.google.com/.well-known/mta-sts/current)) | ETA 4Q2016 | ETA 4Q2016 | TBD 2017  |
| Comcast | Policy Published ([DNS](https://mxtoolbox.com/SuperTool.aspx?action=txt%3a_mta_sts.comcast.net&run=toolpage) and [HTTPS](https://policy.mta-sts.comcast.net/.well-known/mta-sts/current) | TBD        | TBD        | TBD 2017  |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-08-31. It was migrated from the old Trac wiki on 2022-12-21.*