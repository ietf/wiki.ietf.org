---
title: draft-ietf-idr-bgp-open-policy
description: 
published: true
date: 2023-03-13T06:53:09.005Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:53:03.307Z
---

 Implementation report for draft-ietf-idr-bgp-open-policy

https://github.com/error2407/BGP_Open_Policy https://github.com/error2407/BGP_Open_Policy/blob/master/README.md

Implementation: 1) FRR routing reported by Eugene Bogomazov <eb@…> in the release: ​https://github.com/error2407/frr

Configuration:

> neighbor <A.B.C.D|X:X::X:X|WORD> local-role <peer|provider|customer|rs-server|rs-client> or
> 
> neighbor <A.B.C.D|X:X::X:X|WORD> local-role <peer|provider|customer|rs-server|rs-client> strict-mode

2) Bird 1.76 and 2.0.5 reported by Eugene Bogomazov <eb@…>

>     configuration
> 
>         protocol bgp {
> 
>             ...
> 
>         local_role provider; strict_mode;
> 
>     }
> 
3) Mikrotik - https://help.mikrotik.com/docs/display/ROS/v7+Routing+Protocol+Status#space-menu-link-content

Interoperability 

|   implementation   |     Version    |    Intoperates with      |                Notes                |
|:------------------:|:--------------:|:------------------------:|:-----------------------------------:|
|    FRR             |  err2407       |     Bird 1.76, 2.0.5     |  https://github.com/error2407/frr   |
|    Bird            |  1.76, 2.0.05  |       FRR2407            |                                     |


Protocol support

|   implementation   |   Version   | Open with BGP Role  |  Path Attribute OTC  |    Supported Roles                        |    Strict Mode    |
|:------------------:|:-----------:|---------------------|----------------------|:-----------------------------------------:|:-----------------:|
|    FRR             |  Error2407  |    (XMT/RCV)        |    (XMT/RCV)         |   Provider, Customer, RS, RS-client, Peer |   supported       |
|    Bird            |  1.76       |    (XMT/RCV)        |    (XMT/RCV)         |  Provider, Customer, RS, RS-client Peer   |   supported       |
|    Bird            |  2.0        |    (XMT/RCV)        |     (XMT/RCV)        |  Provider, Customer, RS, RS-client Peer   |   supported       |

Error handling
|   implementation   |     Version    | Open Error: Role Mismatch  |  Open Error: Connection Rejected             |    Supported Roles                        |    Strict Mode    |
|:------------------:|:--------------:|----------------------------|----------------------------------------------|:-----------------------------------------:|:-----------------:|
|   FRR              |  Error2407     |    (XMT/RCV)               |   not fully supported, connection rejected   |   Provider, Customer, RS, RS-client, Peer |   supported       |
|   Bird             |     1.76       |    (xmt/rcv)               |   Not fully supported, connection rejected   |  Provider, Customer, RS, RS-client Peer   |   supported       |
|   Bird             |   2.0.05       |    (xmt/rcv)               |   not fully supported, connection rejected   |  Provider, Customer, RS, RS-client Peer   |   supported       |

Error handling
|   implementation   |   Version   |             Any concerns or issues             |
|:------------------:|:-----------:|:----------------------------------------------:|
|   FRR              |  Error2407  |                                                |
|   Bird             |  1.76       |   Bird already uses error code 2, subcode 8    |
|   Bird             |  2.0        |   Bird already uses error code 2, subcode 8    |

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2020-06-04. It was migrated from the old Trac wiki on 2023-03-12.*