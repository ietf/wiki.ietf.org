---
title: RPKI-To-Router version 2
description: Implementation reports for rfc8210bis-25
published: true
date: 2026-07-21T11:48:02.871Z
tags: implementation report for sidrops rfc
editor: markdown
dateCreated: 2026-03-04T16:38:49.181Z
---

# Implementations of rfc8210bis

Current version of the draft: -26

## Known implementations

### Clients

* StayRTR
* OpenBGPD
* BIRD
* ... add yours here!

### Servers

* StayRTR
* OpenRTRD
* Routinator/RTRTR
* Fort
* ... add yours here!

#### Interoperability testing

See https://github.com/APNIC-net/rpki-rtr-demo/tree/main/interop.

##### Servers

|  | openrtrd (main) | rtrtr (0.3.3) | rpki-rtr-demo (main) |
| - | - | - | - |
| v0_connect | Y | Y | Y |
| v1_connect | Y | Y | Y |
| v2_connect | Y | Y | Y |
| accepts_reset_query | Y | Y | Y |
| sends_cache_response | Y | Y | Y |
| sends_end_of_data | Y | Y | Y |
| sends_serial_notify | Y | Y | Y |
| accepts_serial_query_no_op | Y | Y | Y |
| returns_corrupt_data_on_session_mismatch | N | N | Y |
| reset_on_absence_of_history | Y | Y | Y |
| no_data_returned_correctly | Y | Y | Y |
| sends_ipv4 | Y | Y | Y |
| sends_ipv6 | Y | Y | Y |
| sends_aspa | Y | Y | Y |
| sends_router_key | N | Y | Y |
| sends_ordered_pdus | Y | Y | Y |
| cache_restart_repopulated | Y | N | Y |
| cache_restart_pdu_received | Y | N | Y |
| cache_restart_correct_error | N | N | Y |
| cache_shutdown_repopulated | Y | N | Y |
| cache_shutdown_pdu_received | Y | N | Y |
| cache_shutdown_correct_error | N | N | Y |
| ssh | N | N | Y |
| tls | N | N | Y |
| tcp-md5 | N | N | Y |
| tcp-ao | N | N | N |

##### Clients

|  | rtrlib (master) | rtrtr (0.3.3) | rpki-rtr-demo (main) |
| - | - | - | - |
| v0_connect | N | N | Y |
| v1_connect | Y | N | Y |
| v2_connect | N | Y | Y |
| sends_reset_query | Y | Y | Y |
| accepts_cache_response | Y | Y | Y |
| accepts_end_of_data | Y | Y | Y |
| accepts_serial_notify | Y | Y | Y |
| handles_cache_response_no_op | Y | Y | Y |
| handles_reset_on_session_mismatch | N | N | Y |
| handles_reset_on_absence_of_history | Y | N | Y |
| no_data_returned_correctly | Y | Y | Y |
| handles_ipv4 | Y | Y | Y |
| handles_ipv6 | Y | Y | Y |
| handles_aspa | Y | Y | Y |
| handles_router_key | Y | Y | Y |
| handles_cache_restart | N | N | Y |
| handles_cache_shutdown | N | N | Y |
| ssh | Y | N | Y |
| tls | N | N | Y |
| tcp-md5 | N | N | Y |
| tcp-ao | N | N | N |