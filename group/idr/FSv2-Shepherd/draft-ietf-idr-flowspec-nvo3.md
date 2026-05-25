---
title: Shepherd Report for draft-ietf-idr-flowspec-nv03 using draft-ietf-idr-fsv2-ip-basic assignments 
description: Shepherd FS draft-ietf-idr-flowspec-nv03 
published: true
date: 2026-05-25T20:37:44.519Z
tags: 
editor: markdown
dateCreated: 2026-05-25T20:37:44.519Z
---

# Shepherd Report 
# draft-ietf-idr-flowspec-nvo3

## Summary
**version:** 23
**Shepherd:** Susan Hares 
**Next steps:** 
1. Discuss on IDR list the pro/cons of New Safi (77) for FSv2 Tunnel types versus Filter Family Type 200 for AFI IPv4 (1), AFI IPv6 (2) and AFI L2 (AFI = 6). 
2. After determination update the draft. 
3. Get 2 implementations 

### component type suggestion 
#### Filter Family - 200 - Tunnel Traffic 
| Filter Family | Component | Description | document | 
|---|---|---|---|
| 200  | 0 | Reserved | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200  | 10 | VN ID | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 20 | Cookie | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
 | 200 | 30 | Tunnel Header Flags | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
 | 200 | 40 | L2TP Control Version | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
 | 200 | 50 | L2TP Control Connection ID | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 60 | L2TP Ns | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 70 | L2TP Nr | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 80 | Protocol Type | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 90 | GRE Sequence | [draft-ietf-idr-flowspec-nvo3](https://datatracker.ietf.org/doc/draft-ietf-idr-flowspec-nvo3/) | 
| 200 | 4095 | Reserved | [draft-ietf-idr-fsv2-ip-basic](https://datatracker.ietf.org/doc/draft-ietf-idr-fsv2-ip-basic) | 