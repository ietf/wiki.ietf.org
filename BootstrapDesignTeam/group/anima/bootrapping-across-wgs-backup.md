---
title: Bootstrapping Across WGS BackUp
description: 
published: true
date: 2023-01-30T22:36:49.676Z
tags: 
editor: markdown
dateCreated: 2023-01-30T22:36:45.500Z
---

DO NOT USE THIS PAGE. IT IS JUST A BACKUP FOR THE ETHERPAD. USE: http://etherpad.tools.ietf.org:9000/p/bootstrapping-across-wgs

Purpose

This etherpad page is designated to track the status of (zero-touch) (secure) bootstrap activites and intent across IETF working groups (and beyond).

Cross group

https://www.ietf.org/proceedings/92/slides/slides-92-anima-4.pdf = https://tools.ietf.org/html/draft-he-6lo-analysis-iot-sbootstrapping-00

Survey of bootstrap mechanisms presented @ANIMA, IETF92. Author(s) have since moved on (dead draft), but still goo data to review.

SAAG

"Security Area Advisory Group"

Every? workng groups in the IETF have a security advisor. These report and coordinate back activities via SAAG. SAAG meets at each IETF, look for SAAG or "Security Area Open Meeting"

https://www.ietf.org/proceedings/93/slides/slides-93-saag-1.pdf (Lack of automated EAP configuration)

Max Pritikin: This is a call for a bootstrapping config method for enterprise EAP use cases, with a pointer to existing XML based config files. Weakly related to ANIMA discussions.

Anima

http://trac.tools.ietf.org/wg/anima/trac/wiki/Bootstrap

The ANIMA WG bootstrap effort targets to provide (with charter as of 01/2015) to provide "zero-touch" bootstrap for autonomic devices. This work is done by the anima-bootstrap@… design team. The design-team charter also includes the goal (as much as feasible) to create a bootstrap mechanism that is reuseable by other working groups in the IETF.

As of IETF93, ANIMA bootstrap collaborates with NETCONF zero-touch bootstrap effort and attempts to build out a common framework inclusive of both groups goals.

NETCONF

6BAND

Non-WG mailing list formed by 6LO participants.

https://mailarchive.ietf.org/arch/search/?email_list=6band

Mailing list announcement:

The scope of this mailing list is mainly to address threat analysis of 6lo networks, secure bootstrapping and evaluating solutions for constrained node devices in constrained-L2-access technology networks. The problem scope is limited to secure network access/bootstrapping of the 6lo nodes. This interest group may also discuss interfaces between network layer and Application layer for sharing security association. The scope of this work does not include Application level security work . The goal is to identify existing candidate technologies or needs for new development of bootstrapping mechanisms.

Analysis re. relationship to ANIMA:

There is no clear use case discussion ("no clear constraints"). Anima charter paragraph 7 states: "The ANIMA working group focuses on professionally-managed networks" and provides examples. Can we see a similar statement from 6band.

Devices that are professionally managed would be in scope of anima --- but since anima bootstrapping is intended to provide a zero-touch solution we encourage continued conversation and the possibility of re-using the work in whatever the 6band scope turns out to be.

PLAN: wait out until their mailing list gets going and then approach them with this discussion. Anima bootstrap design team members enouraged to track work of 6BAND.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-07-30. It was migrated from the old Trac wiki on 2023-01-30.*