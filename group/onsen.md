---
title: ONSEN - Operationalizing Network & SErvice abstractioNs Wiki
description: 
published: true
date: 2026-11-19T19:55:06.386Z
tags: 
editor: markdown
dateCreated: 2026-11-03T21:49:19.822Z
---

> This page is related to an active IETF Working Group.
{.is-success}
# Welcome to the ONSEN Wiki 

This wiki is for the ONSEN WG. Here, we provide here information and resources related to the ONSEN WG.

# Mailing Lists
General ONSEN Discussion: onsen@ietf.org
To Subscribe: onsen-request@ietf.org
Archive: http://www.ietf.org/mail-archive/web/onsen/current/maillist.html

<br><br>

## ONSEN Model Implementations and Tooling
This section is for IETF LxNM/LxSM implementations and tooling. If you would like your project to be listed here, please contact onsen-chair@ietf.org

Please also see the collection of NETCONF implementations, Papers, tutorials and tools located at https://wiki.ietf.org/group/netconf

<br>

### ONSVAL - Validation Tools for ONSEN YANG Model

ONSVAL project  aims to design a validation system and related tools that can validate YANG models individually or as an integrated suite, ensuring the models are well designed so that IETF service and network abstractions become easier to implement and use, thereby improving automation, operational efficiency, and interoperability.

The tools will be openly developed and maintained in https://github.com/ctri-ietf-team/opensource-onsen-yang-models-implementation.

Contributions are welcome — join the project!

<br>

### netclics - NETCONF <> CLI Conversion System
https://github.com/stratoweave/netclics
NETCLICS helps you turn familiar network CLI configuration into the structured data your automation needs. Choose a device platform, paste a CLI snippet, and convert it to NETCONF XML, RESTCONF JSON, or Acton code for StratoWeave transforms. You can also start with NETCONF XML and convert it back to CLI, making it easier to see how device commands map to YANG-based configuration.
 
Use the web interface to explore a single change or build a sequence of configuration steps. For each step, inspect either the changes or the full resulting configuration, then copy or download the output for use in your own tools. NETCLICS applies your input to virtual devices such as Juniper cRPD and Cisco XRd, so the conversion reflects how the device interprets the configuration.
 
Try the hosted version at [netclics.stratoweave.org](https://netclics.stratoweave.org) directly in your browser, or build and run your own NETCLICS instance on your own infrastructure.

<br>

### StratoWeave SORESPO Orchestrator - RFC8299 L3VPN Implementation
https://github.com/stratoweave/sorespo
SORESPO helps you create and manage Layer 3 VPN services across a multi-vendor network. It implements the RFC899 L3VPN Service YANG module, giving you a common way to describe customer sites, their VPN membership, IP addressing, and routing requirements. You define the service you want, and SORESPO translates that definition into the configuration needed to connect those sites.
 
Built on [StratoWeave] (https://www.stratoweave.org), SORESPO transforms your service definition through layers of network and device configuration, creating the interfaces, VRFs, and BGP settings required on each router. The same service model supports Juniper cRPD and Cisco IOS XRd with MPLS, and Nokia SR Linux with VXLAN and BGP EVPN. These layers handle the differences between platforms, so you can work with a consistent service definition while SORESPO generates the configuration appropriate to each device.
 
Use SORESPO to explore how a standard service model becomes a working network service, experiment with changes in a lab, or build a foundation for your own orchestration system. As a reference implementation, it lets you follow the path from customer requirements to device configuration and adapt the models and transforms to your network.

<br>

### Cognitive Reconciliation Demonstrator - YANG-to-TMF and LxSM-to-LxNM Model Reconciliation

A public, reproducible demonstrator for draft-janz-onsen-cognitive-reconciliation. It applies the agent-to-agent reconciliation methodology of draft-janz-nmrg-adhoc-semantic-reconciliation to two ONSEN problems: mapping the L3SM to TM Forum models and APIs (the problem set out in draft-lls-onsen-yang-tmf-mapping) and reconciling the L3SM with the L3NM. In each case two AI agents, each holding one of the models, work out the correspondence between them.

Anyone can rerun the published harness with their own model API licence or step through recorded runs offline. A short concept note, "Translation or binding: two kinds of model interoperability", and two explanatory videos set out why the two problems call for different workflows.

Overview, results and links: [Cognitive Reconciliation for YANG and TMF: a Demonstrator](/en/group/onsen/cognitive-reconciliation-demonstrator)

Code and run instructions: https://github.com/ChrisFJanz/onsen-cognitive-reconciliation 