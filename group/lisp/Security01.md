---
title: Analyzing LISP Attacks: a Proposal
description: 
published: true
date: 2022-12-16T16:37:16.824Z
tags: 
editor: markdown
dateCreated: 2022-12-16T16:37:12.361Z
---

# Analyzing LISP Attacks: a Proposal
 This page presents a proposed way to look at security threats to LISP. At this time, it is the individual opinion of those listed below. The goal is to get to something agreed to by a small, self-organized team, and then take it to the WG.

 -   Sam Hartman 

If you agree with what's here now, feel free to add your name above and start contributing. If there are some issues you'd need to resolve first, then talk to those above and see if your ideas are on the same page enough to join this proposal. If not, please feel free to take our text , edit it somewhere else and get it to be something you agree with. You can also start completely from scratch or provide a set of deltas off of what's here. This is all an IETF contribution in the full sense of the appropriate BCPs.

## Goals of LISP Security

 -   LISP will not make Internet security worse
 -   LISP will not create an architecture in which ongoing IETF-wide security goals such as the SIDR working group or BCP 84 are made more difficult. 

The big question is what does it mean to make the Internet security worse and what is the current security model of the Internet. In answering these sorts of questions, we'll refer a lot to a number of IETF consensus documents. The point here is not to invoke a lot of past process, but simply to invoke descriptions of problems and ways of thinking about things that have received the consensus of the IETF or of some working group. We don't want to define this all ourselves, we want to build on what others have already done. We'll trying to distinguish BCP documents, which are presumed to have the consensus of the IETF, from informational documents, for which judging consensus is harder.

BCP 72, RFC 3552, provides summaries of classes of attacks. In section 3.1 of that document is a discussion of limited attacks; attacks can be categorized based on the capabilities that an attacker needs to have in order to mount them. While that document does not directly state this, the difficulty of the attack often depends on the capabilities required. So, one of the most important things to consider when evaluating whether LISP decreases the security of the Internet is whether it moves an attack from one category to another--for example, LISP would decrease the security of the Internet if LISP moved an attack from requiring an attacker to being on-path to permitting off-path attackers to mount that attack. Of particular interest is the discussion of topology in section 3.4.

## Organization

At this point it is unclear whether to organize the discussion around analyzing the security of the existing protocol or around security requirements. It would be better to describe things in terms of requirements, but that become too abstract. Where points can be made in terms of requirements, they will be. After requirements have been articulated, discussing specific attacks will almost certainly be useful. Even when discussing requirements, the requirements will be motivated by preventing classes of attacks. So, the motivation for a requirement or a specific attack will look similar. In each case, we describe:

 -   What prevents the attack on the Internet today?
 -   What (if any) previous IETF thinking suggests the attack is important to consider
 -   The consequences of the attack 

Then we describe either the requirements or the attack.

## Mapping in General

Attacks on the Internet mapping system are generally considered quite serious. Many higher layers distinguish between on-path and off-path attacks, so the ability to change the topology so that you, as an attacker, are on-path is valuable. Similarly, ingress and egress filtering establish security barriers that help prevent attacks, so being able to attack the mapping system and change the topology to appear to be inside a particular address range can be valuable. Se RFC 3552 section 3.4.

Today's Internet mapping system involves several components:

  -  ARP or Neighbor Discovery handles on-link mapping.
 -   The local IGP (OSPF, ISIS, etc) handles mapping within an organization
  -  BGP handles global Internet mapping 

In general, ARP and ND are fairly easy to attack in most environments. As a result, it is often possible for one node on a link to attack the mapping system and receive packets destined for another node on the link. In addition some link types allow every node on a link to observe packets.

However, some environments do require mechanisms to protect against these attacks; RFC 3971 specifies mechanisms to protect neighbor discovery. The mechanisms for protecting ARP are more ad-hoc and typically focus more around configuration choices than a cryptographic protocol, but they do exist and are important in some environments.

It's generally easy for an attacker who compromises a router to compromise the mapping system, at least within a limited domain. There is work under way in the SIDR working group to look at reducing the trust placed in each router, but that is fairly long-term work. In LISP terms, this probably means that:

  -  At least now, compromising a LISP+Alt router may compromise the mapping system
  -  Compromising an ETR may compromise mapping to the EID prefixes served by that ETR That is, we propose to describe these attacks as residual threats for LISP+Alt and LISP respectively. It is an open question when we will require that a mapping system do better than the security model of Lisp+Alt today: it seems that the IETF is headed down the path that may eventually lead to making stronger requirements for BGP security. Presumably these requirements would also apply to LISP+Alt. So, the set of desired security properties for a mapping system are likely to be stronger than we expect to get with LISP+Alt without something SIDR-like in LISP+Alt. 

, However, ETRs should not be trusted so much that compromising one ETR leads to compromising the mapping of unrelated EID prefixes, just as compromising most customer site routers does not involve compromising mapping of addresses belonging to other customers.

### Mapping Integrity

