---
title: Comunity Container Flow Specification V2 Actions 
description: FSv2 Community Container Actions 
published: true
date: 2026-06-05T13:48:39.622Z
tags: 
editor: markdown
dateCreated: 2026-06-05T12:48:43.032Z
---

# Flow Specification v2 
# Community Container Actions (was Wide Community) 

### Flow Specification Community Containdr Actions 
### Action TLVs 
| Community Container TLV | SubTLV | Description | document |   
|---|---|---|---|
| Mark IPv4 CS-ID | none | Mark CS-ID in IPv4 packet | [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) | 
| Mark IPv6 CS-ID | none | Mark CS-ID in IPv4 packet | [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) | 
| Redirect to IPv4 CS-ID | none | Mark CS-ID in IPv4 packet | [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) | 
| Redirect to IPv6 CS-ID | none | Mark CS-ID in IPv4 packet | [/draft-lin-idr-cats-flowspec-ts-03.txt](https://www.ietf.org/archive/id/draft-lin-idr-cats-flowspec-ts-03.txt) | 
| Redirect Load Balance | see LB SubTLV registry | [draft-wu-idr-flowspec-redirect-group](https://www.ietf.org/archive/id/draft-wu-idr-flowspec-redirect-group/)
{.dense}


## Registries 
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

