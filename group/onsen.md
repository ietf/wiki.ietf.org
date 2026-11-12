---
title: ONSEN - Operationalizing Network & SErvice abstractioNs Wiki
description: 
published: true
date: 2026-11-12T14:06:31.663Z
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

### netclics - NETCONF <> CLI Conversion System
https://github.com/stratoweave/netclics
NETCLICS helps you turn familiar network CLI configuration into the structured data your automation needs. Choose a device platform, paste a CLI snippet, and convert it to NETCONF XML, RESTCONF JSON, or Acton code for StratoWeave transforms. You can also start with NETCONF XML and convert it back to CLI, making it easier to see how device commands map to YANG-based configuration.
 
Use the web interface to explore a single change or build a sequence of configuration steps. For each step, inspect either the changes or the full resulting configuration, then copy or download the output for use in your own tools. NETCLICS applies your input to virtual devices such as Juniper cRPD and Cisco XRd, so the conversion reflects how the device interprets the configuration.
 
Try the hosted version at [netclics.stratoweave.org](https://netclics.stratoweave.org) directly in your browser, or build and run your own NETCLICS instance on your own infrastructure.

<br>

### StratoWeave SORESPO
https://github.com/stratoweave/sorespo
SORESPO helps you create and manage Layer 3 VPN services across a multi-vendor network. It implements the RFC899 L3VPN Service YANG module, giving you a common way to describe customer sites, their VPN membership, IP addressing, and routing requirements. You define the service you want, and SORESPO translates that definition into the configuration needed to connect those sites.
 
Built on [StratoWeave] (https://www.stratoweave.org), SORESPO transforms your service definition through layers of network and device configuration, creating the interfaces, VRFs, and BGP settings required on each router. The same service model supports Juniper cRPD and Cisco IOS XRd with MPLS, and Nokia SR Linux with VXLAN and BGP EVPN. These layers handle the differences between platforms, so you can work with a consistent service definition while SORESPO generates the configuration appropriate to each device.
 
Use SORESPO to explore how a standard service model becomes a working network service, experiment with changes in a lab, or build a foundation for your own orchestration system. As a reference implementation, it lets you follow the path from customer requirements to device configuration and adapt the models and transforms to your network.