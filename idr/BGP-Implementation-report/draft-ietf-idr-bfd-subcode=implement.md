---
title: draft-ietf-idr-bfd-subcode Implementation report 
description: IDR report on Vendor's implementations for draft-ietf-idr-bfd-subcode 
published: true
date: 2022-11-27T23:45:51.370Z
tags: 
editor: markdown
dateCreated: 2022-11-27T23:37:19.562Z
---

# draft-ietf-dir-bfd-subcode Implementation Report

## Author(s)
Jeff Haas (jhaas@juniper.net) - for Juniper implementatino 
Bill Fenner - for Arista implementaitno 

## Implementations 


| Vendor     | Software Version | Contact | 
|---|---|---|
| Juniper    |	22.3R1	| Jeffrey Haas |
| Arista Networks |	4.29.0 |	Bill Fenner |


## Conformance

### Juniper
Section 2:

- When a BGP session is terminated due to a BFD session going into the Down state, the BGP Speaker SHOULD send a NOTIFICATION message with the Error Code Cease and the Error Subcode "BFD Down".

**Conformant.**

Section 3:

- When there is a total loss of connectivity between two BGP Speakers, it may not be possible for the NOTIFICATION message to have been sent. Even so, BGP speakers SHOULD provide this reason as part of their operational state; e.g. bgpPeerLastError in the BGP MIB. [RFC4273](https://datatracker.ietf.org/doc/rfc4273/)
- 
**Conformant.**

When the procedures in [RFC8538](https://datatracker.ietf.org/doc/rfc8438) for sending a NOTIFICATION message with a Cease Code and Hard Reset Subcode, and the session is being terminated because BFD has gone Down, the BFD Down Subcode SHOULD be encapsulated in the Hard Reset's data portion of the NOTIFICATION message.

**Conformant.**

### Arista Networks

Section 2:

-  When a BGP session is terminated due to a BFD session going into the Down state, the BGP Speaker SHOULD send a NOTIFICATION message with the Error Code Cease and the Error Subcode "BFD Down".

**Conformant.**

Section 3:

- When there is a total loss of connectivity between two BGP Speakers, it may not be possible for the NOTIFICATION message to have been sent. Even so, BGP speakers SHOULD provide this reason as part of their operational state; e.g. bgpPeerLastError in the BGP MIB. [RFC4273](https://datatracker.ietf.org/doc/rfc4273/)

**Conformant.**

When the procedures in [RFC8538](https://datatracker.ietf.org/doc/rfc8438) for sending a NOTIFICATION message with a Cease Code and Hard Reset Subcode, and the session is being terminated because BFD has gone Down, the BFD Down Subcode SHOULD be encapsulated in the Hard Reset's data portion of the NOTIFICATION message.

**Conformant.**

## Tools 
tcpdump pull request at [https://github.com/the-tcpdump-group/tcpdump/pull/988](https://github.com/the-tcpdump-group/tcpdump/pull/988)


