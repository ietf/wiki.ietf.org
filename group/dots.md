---
title: DOTS WG - DDoS Open Threat Signaling
description: 
published: true
date: 2023-03-27T09:25:22.106Z
tags: wg
editor: markdown
dateCreated: 2022-12-08T22:29:45.543Z
---

# DOTS Working Group

The aim of [DDoS Open Threat Signaling (DOTS)](https://datatracker.ietf.org/wg/dots/about/) is to develop a standards based approach for the realtime signaling of DDoS related telemetry and threat handling requests and data between elements concerned with DDoS attack detection, classification, traceback, and mitigation.

## DOTS in GitHub 
The working group authors use the [dotswg](https://github.com/dotswg/) project in [github](https://github.com/ ) for working versions of the documents and to track issues.  Each document uses a distinct repository.

* [draft-ietf-dots-requirements](https://github.com/dotswg/dots-requirements) ([Issues](https://github.com/dotswg/dots-requirements/issues))
* [draft-ietf-dots-use-cases](https://github.com/dotswg/dots-use-cases) ([Issues](https://github.com/dotswg/dots-use-cases/issues))
* [draft-ietf-dots-architecture](https://github.com/dotswg/dots-architecture) ([Issues](https://github.com/dotswg/dots-architecture/issues))
* [draft-ietf-dots-signal-channel](https://github.com/dotswg/dots-signal-channel) ([Issues](https://github.com/dotswg/dots-signal-channel/issues))
* [draft-ietf-dots-data-channel](https://github.com/dotswg/dots-data-channel) ([Issues](https://github.com/dotswg/dots-data-channel/issues))

## Implementations 

The following are implementations of DOTS.

| **Name** | **Language** | **Role** | [Signal Version](https://datatracker.ietf.org/doc/draft-ietf-dots-signal-channel/) | [Data Version](https://datatracker.ietf.org/doc/draft-ietf-dots-data-channel/) | **Comments/Features/Limitations** |  
| --- | --- | --- | --- | --- | --- |
| [go-dots](https://github.com/nttdots/go-dots) (NTT) |  Go  |  Client+Server  |  RFC 9132  |  RFC 8783  | |
| NCC Group | | Client+Server |  RFC 9132  |  RFC 8783  | |
| Arbor Networks | | Client |  -17  |  | |
{.dense}

If you are an implementer please let the working group know about your work and any issues you've found with the drafts by sending comments to the [mailing list](https://www.ietf.org/mailman/listinfo/dots ).

## Public Test Servers  
The following are public test servers for DOTS.

| **Name** | **Supported Versions** | **Access URL** | **Comments/Features/Limitations **|  
| --- | --- | --- | --- |
| Proprietary|  RFC9132 <br /> RFC8783 <br /> RFC8768 <br /> RFC8973 <br /> RFC9066 <br /> RFC9133 <br /> RFC9177 <br /> RFC9244 | Signal <br /> * coaps://dotsserver.jpshallow.com:4646 <br /> * coaps+tcp://dotsserver.jpshallow.com:4646 <br /><br /> Call-Home <br /> * coaps://dotscallhome.jpshallow.com:4647 <br /> * coaps+tcp://dotscallhome.jpshallow.com:4647 <br /> <br /> Data <br /> * https://dotsserver.jpshallow.com:443 | PKI support: Use Client and CA Certificates from [Certificates](https://github.com/nttdots/go-dots/tree/master/certs) for access <br /> Mitigation requests for 1.1.1.69, 1.1.1.71, and 1.1.2.0/24 supported |
{.dense}

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2022-04-09. It was migrated from the old Trac wiki on 2023-01-24.*
