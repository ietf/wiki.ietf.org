---
title: Secure Crash Discovery
description: 
published: true
date: 2022-12-16T01:46:22.776Z
tags: 
editor: markdown
dateCreated: 2022-12-16T01:46:19.442Z
---

# Welcome to the Secure Crash Discovery page



**This problem is part of the new (Feb. 2010) working group charter.**

This page describes the problem and two possible solutions for crash detection.

IKEv2 has mechanisms for keeping the IKE and IPsec SAs synchronized between any two peers. Still, there could be cases when SAs become de-synchronized due to reboots of one of the peers, manual intervention by operators, and last but not least, implementation bugs.

When this happens, the situation needs to be rectified, by first detecting that the failure has occurred, and then creating new SAs. The latter part can be made quicker and less resource-comsuming by utilizing the protocol proposed in the IKE Session Resumption (RFC 5723) specification.

The rest of this page describes the problem, proposes two solutions (named SIR and QCD), and finally compares the two.

Obviously, the working group is chartered to produce a *single* solution for the problem. With this goal in mind, we would like comments and analysis from the community.

## Problem Statement

The problem we are trying to solve is the long time it takes for Alice (on the left) to figure out that Bob (on the right) has crashed. In the picture below

![scd01.jpg](/ipsecme/scd01.jpg)

Alice, not realizing that Bob has crashed, keeps on sending ESP packets. When Bob is back up and running (or alternatively, a backup Bob is up and running), Bob receives the packets and cannot decrypt them, because it has lost both the IKE and IPsec SAs. Bob\'s only choice is to send an unprotected INVALID_SPI notification.

RFC 4306 says the following in section 3.10.1: 
> If this Informational Message is sent outside the context of an IKE_SA, it should be used by the recipient only as a \"hint\" that something might be wrong (because it could easily be forged).

So Alice can\'t create a new SA on the basis of this unauthenticated INVALID_SPI notification. Instead, all that Alice can do is initiate a **Liveness Check** based on the parent IKE SA.

Since Bob has crashed, he is unable to respond to the liveness check. All Bob can do is send unauthenticated INVALID_IKE_SPI notification, but since that is also unauthenticated, it could just as easily be forged, and cannot be used as anything other than a hint. Alice needs to repeat the liveness check. How long? Section 2.4 has this to say: 

> Numbers of retries and lengths of timeouts are not covered in this specification because they do not affect interoperability. It is suggested that messages be retransmitted at least a dozen times over a period of at least several minutes before giving up on an SA

So although both Alice and Bob are up and running, it will take \"several minutes\" before IPsec traffic flows again. That\'s the problem.

## Augmented Problem statement

Based on the discussions and questions on the IPSECME mailing list, an augmented problem statement section is added here in order to track and answer the main questions.

The purpose of Secure Crash Discovery is to identify VERY QUICKLY (as fast as technically possible) that one IPsec/IKE gateway lost its IPsec or IKE SAs.

There are several use cases:

**- protocol robustness**
In our experience, implementations sometimes lose their SAs without good or apparent reasons, and fail to notify the remote peer. Secure Crash Discovery would help in repairing those SAs and in stabilizing critical networks faster than waiting for the implementer to fix the issue and new code to be deployed.

**- reboot**
A given device may simply reboot and discard all of its SAs.


**- failover**
Two gateways are set up in hot standby mode (primary/secondary active/passive). The Secondary device becomes Active and takes over after the Primary fails (crash, maintenance, gives up,\...). SAs must rekeyed with the new active device. No assumption can be made on the failover protocol except that \"it detects failover situations appropriately and efficiently\".

**- cluster**
A farm of gateways are sitting behind a load balance that distributes sessions to the gateways. All gateways are active at the same time. If one device is taken offline (crash, maintenance,\...) the load balancer automatically rebalances the sessions to the remaining devices that are not aware of the previously negotiated SAs. The IKE/IPsec sessions must be rekeyd with the newly selected gateways. No assumption can be made on the load balancer except that \"it balances sessions and detect offline gateways properly and efficiently\".

