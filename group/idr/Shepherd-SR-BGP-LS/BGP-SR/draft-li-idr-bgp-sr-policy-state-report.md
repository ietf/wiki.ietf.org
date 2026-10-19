---
title: draft-li-idr-bgp-sr-policy-state-report Shepherd Reports 
description: draft-li-idr-bgp-sr-policy-state-report Shepherd
published: true
date: 2026-10-19T01:52:31.431Z
tags: 
editor: markdown
dateCreated: 2026-10-19T00:15:35.399Z
---

# draft-li-idr-bgp-sr-policy-state-report
# Shepherd Review 

## Summary
**current version:** -01 
**document:** [draft-li-idr-bgp-sr-policy-state-report](https://datatracker.ietf.org/doc/html/draft-li-idr-bgp-sr-policy-state-report-01) 
**next steps:** 
1. revise document
2. Get spring support for concept 
3. Examine if PCE has state report 

## Revision -01 

BGP send routing information, but state information is usually sent via Yang or other protocols. 

There is a high-level questions the authors must answer to 
1) Why - should state be sent in BGP SR TE? 
2) Why is the simple state in [draft-ietf-idr-sr-policy-admin-flags](https://datatracker.ietf.org/doc/draft-ietf-idr-sr-policy-admin-flags/) - not sufficient for the urgent states 

3) Why do the authors think this load is required. 

I encourage the authors to provide a presentation on why state is necessary? 