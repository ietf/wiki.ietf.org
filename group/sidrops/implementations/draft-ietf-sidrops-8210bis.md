---
title: RPKI-To-Router version 2
description: Implementation reports for rfc8210bis-25
published: true
date: 2026-07-21T11:45:58.565Z
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
| reset_on_absence_of_history | success | success | success |
| no_data_returned_correctly | success | success | success |
| sends_ipv4 | success | success | success |
| sends_ipv6 | success | success | success |
| sends_aspa | success | success | success |
| sends_router_key | failure | success | success |
| sends_ordered_pdus | success | success | success |
| cache_restart_repopulated | success | failure | success |
| cache_restart_pdu_received | success | failure | success |
| cache_restart_correct_error | failure | failure | success |
| cache_shutdown_repopulated | success | failure | success |
| cache_shutdown_pdu_received | success | failure | success |
| cache_shutdown_correct_error | failure | failure | success |
| ssh | failure | failure | success |
| tls | failure | failure | success |
| tcp-md5 | failure | failure | success |
| tcp-ao | failure | failure | failure |

##### Clients

|  | rtrlib (master) | rtrtr (main) | rpki-rtr-demo (main) |
| - | - | - | - |
| v0_connect | failure | failure | success |
| v1_connect | success | failure | success |
| v2_connect | failure | success | success |
| sends_reset_query | success | success | success |
| accepts_cache_response | success | success | success |
| accepts_end_of_data | success | success | success |
| accepts_serial_notify | success | success | success |
| handles_cache_response_no_op | success | success | success |
| handles_reset_on_session_mismatch | failure | failure | success |
| handles_reset_on_absence_of_history | success | failure | success |
| no_data_returned_correctly | success | success | success |
| handles_ipv4 | success | success | success |
| handles_ipv6 | success | success | success |
| handles_aspa | success | success | success |
| handles_router_key | success | success | success |
| handles_cache_restart | failure | failure | success |
| handles_cache_shutdown | failure | failure | success |
| ssh | success | failure | success |
| tls | failure | failure | success |
| tcp-md5 | failure | failure | success |
| tcp-ao | failure | failure | failure |