The primary security goal of the mapping system is to provide integrity protection for mapping data. The consumer of mapping data wants the assurance that:

 -   Mapping data is Provided by a party authorized to provide that data (authorization).
 -   Mapping data is not modified in transit (data integrity)
 -   EID prefixes are delegated to the party corresponding to the mapping result (delegation integrity).
  -  The RLOCs in the mapping result are valid ETRs for the EID prefixes (RLOC integrity). 

Together these properties can be thought of as mapping integrity. The final two properties (delegation and RLOC integrity) can be thought of as part of the authorization decision: we can think of an ETR is being authorized to map its EID prefixes to a particular set of RLOCs. However in this discussion, we will decompose the three aspects of authorization: is an approved party generating the mapping information, is the mapped prefix delegated, and is that prefix actually reachable by the RLOCs in question. Whenever we talk about authorization, the question of authentication also comes up. In order to discuss whether an appropriate party is authorized, we need to think about how the authenticated identity of that party is known.

### Off path Attacks

Requirement: The mapping system MUST NOT allow an an off-path attacker to violate mapping integrity. An off-path attacker is an attacker who is not on the path that legitimate mapping messages would take.

Justification: If an off-path attacker can violate mapping integrity, then the attacker can change the topology, potentially gaining the capabilities of an on-path attacker when mounting attacks in the data-plane at LISP EIDs. See section 3 of RFC 3352. Such attacks would also break assumptions described in section 3.1 of RFC 4218, and violate the requirements of sections 3.1 and 3.2 of that document. In other words, if LISP does not meet this requirement then LISP will not live up to the bar we set for site multi-homing solutions.

Examples of this attack would include:

  -  If the wrong party could successfully issue a map register for a prefix, that would be an off-path attack on mapping integrity. Today, the MAC in the map register message provides protection against this attack
  -  draft-bagnulo-lisp-threat-01 section 3.1 describes off-path attacks on mapping integrity. The attack threats have been reduced somewhat since that draft was published by minimizing data gleaning. 

### Time Shifting, Replays and Pre-plays

A time shifting attack allows an attacker who was previously on-path to mount attacks than an off-path attacker cannot normally mount. A replay attack allows an attacker to replay some protocol mechanism and gain some advantage. In the context of the mapping system, a replay would allow an attacker to replay old mapping information that created an advantage for the attacker. A pre-play attack allows an on-path attacker to gain some advantage by responding before some other party.

REQUIREMENT: The mapping system MUST limit the length of time over which time shifting and replay attacks are possible to some clearly specified bound.

  -  The mapping system MUST either avoid replay attacks entirely or explain why permitting a particular replay attack within a limited time bound provides an overall improvement in the system design.

Justification: Long term replay attacks can allow a party to violate mapping integrity long after an update. Attackers could become on-path on the data plane. In addition, errors or past security compromises can be impossible to correct if these attacks are not bounded. Section 4.1.2 of RFC 4218, section 4.1.4 of RFC 4218 and section 3.1.6 of RFC 4225 discuss previous IETF thinking on time-shifting and replay attacks in mapping protocols. The conclusions are similar.

REQUIREMENT: Mapping systems MUST describe any pre-play attacks and explicitly evaluate whether the pre-play attack is acceptable.

Justification: Forbidding pre-play attacks could prove very difficult. However depending on the deployment model, being on-path may imply much less trust at certain points than others. So on-path attacks like pre-play attacks may be important to consider in some situations.

### Denial of Service

There are a few broad concerns with mapping denial of service:

  -  The mapping system could be used to generate traffic that contributes to a denial of service attack.
  -  A vulnerability in the mapping system could allow an attacker to misdirect or blackhole traffic creating a data plane denial of service within LISP.
  -  The mapping system itself will be subject to denial of service attacks. 

Analysis is required on the first class of attack

There is a conflict between mechanisms used to mitigate denial of service mounted against the mapping system and mechanisms that cause the mapping system to be a denial of service. Today there is an assumption that there will be rate limiting of mapping traffic at ITRs, ETRs, and at nodes in the mapping system core. These rate limiting may prevent a flood of mapping control packets from disabling the control plane of an ITR or ETR or causing damage to the data plane. However an attacker could easily flood these rate limits causing legitimate mapping traffic to be lost and turning the mapping system into a denial of service on LISP.

Some things to note about this:

 -   We may be able to set up deployments where map resolvers and their clients have pre-existing relationships. If you're using your ISP's map resolvers or the map resolvers of your EID provider, you have a relationship with them.
  -  Map servers and ETRs already have a relationship
 -   It's not clear that nodes in the core of the mapping systems need to talk to people they don't trust at some level. This is dependent on the mapping system. However alt nodes have some level of trust because they share a BGP instance.
  -  ETRs that are not part of the core of a mapping system only receive map requests from their map server or people who have previously received mapping data from them. 

GOAL: Investigate how these properties can be used to design requirements and defenses to protect the mapping system.

GOAL: Consider the lessons of DNS for denial of service protection. DNS has developed a number of strategies for dealing with the large number of DOS attacks it faces. In addition, the DNS community probably is aware of protocol changes they wish they could make that would reduce the attack surface. We are much earlier in the design of LISP; we should learn from DNS. One area that we currently duplicate that is problematic is that map resolvers are open and accept requests from anyone. This has proven problematic for DNS.

