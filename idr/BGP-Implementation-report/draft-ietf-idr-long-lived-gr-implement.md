---
title: draft-ietf-idr-long-lived-gr Implementation Report
description: IDR WG report on Vendor implementations of draft-ietf-idr-long-lived-gr (long lived graceful restart)
published: true
date: 2022-11-28T01:18:03.573Z
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

- Does the implementation support applying GR procedures and LLGR procedures serially, depending on the received GR and LLGR times?
- For each LLGR AFI/SAFI with a non-zero "Long-lived Stale Time", does the implementation - while operating as a helper router - start a timer for that "Long-Lived Stale Time"?
- For each LLGR AFI/SAFI with a non-zero "Long-lived Stale Time", does the implementation - while operating as a helper router - delete all stale routes for that AFI/SAFI once this timer expires?
- During LLGR procedures, does the implementation immediately delete routes that have been marked with the NO_LLGR community?
- Does the implementation attach the LLGR_STALE community to stale routes when they are being retained?

> Once the session is re-established, the procedures specified in
> [RFC4724] apply for the stale routes irrespective of whether the
> stale routes are retained during the "Restart Time" period or the
> "Long-lived Stale Time" period.  However, in the case of consecutive
> restarts, the previously marked stale routes MUST NOT be deleted
> before the timer for the "Long-lived Stale Time" expires.

- Does the implementation retain previously marked stale routes during consecutive restarts when such restarts are processed prior to the expiration of the "Long-lived Stale Time" for that particular AFI/SAFI?

> Once the session is re-established, the procedures specified in
> [RFC4724] apply for the stale routes irrespective of whether the
> stale routes are retained during the "Restart Time" period or the
> "Long-lived Stale Time" period.  However, in the case of consecutive
> restarts, the previously marked stale routes MUST NOT be deleted
> before the timer for the "Long-lived Stale Time" expires.

- Does the implementation retain routes previously marked stale across multiple restarts for a given AFI/SAFI executing LLGR procedures when the "Long-lived Stale Time" has not expired?

> If a "Long-lived Stale Time" timer is running for routes with a given
> AFI/SAFI received from a peer, it MUST NOT be updated (other than by
> manual operator intervention) until the peer has established and
> synchronized a new session.  The session is termed "synchronized" for
> a given AFI/SAFI once the EoR for that AFI/SAFI has been received
> from the peer, or once the Selection_Deferral_Timer discussed in
> [RFC4724] expires.

- Does the implementation prohibit updates to an AFI/SAFI's "Long-lived Stale Time" timer, when already running?
- Does the implementation permit the update to an AFI/SAFI's "Long-lived Stale Time" timer, when already running, via operator intervention? (Jeff's interpretation, this may also include a forced reset of the session via operator intervention.)
> 
> The value of a "Long-lived Stale Time" in the capability received
> from a neighbor MAY be reduced by local configuration.

- Does the implementation permit the reduction of the "Long-lived Stale Time" via local configuration? If so, are there restrictions on its behavior?

> While the session is down, the expiration of a "Long-lived Stale
> Time" timer is treated analogously to the expiration of the "Restart
> Time" timer in Graceful Restart, other than applying only to the AFI/
> SAFI it accompanies.  However, the timer continues to run once the
> session has re-established.  The timer is neither stopped nor updated
> until EoR is received for the relevant AFI/SAFI from the peer.  If
> the timer expires during synchronization with the peer, any stale
> routes that the peer has not refreshed, are removed.  If the session
> subsequently resets prior to becoming synchronized, any remaining
> routes (for the AFI/SAFI whose LLST timer expired) MUST be removed
> immediately.

- When the "Long-lived Stale Time" timer, for a given AFI/SAFI, is running and then expires, does the implementation remove stale routes regardless of the status of the BGP session or the current synchronization state of that AFI/SAFI for that session?

### 4.3. Processing LLGR_STALE Routes

> A BGP speaker that has advertised the "Long-lived Graceful Restart
> Capability" to a neighbor MUST perform the following upon receiving a
> route from that neighbor with the "LLGR_STALE" community, or upon
> attaching the "LLGR_STALE" community itself per Section 4.2:
> - Treat the route as the least-preferred in route selection (see
>    below).  See the Risks of Depreferencing Routes section
>    (Section 5.2) for a discussion of potential risks inherent in
>    doing this.