There may be perceived overlap in the use cases. One case can usually be derived into an other or some cases can be considered a degenerate case of an other. The purpose of the use cases list above is to illustrate the requirements with pragmatic examples.

Protocol robustness is a philosophic approach; not everyone sees the need, some do.

Admittedly, reboot may take a \"long\" time and may make the need for a fast protocol somewhat useless (IKEv2 liveness checks may suffice). Reboot time being very short on some systems, Secure Crash Discovery is not entirely out of scope either.

Eventually, the failover and cluster cases need to be addressed. This is the purpose of SIR and QCD.

## QCD

The QCD proposal is specified in [this draft](http://tools.ietf.org/html/draft-nir-ike-qcd).

The idea is that Bob sends Alice a ***token*** in the AUTH exchange. The token depends on the IKE SPIs. The major security property of this token is that only Bob can calculate it, and Bob should be able to calculate it even after a crash. Alice and the attacker cannot calculate the token. Since the token is passed in an encrypted message, Alice can store the token, but the attacker cannot.

![scd02.jpg](/ipsecme/scd02.jpg)

After Bob crashes, we assume that Bob (but nobody else) can regenerate the QCD token based on the same IKE SPIs.

![scd03.jpg](/ipsecme/scd03.jpg)

Bob generating the token proves that it is actually Bob. Alice can safely delete the IKE SA, and set up a new one, if there actually is traffic.

## SIR

The SIR proposal is specified in [this draft](http://tools.ietf.org/html/draft-detienne-ikev2_recovery).

![scd04.jpg](/ipsecme/scd04.jpg)

SIR does not add any state to either Alice or Bob.

When Alice gets the INVALID_SPI or INVALID_IKE_SPI notification, she uses a poll method to ask Bob whether or not the SPI (IKE or ESP) exists.
The CHECK_SPI Query notification is accompanied by a stateless cookie (very similar to the stateless cookie in RFC 4306). Bob should reply with an ACK if the SA exists, or with a NACK if the SA does not exist. Several mechanisms exist to prevent a MitM attack: 
- Alice waits for some time (2\*RTT) and won\'t delete the SA if both ACK and NACK are received.
- Alice won\'t delete the SA before a new similar SA is created.

## Comparison

The following table summarizes the differences as we see them. As before, \'Alice\' represents the non-rebooted side, usually a client, and \'Bob\' represents the rebooted side, usually a VPN gateway.

|                                     | QCD                                                           | SIR                                                 |
|-------------------------------------|---------------------------------------------------------------|-----------------------------------------------------|
| Alice-side storage                  | 16-32 extra bytes per IKE SA                                  | None                                                |
| Bob-side storage                    | A single **persistent** secret (16-32 bytes) for token generation | None                                                |
| Alice-side Keys                     | None                                                          | Same as used for IKE - None                         |
| Bob-side Keys                       | Yes - locally generated unless Bob is a cluster               | None                                                |
| MitM                                | No known vulnerability                                        | MitM may be able to force rekey - similar to IKEv2  |
| Support for Load-Balancer Failover* | No                                                            | Yes                                                 |

(\*) This refers to scenarios where there are several machines with a load-balancer, where state is not synchronized. Under QCD, an attacker may be able to get one gateway in the configuration to send the token, and replay that to the active gateway.



## A call for action

We ask the participants of the IPSEC mailing list and the IPSECME working group to help us in reaching this unified draft.

We would like you to read both drafts and tell us why either solution is or isn\'t appropriate for particular environments.

We would especially like comments from implementers of non-simple platforms such as memory- and processor- constrained devices (cell-phones, sensors) and clustered VPN gateways.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2010-02-26. It was migrated from the old Trac wiki on 2022-12-15.*