## Mapping System In Specific

When looking at mapping integrity we could treat the mapping system as a monolithic system. If mapping updates are cryptographically signed and if all ITRs and ETRs have the necessary keys, certificate revocation lists, intermediate certificates, authorization information, software and hardware resources to verify mappings then mappings could be verified end-to-end. Mechanisms like the nonce in map request messages would be unneeded and we could consider mapping integrity and end-to-end problem. There are several drawbacks to this approach:

  -  Cryptographic verification of Internet-scale mapping information is likely to be difficult. We probably do not want to require all ITR and ETR implementations to pay this complexity cost.
 -   We've found with other cryptographic protocols such as DNSSEC and SCVP (a certificate validation protocol) that it is beneficial to offload this sort of validation so that not all clients need updated policy, certificates, etc.
  -  Specifying this sort of cryptographic verification will take significant time. Meanwhile, we want to run experiments with sufficient security that people feel comfortable using LISP for their traffic. That requires a level of mapping integrity similar to today's Internet; significantly less mapping integrity would be unacceptable even for the experimental phase.
 -   If the only security provided in the mapping system is end-to-end, we would probably have to mandate not just implementation of this security but actually use of this security for Internet deployments. While we have designed protocols such as CAPWAP where control-plane security is mandatory-to-use, the necessary level of security for LISP would be very heavy-weight to mandate for all Internet deployments.
  -  Depending on the deployment model, some nodes in the mapping system may be much more trusted than others. For example in LISP+alt, LISP+alt routers have a relatively high level of required trust compared to ETRs not part of the ALT.
  -  Depending on the deployment model, some nodes may be much more vulnerable to on-path attacks than others. One of the assumptions behind the security of today's Internet is that inter-core links are relatively well protected and we need not worry about on-path attacks. However on access networks we are more concerned about on-path attacks. 

In order to address these drawbacks, we analyze the security of mapping at several points in the network. Our goal is to:

  -  Use the map server and map resolver to isolate the ITR and ETR from the security details of the mapping system.
 -   Use this separation to permit security to be added in the core later or to permit the entire core mapping system to change.
 -   Take advantage of the trust relationship between the map server and ETR to provide better security.
 -   Analyze the role a trust relationship between the ITR and map resolver could have.
 -   Provide security as good as the Internet mapping system today without end-to-end cryptographic protection of the mapping core. 

### Between the ITR and the Map Resolver
### The mapping system core
### Between the Map server and the ETR
### Between the ETR and the ITR

Today, the ETR sends a packet directly to the ITR including its mapping information. The ETR gets mapping information from the reply record in the ITR's packet. The nonce in the map request and reply is used to provide protection against off-path attacks.

This system fails to provide delegation integrity. draft-bagnulo-lisp-threat-01 describes a critical attack where an ETR can claim a larger prefix than is delegated to it. That draft proposes that an ETR can claim a /0 prefix; even if that attack is prevented by placing a maximum size on the prefix that an ETR can claim, an ETR will be able to claim mapping for significantly more addresses than belong to it.

REQUIREMENT: The LISP mapping system MUST provide the ITR with assurance that an ETR is not claiming a prefix larger than one it would be permitted to register. The mapping system MUST provide assurance to an ETR that the prefix in a map reply from the ITR is not larger than the ITR would be permitted to register.

Justification: This prevents an off-path attack where an ITR or ETR can claim all traffic for large chunks of address space. In the case of an ETR claiming address space, it currently only needs to get the ITR to request mapping for some address within that space that legitimately belongs to the ETR. In the case of the ITR claiming address space, a similar condition may apply.

We also need to investigate the constraints that should be applied to additional map reply records in a map reply.

## Data Plane
### Denial of Service
### Address Spoofing
### Integrity of Control Information
## Interworking
### Address Spoofing
### Denial of Service
### Theft of Service
## Multicast
## related Security in the IETF

  -  draft-bagnulo-lisp-threat-01 describes oa preliminary threat analysis of the LISP data plane. Some attacks described have been fixed; others are still present. The structure of the document and the method of analysis are very valuable.
  -  RFC 4218 describes the threat analysis for site multihoming for IPv6 systems. Section 4 of this document is most applicable, although section 3 describes today's assumptions. While LISP was not a multi6 contender, almost all the analysis in this document also applies to LISP. It will need to be extended to IPv4 as well. While this document is informational, it did receive significant input.
 -   RFC 4225 describes the security design and background for Mobile IPv6 route optimization. While we're not exactly in the same space, the same concerns apply. This is again an informational document that received significant review.
 -   RFC 5533's mechanisms for handling the security issues discussed in RFC 4218 is very interesting; section 16.2 is also interesting to consider.
  -  RFC 4219 describes "things to think about" in IPv6 multihoming. While most of the security issues were broken out into RFC 4218, this is still a very important read.
  -  RFC 4889 section 4.8 and 5.8 may be useful.
  -  draft-bagnulo-shim6-ingress-filtering-01. may have been useful although it is ex pired; someone should read this and see if it has anything to say for LISP 
    
    
  &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-10-19. It was migrated from the old Trac wiki on 2022-12-16.*