---
title: Maastricht Workshop
description: 
published: true
date: 2023-01-10T22:55:09.388Z
tags: 
editor: markdown
dateCreated: 2023-01-10T01:07:33.580Z
---

# Multipath TCP Implementors Workshop 
Saturday 24th July, 2pm start (ends about 6pm), London room (0.1) on the lower level.
NOTE ROOM CHANGE!!
The room is at “MECC”, the IETF venue, on Level 2
Note, limited room size, registration required to mptcp-chairs@…
Jabber Log http://trac.tools.ietf.org/wg/mptcp/trac/attachment/wiki/Maastricht_workshop/2010-07-24.txt 2010-07-24.txt
## Agenda
1. Intro, background, assumptions - Philip Eardley [slides](http://trac.tools.ietf.org/wg/mptcp/trac/attachment/wiki/Maastricht_workshop/IETF-78-maastricht-workshop-intro.ppt)
2. Demo of Linux implementation - Sebastien Barre
3. Use cases discussion –

- AIM: how to improve MPTCP's design to increase its usefulness? what are the most likely apps? what ones are easiest to deploy first?
- Mobility - discussion led by Lars Eggert

[slides](http://trac.tools.ietf.org/wg/mptcp/trac/attachment/wiki/Maastricht_workshop/2010-mptcp-ietf78m.pdf)

- Data centres - discussion led by Costin Raicu

[slides](http://trac.tools.ietf.org/wg/mptcp/trac/attachment/wiki/Maastricht_workshop/mptcp-dc-ietf.pdf)
4. OS implementation – discussion led by Sebastien Barre and Costin Raicu

[slides](http://trac.tools.ietf.org/wg/mptcp/trac/attachment/wiki/Maastricht_workshop/mtcp_impl_small.pdf)

Robert Watson's slides on Offload [slides](http://www.informatics.sussex.ac.uk/research/projects/ngn/slides/msn10talks/watson-stack.pdf)
- AIM: how to improve the chances that MPTCP makes its way into OSes? what are the requirements, constraints and potential stumbling blocks on the various platforms? what adjustments to the protocol design could lower the deployment barriers?
- Changes to linux kernel – new /modified functions, implementation difficulty, status, priorities
- how to get into mainline Linux kernel
- how to get into other OS
## Registrations
Jinmei Tatuya Rolf Winter; Ford, Alan; Costin Raiciu; Olivier Bonaventure; Sébastien Barré; Luigi Iannone; Iljitsch van Beijnum; ; Laganier, Julien ; Erik Nordmark ; Scheffenegger, Richard; Zhen Cao ; Hui Deng ; Salvatore Loreto ; Tim Shepard ; Javier Ubillos ; SCHARF, Michael ; Lars Eggert; marcelo bagnulo braun; Robert N. M. Watson (or by webex)

philip eardley, Yoshifumi nishida

Tentative: Nandita Dukkipati ; Christian Vogt

Webex: Lawrence Stewart; Mike Silbersack; Ananth Ramaiah; deepak.kumar-gupta; Ehsan Elahi

## feedback from remote participants
[email-1](http://www.ietf.org/mail-archive/web/multipathtcp/current/msg00965.html)[email-2](http://www.ietf.org/mail-archive/web/multipathtcp/current/msg00961.html)

### more detailed agenda ideas
- intro material [20-30mins incl demo]
	- objective of workshop [PHIL] 
	- MPTCP - what it is, motivation o working assumptions
- demo - hopefully the new Linux MPTCP N900 demo [SEBASTIEN, SERGIO]
	- say there's code available, 'reference' implementation etc
- potential uses [~1.5hours]
	- AIM: how to improve MPTCP's design to increase its usefulness? what are the most likely apps? what ones are easiest to deploy first? 
	- outline of potential use cases o how might impact protocol design - 
	- detailed discussion on mobility [LARS TO LEAD] 
	- detailed discussion on data centres [COSTIN TO LEAD]
	- other use cases? - Open discussion
	- anything else?

- implementation in OS [~1.5hours]
[SEBASTIEN, COSTIN TO LEAD]

*

- AIM: how to improve the chances that MPTCP makes its way into OSes? what are the requirements, constraints and potential stumbling blocks on the various platforms? what adjustments to the protocol design could lower the deployment barriers?
- outline of how current protocol design maps into current code design (may need a bit more detail about protocol?)
- Changes to linux kernel required. Perhaps as follows:
	- what functions need modifying or adding?
	- what's the status of each of these? Ie what are working & compliant with the I-D vs written vs not yet done
	- how hard is each to implement [implementation effort] 
	- [hopefully] an idea of cost, in terms of CPU, memory etc 
	- other issues?
	- get prioritisation from OS people on which functions must be completed vs could wait

- how to get into mainline Linux kernel - stumbling blocks, steps involved etc -Interactive discussion
	- OS community input on the process through which code can get approved into the OS 
-	specific input for each OS
- anything else?
Attachments: [2010-mptcp-ietf78m.pdf](/2010-mptcp-ietf78m.pdf) [ietf-78-maastricht-workshop-intro.ppt](/ietf-78-maastricht-workshop-intro.ppt) [mptcp-dc-ietf.pdf](/mptcp-dc-ietf.pdf) [mtcp_impl_small.pdf](/mtcp_impl_small.pdf)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2010-08-12. It was migrated from the old Trac wiki on 2023-01-09.*