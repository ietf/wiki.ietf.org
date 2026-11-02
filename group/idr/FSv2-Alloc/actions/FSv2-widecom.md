---
title: Comunity Container Flow Specification V2 Actions 
description: FSv2 Community Container Actions 
published: true
date: 2026-11-02T01:22:42.830Z
tags: 
editor: markdown
dateCreated: 2026-06-05T12:48:43.032Z
---

# Flow Specification v2 
# Community Container Actions 
## (was Wide Community) 

### Action Failure Action Family (100) 
| ID | Action Component | SubTLV | Description | document |   
|---|---|---|---|
| 100 | Action Continue option (ACO) | none | what to do if action fails | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) | 
{.dense}

### Group Action Family (200)  
| ID | Action Component | SubTLV | Description | document |   
|---|---|---|---|----|
| 100 | interface set  | Interface | what to do if action fails | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 200 | APN
{.dense}

### Redirect Action Family (300) 
| Action Component Type | SubTLV | Description | document |   
|---|---|---|---|
| 100 | interface set  | Interface | what to do if action fails | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 200 | 
{.dense}
0 - reserved
100 - action failure
200 - group
300 - redirect
500 - Mark, Merge or traffic shape
700 - Flag traffic for sampling
900 - terminate action instructions,
1000 - logging
4095 - reserved

### Group Action Mark, Merge or Traffic Shape (500) 
| Action ID | Action Component | SubTLV | Description | document |   
|---|---|---|---|
| 100 | Mark DSCP  | none | Mark DSCP in IPv4 Packet  | [/draft-hares-idr-ip-more-actions]((https://www.ietf.org/archive/id/draft-hares-idr-fsv2-ip-more-actions) | 
| 400 | Mark IPv4 CS-ID | none | Mark CS-ID in IPv4 packet | [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) | 
| 410 | Mark IPv6 CS-ID | none | Mark CS-ID in IPv4 packet | [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) | 
| 500 | Redirect to IPv4 CS-ID | none | Mark CS-ID in IPv4 packet | [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) | 
| 510 | Redirect to IPv6 CS-ID | none | Mark CS-ID in IPv4 packet | [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) | 
| 600 | Redirect Load Balance | see LB SubTLV registry | [draft-wu-idr-flowspec-redirect-group](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-redirect-group/)
{.dense}

### Flag Traffic for sampling (700) 
| Action Component Type | SubTLV | Description | document |   
|---|---|---|---|
| 100 | Sample | none | Sample traffic | [/draft-hares-idr-ip-more-actions]((https://www.ietf.org/archive/id/draft-hares-idr-fsv2-ip-more-actions) | 
{.dense}



## Registries for Redirect 
### Redirect Load Balance TLV - Parm SubTLVs 
| SuTLV ID | SubTLV Name | Description | document |   
|---|---|---|---|
| Type 1 |  IPv4 Prefix Only | unweighted and IPv4 address |  [draft-wu-idr-flowspec-redirect-group](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-redirect-group/) | 
| Type 2 | IPv4 Prefix with Weight | weighted and IPv4 address | [draft-wu-idr-flowspec-redirect-group](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-redirect-group/) | 
| Type 3 | IPv4 Prefix with Color | unweighted and to SR tunnel |   [draft-wu-idr-flowspec-redirect-group](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-redirect-group/) | 
| Type 4 |  IPv4 Prefix with Color and Weight | Weighted and SR tunnel |   [draft-wu-idr-flowspec-redirect-group](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-redirect-group/) | 
| Type 5 | IPv6 Prefix Only | unweighted and IPv6 address | [draft-wu-idr-flowspec-redirect-group](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-redirect-group/) | 
| Type 6 |   IPv6 Prefix with Weight | weighted and IPv6 address | [draft-wu-idr-flowspec-redirect-group](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-redirect-group/) | 
| Type 7 |  IPv6 Prefix with Color | unweighted and SR tunnel |   [draft-wu-idr-flowspec-redirect-group](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-redirect-group/) | 
| Type 8 | IPv6 Prefix with Color and Weight | Weighted and SR tunnel |   [draft-wu-idr-flowspec-redirect-group](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-redirect-group/) | 

