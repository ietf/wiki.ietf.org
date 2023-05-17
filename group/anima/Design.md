---
title: Design Teams
description: 
published: true
date: 2023-02-18T01:43:43.394Z
tags: 
editor: markdown
dateCreated: 2023-01-30T22:31:35.002Z
---

# Anima Design teams 
## General rules for design teams
Anima works on its deliverables primarily through design teams because the expertise for different areas of anima work are vastly different, and design teams are hoped to allow contributors to better focus on the area and WG documents they want to contribute to and therefore accelerate meeting anima deliverables.

The design teams are required to do their best to track their work in writing as good as possible - etherpad/wiki-entries/posting of meeting minutes/... and regularily debrief the main anima mailing list on the status of their work (eg: monthly).

If you want to be listed as a design team member, please discuss with the editors and WG chairs what you plan to contribute. Please also discuss your expectations of being recognized as a contributor or author in the deliverables with with them. We recommend you to read https://tools.ietf.org/html/draft-carpenter-whats-an-author.

You do NOT have to contribute to be subscribed to the design team mailing lists or to participate in their meetings: **ANIMA design teams are open to everybody without asking.**

Final decisions on working group charter items are ONLY made by the whole working group and on the working group list, but: if you do have opinions about the topics of a design team, PLEASE subscribe to the design team mailing list and provide your opinions directly to the design team when the work happens.

If you have specific desires against the design teams work but not the bandwidth to continuously engage, just bring this up on the design team mailing list and it should happily track your issues.

## Initial design teams
[Signaling Design Team](/group/anima/SignalingDesignTeam)

[Bootstrap Design Team](/group/anima/BootstrapDesignTeam)

ACP design team (never formally created)

## How work is split up across design teams
Overall assignment/responsibilities of design teams for charter items are tracked in the following etherpad. Because etherpad is too easily subject to vandalism, we keep the latest wg-chair reviewed copy below:

http://etherpad.tools.ietf.org:9000/p/anima-structure?useMonospaceFont=true

- A common way to identify nodes to facilitate privacy and integrity of other ANIMA protocols
	- Owned / Defined by bootstrap design team
		- Provides secure zero-touch enrollment
		- Provides IEEE 802.1AR LDevID Key Infrastructure
- A common security model
	- Co-owned
	- bootstrap design team provides base layer (certificate based secure identity)
	- signaling design team and acp design team to provide higher layer security
	- Ultimately coalesced via reference model
- Discovery mechanism
	- Owned by signaling design team
	- Used for bootstrap functions: discovery of bootstrap service point (autonomic registrar)
	- Used for consistent management model (eg: NOC to device discovery requirements)
- A negotiation mechanism to enable closed-loop interaction
	- Owned by signaling design team
	- Bootstrap design team provides identity for these interactions (certificates)
	- Target to be leveraged for applicable part of bootstrap exchanges
	- Target to be leveraged for applicable parts of ACP (eg: secure tunnel negotiation)
- A secure and logically separated communications channel (ACP)
	- Owned by ACP design team
	- Leverages identity from bootstrap design team and signaling from signaling design team
- A consistent autonomic management model
	- Develop via reference model referring to other components used to build it
	- Classical management from NOC (including controllers) and autonomic network
		- Leverages autonomic connectivity defined by reference modl (leveraging bootstrap and signaling)
		- Overall connectivity model defined by ACP design
			- NOC to device end to end connectivity proposed eg: via validation draft: stable-connectivity
      &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2018-12-27. It was migrated from the old Trac wiki on 2023-01-30.*