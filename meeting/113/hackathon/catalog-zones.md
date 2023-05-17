---
title: catalog zones
description: 
published: true
date: 2023-03-20T04:50:47.466Z
tags: 
editor: markdown
dateCreated: 2023-03-20T04:50:42.222Z
---

|       VM      |           IPv6           | (outside) IPv4 | (inside) IPv4 | implementation | producing |      consuming      |
|:-------------:|:------------------------:|:--------------:|:-------------:|:--------------:|:---------:|:-------------------:|
| ns1.zones.cat | 2a05:d014:d33:2020::ca11 | 18.158.147.216 | 172.31.47.136 | NSD            | catalog1  |                     |
| ns2.zones.cat | 2a05:d014:d33:2020::ca12 | 3.122.223.241  | 172.31.34.139 | NSD            |           | catalog1 catalog3   |
| ns3.zones.cat | 2a05:d014:d33:2020::ca13 | 18.184.237.45  | 172.31.46.147 | Knot           |           |                     |
| ns4.zones.cat | 2a05:d014:d33:2020::ca14 | 54.93.97.83    | 172.31.43.201 | PowerDNS       |           |                     |
| ns5.zones.cat | 2a05:d014:d33:2020::ca15 | 3.120.238.22   | 172.31.32.247 | BIND           |           | catalog1. catalog3. |
| ns6.zones.cat | 2a05:d014:d33:2020::ca16 | 3.122.254.99   | 172.31.47.17  | Knot           | catalog3. |                     |
| ns7.zones.cat | 2a05:d014:d33:2020::ca17 | 3.68.72.20     | 3.68.72.20    | NSD            | catalog4. |                     |