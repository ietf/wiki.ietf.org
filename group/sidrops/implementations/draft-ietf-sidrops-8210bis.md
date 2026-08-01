---
title: RPKI-To-Router version 2
description: Implementation reports for rfc8210bis-25
published: true
date: 2026-08-01T06:06:35.691Z
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
| v0_connect | success | success | success |
| v1_connect | success | success | success |
| v2_connect | success | success | success |
| accepts_reset_query | success | success | success |
| sends_cache_response | success | success | success |
| sends_end_of_data | success | success | success |
| sends_serial_notify | success | success | success |
| accepts_serial_query_no_op | success | success | success |
| returns_corrupt_data_on_session_mismatch | failure | failure | success |
| returns_reset_on_new_session_mismatch | success | success | success |
| reset_on_absence_of_history | success | success | success |
| no_data_returned_correctly | success | success | success |
| sends_ipv4 | success | success | success |
| sends_ipv6 | success | success | success |
| sends_aspa | success | success | success |
| sends_router_key | success | success | success |
| sends_ordered_pdus | success | success | success |
| cache_restart_repopulated | success | failure | success |
| cache_restart_pdu_received | success | failure | success |
| cache_shutdown_repopulated | success | failure | success |
| cache_shutdown_pdu_received | success | failure | success |
| ssh | failure | failure | success |
| tls | failure | failure | success |
| tcp-md5 | failure | failure | success |
| tcp-ao | failure | failure | failure |

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