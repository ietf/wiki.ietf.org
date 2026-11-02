---
title: Comunity Container Flow Specification V2 Actions 
description: FSv2 Community Container Actions 
published: true
date: 2026-11-02T03:47:59.492Z
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
| 100 | redirect  | IP VRF (100)  | redirect to IPv4 VRF | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |
| 100 | redirect  | IP address (200)  | redirect to IOP address | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 100 | redirect  | Indirect ID (300)  | redirect to indirection ID | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 100 | redirect  | Node ID with SID/index (400)  | redirect to Node ID SID/indexx | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 100 | redirect  | Node ID with SID/label (500) | redirect to SID as Label | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 100 | redirect  | BSID with SID/index (600)  | redirect to BSID as index | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 100 | redirect  | BSID with SID/label (700) | rediret to BSID as global label | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 100 | redirect  | Tunnel ID (800) | redirect to tunnel ID  | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 100 | redirect  | SID/Index SRv6 (900)  | redirect to SID/index  | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 100 | redirect  | BSID/index (1000) | redirect to BSID as index SRv6 | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 100 | redirect  | BSID SRv6 (1100 | redirect to BSID SRv6  | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 100 | redirect  | SFC | SFC path Identifier | [draft-hares-fsv2-ip-more-actions](/draft-hares-fsv2-ip-more-actions) |  
| 200 | redirect to | CS-ID in IPv4 packet |  [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) |
| 210 | redirect to | CS-ID in IPv4 packet |  [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) | 
{.dense}
 
### Group Action Mark, Merge or Traffic Shape (500) 
| Action ID | Action Component | SubTLV | Description | document |   
|---|---|---|---|
| 100 | Mark DSCP  | none | Mark DSCP in IPv4 Packet  | [/draft-hares-idr-ip-more-actions]((https://www.ietf.org/archive/id/draft-hares-idr-fsv2-ip-more-actions) | 
| 200 | Mark IPv4 CS-ID | none | Mark CS-ID in IPv4 packet | [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) | 
| 210 | Mark IPv6 CS-ID | none | Mark CS-ID in IPv4 packet | [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) | 
| 600 | Redirect Load Balance | see LB SubTLV registry | [draft-wu-idr-flowspec-redirect-group](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-redirect-group/)
{.dense}

### Sample Action Family (700) 
| Action Component Type | SubTLV | Description | document |   
|---|---|---|---|
| 100 | Sample | none | Sample traffic | [/draft-hares-idr-ip-more-actions]((https://www.ietf.org/archive/id/draft-hares-idr-fsv2-ip-more-actions) | 
{.dense}

### Terminate Action Family (900) 
| Action Component Type | SubTLV | Description | document |   
|---|---|---|---|
| 100 | Terminate FSv2 action chain | none | Sample traffic | [/draft-hares-idr-ip-more-actions]((https://www.ietf.org/archive/id/draft-hares-idr-fsv2-ip-more-actions) | 
{.dense}


### Loggin Action Family (1000) 
| Action Component Type | SubTLV | Description | document |   
|---|---|---|---|
| 100 | log | none | logging info | TBD | 
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

