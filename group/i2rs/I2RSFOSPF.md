---
title: I2RS OSPF
description: 
published: true
date: 2023-01-22T02:57:33.391Z
tags: 
editor: markdown
dateCreated: 2023-01-22T02:57:28.560Z
---

# I2RS OSPF Model 
## Requirements
### IGP REQ-01
- what: I2RS Client should be able to read/write
the the unique IGP identification for router within an AS (router- id, system-id, or others). I2RS agents may notify the I2RS client of the detection of another router with the same unique ID.

1) read and write of router-id per OSPF routing instance
	- [draft-ietf-ospf-yang-reference](http://tools.ietf.org/html/draft-ietf-ospf-yang-reference) for router-id
	- utilize ephemeral form of [draft-ietf-ospf-yang](http://tools.ietf.org/html/draft-ietf-ospf-yang-reference) configuration
	- I2RS pub/sub handles notification of: if-state-change and nbr-state-change
	- I2RS adds notification for neighbor with same router-id
	- [draft-ietf-ospf-yang-reference](http://tools.ietf.org/html/draft-ietf-ospf-yang-reference) for router-id
	- +--rw instance* [routing-instance af]
	- +--rw af identityref
	- +--rw router=id? yang:dotted.quad

2) detection of neighbor router-id
	- [draft-ietf-ospf-yang-reference](http://tools.ietf.org/html/draft-ietf-ospf-yang-reference) for neighbor router-id
	- +---n if-state-change
	- | +--ro routing-instance? rt:routing-instance-ref
	- | +--ro routing-protocol-name? string
	- | +--ro instance-af
	- | | +--ro af? identityref
	- | +--ro link-type? identityref
	- | +--ro interface
	- | | +--ro interface? if:interface-ref
	- | +--ro virtual-link
	- | | +--ro area-id? uint32
	- | | +--ro neighbor-router-id? yang:dotted-quad
	- | +--ro sham-link
....
### IGP REQ-02
Description:

1) I2RS Client SHOULD BE able to aid in IGP table reduction by actively monitoring IGP tables and by allowing changes to the IGP configuration in order to partition the IGPS and place ABRs and ASBRs.

2) The I2RS Client to I2RS Agent exchange must allow for a rapid cycle of

	- querying of IGP topology information, and
	- downloading of a new protocol configuration that updates new IGP next hops and prefixes.
  
  &nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-06-18. It was migrated from the old Trac wiki on 2023-01-21.*