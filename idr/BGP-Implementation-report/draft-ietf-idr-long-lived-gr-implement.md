---
title: draft-ietf-idr-long-lived-gr Implementation Report
description: IDR WG report on Vendor implementations of draft-ietf-idr-long-lived-gr (long lived graceful restart)
published: true
date: 2022-11-28T00:04:22.990Z
tags: 
editor: markdown
dateCreated: 2022-11-28T00:04:22.990Z
---

# Implementation Report for draft-ietf-idr-long-lived-gr
## Use of Graceful Restart Capability
 
 Text sections are from [draft-ietf-idr-long-lived-gr-02].
 
 ### Abbrevatiations 
 
- **GR** - Graceful Restart
- 
- **LLGR** - Long-lived Graceful Restart

## Author(s) 

Jeff Haas (jhaas@juniper.net) 

## Components of Conformance 


### 3.1 Long-lived Graceful Restart Capability

- Does the implementation always send the LLGR Capability with the RFC 4724 GR Capability?
- Does the implementation have the ability to send zero tuples of <AFI, SAFI, Flags, Long-lived Stale Time> in the LLGR Capability?
- Does the implementation have the ability to receive zero tuples of <AFI, SAFI, Flags, Long-lived Stale Time> in the LLGR Capability?
- What AFI/SAFIs are supported by the implementation for LLGR?
- In the "Flags for Address Family" field of the LLGR Capability, does the implementation set the Reserved bits to zero on send?
- In the "Flags for Address Family" field of the LLGR Capability, does the implementation ignore non-zero Reserved bits on receipt?
- What range of values is supported by the implementation for the "Long-lived Stale Time"?

### 3.2. LLGR_STALE Community

- Does the implementation permit the user to configure policies that accept, reject, or modify routes based on the presence or absence of the LLGR_STALE Community?

### 3.3. NO_LLGR Community
- 
- Does the implementation permit the user to configure policies that accept, reject, or modify routes based on the presence or absence of the LLGR_STALE Community?

### 4.1. Use of Graceful Restart Capability

- Does the implementation ignore the LLGR Capability if not advertised with the RFC 4724 GR Capability?
- Does the implementation support ignoring conventional GR by omitting all AFI/SAFI from the GR Capability, advertising a Restart Time of zero, or both?

### 4.2. Session Resets
> 
> If the Graceful Restart Capability that was received does not list
> all AFI/SAFI supported by the session, then for those non-listed AFI/
> SAFI the GR "Restart Time" shall be deemed zero.  Similarly, if the
> received LLGR Capability does not list all AFI/SAFI supported by the
> session, then for those non-listed AFI/SAFI the "Long-lived Stale
> Time" shall be deemed zero.

- Does the implementation deem all AFI/SAFI that are not supported in the session, or supported but not listed in the LLGR capability as having a "Long-lived Stale Time" of zero?

> After the session goes down and before the session is re-established,
> the stale routes for an AFI/SAFI MUST be retained.  The interval for
> which they are retained is limited by the sum of the "Restart Time"
> in the received Graceful Restart Capability and the "Long-lived Stale
> Time" in the received Long-lived Graceful Restart Capability.  These
> timers MAY be modified by local configuration.

- Does the implementation retain stale routes for an AFI/SAFI for an interval that is the sum of the RFC 4724 "Restart Time" and the LLGR "Long-lived Stale Time"?
- Does the implementation permit modification of the received timers via local configuration?

> If the value of the "Restart Time" or the "Long-lived Stale Time" is
> zero, the duration of the corresponding period would be zero seconds.
> So, for example, if the "Restart Time" is zero and the "Long-lived
> Stale Time" is nonzero, only the procedures particular to LLGR would
> apply.  Conversely, if the "Long-lived Stale Time" is zero and the
> "Restart Time" is nonzero, only the procedures of GR would apply.  If
> both are zero, none of these procedures would apply, only those of
> the base BGP specification (although EoR would still be used as
> detailed in [RFC4724](https://datatracker.ietf.org/doc/rfc4724/).  And finally, if both are nonzero, then the
> procedures would be applied serially -- first those of GR, then those
> of LLGR.  We observe that during the first interval, while the
> procedures of GR are in effect, route preference would not be
> affected, while during the second interval, while LLGR procedures are
> in effect, routes would be treated as least-preferred as specified
> elsewhere in this document.
