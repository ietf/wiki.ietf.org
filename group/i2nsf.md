---
title: I2NSF WG - Interface to Network Security Functions
description: Wiki for I2NSF WG
published: true
date: 2023-02-14T22:51:35.638Z
tags: 
editor: markdown
dateCreated: 2022-12-09T21:19:32.287Z
---

# Interface to Network Security Functions (I2NSF) Working Group Overview

A Network Security Function (NSF) is a function used to ensure integrity, confidentiality, or availability of network communications, to detect unwanted network activity, or to block or at least mitigate the effects of unwanted activity. NSFs are provided and consumed in increasingly diverse environments. Users could consume network security services enforced by NSFs hosted by one or more providers, which may be their own enterprise, service providers, or a combination of both. Similarly, service providers may offer their customers network security services that are enforced by multiple security products, functions from different vendors, or open source technologies. NSFs may be provided by physical and/or virtualized infrastructure. Without standard interfaces to control and monitor the behavior of NSFs, it has become virtually impossible for providers of security services to automate service offerings that utilize different security functions from multiple vendors.

The goal of ***I2NSF*** is to define a set of software interfaces and data models for controlling and monitoring aspects of physical and virtual Network Security Functions (NSFs), enabling clients to specify rulesets. If the working group finds it necessary to work on an information model before the data models, to help provide guidance and derive the data models, it may do so. The working group will decide later whether the information model needs to be published as an RFC. Other aspects of NSFs, such as device or network provisioning and configuration, are out of scope. As there are many different security vendors or open source technologies supporting different features and functions on their devices, I2NSF will focus on flow-based NSFs that provide treatment to packets/flows, such as Intrusion Protection or Detection System (IPS/IDS), web filtering, flow filtering, deep packet inspection, or pattern matching and remediation.

The WG's charter is being periodically updated and can be found at [I2NSF charter](https://datatracker.ietf.org/wg/i2nsf/charter/).

## Working Group Status

All the **I2NSF** documents are accessible and listed [here](https://datatracker.ietf.org/wg/i2nsf/documents/).

Presentations of the Sept 6 2017 I2NSF Interim discussing SDN Controlled IPsec Key https://datatracker.ietf.org/meeting/interim-2017-i2nsf-01/session/i2nsf.

Video Recording of the Sept 6 2017 I2NSF Interim discussing SDN Controlled IPsec Key management https://ietf.webex.com/ietf/ldr.php?RCID=04303a15dda9bff7d8011a253800736e.

## Implementation and Source Code

* I2NSF Framework Project -- [Code](https://codestand.ietf.org/codestand/matches/23/16)
* IETF 97 Hackathon Guide -- [Slides](https://github.com/kimjinyong/i2nsf-framework/blob/master/Hackathon/Doc/All%20about%20Hackathon.pptx/) and [Source Code](https://github.com/kimjinyong/i2nsf-framework/)
* I2NSF framework for Snort IDS -- [Code](https://github.com/RGanduri/I2NSFframework) 

## Industry Events

* Software Defined Secure Networks -- [Presentation](https://github.com/Rajaganduri/ISOCORE-2016-NANOG-68/blob/master/ISOCORE-Software%20Defined%20Secure%20Netwroks.pdf/) at ISOCORE 2016 by Juniper Networks
* Using IETF I2NSF to mitigate DDoS attacks-- [Presentation](https://github.com/Rajaganduri/ISOCORE-2016-NANOG-68/blob/master/NANOG68%20-%20Using%20IETF%20I2NSF%20to%20Mitigate%20DDoS.pdf/) at NANOG 68 by Linda Dunbar 

## Gallery

IETF 97 Hackathon - I2NSF

![img_3017.2.jpg](/img_3017.2.jpg)


## Contacts

Any questions or suggestions regarding I2NSF's work can be directed to the [I2NSF mailing list](https://www.ietf.org/mailman/listinfo/i2nsf/).



&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-06-09. It was migrated from the old Trac wiki on 2023-02-14.*
