---
title: I2RS RIB Design Team
description: 
published: true
date: 2023-01-22T03:25:43.740Z
tags: 
editor: markdown
dateCreated: 2023-01-22T03:25:38.165Z
---

# I2RS RIB Model Design Team 
## Members
The team members focused on the Info-model are:

- Nitin Bahadur nitin_bahadur@… [leader]
- Ron Folkes ronf@…
- Sriganesh Kini sriganesh.kini@…
- Jan Medved jmedved@…

The team members focused on the RIB yang Data-model are

- Lixing (Viviene) Wang wanglixing@… [co-leader]
- Mach Chen mach.chen@… [co-leader]
- Amit Dass amit.dass@…
- Ignas Bagdonas Ignas Bagdonas ibagdona@…
- Hari Ananthakrishnan hari@…
- Nitin Bahadur nitin_bahadur@…
- Russ White russw@…
## Drafts
The RIB Model design team is responsible for creating two drafts:

- [draft-ietf-i2rs-rib-info-model-05](http://tools.ietf.org/html/draft-ietf-i2rs-rib-info-model-05)
- [draft-wang-i2rs-rib-data-model-00](http://tools.ietf.org/html/draft-wang-i2rs-rib-data-model-00) (yang data model)
## Goals
The WG chairs desire that design teams to:

1. Keep the draft text in github
2. Keep the yang model in github
3. Leader will send weekly status to I2RS chairs
4. drafts will be submit to IETF repository on 2/25/2015 and update on 3/9
5. presentations given by team at IETF92

If you would like to join the design team, please send a note to I2RS co-chair (shares@…)

## Meetings
### Next I2RS RIB Model Design team Meeting
- Wednesday, February 26, 2015 [30 minute Q&A]
- Drafts due by 2/25
- Presentation of RIB Yang Module to I2RS virtual interim at 3/5/2015
- WG Adoption call for RIB Yang model (3/10 to 3/24/2015)
- WG LC on RIB Information model (3/10 to 3/24/2015)
- WG presentation of RIB Yang Model and RIB Info Model changes at IETF 92
### June 1, 2015 Status for RIB Team
Revisions regarding next-hop should be consider for IETF93.

### April 1,2015 Status for RIB Team
Authors presented revisions to the I2RS RIB Info Model and a new I2RS RIB Data Model (Yang). ==

Status on 1/22 from RIB Team

- Based discussion there is no need to add RPC for the route , route state , nexthop and nexthop state.
- Finished revision of nexthop structure
- Capabilities should be readable not writable
- Things which need to be discussed:
- If Route capability(ipv4,ipv6,mpls ) need negotiation.
- Add the requirement item.
- Add more route or nexthop state and statistic information.
- Type to augment or use netmod-routing-cfg
### Discussion on 1/28/2015 from RIB Team
*Discussion looked at the clarity of the nexthop-list RBNF,

	- the replication (section 6.1, 7.2.2, 7.2.6, and 7.3).
*Hari explained that the recursion uses a reference field (someone like the SQL Reference field to different tables).

*Nitin explained that US Provider uses primary, secondary, and tertiary uses. *Sue is concerned about the next-hop uses in the MBH use case.

### Action items for next week include:
- RIB Information Model uses recursive nexthop
- Hari will confirm with Yang Doctors if the recursion he suggest is workable.
- Based on the Yang Doctor's response, Hari will create changes in the RIB Yang model that the Design Team is working on.
- Nitin will examine how to better refine the next-hop-list to be more readable, and still fit with Hari
- Sue, Lixing, and Mach will provide examples for multicast (PIM, L2 EVPN, P2MP MPLS, MP2MP MPLS) examples.
### Status for 2/4/2015 (19:30 ET, 16:30 PT) Beijing: 2/5/2015 09:30
- next-hop list from Hari will be used for the yang modules
- Nitin and Sriganesh should send question to Adrian on better RBNF
- Multicast examples work fine,
- Sue will send a question on primary/backup or primary/backup/teritary
- No more meetings until 2/26 at 8pm PT, 5pm ET

Comparison with netmod-routing-cfg-15

- After get a consistent I2RS RIB Information Model and Yang Data Model, we will consider how it interacts with netmod-routing-cfg
- Sue will keep Lada, Jurgen, and Benoit informed of our work
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-06-03. It was migrated from the old Trac wiki on 2023-01-21.*