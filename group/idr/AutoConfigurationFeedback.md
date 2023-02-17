---
title: AutoConfiguration Feedback
description: 
published: true
date: 2023-02-14T23:17:32.468Z
tags: 
editor: markdown
dateCreated: 2023-01-28T23:19:58.597Z
---

### June 21, 2021 Autoconfiguration Interim ==
# Interim Meetecho Pages
https://datatracker.ietf.org/meeting/interim-2021-idr-02/session/idr

*Agenda: https://datatracker.ietf.org/doc/agenda-interim-2021-idr-02-idr-01/ *Minutes: (TBD) *slides: https://datatracker.ietf.org/doc/slides-interim-2021-idr-02-sessa-auto-configuration-chairs-slides/

# Result
Jeff hass reviewed proposed stated needed by auto-discovery as having two types: BGP session Transport state and Session protocol state.

The required state for the BGP Session Transport State is:

- IP Addresses
- Transport Security parameters
- GTSM (RFC5082) configuration, if any
- BFD (RFC5880) configuration, if any BGP

The required session protocol state (found in BGP open) is:

- AS numbers,
- BGP Identifier,
- Supported AFI/SAFIs
- Device Role (future extension?)

Current version of the Auto-Configuration draft

https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-autoconf-considerations/
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2021-06-21. It was migrated from the old Trac wiki on 2023-01-28.*