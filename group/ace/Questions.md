---
title: ACE: Exploring the Problem Space
description: 
published: true
date: 2023-01-12T00:40:27.691Z
tags: 
editor: markdown
dateCreated: 2023-01-12T00:39:53.544Z
---

# ACE: Exploring the Problem Space 

1. What categories of constrained devices do we want to support (cf. http://tools.ietf.org/rfc/rfc7228)?
 * C0 (data size << 10 KiB, code size << 100KiB) and above
 * C1 (data size ~ 10 KiB, code size ~ 100KiB) and above
 * C2 (data size ~ 50 KiB, code size ~ 250 KiB) and above
 * What are the smallest devices we are going to support (RAM, ROM, etc)?

2. What are the limitations of constrained devices?
 * Limited RAM, ROM
 * No user interfaces
 * Unable to precisely measure time
 * Limited ability to send / receive messages
 * Limited Energy
 * Are the limitations always the same?
3. Which configurations of constrainedness do we want to consider?
 * C and RS are constrained
 * C is constrained but RS is not
 * RS is constrained but C is not	
4. What can we gain from introducing less constrained actors?
 * Translate complex policies into authorization tokens which are easy to validate
 * Providing the owner's policies without user interaction at the time of authorization
 * Attribute Validation (does the entity in possession of a certain key really posses the claimed attributes)
 * Providing a user interface to owners
 * Time Keeping
5. What are the limitations of less constrained actors?
6. What limitations of underlying protocols do we have to consider?
 * Frame size
7. What are the application security requirements for the communication between constrained nodes?
 * Integrity
 * Confidentiality
 * Non-Repudiation
 * Privacy
 * ...
 * Are all of these always needed?
8. Which level of security is needed on the devices (high, middle, low)?
 * Do we need the constrained devices to have unique identities?
 * Do we always need devices to be tamper-proof?
 * Do we need tamper detection/auditing?
   * Logging / Protection of Logs / Purging
 * Do we need end to end security?
9. How do the constraints of the nodes influence the protocols to be used?
10. Can we find a single protocol which supports all kinds of devices in every part of the architecture?
 * Communication between two constrained devices
 * Communication where one endpoint is constrained
 * Communication between less constrained devices as needed to transmit the authorization information
11. What roles do proxies have that we want to support?
 * Reverse proxies
 * Forward proxies
 * Cross-protocol proxies
12. Do we need authorization without user interaction?
13. Which constraints concerning the connectivity of devices do we want to support?
 * "Offline" authorization (only some devices are "online", no device is online, etc)
    * RS may not be able to communicate with AS at the time of the request from C.
    * C may not be able to communicate with AM at the time of the request.
    * C may not be able to communicate with AS at the time of the request.
    * C must be able to act on RS when both are disconnected from everything
 * Intermittent connectivity
 * Latency
 * Special connectivity requirements (e.g. unidirectional links)
 * Sleepy Devices
14. Do we need to consider problems concerning the lifecycle of devices other than the operational phase?
 * Commissioning
 * Maintenance
 * Decommissioning
 * Handover
15. Do we need to consider specific threats?
 * Session intercept / hijacking
 * Monitoring
 
 &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-07-29. It was migrated from the old Trac wiki on 2023-01-05.*

