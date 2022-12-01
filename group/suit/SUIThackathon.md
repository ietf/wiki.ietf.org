---
title: SUIT Hackathon
description: SUIT virtual hackathon
published: true
date: 2022-12-01T15:32:55.682Z
tags: 
editor: markdown
dateCreated: 2022-12-01T15:29:48.109Z
---

The [IETF SUIT WG](https://datatracker.ietf.org/wg/suit) is holding a virtual Hackathon to encourage developers to discuss, collaborate and develop utilities, ideas, sample code and solutions that show practical implementations of SUIT documents.

**When:** July 13, 2020  1400 UTC / 1000 EDT / 0700 PDT through the same time 24 hours later

**WebEx Link to join:** https://ietf.webex.com/webappng/sites/ietf/meeting/download/f93ec7c5bb2c420bbf3c074aaf6985bc?siteurl=ietf&MTID=m2de2c5849bc2555389a1e860a94be7da


|**Name**|**Email Address**|**Comments**|
|---|---|---|
|Russ Housley|housley@vigilsec.com| |
|Dave Thaler|dthaler@microsoft.com| |
|Hannes Tschofenig|hannes.tschofenig@arm.com| |
|Brendan Moran|brendan.moran@arm.com| |
|Michael Richardson|mcr@sandelman.ca| |
|Yuichi Takita|takita.u1.535@gmail.com| |
|Kohei Isobe|isobekohei@gmail.com| |
|Tadahiko Ito|tadahiko.ito.public@gmail.com| |
|Akira Tsukamoto|akira.tsukamoto@aist.go.jp| |
|Kuniyasu Suzaki|k.suzaki@aist.go.jp| |
|Tsukasa Oi| tsukasa.ooi@aist.go.jp | |
|Mingliang Pei| mingliang.pei@broadcom.com | |
|Koen Zandberg|koen.zandberg@inria.fr| |

**Sign Up:**


## IPR and Code Contribution Guideline
All hackathon participants are free to work on any code. The rules regarding that code are what each participant's organization and/or open source project says they are. The code itself is not an IETF Contribution. However, discussions, presentations, demos, etc., during the hackathon are IETF Contributions (similar to Contributions made in working group meetings). Thus, the usual IETF policies apply to these Contributions, including copyright, license, and IPR disclosure rules.

## Projects Included in Hackathon (add your project using the template provided at end of project list)

**Add support for HSS/LMS digital signatures**

* Champion(s)
  * Russ Housley
* Project(s)
  * Sign manifests in suit-tool
  * Validate signatures in suit-bootloader

**Use of SUIT Manifest in TEEP**

* Champion(s)
  * Dave Thaler <dthaler@microsoft.com>
* Project(s)
  * The [TEEP Protocol](https://tools.ietf.org/wg/teep/draft-ietf-teep-protocol/) uses the SUIT manifest to express dependencies and installation steps for code/data to be installed into a Trusted Execution Environment.  This project is to start implementing use of the SUIT manifest in a [TEEP project](https://github.com/dthaler/OTrP).

**Encrypted TA binaries**

* Champion(s)
  * Hannes Tschofenig <hannes.tschofenig@arm.com>
* Project(s)
  * I want to use Java for the TAM and a regular C client for the TEEP Agent and the TEEP Broker (without OP-TEE for the moment and not integrated into the Open Enclave SDK). I would like to test interoperability of the TEEP protocol and the manifest with the other implementations. In the end, I would like to implement and test encrypted TA binaries and encrypted personalization data. I am planning to re-use the manifest generation tool and the manifest parser Brendan wrote. 

**TAM and TEEP Agent using SUIT Manifest**

* Champion(s)
  * Yuichi Takita <takita.u1.535@gmail.com>
* Project(s)
  * This project tries to implement TAM and TEEP Agent using SUIT Manifest.
  * TAM implementation of TEEP Protocol supporting SUIT manifest on Node.js.
  * TEEP Agent implementation of TEEP Protocol and SUIT manifest parser for OP-TEE environment.
  * These implementation are published on github.
* Achievement
  * We created an example !TrustedAppInstall message with Manifest.
  * Success to sign, verify, decode the message.
  * The Manifest is compliant with !draft-ietf-suit-manifest-07.
  * TAM : https://github.com/ko-isobe/tamproto
  * TEEP Agent : https://github.com/yuichitk/libteep
  * Manifest Parser : https://github.com/yuichitk/libcsuit


**ADD YOUR PROJECT HERE**

### Template

Note: you must login to the wiki to add content.

**TEMPLATE:** Copy/paste and update the following template to add your project to the list above:

**Your-Technology-Name**

* Champion(s)
  * tbd
* Project(s)
  * tbd
