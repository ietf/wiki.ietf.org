---
title: UCAN- Autonomic Networking Integrated Model and Approach Wiki
description: 
published: true
date: 2023-02-18T01:48:23.524Z
tags: 
editor: markdown
dateCreated: 2023-01-30T21:20:19.140Z
---

# Use Cases for Autonomic Networking (UCAN) BOF at IETF 90 
The slides will be in [the IETF 90 proceedings](https://www.ietf.org/proceedings/90/ucan.html). The minutes are at

http://www.ietf.org/proceedings/90/minutes/minutes-90-ucan

Here is a dump of the BOF description:

### Operations and Management
**UCAN (Approved for IETF 90)**
- Name: Use Cases for Autonomic Networking (UCAN)
- Description:
The fundamental goal of Autonomic Networking (AN) is self-management, including self-configuration, self-optimization, self-healing and self-protection. AN aims at putting the intelligence of today's operations back into algorithms at the node level, to minimize dependency on human administrators and central management systems. Nodes capable of AN will need to discover information about the surrounding network and to negotiate parameter settings with their neighbors and other nodes. They may also have learning and cognitive capability, i.e. the ability for distributed entities to self-adapt their decision making process based on information and knowledge gained from their environment (sensing).

However, human administrators will still want to influence the network and set policy. Where devices require such input, it should be provided in a highly abstract, network-wide form referred to as "intent".

Autonomic Networking focuses on self-management of network elements. An autonomic function works in a distributed way across various network elements, allowing however central guidance and reporting. Autonomic functions already exist today, for example IGP routing protocols such as OSPF. However, all such functions have their own discovery, messaging and security mechanisms.

To transform this somewhat abstract Autonomic Networking concept into concrete, realisable requirements, the first stage, undertaken in the IRTF, was to define terminology and design goals, and to derive a high-level gap analysis. To take this further, there is a need for several realistic and specific use cases that can be used as a reference and as a plausibility test for developing requirements. Therefore, this BoF collects and analyses use cases for Autonomic Networking. The goal is to find commonalities between various use cases, to be able to determine generic requirements for Autonomic Networking functions and to conclude whether there is scope for a common, generic Autonomic Networking Infrastructure for all autonomic functions.

The UCAN BOF is intended to expose several use cases to community review and to identify other possible use cases. Several use cases assume that some sort of general discovery and negotiation protocol is available. The goal of the UCAN BoF is NOT to develop solutions for the use cases listed. However, the type of solution envisaged, its design goals, and sketches of solution approaches will be covered.

The next stage will be to consolidate the use cases and to to extract common requirements for an autonomic infrastructure. These requirements are in the following areas:

- identity of nodes
- a common security model
- a discovery model (for autonomic nodes to discover other nodes)
- a negotiation model (for cooperation between autonomic nodes)
- a communication method
- a policy model (for use cases that require policy)
- a management model (because humans remain in the picture)

Preliminary directions for possible protocol work are indicated in a problem statement ([draft-jiang-config-negotiation-ps](http://tools.ietf.org/html/draft-jiang-config-negotiation-ps)) and strawman protocol ([draft-jiang-config-negotiation-protocol](http://tools.ietf.org/html/draft-jiang-config-negotiation-protocol)) but these are indicative only.

- Draft Agenda:
1. Agenda bashing (5 min)
2. Overview of autonomic networking ideas and the need, scope and criteria for use cases ([draft-irtf-nmrg-autonomic-network-definitions](http://tools.ietf.org/html/draft-irtf-nmrg-autonomic-network-definitions), [draft-irtf-nmrg-an-gap-analysis](http://tools.ietf.org/html/draft-irtf-nmrg-an-gap-analysis)) (20 min)
3. What operators want from autonomic networking (Diego Lopez, Telefonica) (10 min)
4. Use cases (5 min each):
	- homenet ([draft-carpenter-nmrg-homenet-an-use-case](http://tools.ietf.org/html/draft-carpenter-nmrg-homenet-an-use-case))
	- large network address management ([draft-jiang-auto-addr-management](http://tools.ietf.org/html/draft-jiang-auto-addr-management))
	- securely bootstrapping new devices ([draft-behringer-autonomic-bootstrap](http://tools.ietf.org/html/draft-behringer-autonomic-bootstrap))
- autonomic control plane ([draft-behringer-autonomic-control-plane](http://tools.ietf.org/html/draft-behringer-autonomic-control-plane))
	- distributed detection of SLA violations ([draft-irtf-nmrg-autonomic-sla-violation-detection](http://tools.ietf.org/html/draft-irtf-nmrg-autonomic-sla-violation-detection))
- mobile backhaul ([draft-bogdanovic-nmrg-mobile-backhaul-use-case](http://tools.ietf.org/html/draft-bogdanovic-nmrg-mobile-backhaul-use-case))
- risk aware routing (draft-TBD)
5. Approaches to solution space (10 min)
	- Discovery + negotiation (draft-jiang-config-negotiation-protocol, draft-jiang-config-negotiation-ps)
	- Autonomic bootstrap of an Autonomic Control Plane (draft-pritikin-bootstrapping-keyinfrastructures, draft-behringer-autonomic-control-plane)
6. Discussion, including identifying other uses cases & next steps (40 min)

- Status: Not WG Forming
- Responsible AD: Benoit Claise
- BoF proponents: Brian Carpenter <brian.e.carpenter@…>, Laurent Ciavaglia <Laurent.Ciavaglia@…>, Michael Behringer <mbehring@…>, Sheng Jiang <jiangsheng@…>
- BoF chairs: Brian Carpenter and Michael Behringer
- Number of people expected to attend: 50
- Length of session (1, 1.5, 2, or 2.5 hours): 2 hours
- Conflicts to avoid (whole Areas and/or WGs): Other OPS Area sessions, HOMENET,...
- Does it require WebEX? No
- Does it require Meetecho? Yes
- Links to the mailing list, draft charter if any, relevant Internet-Drafts, etc.
	- Mailing List: https://www.ietf.org/mailman/listinfo/anima
	- Draft charter: (none so far)
	- Relevant drafts:
		- Background:
			- http://tools.ietf.org/html/draft-irtf-nmrg-autonomic-network-definitions
			- http://tools.ietf.org/html/draft-irtf-nmrg-an-gap-analysis
		- Use Cases:
			- http://tools.ietf.org/html/draft-carpenter-nmrg-homenet-an-use-case
			- http://tools.ietf.org/html/draft-jiang-auto-addr-management
			- http://tools.ietf.org/html/draft-behringer-autonomic-bootstrap
			- http://tools.ietf.org/html/draft-irtf-nmrg-autonomic-sla-violation-detection
			- http://tools.ietf.org/html/draft-bogdanovic-nmrg-mobile-backhaul-use-case
			- http://tools.ietf.org/html/draft-behringer-autonomic-control-plane
		- Solution space
			- http://tools.ietf.org/html/draft-jiang-config-negotiation-ps
			- http://tools.ietf.org/html/draft-jiang-config-negotiation-protocol
			- http://tools.ietf.org/html/draft-pritikin-bootstrapping-keyinfrastructures
			- http://tools.ietf.org/html/draft-behringer-autonomic-control-plane
      
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-05-14. It was migrated from the old Trac wiki on 2023-01-30.*