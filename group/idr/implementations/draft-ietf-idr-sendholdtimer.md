---
title: SendHoldTimer implementation reports
description: Implementation reports for draft-ietf-idr-sendholdtimer
published: true
date: 2023-12-18T20:30:54.256Z
tags: 
editor: markdown
dateCreated: 2023-12-18T20:30:49.442Z
---

# draft-ietf-idr-sendholdtimer

Implementation reports for https://datatracker.ietf.org/doc/draft-ietf-idr-bgp-sendholdtimer

Two test tools have appeared in the ecosystem:

* [bgp-zerowindow-test](https://github.com/benjojo/bgp-zerowindow-test)
* BIRD development branch with a per-peer `disable rx` option, this option discards received messages and	disables the hold timer (this option only exists for testing purposes!)

One way to trigger the SendHoldTimer is to reply to each packet with a TCP-recv-window of 0; all the while sending BGP KEEPALIVE messages. After some time the system write buffer fills up and the BGP implementation can recognize messages are not making it across the wire.

## OpenBGPD

Tested against `bgp-zerowindow-test`.

https://github.com/openbsd/src/commit/ab9b1ccdd3ae2f6b9b7be622908bbd31ddeef78a

## FRR

Tested against `bgp-zerowindow-test`.

https://github.com/FRRouting/frr/pull/11225
https://github.com/FRRouting/frr/pull/12142

## BIRD

Tested against both `bgp-zerowindow-test` and BIRD's own `disable rx` option.

https://gitlab.nic.cz/labs/bird/-/commit/bcf2327425d4dd96f381b87501cccf943bed606e

## BGP.Tools neo-bgp

Tested against `bgp-zerowindow-test`.

Closed source implementation.