- Does the implementation, upon reception of a BGP route from a neighbor for an AFI/SAFI where that AFI/SAFI was advertised in an LLGR Capability, treat that route as least-preferred in route selection?
- Does the implementation, upon attaching the LLGR_STALE community through programmatic procedures (the execution of this specification) treat the route as least-preferred in route selection?
- Does the implementation, upon attaching the LLGR_STALE community manually (e.g. through policy) treat the route as least-preferred in route selection?

>  *  The route SHOULD NOT be advertised to any neighbor from which the
>    Long-lived Graceful Restart Capability has not been received.  The
>    exception is described in the Optional Partial Deployment
>    Procedure section (Section 4.6).  Note that this requirement
>    implies that such routes should be withdrawn from any such
>    neighbor.

- Does the implementation support the Optional Partial Deployment Procedure in Section 4.6?
- When a given BGP neighbor has not advertised the LLGR Capability for a given AFI/SAFI, and a route for that AFI/SAFI has the LLGR_STALE community, is that route excluded from the given BGP neighbor's Adj-Rib-Out?
- If a route was previously advertised for such a peer and there is a new route in the Loc-Rib to be advertised to that peer that has the LLGR_STALE community, is that destination withdrawn from the neighbor?

> *  The "LLGR_STALE" community MUST NOT be removed when the route is
>    further advertised.

- Does the implementation avoid removing the LLGR_STALE community when the route is further advertised?


### 4.4. Route Selection

> In this document, when we refer to treating a route as least-
> preferred, this means the route MUST be treated as less preferred
> than any other route that is not so treated.  When performing route
> selection between two routes both of which are least-preferred,
> normal tie-breaking applies.  Note that this would only be expected
> to happen if the only routes available for selection were least-
> preferred -- in all other cases, such routes would have been
> eliminated from consideration.

