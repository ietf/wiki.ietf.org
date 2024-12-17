---
title: Known URIs Used in CoRE Protocols
description: 
published: true
date: 2024-12-17T10:56:03.410Z
tags: 
editor: markdown
dateCreated: 2024-12-17T10:56:03.410Z
---

This wiki page documents known use of URIs (including URNs) in CoRE protocols. It's maintained in a best-effort way and may be incomplete. This page intends to augment the information contained in the [CoRE Parameters registries](https://www.iana.org/assignments/core-parameters/core-parameters.xhtml) maintained by IANA, in which URIs/URNs are never registered.

# Known URI Namespaces Used in CoRE Protocols

| URI namespace    | Organization / owner  | Specifications / More information             |
|------------------|-----------------------|-----------------------------------------------|
| urn:knx          | [KNX Association](https://www.knx.org) | KNX IoT Point API Specification available on https://schema.knx.org. |

# Known Resource Type (rt=) URIs
[Related registry](https://www.iana.org/assignments/core-parameters/core-parameters.xhtml#rt-link-target-att-value)

|'rt' URI           |Name          	    |Description / Source                                                                        |
|-------------------|-------------------|--------------------------------------------------------------------------------------------|
|urn:example:myrt 	|My-rt example 	    |This is just an example. There aren't any entries in this table yet (2024/12).


# Known Interface Description (if=) URIs
[Related registry](https://www.iana.org/assignments/core-parameters/core-parameters.xhtml#if-link-target-att-value)

|'if' URI           |Name          	    |Description / Source                                                                        |
|-------------------|-------------------|--------------------------------------------------------------------------------------------|
|urn:knx:if.ll 	    |Link List          |Read a linked list and, in combination with if.o, subscribe to all Points of the list. 
|urn:knx:if.p 	    |Parameter          |Adjust parameter Point (see [03] "KNX Information Model"). 
|urn:knx:if.d 	    |Diagnostic 	      |    Read diagnostic Point (see [03] "KNX Information Model"). 
|urn:knx:if.c 	    |Configuration      |Configuration and programming of a device. 
|urn:knx:if.i 	    |Logical Input 	    |Write and command runtime input Group Object Point (see [03] "KNX Information Model").
|urn:knx:if.o 	    |Logical Output 	  |    Read and subscribe runtime output Group Object Point (see [03] "KNX Information Model").
|urn:knx:if.g.s 	  |Group Communication |Group communication (S-Mode) runtime interworking (input and output) address. 
|urn:knx:if.b 	    |Batch 	            |Read or write a collection (e.g., Point list). 
|urn:knx:if.a 	    |Actuator           |Hardwired actuator (see [03] "KNX Information Model").
|urn:knx:if.s 	    |Sensor 	          |    Hardwired sensor (see [03] "KNX Information Model").
|urn:knx:if.sec 	  |Security           |Configuration (read and write) of security, incl. authorization-related data. 
|urn:knx:if.swu 	  |Software Update 	  |Software update (push and pull) related data.
|urn:knx:if.pm 	    |Programming Mode 	|Data that can be read in Programming Mode. 
|urn:knx:if.m.*     |Manufacturer 	    |Manufacturer-specific interface types. 
												