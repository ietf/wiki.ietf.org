---
title: YANG multicast
description: 
published: true
date: 2022-12-22T20:09:12.475Z
tags: 
editor: markdown
dateCreated: 2022-12-20T21:12:00.053Z
---

# YANG multicast

The [pim WG](/group/pim/) has created a design team for YANG models for multicast, with focus on protocols related to PIM and IGMP/MLD.
## Design Team members

Cisco - Mahesh Sivakumar, Stig Venaas
Huawei - Feng Guo, Yisong Liu
Jabil - Xufeng Liu
Ericsson - Mike McBride, Steve Baillargeon, Hongji Zhao
ZTE - Ran Chen, Fangwei Hu
Juniper - Robert Kebler, Anish Peter
Brocade - Mike Davison
ALU - Andrew Dolganow, Greg Hankins, Tanmoy Kundu
DIRECTV - Jethwani Sunil
Telefonica - Luis Miguel C. Murillo
Universidad Carlos III de Madrid - Carlos J. Bernardos
Concordia University - William Atwood
Ignas Bagdonas
Metaswitch - Pete McAllister

## Mailing list info

List address: yang-multicast@ietf.org
Archive: http://www.ietf.org/mail-archive/web/yang-multicast/
To subscribe: https://www.ietf.org/mailman/listinfo/yang-multicast

## Meetings

