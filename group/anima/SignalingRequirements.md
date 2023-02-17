---
title: Signaling Requirements
description: 
published: true
date: 2023-01-30T22:25:51.260Z
tags: 
editor: markdown
dateCreated: 2023-01-30T22:25:47.620Z
---

# Anima Signaling Requirements (draft) 
These requirements are in summary form. This version is obsolete and is retained for posterity; the current version is at https://tools.ietf.org/html/draft-ietf-anima-grasp#section-2 and the evolving text is in the [github repo](https://github.com/becarpenter/animaproto).

As far as possible, the requirements are stated specifically as functions that an ASA (autonomic service agent) needs to use.

## Discovery requirements
- ASAs may be designed to manage anything. A basic requirement is therefore that the protocol can represent and discover any kind of network parameter among arbitrary subsets of participating nodes.
- When an ASA starts up, it requires no information about any peers in order to discover them.
- The discovery process must be able to support any network scenario or topology, assuming only that the ASA concerned is bootstrapped from factory condition.
- If an ASA supports multiple objectives, relevant peers may be different for different discovery objectives. Thus there must be a mechanism by which an ASA can separately discover peer ASAs for each of the technical objectives that it needs to manage, whenever necessary.
- Following discovery, an ASA will normally perform negotiation or synchronization for the corresponding objectives. The design should allow for this.
- There must be a mechanism for an ASA to discover autonomic peers either on the same layer 2 link or those only accessible via layer 3.
- Special cases exist, such as discovering a hierarchical superior (if there is one) and discovering the AN trust anchor. The discovery process should be flexible enough to allow for these cases.
- The discovery process must not generate excessive (multicast) traffic and must take account of sleeping nodes in the case of a resource-constrained network.
## Negotiation and Synchronization Requirements
- ASAs may be designed to manage anything. A basic requirement is therefore that the protocol can represent, synchronize and negotiate any kind of network parameter among arbitrary subsets of participating nodes.
- The protocol can support parameter request/response exchanges, until negotiation ends.
- The negotiation process must be guaranteed to terminate, so the protocol should have some general mechanisms in support of loop and deadlock prevention.
- The protocol can support parameter exchange, including mutual synchronization, even when no negotiation as such is required.
- Synchronization might concern small groups of nodes or very large groups. - Different solutions might be needed at different scales.
- The protocol can carry message formats used by existing configuration protocols, if convenient to do do.
- The protocol must be installable in any device that would otherwise need human intervention.
- The protocol must be installable in any device that would otherwise be managed by an NMS, and it must co-exist with an NMS.
- Some features are expected to be implemented by individual ASAs, but the protocol must be general enough to allow them:
	- "Dry run" or "try before buy" mode.
	- Detection and recovery after unexpected events such a peer failing.
	- Conflict resolution when ASAs compete with each other.
	- Management logging, monitoring, alerts and tools for intervention.
- Either an explicit information model describing protocol messages, or at least a flexible and easily extensible message format, is needed.
## General Requirements
- It should be convenient for ASA designers to define new objectives and for programmers to express them, without excessive impact on run-time efficiency and footprint.
- The protocol should be easily extensible in case the initially defined discovery, synchronization and negotiation mechanisms prove to be insufficient.
- Payload format should be independent of the transport protocol or IP version.
- Access off-link counterparts via routable addresses, i.e., not restricted to link-local operation.
- It must be possible for an external discovery mechanism to be used, if appropriate for a given objective.
- ASAs and the protocol engine need to run asynchronously when wait states occur.
- There must be provision for general policy intent to be applied by all devices. However, intent distribution might not use the protocol itself.
- Management monitoring, alerts and intervention must be possible. These features may not use the signaling protocol itself.
- Secure against forged messages, DOS and eavesdropping.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-03-24. It was migrated from the old Trac wiki on 2023-01-30.*