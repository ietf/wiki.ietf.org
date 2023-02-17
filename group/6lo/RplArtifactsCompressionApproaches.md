---
title: Summary of RPL artifact compression approaches
description: 
published: true
date: 2022-11-29T19:35:12.833Z
tags: 
editor: markdown
dateCreated: 2022-07-23T19:51:11.275Z
---

# RPL artifacts summary
Here is a summary of approaches to RPL artifact compression. There are two approaches under consideration:

* NHC-based (extensions to 6lowpan (RFC6282) NHC codes) as initially described in draft-thubert-6lo-rpl-nhc
* Dispatch-based (extension to 6lowpan (RFC4944 plus RFC6282) dispatch codes) as initially described in draft-thubert-6lo-routing-dispatch

## NHC-based approach

The current NHC proposal only addresses the RPI artifact (RFC6553). The new minimum requirement is compression for both RPI and RH3 (RFC6554) artifacts. This would require augmentation of the current proposal (which has been given the name "NHC++")

### Arguments for

The perceived arguments for the NHC-based approach are:

* More in line with the current method of header compression

### Arguments against

The perceived arguments against the NHC-based approach are:

* Doesn't improve flexibility in placement of routing extension headers, complicating the effort involved in fragment routing.

## Consideration of proposal so far

* The NHC "greedy" approach only addresses RPI so is not acceptable for the minimum requirement
* The NHC "efficient" approach is highly tailored for RPI and would need to be reconsidered for RH3 and the approach may not end up being applicable
* The NHC "conservative" approach is therefore probably the only acceptable approach and could be resolved by using the two EID codes (5 and 6) for RPI and RH3 respectively. However this exhausts the currently allocated NHC space.
* Alternatives are:
  * Use an escape mechanism (EID = 5 is an escape code)
    * This is less efficient than the conservative approach
  * Use another code for a different set of NHC (e.g. ```0b110xxxxx```)
    * This is the same efficiency as the conservative approach, greedier on the NHC space and does provide some flexibility

## Dispatch-based approach

### Arguments for

The perceived arguments for the dispatch-based approach are:

* More flexibility in placement of routing headers e.g. can be placed before fragment dispatch to allow fragment routing

### Arguments against

The perceived arguments against the dispatch-based approach are:

* Placing routing extension headers before the IP header, and using them for fragment routing (for example), makes them appear like they are a sub-IP layer when they are not supposed to be.

## Consideration of proposal so far

* The current dispatch approach is greedy and uses already allocated space (6lowpan mesh header). We could solicit opinion as to whether this is acceptable but the general consensus seems to be that it is not acceptable.
* Alternatives are:
  * Avoid using the most likely mesh dispatch code combination, i.e. that of 16-bit O and F addresses. This affects only the elective format and halves the maximum option size. However, this is still reappropriating a code.
  * Use an escape/switch code and a subsequent dispatch code from a new "page" of dispatch codes. This is much less greedy as it only uses one existing dispatch code (either ESC or another reserved code) but adds an extra byte to every message
* Another alternative is to choose alternative dispatch codes from the reserved space e.g. ``0b1101xxxx`` and ```0b1111xxxx``` for critical/elective. This will half the maximum length of the elective format and will also require reworking of the subsequent headers in the critical format as, in the example given, there are only 4 subsequent bits instead of 5 originally and it is not possible to find a code which allows 5 subsequent bits due to the way FRAG1 and FRAGN codes split the space up.