(**Jeff's commentary:** route selection in the context of BGP documents refers to the "Decision Process" described in RFC 4271, section 9.1, et seq. )

- Does the implementation treat "least-preferred" BGP routes as documented above?

### 4.5. Errors

> If the LLGR capability is received without an accompanying GR
> capability, the LLGR capability MUST be ignored, that is, the
> implementation MUST behave as though no LLGR capability had been
> received.

Does the implementation ignore the LLGR capability when not accompanied by a [RFC 4274](https://datatracker.ietf.org/doc/rfc4274) GR capability?

### 4.6. Optional Partial Deployment Procedure

- Does the implementation support the procedures described in section 4.6?

> Ideally, all routers in an Autonomous System would support this
> specification before it was enabled.  However, to facilitate
> incremental deployment, stale routes MAY be advertised to neighbors
> that have not advertised the Long-lived Graceful Restart Capability
> under the following conditions:

>  *  The neighbors MUST be internal (IBGP or Confederation) neighbors.
> 
>  *  The NO_EXPORT community [RFC1997] MUST be attached to the stale
>     routes.
> 
>  *  The stale routes MUST have their LOCAL_PREF set to zero.  See the
>     Risks of Depreferencing Routes section (Section 5.2) for a
>     discussion of potential risks inherent in doing this.

- When these procedures are supported, does the implementation advertise LLGR stale routes to neighbors that have not advertised the LLGR capability only when the neighbors are internal, attach the NO_EXPORT community, and set the LOCAL_PREF to zero?

### 4.7.1. Procedures when EBGP is the PE-CE Protocol in a VPN

> We observe that the principal motivation for restricting the
> propagation of "stale" routing information is the desire to prevent
> it from spreading without limit once it exits the "safe" perimeter.
> We further observe that VPN deployments are typically topologically
> constrained, making this concern moot.  For this reason, an
> implementation MAY advertise stale routes over a PE-CE session, when
> explicitly configured to do so.  That is, the second rule listed in
> Section 4.3 MAY be disregarded in such cases.  All other rules
> continue to apply.  Finally, if this exception is used, the
> implementation SHOULD by default attach the NO_EXPORT community to
> the routes in question, as an additional protection against stale
> routes spreading without limit.  Attachment of the NO_EXPORT
> community MAY be disabled by explicit configuration, to accommodate
> exceptional cases.

- When the implementation is retaining LLGR stale routes according to the procedures in this document, and the BGP neighbor is a PE-CE connection and does not send the LLGR capability, does the implementation advertise LLGR stale routes to such a neighbor?
	- When the implementation advertises such LLGR stale routes to such a neighbor, does it attach the NO_EXPORT community?
	- Does the implementation permit via explicit configuration, disabling the attachment of the NO_EXPORT community?

### 4.7.2. Procedures when IBGP is the PE-CE Protocol in a VPN

- Does the implementation support [RFC 6368](https://datatracker.ietf.org/doc/rfc6368)? 

> If IBGP is used as the PE-CE protocol, following the procedures of
> [RFC6368], then when a PE router imports a VPN route that contains
> the ATTR_SET attribute into a destination VRF and subsequently
> advertises that route to a CE router,
> 
> *  If the CE router does support the procedures of this document (in
>    other words, if the CE router has advertised the LLGR Capability):
>    In addition to including in the advertised route the path
>    attributes derived from the ATTR_SET as per [RFC6368], the PE
>    router MUST also include the LLGR_STALE community if it is present
>    in the path attributes of the imported route, even if it is not
>    present in the ATTR_SET attribute.


- Does the implementation support LLGR procedures for BGP neighbors utilizing [RFC 6368](https://datatracker.ietf.org/doc/rfc6368)?
- Does the implementation, when supporting [RFC 6368](https://datatracker.ietf.org/doc/rfc6368) and LLGR has been negotiated to the CE, always attach the LLGR_STALE community to the derived encapsulated BGP Path Attributes from the ATTR_SET?
- When the implementation supports RFC 6368 and LLGR has not been negotiated to the CE, does the implementation utilize the Section 4.6 Optional Partial Deployment Procedure with the CE? (Attach the NO_EXPORT community, set LOCAL_PREF to zero.)

Similarly, when a PE router receives a route from a CE into its VRF
and subsequently exports that route to a VPN address family,

> *  If the PE router does support the procedures of this document (in
>    other words, if the PE router has advertised the LLGR Capability):
>    In addition to including in the VPN route the ATTR_SET derived
>    from the path attributes as per [RFC6368], the PE router MUST also
>    include the LLGR_STALE community in the VPN route if it is present
>    in the path attributes of the route as received from the CE.

- Does the implementation when operating as a PE router, when advertising a VPN route into the VPN address family, and supporting the procedures in this document attach the LLGR_STALE community to the VPN route when that route contains the LLGR_STALE community when received from the CE in the VRF?

### 5. Deployment Considerations

> Implementations MUST NOT enable these procedures by default.  They
> MUST require affirmative configuration per AFI/SAFI in order to
> enable them.

- Does the implementation require explicit configuration on a per-AFI/SAFI basis in order to enable LLGR procedures for that AFI/SAFI?

> The setting of the F bit (and the "Forwarding State" bit of the
> accompanying GR capability) depends in part on deployment
> considerations.  The F bit can be understood as an indication that
> the Helper should flush associated routes (if the bit is left clear).
> As discussed in the Introduction (Section 1), an important use case
> for LLGR is for routes that are more akin to configuration than to
> traditional routing.  For such routes, it may make sense to always
> set the F bit, regardless of other considerations.  Likewise, for
> control-plane-only entities such as dedicated route reflectors, that
> do not participate in the forwarding plane, it makes sense to always
> set the F bit. [...]

- Does the implementation permit the F bit to be manually set via configuration?


# Juniper Networks Implementation Report, Junos 22.4
## Components of conformance (for Juniper, Junos 22.4) 

### 3.1 Long-lived Graceful Restart Capability

- Does the implementation always send the LLGR Capability with the RFC 4724 GR Capability? **YES**
- Does the implementation have the ability to send zero tuples of <AFI, SAFI, Flags, Long-lived Stale Time> in the LLGR Capability? **YES**
- Does the implementation have the ability to receive zero tuples of <AFI, SAFI, Flags, Long-lived Stale Time> in the LLGR Capability? **YES**
- What AFI/SAFIs are supported by the implementation for LLGR? **L2VPN, IPV4/IPV6 Labeled Unicast, IPV4/IPV6 Unicast, IPV4/Flow, IPV4/RT-Constrain, IPV4/IPV6 VPN-Unicast**
- In the "Flags for Address Family" field of the LLGR Capability, does the implementation set the Reserved bits to zero on send? **YES**
- In the "Flags for Address Family" field of the LLGR Capability, does the implementation ignore non-zero Reserved bits on receipt? **YES**
- What range of values is supported by the implementation for the "Long-lived Stale Time"? **1..16777215**
### 3.2. LLGR_STALE Community

- Does the implementation permit the user to configure policies that accept, reject, or modify routes based on the presence or absence of the LLGR_STALE Community? **YES**
### 3.3. NO_LLGR Community

- Does the implementation permit the user to configure policies that accept, reject, or modify routes based on the presence or absence of the LLGR_STALE Community? **YES**

### 4.1. Use of Graceful Restart Capability

- Does the implementation ignore the LLGR Capability if not advertised with the RFC 4724 GR Capability? **NO**
- Does the implementation support ignoring conventional GR by omitting all AFI/SAFI from the GR Capability, advertising a Restart Time of zero, or both? **Restart time of zero**

4.2. Session Resets

- Does the implementation deem all AFI/SAFI that are not supported in the session, or supported but not listed in the LLGR capability as having a "Long-lived Stale Time" of zero? **YES**
- Does the implementation retain stale routes for an AFI/SAFI for an interval that is the sum of the RFC 4724 "Restart Time" and the LLGR "Long-lived Stale Time"? **YES**
- Does the implementation permit modification of the received timers via local configuration? **NO**
- Does the implementation support applying GR procedures and LLGR procedures serially, depending on the received GR and LLGR times? **YES**
- For each LLGR AFI/SAFI with a non-zero "Long-lived Stale Time", does the implementation - while operating as a helper router - start a timer for that "Long-Lived Stale Time"? **YES**
- For each LLGR AFI/SAFI with a non-zero "Long-lived Stale Time", does the implementation - while operating as a helper router - delete all stale routes for that AFI/SAFI once this timer expires? **YES**
- During LLGR procedures, does the implementation immediately delete routes that have been marked with the NO_LLGR community? **YES**
- Does the implementation attach the LLGR_STALE community to stale routes when they are being retained? **YES**
- Does the implementation retain previously marked stale routes during consecutive restarts when such restarts are processed prior to the expiration of the "Long-lived Stale Time" for that particular AFI/SAFI? **YES**
- Does the implementation retain routes previously marked stale across multiple restarts for a given AFI/SAFI executing LLGR procedures when the "Long-lived Stale Time" has not expired? **YES**
- Does the implementation prohibit updates to an AFI/SAFI's "Long-lived Stale Time" timer, when already running? **YES**
- Does the implementation permit the update to an AFI/SAFI's "Long-lived Stale Time" timer, when already running, via operator intervention? (Jeff's interpretation, this may also include a forced reset of the session via operator intervention.) **NO**
- Does the implementation permit the reduction of the "Long-lived Stale Time" via local configuration? If so, are there restrictions on its behavior? **NO**
- When the "Long-lived Stale Time" timer, for a given AFI/SAFI, is running and then expires, does the implementation remove stale routes regardless of the status of the BGP session or the current synchronization state of that AFI/SAFI for that session? **YES**

### 4.3. Processing LLGR_STALE Routes

- Does the implementation, upon reception of a BGP route from a neighbor for an AFI/SAFI where that AFI/SAFI was advertised in an LLGR Capability, treat that route as least-preferred in route selection? **YES**
- Does the implementation, upon attaching the LLGR_STALE community through programmatic procedures (the execution of this specification) treat the route as least-preferred in route selection? **YES**
- Does the implementation, upon attaching the LLGR_STALE community manually (e.g. through policy) treat the route as least-preferred in route selection? **YES**
- Does the implementation support the Optional Partial Deployment Procedure in Section 4.6? **YES**
- When a given BGP neighbor has not advertised the LLGR Capability for a given AFI/SAFI, and a route for that AFI/SAFI has the LLGR_STALE community, is that route excluded from the given BGP neighbor's Adj-Rib-Out? **YES**
- If a route was previously advertised for such a peer and there is a new route in the Loc-Rib to be advertised to that peer that has the LLGR_STALE community, is that destination withdrawn from the neighbor? **YES**
- Does the implementation avoid removing the LLGR_STALE community when the route is further advertised? **Junos policy will permit removal of this community via user configuration, but not by default.**

### 4.4. Route Selection

- Does the implementation treat "least-preferred" BGP routes as documented above? **YES**

### 4.5. Errors
- Does the implementation ignore the LLGR capability when not accompanied by a RFC 4274 GR capability? **No**

### 4.6. Optional Partial Deployment Procedure
- Does the implementation support the procedures described in section 4.6? **YES**
- When these procedures are supported, does the implementation advertise LLGR stale routes to neighbors that have not advertised the LLGR capability only when the neighbors are internal, attach the NO_EXPORT community, and set the LOCAL_PREF to zero? **YES**

### 4.7.1. Procedures when EBGP is the PE-CE Protocol in a VPN

- When the implementation is retaining LLGR stale routes according to the procedures in this document, and the BGP neighbor is a PE-CE connection and does not send the LLGR capability, does the implementation advertise LLGR stale routes to such a neighbor? **Upon user-configuration only**
- When the implementation advertises such LLGR stale routes to such a neighbor, does it attach the NO_EXPORT community? **YES**
- Does the implementation permit via explicit configuration, disabling the attachment of the NO_EXPORT community? **YES**

### 4.7.2. Procedures when IBGP is the PE-CE Protocol in a VPN

- Does the implementation support RFC 6368? **YES**
- Does the implementation support LLGR procedures for BGP neighbors utilizing RFC 6368? **YES**
- Does the implementation, when supporting RFC 6368 and LLGR has been negotiated to the CE, always attach the LLGR_STALE community to the derived encapsulated BGP Path Attributes from the ATTR_SET? **YES**
- When the implementation supports RFC 6368 and LLGR has not been negotiated to the CE, does the implementation utilize the Section 4.6 Optional Partial Deployment Procedure with the CE? (Attach the NO_EXPORT community, set LOCAL_PREF to zero.) **YES**
- Does the implementation when operating as a PE router, when advertising a VPN route into the VPN address family, and supporting the procedures in this document attach the LLGR_STALE community to the VPN route when that route contains the LLGR_STALE community when received from the CE in the VRF? **YES**

### 5. Deployment Considerations
- Does the implementation require explicit configuration on a per-AFI/SAFI basis in order to enable LLGR procedures for that AFI/SAFI? **YES**
- Does the implementation permit the F bit to be manually set via configuration? **YES**

# FRRouting (since FRR 8.2)
## Components of conformance

### 3.1 Long-lived Graceful Restart Capability

- Does the implementation always send the LLGR Capability with the RFC 4724 GR Capability? **YES**
- Does the implementation have the ability to send zero tuples of <AFI, SAFI, Flags, Long-lived Stale Time> in the LLGR Capability? **NO**
- Does the implementation have the ability to receive zero tuples of <AFI, SAFI, Flags, Long-lived Stale Time> in the LLGR Capability? **NO**
- What AFI/SAFIs are supported by the implementation for LLGR? **L2VPN, IPV4/IPV6 Labeled Unicast, IPV4/IPV6 Unicast, IPV4/Flow, IPV4/RT-Constrain, IPV4/IPV6 VPN-Unicast**
- In the "Flags for Address Family" field of the LLGR Capability, does the implementation set the Reserved bits to zero on send? **YES**
- In the "Flags for Address Family" field of the LLGR Capability, does the implementation ignore non-zero Reserved bits on receipt? **YES**
- What range of values is supported by the implementation for the "Long-lived Stale Time"? **1..16777215**
- 
### 3.2. LLGR_STALE Community

- Does the implementation permit the user to configure policies that accept, reject, or modify routes based on the presence or absence of the LLGR_STALE Community? **YES**

### 3.3. NO_LLGR Community

- Does the implementation permit the user to configure policies that accept, reject, or modify routes based on the presence or absence of the LLGR_STALE Community? **YES**

### 4.1. Use of Graceful Restart Capability

- Does the implementation ignore the LLGR Capability if not advertised with the RFC 4724 GR Capability? **NO**
- Does the implementation support ignoring conventional GR by omitting all AFI/SAFI from the GR Capability, advertising a Restart Time of zero, or both? **Restart time of zero**

### 4.2. Session Resets

- Does the implementation deem all AFI/SAFI that are not supported in the session, or supported but not listed in the LLGR capability as having a "Long-lived Stale Time" of zero? **YES**
- Does the implementation retain stale routes for an AFI/SAFI for an interval that is the sum of the RFC 4724 "Restart Time" and the LLGR "Long-lived Stale Time"? **YES**
- Does the implementation permit modification of the received timers via local configuration? **NO**
- Does the implementation support applying GR procedures and LLGR procedures serially, depending on the received GR and LLGR times? **YES**
- For each LLGR AFI/SAFI with a non-zero "Long-lived Stale Time", does the implementation - while operating as a helper router - start a timer for that "Long-Lived Stale Time"? **YES**
- For each LLGR AFI/SAFI with a non-zero "Long-lived Stale Time", does the implementation - while operating as a helper router - delete all stale routes for that AFI/SAFI once this timer expires? **YES**
- During LLGR procedures, does the implementation immediately delete routes that have been marked with the NO_LLGR community? **YES**
- Does the implementation attach the LLGR_STALE community to stale routes when they are being retained? **YES**
- Does the implementation retain previously marked stale routes during consecutive restarts when such restarts are processed prior to the expiration of the "Long-lived Stale Time" for that particular AFI/SAFI? **YES**
- Does the implementation retain routes previously marked stale across multiple restarts for a given AFI/SAFI executing LLGR procedures when the "Long-lived Stale Time" has not expired? **YES**
- Does the implementation prohibit updates to an AFI/SAFI's "Long-lived Stale Time" timer, when already running? **NO (On Established state, the timer is reset)**
- Does the implementation permit the update to an AFI/SAFI's "Long-lived Stale Time" timer, when already running, via operator intervention? **(*Jeff's interpretation, this may also include a forced reset of the session via operator intervention.*) NO**
- Does the implementation permit the reduction of the "Long-lived Stale Time" via local configuration? If so, are there restrictions on its behavior? **NO**
- When the "Long-lived Stale Time" timer, for a given AFI/SAFI, is running and then expires, does the implementation remove stale routes regardless of the status of the BGP session or the current synchronization state of that AFI/SAFI for that session? **YES**

### 4.3. Processing LLGR_STALE Routes

- Does the implementation, upon reception of a BGP route from a neighbor for an AFI/SAFI where that AFI/SAFI was advertised in an LLGR Capability, treat that route as least-preferred in route selection? **YES**
- Does the implementation, upon attaching the LLGR_STALE community through programmatic procedures (the execution of this specification) treat the route as least-preferred in route selection? **YES**
- Does the implementation, upon attaching the LLGR_STALE community manually (e.g. through policy) treat the route as least-preferred in route selection? **YES**
- Does the implementation support the Optional Partial Deployment Procedure in Section 4.6? **NO**
- When a given BGP neighbor has not advertised the LLGR Capability for a given AFI/SAFI, and a route for that AFI/SAFI has the LLGR_STALE community, is that route excluded from the given BGP neighbor's Adj-Rib-Out? **YES**
- If a route was previously advertised for such a peer and there is a new route in the Loc-Rib to be advertised to that peer that has the LLGR_STALE community, is that destination withdrawn from the neighbor? **YES**
- Does the implementation avoid removing the LLGR_STALE community when the route is further advertised?** NO, but can be with route-maps**

### 4.4. Route Selection

Does the implementation treat "least-preferred" BGP routes as documented above? **YES**

### 4.5. Errors

Does the implementation ignore the LLGR capability when not accompanied by a RFC 4274 GR capability? **NO**

### 4.6. Optional Partial Deployment Procedure

- Does the implementation support the procedures described in section 4.6? **NO**

### 4.7.1. Procedures when EBGP is the PE-CE Protocol in a VPN

- When the implementation is retaining LLGR stale routes according to the procedures in this document, and the BGP neighbor is a PE-CE connection and does not send the LLGR capability, does the implementation advertise LLGR stale routes to such a neighbor? **NO**
- When the implementation advertises such LLGR stale routes to such a neighbor, does it attach the NO_EXPORT community? **NO**
- Does the implementation permit via explicit configuration, disabling the attachment of the NO_EXPORT community? **NO**

### 4.7.2. Procedures when IBGP is the PE-CE Protocol in a VPN

- Does the implementation support RFC 6368? **NO**

### 5. Deployment Considerations

- Does the implementation require explicit configuration on a per-AFI/SAFI basis in order to enable LLGR procedures for that AFI/SAFI? **NO, global knob**
- Does the implementation permit the F bit to be manually set via configuration? **NO, always set**
