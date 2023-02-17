---
title: EMAN Implementations
description: 
published: true
date: 2022-12-02T16:38:36.216Z
tags: 
editor: markdown
dateCreated: 2022-12-02T16:37:11.945Z
---

## Implementation Status Sections

As per RFC6982, a WG may maintain the Implementation Status details in a Wiki (here) and reference the Wiki in the WG documents.

These sections record the status of known implementations of the protocols defined by specifications at the time of posting of the WG Internet-Drafts, and is based on a proposal described in RFC6982. The description of implementations in this section is intended to assist the IETF in its decision processes in progressing drafts to RFCs. Please note that the listing of any individual implementation here does not imply endorsement by the IETF. Furthermore, no effort has been spent to verify the information presented here that was supplied by IETF contributors. This is not intended as, and must not be construed to be, a catalog of available implementations or their features. Readers are advised to note that other implementations may exist. According to RFC 6982, "this will allow reviewers and working groups to assign due consideration to documents that have the benefit of running code, which may serve as evidence of valuable experimentation and feedback that have made the implemented protocols more mature. It is up to the individual working groups to use this information as they see fit".

**draft-ietf-eman-framework**

**Cisco Proprietary MIB**

Organization: Cisco Systems, Inc.

Name: ciscoEnergyWiseMib 1.3.6.1.4.1.9.9.683

Description: Proprietary enegry management MIBs developed and deployed for Cisco's swithcing and ROuting products along with information from attached devices.

Maturity: production 2008, widely used

Coverage: These MIBs predate the WG and are incorporated into the framework and MIB drafts.

Licensing: proprietary but freely distributed

Implementation experience: Incorperated into WG documents and comments on the mailing list.

Contact: ask-energywise@…

URL: ​ftp://ftp.cisco.com/pub/mibs/v2/CISCO-ENERGYWISE-MIB.my

**Cisco EnergyWise and Partners**

Organization: Cisco Systems, Inc.

Name: Cisco EnergyWise? (tm)

Description: An information model and protocol for energy management. Includes a partner program that has approximately 100 members implmenting the model in devices and energy management systems. See ​http://www.cisco.com/en/US/prod/switches/ps5718/ps10195/energywise_partner_ecosystem.html

Maturity: production 2009, widely used (approx 100 partners)

Coverage: The infomraiton model predates the WG and experience from this program is incorporated in the framework draft.

Licensing: Proprietary, Partner libraries a available via registration in program.

Implementation experience: Incorperated into WG documents and comments on the mailing list.

Contact: ask-energywise@…

URL: http://developer.cisco.com/web/esdk http://www.cisco.com/en/US/docs/solutions/Enterprise/Borderless_Networks/Energy_Management/energywisedg.html

**Python**

Priyanka Rao mentioned on the mailing list (http://www.ietf.org/mail-archive/web/eman/current/msg02063.html) that she has an python implementation.

draft-ietf-energy-aware-mib

**SNMP Research**

Organization: SNMP Research, Inc.

Maturity: Prototype based upon early drafts of the MIBs. We anticipate updating it to more recent documents as development schedules allow.

Coverage: Code was generated to implement all MIB objects in ENTITY-MIB (Version 4)

ENERGY-OBJECT-CONTEXT-MIB
ENERGY-OBJECT-MIB
POWER-CHARACTERISTICS-MIB
BATTERY-MIB
Implementation experience: The documents are implementable.

Comments: Technical comments about the MIBs were submitted to the EMAN Working Group E-mail list.

Licensing: Proprietary, royalty licensing

Contact: Alan Luchuk, luchuk at snmp.com

URL: http://www.snmp.com/