20150422  [slides](/pim/yangmcdt.ppt) [recording](https://cisco.webex.com/ciscosales/lsr.php?RCID=437b398aaa4d4690ab5176988b82d08d )
20150506 [slides](/pim/yangmcdt-150506.ppt) [recording](https://cisco.webex.com/ciscosales/lsr.php?RCID=c69a955d5dc44cb697957b98e7cdc299)
20150520 [slides](/pim/yangmcdt-150520.ppt) [recording](https://cisco.webex.com/ciscosales/lsr.php?RCID=359ed53ed45d4cc6b0c71b7b7d622765)

20150603  [slides](/pim/yangmcdt-150603.ppt) [recording](https://cisco.webex.com/ciscosales/lsr.php?RCID=f06f30b6026d417cb813b5ad30879cbd)

20150617 [slides](/pim/yangmcdt-150617.ppt) [recording](https://cisco.webex.com/ciscosales/lsr.php?RCID=55f993ca21e44e9994fa3a205e1431e9)

20150701 [slides](/pim/yangmcdt-150701.ppt) [recording](https://cisco.webex.com/ciscosales/lsr.php?RCID=6621474b3d014126a7ab4d5da9053bc9 )

20150715 no slides [recording](https://cisco.webex.com/ciscosales/lsr.php?RCID=7ec3f72698fb41d085eb8290f9a2295e )

20150729 [slides](/pim/yangmcdt-150729.ppt)


20150812 [slides](/pim/yangmcdt-150812.ppt) [recording](https://cisco.webex.com/ciscosales/lsr.php?RCID=9e1a18ff03734c1aa8cab80fc42b7aea )

20150826 [slides](/pim/yangmcdt-150826.ppt) [recording](https://cisco.webex.com/ciscosales/lsr.php?RCID=cab647247b28469fa26b2ad8019e640c )


20150909 [slides](/pim/yangmcdt-150909.ppt)


20151125 [slides](/pim/yangmcdt-151125.ppt) [recording](https://cisco.webex.com/ciscosales/lsr.php?RCID=722a9e3a7b3f442ea9716ed6378a839d )


20151202 [slides](/pim/yangmcdt-151202.ppt) [slides-2](/pim/yangmcdt-151202-anish-updated.ppt) [recording](https://cisco.webex.com/ciscosales/lsr.php?RCID=3499bedf8c7c4e7ba8b8d120836d597c )

20151209 [slides](/pim/yangmcdt-151209.ppt)

20151216 [slides](/pim/yangmcdt-151216.ppt)

20160113 [slides](/pim/yangmcdt-160113.2.ppt)

20160224 [slides](/pim/yangmcdt-160224.ppt)

20160302 [slides](/pim/yangmcdt-160302.ppt)

20160511 [slides](/pim/yangmcdt-160511.ppt)

20160518 [slides](/pim/yangmcdt-160518.ppt)

20160601 [slides](/pim/yangmcdt-160601.ppt)

20160608 [slides](/pim/yangmcdt-160608.ppt)


## PIM interface config supported by different implementations

 These are configs supported by different implementations. Add more configs and implementations as needed. Specify name of vendor and also name of implementation if needed. Do we need to specify IPv4 and IPv6 separately? If you support it specify Yes or the range. Else, just No. 
 
 |          Config object         |  Cisco           |  Juniper                                     |  Alcatel-Lucent               |  Brocade |  Ericsson       |  ZTE                            |  Huawei            |  Metaswitch           |
|:------------------------------:|------------------|----------------------------------------------|-------------------------------|---------:|-----------------|---------------------------------|--------------------|-----------------------|
|  DR Priority                   |  uint32          |  uint32                                      |  uint32                       |  uint32  |  uint32         |  uint32                         |  uint32            |  uint32               |
|  Hello Interval                |  1-65535         |  0-3000                                      |  0-255                        | uint16   |  uint16 10-1800 |  uint 16 1-65535                |  uint16 1-18000    |  0-18000              |
|  Hello Holdtime                |                  |  supports multiplier                         | supports multiplier           |          |                 |                                 |  uint16 1-65535    |  1-65535              |
|  Triggered hello interval      |                  |                                              |                               |          |                 |                                 |                    |  0-60                 |
|  JP Interval                   |  10-600          |  -                                           |  -                            | uint16   |                 |  uint 16 10-6000                |  uint16 1-18000    |  0-18000              |
|  JP Holdtime                   |                  |  -                                           |  -                            |          |                 |                                 |  uint16 1-65535    |  1-65535              |
|  Graft retry interval          |                  |                                              |                               |          |                 |                                 |                    |  100-65535000ms       |
|  Propagation Delay             | 100 - 32767 ms   | 250-2000 milli seconds                       |  -                            | uint16   |                 |  uint 16 100-10000 millisecond  |  uint16 1-32767ms  |  10-32767ms           |
|  Override Interval             |  400 - 65535 ms  | 500-6000 ms                                  |  -                            | uint16   |                 |  uint16 100-60000 millisecond   |  uint16 1-65535ms  |  10-65535ms           |
|  Assert period                 |                  |  -                                           |  1-300                        |          |                 |                                 |                    |                       |
|  Hello Multiplier              |                  |  3-20                                        |  20-100                       |          |                 |                                 |                    |                       |
|  BFD enabled IPv4              |  boolean         |  prefer waiting for bfd yang recommendation  |  boolean                      |          |  boolean        |  boolean                        |  boolean           |  cfgd in BFD process  |
|  BFD enabled IPv6              |  boolean         |                                              |  boolean                      |          |  boolean        |  boolean                        |  boolean           |  cfgd in BFD process  |
|  JP Policy IPv4                |                  |                                              |                               |          |                 |                                 |                acl |  ACL                  |
|  JP Policy IPv6                |                  |                                              |                               |          |                 |                                 |                acl |  ACL                  |
|  JP ASM Policy IPv4            |                  |                                              |                               |          |                 |                                 |                acl |  ACL                  |
|  JP ASM Policy IPv6            |                  |                                              |                               |          |                 |                                 |                acl |  ACL                  |
|  JP SSM Policy IPv4            |                  |                                              |                               |          |                 |                                 |                acl |  ACL                  |
|  JP SSM Policy IPv6            |                  |                                              |                               |          |                 |                                 |                acl |  ACL                  |
|  Nbr Policy IPv4               |                  |                                              |                               |          |                 |                                 |                acl |  ACL                  |
|  Nbr Policy IPv6               |                  |                                              |                               |          |                 |                                 |                acl |  ACL                  |
|  (*,G) state limit             |                  |                                              |                               |          |                 |                                 |                    |  uint32               |
|  (*,G) state warning           |                  |                                              |                               |          |                 |                                 |                    |  uint32               |
|  (S,G) state limit             |                  |                                              |                               |          |                 |                                 |                    |  uint32               |
|  (S,G) state warning           |                  |                                              |                               |          |                 |                                 |                    |  uint32               |
|  Assert Holdtime               |                  |                                              |                               |          |                 |                                 |  uint16            |  0-65535              |
|  Require GenID                 |                  |                                              |                               |          |                 |                                 |  boolean           |                       |
|  PIM BSR Boundary              |                  |                                              |                               |          |                 |                                 |  in/out/both       |  boolean              |
|  BFD Min TX                    |                  |                                              |                               |          |                 |                                 |  uint16 0-1000     |                       |
|  BFD Min RX                    |                  |                                              |                               |          |                 |                                 |  uint16 0-1000     |                       |
|  BFD multiplier                |                  |                                              |                               |          |                 |                                 |  uint8 3-50        |                       |
|  PIM Silent                    |                  |                                              |                               |          |                 |                                 |  boolean           |                       |
|  PIM DR Switch Delay           |                  |                                              |                               |          |                 |                                 |  boolean           |                       |
|  PIM DR Switch Delay Interval  |                  |                                              |                               |          |                 |                                 |  uint16 10-3600    |                       |
|  PIM IPsec Name                |                  |                                              |                               |          |                 |                                 |  string            |                       |
|  PIM IPsec Type                |                  |                                              |                               |          |                 |                                 |  all/hello         |                       |
|  BSM check router alert        |                  |                                              |  < boolean >                    |          |                 |                                 |                    |                       |
|  Improved assert               |                  |                                              |  < boolean >                    |          |                 |                                 |                    |                       |
|  Instant prune echo            |                  |                                              |  < boolean >                    |          |                 |                                 |                    |                       |
|  Multicast sender              |                  |                                              |  [auto \| always \| never]    |          |                 |                                 |                    |                       |
|  Max groups                    |                  |                                              |  [1..16000]                   |          |                 |                                 |                    |                       |
|  Sticky DR                     |                  |                                              |  {priority [1..4294967295] }  |          |                 |                                 |                    |                       |
|  Three way hello               |                  |                                              |  < boolean >                    |          |                 |                                 |                    |                       |
|  Tracking support              |                  |                                              |  < boolean >                    |          |                 |                                 |                    |                       |
{.dense}

## Brief explanation of the features
**BSM check router alert:** Whether to enable or disable checking of router alert option in the bootstrap messages received on this interface.

**Improved assert**: whether to enable or disable improved assert processing on this interface. The PIM Assert process establishes a forwarder for a LAN and requires interaction between the control and forwarding planes. The Assert process is started when data is received on an outgoing interface. This could impact performance if data is continuously received on an outgoing interface. If this flag is set to 'true', the PIM assert process is done entirely on the control-plane with no interaction between the control and forwarding plane.

**Instant prune echo** : whether PIM will send an instant Prune Echo when the upstream router enters Prune-Pending state on this interface. A Prune Echo is simply a Prune message sent by the upstream router with its own address in the Upstream Neighbor Address field. Due to this, all downstream routers will see the Prune message and they can send a join override if interested in the group.

**Multicast sender** : specifies the way subnet matching is done for the data packets coming on this interface from the multicast senders.
For all interfaces, the default value is 'auto'. It indicates that the subnet match will happen for packets coming in on this interface. If the subnet does not match, the packet will be dropped.
If the interface is unnumbered or the host is on a different subnet than that of the interface, should be set to 'always'. It means that packets will not go through the regular subnet check and not be dropped on a subnet match. If PIM Hello messages are received on an interface with set to 'always', they are dropped.
For broadcast interfaces, if it is required that there be no multicast senders, should be set to 'never'.

**Max groups:** the maximum number of groups for which PIM can have downstream state based on received PIM Joins on this interface(doesnt include IGMP joins).

**Sticky DR** : If sticky-dr is turned on, the priority in PIM hellos sent on this interface when elected as DR will be modified to the value configured in Sticky DR Priority. This is done to avoid the delays in forwarding caused by DR recovery, when switching back to the old DR on a LAN when it comes back up. By enabling sticky-dr on this interface, it will continue to act as the DR for the LAN even after the old DR comes back up.

**Three way hello** : For all interfaces, the default value is 'disabled'. It specifies that the standard two way hello is supported. When the value is set to 'enabled' it specifies that the three way hello is supported. This ensure the neighbor is created after the three way hello is seen than the conventional two way hello neighbor creation.

**Tracking support** : if configured then the T bit in the LAN Prune Delay option of the Hello Message is set. This indicates the router's capability to disable Join message suppression.

## PIM routing instance config supported by different implementations (not per interface)

These are configs supported by different implementations. Add more configs and implementations as needed. Specify name of vendor and also name of implementation if needed. Do we need to specify IPv4 and IPv6 separately? If you support it specify Yes or the range. Else, just No.

|         Config object        |  Cisco                         |  Juniper                                    |  Alcatel-Lucent                                                       |  Brocade |  Ericsson                 |  ZTE  |  Huawei                     |  Metaswitch                                        |
|:----------------------------:|--------------------------------|---------------------------------------------|-----------------------------------------------------------------------|---------:|---------------------------|-------|-----------------------------|----------------------------------------------------|
|  RP address                  |  < address > [< acl >] [override]  |  < address >                                  |                                    < address > < group-prefix >[override] |          |  < address > [<acl>]        |       |  < address >[acl][preferred]  |  < group-prefix > <mode> [< rp-address >] [override]   |
|  SSM range                   |  [acl] or < default >            |  < default > and list of group address range  |                                           list of group address range |          |  [acl] or < default >       |       |                             |  ditto                                             |
|  spt-threshold-infinity      |  empty/boolean                 |  empty/boolean                              |  {group-ipv4-prefix \| group-ipv6-prefix} [1..4294967294]\|infinity   |          |  empty/< infinity >[< acl >]  |       |  boolean                    |                                                    |
|  register-source             |  < interface >                   |                                             |                                                                       |          |  < interface>               |       |  < interface >                |                                                    |
|  old register checksum       |  empty/boolean                 |                                             |                                                                       |          |                           |       |                             |                                                    |
|  assert holdtime             |                                |  5-210                                      |                                                                       |          |                           |       |  uint16                     |                                                    |
|  jp holdtime                 |                                |                                             |                                                                       |          |                           |       |  uint16                     |                                                    |
|  jp interval                 |                                |                                             |                                                                       |          |                           |       |  uint16 1-18000s            |                                                    |
|  probe interval              |                                |                                             |                                                                       |          |                           |       |  uint16 1-3600s             |                                                    |
|  dr priority                 |                                |                                             |                                                                       |          |                           |       |  uint32                     |                                                    |
|  hello holdtime              |                                |                                             |                                                                       |          |                           |       |  uint16                     |                                                    |
|  hello interval              |                                |                                             |                                                                       |          |                           |       |  uint16 1-18000s            |                                                    |
|  register suppress interval  |                                |                                             |                                                                       |          |                           |       |  uint16                     |  0-65535s                                          |
|  register probe time         |                                |                                             |                                                                       |          |                           |       |                             |  0-65535s                                          |
|  state refresh capable       |                                |                                             |                                                                       |          |                           |       |                             |  boolean                                           |
|  state refresh interval      |                                |                                             |                                                                       |          |                           |       |                             |  1-255s                                            |
|  embedded rp                 |                                |                                             |                                                                       |          |                           |       |  boolean                    |                                                    |
|  neighbor check recv         |                                |                                             |                                                                       |          |                           |       |  boolean                    |                                                    |
|  neighbor check send         |                                |                                             |                                                                       |          |                           |       |  boolean                    |                                                    |
|  register policy             |                                |                                             |  acl                                                                  |          |                           |       |  acl                        |  ACL                                               |
|  ssm policy                  |                                |                                             |                                                                       |          |                           |       |  acl                        |  ACL                                               |
|  source policy               |                                |                                             |  acl                                                                  |          |                           |       |  acl                        |  ACL                                               |
|  source lifetime             |                                |                                             |                                                                       |          |                           |       |  uint16 60-65535s           |  0-65535s                                          |
|  ipsec name                  |                                |                                             |                                                                       |          |                           |       |  string                     |                                                    |
|  ipsec type                  |                                |                                             |                                                                       |          |                           |       |  all or hello               |                                                    |
|  SSM default range disable   |                                |                                             |  < ipv4 \| ipv6 >                                                       |          |                           |       |                             |                                                    |
|  SSM Assert compatible mode  |                                |                                             |  < enable\|disable >                                                    |          |                           |       |                             |                                                    |
|  ipv4-multicast-disable      |                                |                                             |  < boolean >                                                            |          |                           |       |                             |                                                    |
|  ipv6-multicast-disable      |                                |                                             |  < boolean >                                                            |          |                           |       |                             |                                                    |
|  non-dr-attract-traffic      |                                |                                             |  < boolean >                                                            |          |                           |       |                             |                                                    |
|  rpf-table                   |                                |                                             |  [rtable-multicast \| rtable-unicast \| both]                         |          |                           |       |                             |                                                    |
|  Multicast fast failover     |                                |                                             |  < boolean >                                                            |          |                           |       |                             |                                                    |
|  Multicast ECMP balance      |                                |                                             |  < boolean > {minutes}                                                  |          |                           |       |                             |                                                    |
|  Multicast ECMP hashing      |                                |                                             |  < boolean >                                                            |          |                           |       |                             |                                                    |
|  Apply PIM                   |                                |                                             |  < all \| subsciber-interfaces \| non-subsciber-interfaces \| none >  |          |                           |       |                             |       {.dense}                                             |

  
  
  ## PIM interface OPER state (derived and configured) supported by different implementations 
  
|            object           |  Cisco       |  Juniper     |  Alcatel-Lucent  |  Brocade |  Ericsson    |  ZTE  |  Huawei      |  Metaswitch               |
|:---------------------------:|--------------|--------------|------------------|---------:|--------------|-------|--------------|---------------------------|
|  interface                  |  string      |  string      |  string          |          |  string      |       |  string      |  int32                    |
|  dr-address                 |  ip-address  |  ip-address  |  ip-address      |          |  ip-address  |       |  ip-address  |  ip-address               |
|  is-pim-enabled             |  boolean     |  boolean     |  -               |          |              |       |              |  presence                 |
|  neighbor-count             |  uint32      |  uint32      |  -               |          |  uint32      |       |  uint32      |  uint32                   |
|  external-neighbor-count    |  uint16      |  -           |  -               |          |              |       |              |  -                        |
|  hello-interval             |  uint16      |  -           |  (0-255)         |          |  uint16      |       |  uint16      |  0-18000                  |
|  trig-hello-ivl             |              |              |                  |          |              |       |              |  0-60                     |
|  dr-priority                |  uint32      |  -           |  uint32          |          |              |       |  uint32      |  uint32                   |
|  hello-expiry               |  uint32      |  -           |  -               |          |              |       |              |  -                        |
|  are-we-dr?                 |  boolean     |  boolean     |  -               |          |              |       |              |  -                        |
|  bfd-enabled                |  boolean     |  -           |  boolean         |          |  boolean     |       |  boolean     |  - (BFD process)          |
|  bfd-interval               |  uint32      |              |  -               |          |              |       |  uint16      |  -                        |
|  bfd-multiplier             |  uint32      |  -           |  -               |          |              |       |  uint8       |  -                        |
|  passive-interface?         |  boolean     |  -           |  -               |          |              |       |              |  boolean                  |
|  join-suppression           |              |  -           |                  |          |              |       |              |  boolean                  |
|  join-prune-interval        |  uint16      |              |  -               |          |              |       |  uint16      |  0-18000 s                |
|  graft-retry-ivl            |              |  -           |                  |          |              |       |              |  100-65535000 ms          |
|  state-refresh-all-capable  |              |  -           |                  |          |              |       |              |  boolean                  |
|  prune-delay-enabled?       |  boolean     |  -           |  -               |          |              |       |              |  -                        |
|  propagation-delay          |  uint16      |  -           |  -               |          |              |       |  uint16      |  10-32767                 |
|  override-interval          |  uint16      |  -           |  -               |          |              |       |  uint16      |  uint16                   |
|  generation-id              |  uint32      |  -           |  -               |          |              |       |  uint32      |  uint32                   |
|  hello-holdtime             |  -           |  -           |  -               |          |              |       |  uint16      |  uint16                   |
|  join-prune-holdtime        |  -           |  -           |  -               |          |              |       |  uint16      |  uint16                   |
|  assert-holdtime            |  -           |  -           |  (1..300)        |          |              |       |  uint16      |  uint16                   |
|  join-attribute             |  -           |  -           |  -               |          |              |       |  boolean     |  -                        |
|  up-down                    |  -           |  up/down     |  (up/down)       |          |  up/down     |       |              |  up/down/going up/failed  |
|  star-g-state-stored        |              |              |                  |          |              |       |              |  uint32                   |
|  sg-state-stored            |              |              |                  |          |              |       |              |  uint32                   |
|  interface-mode             |              |  flag        |                  |          |              |       |              |                           |
|  interface-state            |              |  flag        |                  |          |              |       |              |                           |
|  neighbor-count             |              |  uint32      |                  |          |              |       |              |                           |
|  sg-join-count              |              |  uint32      |                  |          |              |       |              |                           |
|  *g-join-count              |              |  uint32      |                  |          |              |       |              |                           |
{.dense}
  
  

## Brief explanation of the features

**interface-mode:** A flag that indicates the pim modes this interface is enabled to run. (Sparse|Dense|Bidir)

**interface-state:** A flag that indicates the state of this interface. (DR|Non-DR|DDR|DDR-bdr|p2p)

  ## PIM neighbor OPER state (derived and configured) supported by different implementations 
  
  Neighbor state defined per interface 
  
|                            object |  Cisco           |  Juniper             |  Alcatel-Lucent  |  Brocade |  Ericsson    |  ZTE  |  Huawei      |  Metaswitch  |
|----------------------------------:|------------------|----------------------|------------------|---------:|--------------|-------|--------------|--------------|
|  interface                        |  string          |  string              |  string          |          |  string      |       |  string      |  int32       |
|  uptime                           |  yang:timeticks  |  hh:mm:ss            |  uint32          |          |  hh:mm:ss    |       |  uint32      |  uint32      |
|  expires                          |  yang:timeticks  |  uint32              |  uint32          |          |  hh:mm:ss    |       |  uint32      |  uint32      |
|  expiry-timer                     |  uint32          |  uint32              |  -               |          |              |       |              |  -           |
|  is-this-neighbor-dr              |  boolean         |  -                   |  -               |          |  boolean     |       |              |  -           |
|  propagation-delay                |  uint16          |  -                   |  uint32          |          |              |       |  uint16      |  -           |
|  override-interval                |  uint16          |  -                   |  uint32          |          |              |       |  uint16      |  uint16      |
|  neighbor-address                 |  ip-address      |  ip-address          |  ip-address      |          |  ip-address  |       |  ip-address  |  ip-address  |
|  neighbor-secondary-address-list  |                  |  list of ip-address  |                  |          |              |       |              |              |
| is-dr-priority-capable            |  boolean         |  bool                |  -               |          |              |       |              |  boolean     |
|  dr-priority                      |  uint32          |  uint32              |  uint32          |          |              |       |  uint32      |  uint32      |
|  is-proxy-capable                 |  boolean         |  -                   |  -               |          |              |       |              |  -           |
|  gen-id                           |  -               |  uint32              |  uint32          |          |  uint32      |       |  uint32      |  uint32      |
|  join-attribute                   |  -               |  -                   |  -               |          |              |       |  boolean     |  -           |
|  bfd-status                       |  -               |  -                   |  -               |          |  up/down     |       |              |  -           |
|  bfd-config-status                |                  |  enable/disable      |                  |          |              |       |              |              |
|  bfd-operational-status           |                  |  up/down             |                  |          |              |       |              |              |
|  lan-prune-delay-present          |                  |  bool                |                  |          |              |       |              |  boolean     |
|  t-bit                            |                  |  boolean/empty       |                  |          |              |       |              |  boolean     |
|  bidir-capable                    |                  |  boolean             |                  |          |              |       |              |  boolean     |
|  state-refresh-capable            |                  |  -                   |                  |          |              |       |              |  boolean     |
|  sg-join-count                    |                  |  uint32              |                  |          |              |       |              |              |
|  *g-join-count                    |                  |  uint32              |                  |          |              |       |              |              |  
  {.dense}
  
## PIM join-prune statistics/counters supported by different implementations  

|                                  object |  Cisco    |  Juniper             |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei   |  Metaswitch  |
|----------------------------------------:|-----------|----------------------|------------------|---------:|------------|-------|-----------|--------------|
|  packets-in                             |  uint32   |  -                   |  uint32          |          |            |       |           |              |
|  packets-out                            |  uint32   |  -                   |  uint32          |          |            |       |           |              |
|  format-error                           |  uint32   |  -                   |  uint32          |          |            |       |           |  uint32      |
|  checksum-error                         |  uint32   |  u32                 |  uint32          |          |  uint32    |       |           |  uint32      |
|  socket-error                           |  uint32   |  -                   |  -               |          |  uint32    |       |           |              |
|  length-error                           |           |  uint32              |  -               |          |  uint32    |       |           |  uint32      |
|  unknown-type                           |           |  uint32              |  uint32          |          |  uint32    |       |           |  uint32      |
|  unknown-ver                            |           |  -                   |  -               |          |            |       |           |  uint32      |
|  send-queue-full                        |  uint32   |  -                   |  -               |          |            |       |           |              |
|  boundary-acl-rx-drop                   |  uint32   |  -                   |  uint32          |          |            |       |           |              |
|  boundary-acl-tx-drop                   |  uint32   |  -                   |  uint32          |          |            |       |           |              |
|  input-hello                            |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  output-hello                           |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  input-jp                               |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  output-jp                              |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  input-register                         |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  output-register                        |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  input-register-stop                    |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  output-register-stop                   |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  input-assert                           |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  output-assert                          |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  invalid-registers                      |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  invalid-join-prunes                    |  uint32   |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  truncated-packets                      |  uint32   |  - (length errror?)  |  -               |          |            |       |           |              |
|  input-packet-queue-size                |  uint32   |  -                   |  -               |          |  uint32    |       |           |              |
|  packet-queue-priority                  |  uint32   |  -                   |  -               |          |            |       |           |              |
|  enqueued-packets                       |  uint32   |  -                   |  -               |          |            |       |           |              |
|  dequeued-packets                       |  uint32   |  -                   |  -               |          |            |       |           |              |
|  input-queue-tail-drops                 |  uint32   |  -                   |  -               |          |  uint32    |       |           |              |
|  invalid-register-stop                  |           |  u32                 |  uint32          |          |  uint32    |       |  uint32   |              |
|  invalid-hello                          |           |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  invalid-assert                         |           |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  recv-probe                             |           |  -                   |  -               |          |            |       |  uint32   |              |
|  send-probe                             |           |  -                   |  -               |          |            |       |  uint32   |              |
|  invalid-probe                          |           |  -                   |  -               |          |            |       |  uint32   |              |
|  recv-crp                               |           |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  send-crp                               |           |  u32                 |  -               |          |  uint32    |       |  uint32   |  uint32      |
|  invalid-crp                            |           |  u32                 |  -               |          |  uint32    |       |  uint32   |  uint32      |
|  recv-bsm                               |           |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  send-bsm                               |           |  u32                 |  uint32          |          |  uint32    |       |  uint32   |  uint32      |
|  invalid-bsm                            |           | u32                  |  uint32          |          |  uint32    |       |  uint32   |              |
|  recv-graft                             |           |  u32                 |  -               |          |  uint32    |       |           |  uint32      |
|  send-graft                             |           |  u32                 |  -               |          |  uint32    |       |           |  uint32      |
|  invalid-graft                          |           |  u32                 |  -               |          |  uint32    |       |           |  uint32      |
|  recv-graft-ack                         |           |  u32                 |  -               |          |  uint32    |       |           |  uint32      |
|  send-graft-ack                         |           |  u32                 |  -               |          |  uint32    |       |           |  uint32      |
|  invalid-graft-ack                      |           |  u32                 |  -               |          |  uint32    |       |           |  uint32      |
|  recv-state-refresh                     |           |  u32                 |  -               |          |            |       |           |  uint32      |
|  send-state-refresh                     |           |  u32                 |  -               |          |            |       |           |  uint32      |
|  invalid-state-refresh                  |           |  u32                 |  -               |          |            |       |           |  uint32      |
|  recv-nbr-unknown                       |           |  u32                 |  uint32          |          |            |       |           |              |
|  invalid-version                        |           |  - (unknown-ver)     |  uint32          |          |            |       |           |              |
|  recv-DF-Election                       |           |  u32                 |                  |          |            |       |           |              |
|  send-DF-Election                       |           |  u32                 |                  |          |            |       |           |              |
|  invalid-DF-Election                    |           |  u32                 |                  |          |            |       |           |              |
|  recv-Anycast-Register                  |           |  u32                 |                  |          |            |       |           |              |
|  send-Anycast-Register                  |           |  u32                 |                  |          |            |       |           |              |
|  invalid-Anycast-Register               |           |  u32                 |                  |          |            |       |           |              |
|  recv-Anycast-Register-Stop             |           |  u32                 |                  |          |            |       |           |              |
|  send-Anycast-Register-Stop             |           |  u32                 |                  |          |            |       |           |              |
|  invalid-Anycast-Register-Stop          |           |  u32                 |                  |          |            |       |           |              |
|  Hello dropped on neighbor policy       |           |  u32                 |                  |          |            |       |           |              |
|  Neighbor unknown                       |           |  u32                 |                  |          |            |       |           |              |
|  Bad Receive If                         |           |  u32                 |                  |          |            |       |           |              |
|  Rx Register not RP                     |           |  u32                 |                  |          |            |       |           |              |
|  Rx Register no route                   |           |  u32                 |                  |          |            |       |           |              |
|  Rx Unknown Reg Stop                    |           |  u32                 |                  |          |            |       |           |              |
|  Join/Prune? on upstream if             |           |  u32                 |                  |          |            |       |           |              |
|  Join/Prune? for invalid group          |           |  u32                 |                  |          |            |       |           |              |
|  Rx Join/Prune? on upstream if          |           |  u32                 |                  |          |            |       |           |              |
|  Rx Join/Prune? for invalid group       |           |  u32                 |                  |          |            |       |           |              |
|  Rx Join/Prune? messages dropped        |           |  u32                 |                  |          |            |       |           |              |
|  Rx sparse join for dense group         |           |  u32                 |                  |          |            |       |           |              |
|  Rx Graft/Graft? Ack no state           |           |  u32                 |                  |          |            |       |           |              |
|  Rx Graft on upstream if                |           |  u32                 |                  |          |            |       |           |              |
|  Rx CRP not BSR                         |           |  u32                 |                  |          |            |       |           |              |
|  Rx BSR when BSR                        |           |  u32                 |                  |          |            |       |           |              |
|  Rx BSR not RPF if                      |           |  u32                 |                  |          |            |       |           |              |
|  Rx unknown hello opt                   |           |  u32                 |                  |          |            |       |           |              |
|  Rx data no state                       |           |  u32                 |                  |          |            |       |           |              |
|  Rx RP no state                         |           |  u32                 |                  |          |            |       |           |              |
|  Rx malformed packet                    |           |  u32                 |                  |          |            |       |           |              |
|  Rx illegal TTL                         |           |  u32                 |                  |          |            |       |           |              |
|  Rx illegal destination address         |           |  u32                 |                  |          |            |       |           |              |
|  No RP                                  |           |  u32                 |                  |          |            |       |           |              |
|  No route upstream                      |           |  u32                 |                  |          |            |       |           |              |
|  RP mismatch                            |           |  u32                 |                  |          |            |       |           |              |
|  RP mode mismatch                       |           |  u32                 |                  |          |            |       |           |              |
|  RPF neighbor unknown                   |           |  u32                 |                  |          |            |       |           |              |
|  Rx Joins/Prunes? filtered              |           |  u32                 |                  |          |            |       |           |              |
|  Tx Joins/Prunes? filtered              |           |  u32                 |                  |          |            |       |           |              |
|  Embedded-RP invalid addr               |           |  u32                 |                  |          |            |       |           |              |
|  Embedded-RP limit exceed               |           |  u32                 |                  |          |            |       |           |              |
|  Embedded-RP added                      |           |  u32                 |                  |          |            |       |           |              |
|  Embedded-RP removed                    |           |  u32                 |                  |          |            |       |           |              |
|  Rx Bidir Join/Prune? on non-Bidir if   |           |  u32                 |                  |          |            |       |           |              |
|  Rx Bidir Join/Prune? on non-DF if      |           |  u32                 |                  |          |            |       |           |              |
|  (*,G)Join drop due to ssm range check  |           |  u32                 |                  |          |            |       |           |              |  
{.dense}  
  
  
## PIM mroute/topology OPER data supported by different implementations
  

|                       object |  Cisco           |  Juniper                 |  Alcatel-Lucent  |  Brocade |  Ericsson     |  ZTE  |  Huawei       |  Metaswitch  |
|-----------------------------:|------------------|--------------------------|------------------|---------:|---------------|-------|---------------|--------------|
|  group-address               |  ip-address      |  ip-address              |                  |          |  ip-address   |       |  ip-address   |  ip-address  |
|  source-address              |  ip-address      |  ip-address              |                  |          |  ip-address   |       |  ip-address   |  ip-address  |
|  group-prefix-len            |  uint8           |  uint8 (only for bidir)  |                  |          |               |       |               |              |
|  source-prefix-len           |  uint8           |  -                       |                  |          |               |       |               |              |
|  rp-address                  |  ip-address      |  ip-address              |                  |          |  ip-address   |       |  ip-address   |  ip-address  |
|  rpf-neighbor                |  ip-address      |  ip-address              |                  |          |               |       |               |  ip-address  |
|  proxy-address               |  ip-address      |  -                       |                  |          |               |       |               |              |
|  protocol                    |  enumeration     |  ?                       |                  |          |  enumeration  |       |  enumeration  |  enum        |
|  wildcard                    |  boolean         |  bool                    |                  |          |               |       |               |              |
|  rpt?                        |  boolean         |  bool                    |                  |          |  boolean      |       |               |  boolean     |
|  spt?                        |  boolean         |  bool                    |                  |          |  boolean      |       |               |  boolean     |
|  uptime                      |  yang:timeticks  |  uint32 (seconds)        |                  |          |  hh:mm:ss     |       |  uint32       |  uint32      |
|  expiry                      |  yang:timeticks  |  uint32 (seconds)        |                  |          |  hh:mm:ss     |       |               |  uint32      |
|  aliveness-time              |  uint32          |  ?                       |                  |          |               |       |               |              |
|  msdp-source                 |  boolean         |  -                       |                  |          |  boolean      |       |               |  boolean     |
|  rpf-safi                    |  uint8           |  -                       |                  |          |               |       |               |              |
|  rpf-table-name              |  string          |  -                       |                  |          |               |       |               |              |
|  rpf-drop                    |  boolean         |  -                       |                  |          |               |       |               |              |
|  rpf-proxy-enabled           |  boolean         |  -                       |                  |          |               |       |               |              |
|                              |                  |                          |                  |          |               |       |               |              |
|  jp-status                   |  uint32          |  -                       |                  |          |               |       |               |              |
|  is-last-hop?                |  boolean         |  -                       |                  |          |               |       |               |              |
|  iif-name                    |  string          |  string                  |                  |          |  string       |       |  string       |  int32       |
|  upstream-state              |                  |  enum                    |                  |          |               |       |               |              |
|  upstream-protocol           |                  |  enum                    |                  |          |               |       |               |              |
|  mode                        |                  |  enum                    |                  |          |               |       |               |              |
|  downstream-interface-count  |                  |  enum                    |                  |          |               |       |               |              |
|  downstream-neighbor-count   |                  |  enum                    |                  |          |               |       |               |              |
|  upstream-state-flag         |                  |  flags                   |                  |          |               |       |               |              |
|  accepting-bidir-interface   |                  |  list of strings         |                  |          |               |       |               |              |  
{.dense}  
  
  
**mode:** An enum that indicates the pim mode of this entry. (enum : Sparse, Dense, Bidir)

**upstream-state:** An enum that indicates the upstream join state for this entry. (enum : no route, no neighbor, no route, admin-scoped, assert winner, looser, etc. . .)

**upstream-protocol:** An enum that indicates the pim modes this entry is for. (enum : PIM, local-source, MVPN, etc, . . .)

**upstream-state-flag:** A set flags to indicate the upstream state of the flow. (local-source; local-rp; joint-to-rp; joint-to-source; prune-to-rp; np-prune-to0rp; prune-to-source)

Outgoing interfaces list 
  
|                      object |  Cisco           |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei       |  Metaswitch  |
|----------------------------:|------------------|-----------|------------------|---------:|------------|-------|---------------|--------------|
|  interface-name             |  string          |  string   |                  |          |  string    |       |  string       |  int32       |
|  assert-winner              |  ip-address      |  ipaddr   |                  |          |            |       |               |  ip-address  |
|  assert-winner-metric-pref  |                  |  u32      |                  |          |            |       |               |  int32       |
|  assert-winner-metric       |                  |  u32      |                  |          |            |       |               |  uint32      |
|  uptime                     |  yang:timeticks  |  -        |                  |          |            |       |  uint32       |  uint32      |
|  expiry                     |  yang:timeticks  |  u32      |                  |          |            |       |  uint32       |  uint32      |
|  jp-timer                   |  uint32          |  -        |                  |          |            |       |               |              |
|  jp-state                   |  uint32          |  -        |                  |          |            |       |               |  enum        |
|  prune-pending-timer        |                  |           |                  |          |            |       |               |  uint32      |
|  forwarding-state           |  uint32          |  -        |                  |          |            |       |               |              |
|  immediate-state            |  uint32          |  -        |                  |          |            |       |               |              |
|  last-hop                   |  boolean         |  -        |                  |          |            |       |               |              |
|  protocol-type              |                  |  ?        |                  |          |            |       |  string       |              |
|  assert-state               |                  |  -        |                  |          |            |       |  enumeration  |  enum        |
|  assert-timer               |                  |  -        |                  |          |            |       |  enumeration  |  uint32      |
|  dr-state                   |                  |  -        |                  |          |            |       |  boolean      |              |
|  downstream-state           |                  |  -        |                  |          |            |       |  enumeration  |              |
|  rpt-state                  |                  |  -        |                  |          |            |       |  enumeration  |              |
|  local-member               |                  |  -        |                  |          |            |       |  boolean      |              |
|  dense-prune-timeout        |                  |  uint32   |                  |          |            |       |               |              |
|  state-flag                 |                  |  flags    |                  |          |            |       |               |              |
  {.dense}
  
Outgoing interface neighbor list 
  
|         object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch  |
|---------------:|---------|-----------|------------------|---------:|------------|-------|----------|--------------|
|  address       |         |  ipaddr   |                  |          |            |       |          |              |
|  state         |         |  enum     |                  |          |            |       |          |              |
|  timeout       |         |  u32      |                  |          |            |       |          |              |
|  uptime        |         |  u32      |                  |          |            |       |          |              |
|  last jp oper  |         |  enum     |                  |          |            |       |          |              |
|  last jp time  |         |  u32      |                  |          |            |       |          |              |
  {.dense}
  
## PIM BSR OPER data supported by different implementations
  
BSR candidate-BSR/election information 
|                    object |  Cisco       |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson    |  ZTE  |  Huawei        |  Metaswitch  |
|--------------------------:|--------------|-----------|------------------|---------:|--------------|-------|----------------|--------------|
|  bsr-address              |  ip-address  |  ipaddr   |                  |          |  ip-address  |       |  ip-address    |  ip-address  |
|  bsr-priority             |  uint8       |  uint16   |                  |          |  uint8       |       |  uint8         |  uint8       |
|  bsr-local-address        |              |  ipaddr   |                  |          |              |       |                |              |
|  bsr-local-priority       |              |  uint16   |                  |          |              |       |                |              |
|  bsr-mask-length          |  uint8       |  -        |                  |          |  uint8       |       |  uint8         |  int8        |
|  bsr-up-time              |  uint16      |           |                  |          |  uint32      |       |  uint32        |              |
|  bsr-election-state       |  uint32      |  enum     |                  |          |              |       |  enumeration   |              |
|  bsr-scope                |  uint16      |  -        |                  |          |              |       |  enumeration   |              |
|  candidate-bsr-address    |   ip-address |  ?        |                  |          |              |       |  ip-address    |  ip-address  |
|  candidate-bsr-state      |  uint32      |           |                  |          |              |       |  enumeration   |  boolean     |
|  candidate-bsr-priority   |  uint8       |           |                  |          |              |       |  uint8         |  uint8       |
|  candidate-bsr-mask-len   |  uint8       |           |                  |          |              |       |  uint8         |  int8        |
|  bsr-timeout              |              |  u32      |                  |          |              |       |                |              | {.dense} 
  
  
  
  BSR candidate-RP information 
  
|                                object |  Cisco        |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson    |  ZTE  |  Huawei       |  Metaswitch         |
|--------------------------------------:|---------------|-----------|------------------|---------:|--------------|-------|---------------|---------------------|
|  candidate-rp-address                 |  ip-address   |           |                  |          |  ip-address  |       |  ip-address   |  ip-address         |
|  candidate-rp-mode                    |  enumeration  |           |                  |          |              |       |               |  boolean (=bidir?)  |
|  candidate-rp-scope                   |  uint32       |           |                  |          |              |       |               |                     |
|  candidate-rp-priority                |  uint8        |           |                  |          |              |       |  uint8        |  uint8              |
|  candidate-rp-holdtime                |  uint16       |           |                  |          |              |       |               |  1-65535            |
|  candidate-rp-advertisement-interval  |  uint16       |           |                  |          |              |       |               |  1-26214            |
|  candidate-rp-advertisement-next      |               |           |                  |          |  hh:mm:ss    |       |               |  uint32             |
|  candidate-rp-uptime                  |  uint16       |           |                  |          |  hh:mm:ss    |       |  uint32       |                     |
|  group-list-acl                       |  string       |           |                  |          |  string      |       |               |  acl                |
|  crp-mode                             |  enumeration  |           |                  |          |              |       |               |                     |
|  group-address                        |  ip-address   |           |                  |          |  ip-address  |       |  ip-address   |                     |
|  group-mask-len                       |  uint32       |           |                  |          |  uint8       |       |  uint8        |                     |
 {.dense} 
  
## PIM RP OPER data supported by different implementations  
  
RP information
  
|               object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch  |
|---------------------:|---------|-----------|------------------|---------:|------------|-------|----------|--------------|
|  RP-address          |         |  ipaddr   |                  |          |            |       |          |  ip-addr     |
|  discovered-by       |         |  enum     |                  |          |            |       |          |  enum        |
|  PIM-Mode            |         |  enum     |                  |          |            |       |          |  enum        |
|  discovered-from     |         |  ipaddr   |                  |          |            |       |          |              |
|  holdtime            |         |  u32      |                  |          |            |       |          |              |
|  active-time         |         |  string   |                  |          |            |       |          |              |
|  holdtime-remaining  |         |  u32      |                  |          |            |       |          |              |
  {.dense}
  
## PIM bidir df-election OPER data supported by different implementations

  ## PIM RPF (source) OPER data supported by different implementations

 ## is IGMP CONFIG VRF aware? 
  
|      object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch          |
|------------:|---------|-----------|------------------|---------:|------------|-------|----------|----------------------|
|  vrf aware  |  yes    |  no       |  yes             |          |            |       |  yes     |  yes (Snooping only) |
  {.dense}
  
 ## IGMP CONFIG
  
|                       object |  Cisco           |  Juniper        |  Alcatel-Lucent  |  Brocade |  Ericsson       |  ZTE  |  Huawei            |  Metaswitch      |
|-----------------------------:|------------------|-----------------|------------------|---------:|-----------------|-------|--------------------|------------------|
|  enabled                     |                  |  bool           |  boolean         |          |                 |       |                    |  bool            |
|  query-interval              |  uint (1-3600)s  |  uint (1-1024)  |  uint (2-1024)s  |          |                 |       |  uint16(1-18000s)  |  1-31744s        |
|  startup query interval      |                  |                 |                  |          |                 |       |                    |  1-31744s        |
|  startup query count         |                  |                 |                  |          |                 |       |                    |  1-255           |
|  query-response-interval     |  uint (60-300)s  |  uint (ms)      |  uint (1-1023)s  |          |                 |       |  uint8(1-25s)      |  0-83876x0.1s    |
|  query-last-member-interval  |  uint (1-12)s    |  uint (ms)      |  uint (1-1023)s  | \|       |                 |       |  uint8(1-5s)       |  0-83876x0.1s    |
|  last member query count     |                  |                 |                  |          |                 |       |                    |  1-255           |
|  robust-count                |      uint (2-10) |  uint (2-10)    |  uint8(2-10)     |          |                 |       |  uint8(2-5)        |  1-255           |
|  version                     |  uint (1-3)      |  uint (1-3)     |   uint (1-3)     |          |                 |       |                    |  1-3             |
|  maximum-transmit-rate       |                  |  uint (pps)     |  -               |          |  uint16 (kbps)  |       |                    |                  |
|  require-router-alert        |                  |                 |  -               |          |                 |       |  boolean           |  bool            |
|  send-router-alert           |                  |                 |  -               |          |                 |       |  boolean           |  - (always on)   |
|  other-querier-present-time  |                  |                 |  -               |          |                 |       |  uint16(60-300s)   |  -               |
|  gmp-entry-limit             |                  |                 |  -               |          |                 |       |  uint32            |  uint32          |
|  max-groups                  |  uint (1-75000)  |                 |                  |          |                 |       |                    |  uint32          |
|  max-groups-per-interface    |  uint (1-40000)  |                 |                  |          |                 |       |                    |  uint32          |
|  explicit-tracking < acl >     |  empty           |                 |                  |          |                 |       |                    |  -               |
 {.dense} 
  
## IGMP Interface CONFIG
  
|                       object |  Cisco        |  Juniper     |  Alcatel-Lucent       |  Brocade |  Ericsson     |  ZTE  |  Huawei                       |  Metaswitch     |
|-----------------------------:|---------------|--------------|-----------------------|---------:|---------------|-------|-------------------------------|-----------------|
|  if-name                     |  string       |  string      |  string               |          |  string       |       |  string                       |  int32          |
|  enabled                     |               |  bool        |  boolean              |          |               |       |  boolean                      |  implicit       |
|  version                     |  uint (1-3)   |  uint (1-3)  |  uint (1-3)           |          |  1-3          |       |  uint8(1-3)                   |  1-3            |
|  group-limit                 |     (1-40000) |  uint32      |                16000* |          |  1..100000    |       |  uint16                       |  uint32         |
|  max sources                 |               |              |  1000                 |          |               |       |                               |  -              |
|  max group sources           |               |              |  32000                |          |               |       |                               |  uint32         |
|  group-policy                |  acl          |  string      |  string               |          |  string       |       |  acl                          |  acl            |
|  immediate-leave             |               |  toggle      |  -                    |          |  toggle       |       |  boolean [acl]                |  bool           |
|  qry before imm leave        |               |              |                       |          |               |       |                               |  bool           |
|  ssm-map                     |               |  policy      |  group-address-range  |          |  policy       |       |  policy/group-address & mask  |  acl            |
|  promiscuous                 |               |  toggle      |                       |          |               |       |                               |  -              |
|  static                      |               |  ...         |  ...                  |          |  group, addr  |       |  group & source addresss      |  (G,S,I)        |
|  query-interval              |  `(1..3600)s  |              |   2..1024             |          |  uint16 (s)   |       |  uint16(1-18000s)             |  1-31744s       |
|  query-response-interval     |  (1..12)s     |              |  1..1023              |          |  1..25 (s)    |       |  uint8(1-25s)                 |  0-83876x0.1s   |
|  query-last-member-interval  |    (60-300) s |              |  1..1023              |          |  uint16 (ms)  |       |  uint8(1-5s)                  |  0-83876x0.1s   |
|  last member query count     |               |              |                       |          |               |       |                               |  1-255          |
|  robust-count                |               |              |  -                    |          |  2-7          |       |  uint8(2-5)                   |  1-255          |
|  disable-router-alert-check  |               |              |  boolean              |          |               |       |                               |  -              |
|  drop igmpv1                 |               |              |                       |          |               |       |                               |  bool           |
|  drop igmpv2/mldv1           |               |              |                       |          |               |       |                               |  bool           |
|  subnet-check                |               |              |  boolean              |          |  toggle       |       |                               |  -              |
|  join-group                  |  group-addr   |              |                       |          |  group-addr   |       |                               |  ?              |
|  ip-source-policy            |               |              |                       |          |               |       |  acl                          |  acl            |
|  require-router-alert        |               |              |                       |          |               |       |  boolean                      |  bool           |
|  send-router-alert           |               |              |                       |          |               |       |  boolean                      |  -              |
|  other-querier-present-time  |               |              |                       |          |               |       |  uint16(60-300)               |                 |
|  ssmap-enable                |               |              |                       |          |               |       |  boolean                      |  acl            |
|  passive interface           |               |              |                       |          |               |       |                               |  bool           |  
  
## IGMP Interface Static groups CONFIG per interface 
  |                     object |  Cisco   |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch  |
|---------------------------:|----------|-----------|------------------|---------:|------------|-------|----------|--------------|
|  group                     |   ipaddr |  ipaddr   |  ipaddr          |          |  ipaddr    |       |  ipaddr  |  ipaddr      |
|  source                    |   ipaddr |  ipaddr   |  ipaddr          |          |  ipaddr    |       |  ipaddr  |  ipaddr      |
|  exclude                   |  -       |  toggle   |  -               |          |            |       |          |  -           |
|  number of groups          |  uint    |  uint     |  -               |          |            |       |  uint16  |  -           |
|  group increment           |  ipaddr  |  ipaddr   |  -               |          |            |       |          |  -           |
|  number of sources         |  uint    |  uint     |  -               |          |            |       |          |  -           |
|  source increment          |  ipaddr  |  ipaddr   |  -               |          |            |       |          |  -           |
|  static group range start  |          |           |  ipaddr          |          |            |       |  ipaddr  |  -           |
|  static group range end    |          |           |  ipaddr          |          |            |       |          |  -           |
|  static group range step   |          |           |  ipaddr          |          |            |       |  ipaddr  |  -           |
{.dense}
  
## MLD CONFIG
  
|                       object |  Cisco           |  Juniper        |  Alcatel-Lucent  |  Brocade |  Ericsson       |  ZTE  |  Huawei            |  Metaswitch      |
|-----------------------------:|------------------|-----------------|------------------|---------:|-----------------|-------|--------------------|------------------|
|  enabled                     |                  |  bool           |  boolean         |          |                 |       |                    |  bool            |
|  query-interval              |  uint (1-3600)s  |  uint (1-1024)  |  uint (2-1024)s  |          |                 |       |  uint16(1-18000s)  |  1-31744s        |
|  startup query interval      |                  |                 |                  |          |                 |       |                    |  1-31744s        |
|  startup query count         |                  |                 |                  |          |                 |       |                    |  1-255           |
|  query-response-interval     |  uint (60-300)s  |  uint (ms)      |  uint (1-1023)s  |          |                 |       |  uint8(1-25s)      |  0-83876x0.1s    |
|  query-last-member-interval  |  uint (1-12)s    |  uint (ms)      |  uint (1-1023)s  | \|       |                 |       |  uint8(1-5s)       |  0-83876x0.1s    |
|  last member query count     |                  |                 |                  |          |                 |       |                    |  1-255           |
|  robust-count                |      uint (2-10) |  uint (2-10)    |  uint8(2-10)     |          |                 |       |  uint8(2-5)        |  1-255           |
|  version                     |  uint (1-3)      |  uint (1-3)     |   uint (1-3)     |          |                 |       |                    |  1-3             |
|  maximum-transmit-rate       |                  |  uint (pps)     |  -               |          |  uint16 (kbps)  |       |                    |                  |
|  require-router-alert        |                  |                 |  -               |          |                 |       |  boolean           |  bool            |
|  send-router-alert           |                  |                 |  -               |          |                 |       |  boolean           |  - (always on)   |
|  other-querier-present-time  |                  |                 |  -               |          |                 |       |  uint16(60-300s)   |  -               |
|  gmp-entry-limit             |                  |                 |  -               |          |                 |       |  uint32            |  uint32          |
|  max-groups                  |  uint (1-75000)  |                 |                  |          |                 |       |                    |  uint32          |
|  max-groups-per-interface    |  uint (1-40000)  |                 |                  |          |                 |       |                    |  uint32          |
|  explicit-tracking < acl >     |  empty           |                 |                  |          |                 |       |                    |  -               |  
  {.dense}
  
## MLD Interface CONFIG 
  
|                       object |  Cisco        |  Juniper     |  Alcatel-Lucent       |  Brocade |  Ericsson     |  ZTE       |  Huawei                       |  Metaswitch     |
|-----------------------------:|---------------|--------------|-----------------------|---------:|---------------|------------|-------------------------------|-----------------|
|  if-name                     |  string       |  string      |  string               |          |  string       |            |  string                       |  int32          |
|  enabled                     |               |  bool        |  boolean              |          |               |  *boolean  |  boolean                      |  implicit       |
|  version                     |  uint (1-3)   |  uint (1-3)  |  uint (1-3)           |          |  1-3          |            |  uint8(1-3)                   |  1-3            |
|  group-limit                 |     (1-40000) |  uint32      |                16000* |          |  1..100000    |            |  uint16                       |  uint32         |
|  max sources                 |               |              |  1000                 |          |               |            |                               |  -              |
|  max group sources           |               |              |  32000                |          |               |            |                               |  uint32         |
|  group-policy                |  acl          |  string      |  string               |          |  string       |            |  acl                          |  acl            |
|  immediate-leave             |               |  toggle      |  -                    |          |  toggle       |            |  boolean [acl]                |  bool           |
|  qry before imm leave        |               |              |                       |          |               |            |                               |  bool           |
|  ssm-map                     |               |  policy      |  group-address-range  |          |  policy       |            |  policy/group-address & mask  |  acl            |
|  promiscuous                 |               |  toggle      |                       |          |               |            |                               |  -              |
|  static                      |               |  ...         |  ...                  |          |  group, addr  |            |  group & source addresss      |  (G,S,I)        |
|  query-interval              |  `(1..3600)s  |              |   2..1024             |          |  uint16 (s)   |            |  uint16(1-18000s)             |  1-31744s       |
|  query-response-interval     |  (1..12)s     |              |  1..1023              |          |  1..25 (s)    |            |  uint8(1-25s)                 |  0-83876x0.1s   |
|  query-last-member-interval  |    (60-300) s |              |  1..1023              |          |  uint16 (ms)  |            |  uint8(1-5s)                  |  0-83876x0.1s   |
|  last member query count     |               |              |                       |          |               |  *1-10     |                               |  1-255          |
|  robust-count                |               |              |  -                    |          |  2-7          |            |  uint8(2-5)                   |  1-255          |
|  disable-router-alert-check  |               |              |  boolean              |          |               |            |                               |  -              |
|  drop igmpv1                 |               |              |                       |          |               |            |                               |  bool           |
|  drop igmpv2/mldv1           |               |              |                       |          |               |            |                               |  bool           |
|  subnet-check                |               |              |  boolean              |          |  *-           |            |                               |  -              |
|  join-group                  |  group-addr   |              |                       |          |  *-           |            |                               |  ?              |
|  ip-source-policy            |               |              |                       |          |               |            |  acl                          |  acl            |
|  require-router-alert        |               |              |                       |          |               |            |  boolean                      |  bool           |
|  send-router-alert           |               |              |                       |          |               |            |  boolean                      |  -              |
|  other-querier-present-time  |               |              |                       |          |               |            |  uint16(60-300)               |                 |
|  ssmap-enable                |               |              |                       |          |               |            |  boolean                      |  acl            |
|  passive interface           |               |              |                       |          |               |            |                               |  bool           |  
 {.dense} 
  
## MLD Interface Static groups CONFIG per interface 
  
  |                     object |  Cisco   |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch  |
|---------------------------:|----------|-----------|------------------|---------:|------------|-------|----------|--------------|
|  group                     |   ipaddr |  ipaddr   |  ipaddr          |          |  ipaddr    |       |  ipaddr  |  ipaddr      |
|  source                    |   ipaddr |  ipaddr   |  ipaddr          |          |  ipaddr    |       |  ipaddr  |  ipaddr      |
|  exclude                   |  -       |  toggle   |  -               |          |            |       |          |  -           |
|  number of groups          |  uint    |  uint     |  -               |          |            |       |  uint16  |  -           |
|  group increment           |  ipaddr  |  ipaddr   |  -               |          |            |       |          |  -           |
|  number of sources         |  uint    |  uint     |  -               |          |            |       |          |  -           |
|  source increment          |  ipaddr  |  ipaddr   |  -               |          |            |       |          |  -           |
|  static group range start  |          |           |  ipaddr          |          |            |       |  ipaddr  |  -           |
|  static group range end    |          |           |  ipaddr          |          |            |       |          |  -           |
|  static group range step   |          |           |  ipaddr          |          |            |       |  ipaddr  |  -           |
 {.dense} 
  
## MVPN instance config supported by different implementations
  
|                    object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei   |  Metaswitch   |
|--------------------------:|---------|-----------|------------------|---------:|------------|-------|-----------|---------------|
|  config-type              |         |           |                  |          |            |       |  enum     |               |
|  sender-site              |         |           |                  |          |            |       |  boolean  |               |
|  c-multicast-signal-mode  |         |           |                  |          |            |       |  enum     |               |
|  c-multicast-frr          |         |           |                  |          |            |       |  boolean  |               |
|  rpt-spt-mode             |         |           |                  |          |            |       |  enum     |               |
|  mvpn-target              |         |           |                  |          |            |       |  ...      |               |
|  mvpn-mtunnel-interface   |         |           |                  |          |            |       |  ...      |               |
|  mvpn-share-mdt           |         |           |                  |          |            |       |  ...      |               |
|  mvpn-switch-mdt          |         |           |                  |          |            |       |  ...      |               |
|  mvpn-ipmsi-tunnel        |         |           |                  |          |            |       |  ...      |               |
|  mvpn-spmsi-tunnel        |         |           |                  |          |            |       |  ...      |               |  
 {.dense} 
  
## MVPN vpn target config per instance 

  |             object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch   |
|-------------------:|---------|-----------|------------------|---------:|------------|-------|----------|---------------|
|  rt-type           |         |           |                  |          |            |       |  enum    |               |
|  vpn-target-value  |         |           |                  |          |            |       |  enum    |               |
 {.dense} 
  
## MVPN mtunnel interface config per instance 
  
|                    object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei   |  Metaswitch   |
|--------------------------:|---------|-----------|------------------|---------:|------------|-------|-----------|---------------|
|  mtunnel-num              |         |           |                  |          |            |       |  uint16   |               |
|  mtunnel-name             |         |           |                  |          |            |       |  string   |               |
|  is-unnumbered            |         |           |                  |          |            |       |  boolean  |               |
|  unnumbered-if-name       |         |           |                  |          |            |       |  if-name  |               |
|  mtunnel-if-ipv4-address  |         |           |                  |          |            |       |  ipaddr   |               |
|  mtunnel-if-ipv4-masklen  |         |           |                  |          |            |       |  uint8    |               |
|  mtunnel-if-ipv6-address  |         |           |                  |          |            |       |  ipaddr   |               |
|  mtunnel-if-ipv6-masklen  |         |           |                  |          |            |       |  uint8    |               |  
 {.dense} 
  
##  MVPN share mdt config per instance
  
 share mdt --> default mdt   
  
|                     object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch   |
|---------------------------:|---------|-----------|------------------|---------:|------------|-------|----------|---------------|
|  share-mdt-mode            |         |           |                  |          |            |       |  enum    |               |
|  ipv4-share-group-address  |         |           |                  |          |            |       |  ipaddr  |               |
|  ipv6-share-group-address  |         |           |                  |          |            |       |  ipaddr  |               |  
 {.dense}  
  
## MVPN switch mdt config per instance
  
switch mdt --> data mdt 
  
|                      object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei   |  Metaswitch   |
|----------------------------:|---------|-----------|------------------|---------:|------------|-------|-----------|---------------|
|  mdt-limit                  |         |           |                  |          |            |       |  uint16   |               |
|  switch-mdt-mode            |         |           |                  |          |            |       |  enum     |               |
|  ipv4-group-pool-address    |         |           |                  |          |            |       |  ipaddr   |               |
|  ipv4-group-pool-masklen    |         |           |                  |          |            |       |  uint8    |               |
|  ipv6-group-pool-address    |         |           |                  |          |            |       |  ipaddr   |               |
|  ipv6-group-pool-masklen    |         |           |                  |          |            |       |  uint8    |               |
|  switch-threshold           |         |           |                  |          |            |       |  uint32   |               |
|  switch-delay-time          |         |           |                  |          |            |       |  uint8    |               |
|  switch-holddown-time       |         |           |                  |          |            |       |  uint8    |               |
|  group-acl-name             |         |           |                  |          |            |       |  acl      |               |
|  group-acl-ipv6-name        |         |           |                  |          |            |       |  acl      |               |
|  is-switch-group-reuse-log  |         |           |                  |          |            |       |  boolean  |               |  
 {.dense}  
  
## MVPN ipmsi tunnel config per instance
  
|             object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch   |
|-------------------:|---------|-----------|------------------|---------:|------------|-------|----------|---------------|
|  tunnel-mode       |         |           |                  |          |            |       |  enum    |               |
|  te-p2mp-template  |         |           |                  |          |            |       |  string  |               |  
 {.dense}  
  
## MVPN spmsi tunnle config per instance
  
|                object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch   |
|----------------------:|---------|-----------|------------------|---------:|------------|-------|----------|---------------|
|  ipv4-group-address   |         |           |                  |          |            |       |  ipaddr  |               |
|  ipv4-group-masklen   |         |           |                  |          |            |       |  uint8   |               |
|  ipv6-group-address   |         |           |                  |          |            |       |  ipaddr  |               |
|  ipv6-group-masklen   |         |           |                  |          |            |       |  uint8   |               |
|  ipv4-source-address  |         |           |                  |          |            |       |  ipaddr  |               |
|  ipv4-source-masklen  |         |           |                  |          |            |       |  uint8   |               |
|  ipv6-source-address  |         |           |                  |          |            |       |  ipaddr  |               |
|  ipv6-source-masklen  |         |           |                  |          |            |       |  uint8   |               |
|  tunnel-mode          |         |           |                  |          |            |       |  enum    |               |
|  te-p2mp-template     |         |           |                  |          |            |       |  string  |               |  
 {.dense}  
  
  ## MSDP CONFIG
  
|                       object |  Cisco              |  Juniper         |  Nokia                   |  Brocade |  Ericsson     |  ZTE        |  Huawei     |  Metaswitch  |
|-----------------------------:|---------------------|------------------|--------------------------|---------:|---------------|-------------|-------------|--------------|
|  enabled                     |                     |  bool (disable)  |  boolean                 |          |  boolean      |             |             |              |
|  default-peer                |   ipaddr            |  -               |  ipaddr                  |          |  ipaddr       |             |             |              |
|  local-address               |                     |  ipaddr          |                          |          |               |             |             |              |
|  default-peer-policy         |                     |  -               |  -                       |          |  prefix-list  |             |             |              |
|  originating-rp              |   interface         |  -               |  ipaddr*                 |          |  interface    |  interface  |  interface  |              |
|  originating-rp-sa-filter    |                     |  -               |  -                       |          |  acl          |             |             |              |
|  static-rpf-peer             |                     |  -               |  -                       |          |               |             |  ipaddr     |              |
|  connect-source              |  interface          |  -               |  ipaddr                  |          |               |  ipaddr     |  ipaddr     |              |
|  sa-filter-in                |  (acl,rp-list/acl)  |  -               |  acl                     |          |               |             |             |              |
|  sa-filter-out               |  (acl,rp-list/acl)  |  -               |  acl                     |          |               |             |             |              |
|  ttl-threshold               |  int                |  -               |  int(90-600)             |          |               |             |             |              |
|  rpf-table                   |                     |  -               |  enum(ucast/mcast/both)  |          |               |             |             |              |
|  receive-msdp-msg-rate       |                     |  -               |  uint32(10..10000)       |          |               |             |             |              |
|  receive-msdp-msg-interval   |                     |  -               |  uint32(0..600)          |          |               |             |             |              |
|  receive-msdp-msg-threshold  |                     |  -               |  uint32(0..1000000)      |          |               |             |             |              |
|  source                      |                     |  -               |  ipaddr                  |          |               |             |             |              |
|  active-source-limit         |                     |  -               |  uint32                  |          |               |             |             |              |
|  data-encapsulation          |                     |  bool            |  boolean                 |          |               |             |             |              |  
{.dense}   

## Brief explanation of the features 
  
** Default peer:** The default peer accepts all MSDP SA messages.

A default peer is needed in topologies where MSDP peers do not coexist with BGP peers. The reverse path forwarding (RPF) check on SA messages can fail, and no SA messages are accepted. In these cases, you can configure the peer as a default peer and bypass RPF checks.

**source/active-source-limit** : active source limit works with source config where maximum number of source active can be learnt is restricted using limit. 0 is unlimited.
**receive-msdp-msg-rate** : maximum mumber of MSDP messages that read from the TCP session per receive interval. This value ranges from 0..600 where 0 is default.

**receive-msdp-msg-interval** : time(seconds) with rate determins total number of packets read from TCP sessions within that configured interval. range 0..1000000.

**receive-msdp-msg-threshold** :number of packets to be readbefore starting the rate and interval.

***originating-rp(Nokia)**: Learnt from PIM, MSDP doesn't override
  
     

  
##  MSDP Global Statistic State
  
  |                   object |  Cisco  |  Juniper  |  Nokia    |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch  |
|-------------------------:|---------|-----------|-----------|---------:|------------|-------|----------|--------------|
|  peer-count              |         |           |  uint32   |          |            |       |          |              |
|  peer-established        |         |           |   uint32  |          |            |       |          |              |
|  source-actives          |         |           |  uint32   |          |            |       |          |              |
|  last-time-up            |         |           |  uint32   |          |            |       |          |              |
|  source-limit-exceeded   |         |           |  uint32   |          |            |       |          |              |
|  import-policy-exceeded  |         |           |  uint32   |          |            |       |          |              |
|  export-policy-exceeded  |         |           |  uint32   |          |            |       |          |              |
{.dense} 
  
## MSDP Peer CONFIG
  
|               object |  Cisco              |  Juniper         |  Nokia                    |  Brocade |  Ericsson   |  ZTE      |  Huawei                |  Metaswitch  |
|---------------------:|---------------------|------------------|---------------------------|---------:|-------------|-----------|------------------------|--------------|
|  peer-addr           |  ipaddr             |  ipaddr          |  ipaddr                   |          |  ipaddr     |  ipaddr   |  ipaddr                |              |
|  enable              |                     |  bool (disable)  |  boolean                  |          |  enable     |           |                        |              |
|  ttl-threshold       |  uint8              |  -               |  -                        |          |  uint8      |  uint8    |  uint8                 |              |
|  description         |  string             |  -               |  -                        |          |  string     |           |  string                |              |
|  mesh-group          |  string             |  -               |  string                   |          |  string     |  string   |  string                |              |
|  peer-as             |  as-number          |  -               |  -                        |          |  as-number  |           |                        |              |
|  sa-filter-in        |  (acl,rp-list/acl)  |                  |  acl                      |          |  acl        |  acl      |  acl                   |              |
|  sa-filter-out       |  (acl,rp-list/acl)  |                  |  acl                      |          |  acl        |  acl      |  acl                   |              |
|  bfd                 |                     |  -               |  -                        |          |             |  boolean  |                        |              |
|  hold-time           |                     |  uint16          |  -                        |          |             |  uint16   |                        |              |
|  keepalive-time      |  uint8 (1-60s)      |  uint16          |  -                        |          |             |  uint16   |                        |              |
|  connect-retry-time  |                     |  -               |  -                        |          |             |  uint16   |  uint8                 |              |
|  keychain            |                     |  -               |  string                   |          |             |  string   |  string                |              |
|  password            |                     |  -               |  enum(chipher/plain text) |          |             |  string   |  cipher/simple string  |              |
|  sa-cache-maximum    |  uint32 (1-75000)   |  -               |                           |          |             |  uint32   |  uint32                |              |
|  local-addr          |                     |  ipaddr          |  ipaddr                   |          |             |           |                        |              |  
  {.dense} 
  
## MSDP Global Derived State

|      object |  Cisco   |  Juniper  |  Nokia  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch  |
|------------:|----------|-----------|---------|---------:|------------|-------|----------|--------------|
|  msdp peer  |  ipaddr  |           |  -      |          |            |       |          |              |  
  {.dense} 
  
## MSDP Peer Derived State
  
|                 object |  Cisco        |  Juniper  |  Nokia   |  Brocade |  Ericsson     |  ZTE     |  Huawei  |  Metaswitch  |
|-----------------------:|---------------|-----------|----------|---------:|---------------|----------|----------|--------------|
|  session-state         |  enum         |           |  enum    |          |  enumeration  |  enum    |  enum    |              |
|  connect-retry-expire  |               |           |  uint32  |          |  uint32       |  uint32  |          |              |
|  elapsed-time          |  yangcounter  |           |  uint32  |          |  uint32       |          |  uint32  |              |
|  hold-expire           |               |           |  uint32  |          |  uint32       |  uint32  |          |              |
|  is-default-peer       |               |           |  -       |          |  boolean      |          |          |              |
|  keepalive-expire      |  uint32       |           |  uint32  |          |  uint32       |  uint32  |          |              |
|  last-receive-time     |               |           |  -       |          |  uint32       |          |          |              |
|  last-send-time        |               |           |  -       |          |  uint32       |          |          |              |
|  last-reset-reason     |               |           |  -       |          |  string       |          |          |              |
|  reset-count           |  uint32       |           |  -       |          |  uint32       |          |  uint32  |              |
|  sa-count              |  uint32       |           |  uint32  |          |               |          |  uint32  |              |  
  {.dense} 
  
## MSDP Peer Statistic State
  
|                    object |  Cisco   |  Juniper  |  Nokia   |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch  |
|--------------------------:|----------|-----------|----------|---------:|------------|-------|----------|--------------|
|  error-rpf-failure        |          |           |  uint32  |          |  uint32    |       |  uint32  |              |
|  queue-size-in            |  uint32  |           |  -       |          |  uint32    |       |  uint32  |              |
|  queue-size-out           |  uint32  |           |  -       |          |  uint32    |       |  uint32  |              |
|  Peer timeout period      |  uint32  |           |  uint32  |          |            |       |          |              |
|  Peer tel-threshold       |  uint8   |           |  -       |          |            |       |          |              |
|  sa-accepted              |          |           |  uint32  |          |            |       |          |              |
|  sa-limit-reach           |          |           |  uint32  |          |            |       |          |              |
|  active-sa-limit-exceed   |          |           |  uint32  |          |            |       |          |              |
|  last-state-change        |          |           |  uint32  |          |            |       |          |              |
|  last-msg-from-peer       |          |           |  uint32  |          |            |       |          |              |
|  number-of-remote-closes  |          |           |  uint32  |          |            |       |          |              |
|  unknown-msg-received     |          |           |  uint32  |          |            |       |          |              |
|  error-msg-received       |          |           |  uint32  |          |            |       |          |              |
|  sa-learnt                |          |           |  uint32  |          |            |       |          |              |
|  rejected-export-policy   |          |           |  uint32  |          |            |       |          |              |
|  rejected-import-policy   |          |           |  uint32  |          |            |       |          |              |
|  reserved-msg-received    |          |           |  uint32  |          |            |       |          |              |  
  {.dense} 
  
## MSDP Peer Statistic Send-Receive State
  
|         object |  Cisco        |  Juniper  |  Nokia   |  Brocade |  Ericsson   |  ZTE  |  Huawei  |  Metaswitch  |
|---------------:|---------------|-----------|----------|---------:|-------------|-------|----------|--------------|
|  keepalive     |  uint (1-60)  |           |  uint32  |          |  counter64  |       |  uint32  |              |
|  notification  |  uint32       |           |  -       |          |  counter64  |       |  uint32  |              |
|  sa-message    |  uint32       |           |  uint32  |          |  counter64  |       |  uint32  |              |
|  sa-response   |  uint32       |           |  uint32  |          |  counter64  |       |  uint32  |              |
|  sa-reques     |  uint32       |           |  uint32  |          |  counter64  |       |  uint32  |              |
|  total         |  uint32       |           |  -       |          |  counter64  |       |          |              |
|  total-peer    |               |           |  -       |          |  counter64  |       |          |              |
|  total-pim     |               |           |  -       |          |  counter64  |       |          |              | 
  {.dense} 
  
## MSDP SA Cache (S,G) State 
  
|              object |  Cisco   |  Juniper  |  Nokia   |  Brocade |  Ericsson  |  ZTE     |  Huawei  |  Metaswitch  |
|--------------------:|----------|-----------|----------|---------:|------------|----------|----------|--------------|
|  group              |  ipaddr  |           |  ipaddr  |          |  ipaddr    |  ipaddr  |  ipaddr  |              |
|  source-addr        |  ipaddr  |           |  ipaddr  |          |  ipaddr/*  |  ipaddr  |  ipaddr  |              |
|  up-time            |          |           |  ipaddr  |          |  uint32    |          |  uint32  |              |
|  expire             |          |           |          |          |  uint32    |          |  uint32  |              |
|  holddown-interval  |          |           |  uint32  |          |  uint32    |          |          |              |
|  peer-learned-from  |  string  |  string   |          |          |  string    |  string  |          |              |
|  Rpf peer           |  string  |           |  string  |          |            |          |          |              |
|  sa-rcvd            |  uint32  |           |  -       |          |            |          |          |              |
|  pim-interest       |  flag    |           |  -       |          |            |          |          |              |  
  {.dense} 
  
## MSDP SA Cache (S, G, RP) State
  
|          object |  Cisco   |  Juniper  |  Nokia  |  Brocade |  Ericsson  |  ZTE     |  Huawei  |  Metaswitch  |
|----------------:|----------|-----------|---------|---------:|------------|----------|----------|--------------|
|  rp-address     |  ipaddr  |           |  -      |          |  ipaddr    |  ipaddr  |          |              |
|  is-local-rp    |          |           |  -      |          |  boolean   |          |          |              |
|  sa-adv-expire  |          |           |  -      |          |  uint32    |          |          |              |  
  {.dense} 
  
## IGMP SNOOPING INSTANCE CONFIG
  
|                       object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch  |  Jabil  |
|-----------------------------:|---------|-----------|------------------|---------:|------------|-------|----------|--------------|---------|
|  enable                      |         |           |                  |          |            |       |          |              |         |
|  forwarding-mode             |         |           |                  |          |            |       |          |              |         |
|  explicit-tracking           |         |           |                  |          |            |       |          |              |         |
|  send-query                  |         |           |                  |          |            |       |          |              |         |
|  fast-leave                  |         |           |                  |          |            |       |          |              |         |
|  last-member-query-interval  |         |           |                  |          |            |       |          |              |         |
|  query-interval              |         |           |                  |          |            |       |          |              |         |
|  query-max-response-time     |         |           |                  |          |            |       |          |              |         |
|  require-router-alert        |         |           |                  |          |            |       |          |              |         |
|  robustness-variable         |         |           |                  |          |            |       |          |              |         |
|  version                     |         |           |                  |          |            |       |          |              |         |
|  querier-source              |         |           |                  |          |            |       |          |              |         |  
  {.dense} 
  
## MLD SNOOPING INSTANCE CONFIG
  
|                       object |  Cisco  |  Juniper  |  Alcatel-Lucent  |  Brocade |  Ericsson  |  ZTE  |  Huawei  |  Metaswitch  |  Jabil  |
|-----------------------------:|---------|-----------|------------------|---------:|------------|-------|----------|--------------|---------|
|  enable                      |         |           |                  |          |            |       |          |              |         |
|  forwarding-mode             |         |           |                  |          |            |       |          |              |         |
|  explicit-tracking           |         |           |                  |          |            |       |          |              |         |
|  send-query                  |         |           |                  |          |            |       |          |              |         |
|  fast-leave                  |         |           |                  |          |            |       |          |              |         |
|  last-member-query-interval  |         |           |                  |          |            |       |          |              |         |
|  query-interval              |         |           |                  |          |            |       |          |              |         |
|  query-max-response-time     |         |           |                  |          |            |       |          |              |         |
|  require-router-alert        |         |           |                  |          |            |       |          |              |         |
|  robustness-variable         |         |           |                  |          |            |       |          |              |         |
|  version                     |         |           |                  |          |            |       |          |              |         |
|  querier-source              |         |           |                  |          |            |       |          |              |         |  
 {.dense} 
  
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-08-30. It was migrated from the old Trac wiki on 2022-12-20.*  