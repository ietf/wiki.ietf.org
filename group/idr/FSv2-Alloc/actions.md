---
title: Flow Specification Actions in Extended Communities (FSv1 and FSv2) 
description: FSv1/FSv2 Ext. Comm. Actions
published: true
date: 2026-05-26T11:48:54.915Z
tags: 
editor: markdown
dateCreated: 2026-05-25T21:38:17.946Z
---

# Flow Specification Actions in Extended Community

## Flow Specification Transitive Extended Community (0x07) 
### registry is FCFS 
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| FS Transitive (0x07) | 0x02 |  Interface set | [drasft-ietf-idr-flowspec-interfaceset](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-interfaceset) 
{.dense} 

### Flow Specification Non-Transitive Extended Community 
### registry is FCFS 
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| FS Non Transitive (0x07) | 0x02 |  Interface set | [draft-ietf-idr-flowspec-interfaceset](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-interfaceset)
| FS Non Transitive (0x07) | TBD-1 |  IPSec SA ID| [draft-dmc-idr-flowspec-tn-aware-mobility](https://www.ietf.org/archive/id/draft-dmc-idr-flowspec-tn-aware-mobility/)
{.dense}


### Flow Specification SFC related 
#### Generic Transitive Experimental Use Extended Community (0x0d)  
#### Tramsitive Extended Community (0x0b)  
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| Generic Transitive Experimental (0x0d) | SFC Sub-types | registry | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt)
| Generic Transitive Experimental (0x0d)| 0 | Reserved | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Generic Transitive Experimental (0x0d)| 1 | SFIR pool Identifier | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Generic Transitive Experimental (0x0d)| 2 | MPLS Label Stack Mixed (swapping/stacking) Labels  | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) |
{.dense}

### Transitive FS SFC Extended Community 
| EXT Community type | Component | Description | document |   
|---|---|---|---|
| Transitive FS SFC (0x0b) | SFC Sub-types | registry | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt)
| Transitive FS SFC | (0x0b) | 0 | Rserved | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Transitive FS SFC (0x0b)| 1 | SFIR pool Identifier | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) | 
| Transitive FS SFC (0x0b)| 2 | MPLS Label Stack Mixed (swapping/stacking) Labels  | [RFC9015](https://www.rfc-editor.org/rfc/rfc9015.txt) |
{.dense}

### Proposed New FSv2 Extended Community Action Registries 
#### Proposed New Sub-Type Registry: "FlowSpec Redirect to indirection-id Extended Community Sub-Type"
| Value | Code | document | 
|---|---|---|---|
| 0x00  | Flowspec Redirect to 32-bit Path-id | [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) | 
| 0x01  | Node ID with SID/index in SRmpls | [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) |
| 0x02  | Node ID with SID/label in SRmpls | [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) |
| 0x03 | Binding SID with SID/index in SRmpls | [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) |
| 0x04 | Binding Segment ID with SID/label in SRmpls | [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) |
| 0x05 | Tunnel ID (32 bit Identifier) |  [draft-ietf-idr-flowspec-path-redirect](https://www.ietf.org/archive/id/draft-ietf-idr-flowspec-path-redirect) |
| 0x06 | Node ID with SID/index in SRv6 |  [draft-chen-idr-srv6-flowpec-path-redirecdt](https://www.ietf.org/archive/id/draft-chen-idr-srv6-flowspec-path-redirect/) | 
| 0x07 | Binding Segment ID with SID/index in SRv6 |  [draft-chen-idr-srv6-flowpec-path-redirecdt](https://www.ietf.org/archive/id/draft-chen-idr-srv6-flowspec-path-redirect/) | 
| 0x08 | Binding Segment ID with SID/index in SRv6 |  [draft-chen-idr-srv6-flowpec-path-redirecdt](https://www.ietf.org/archive/id/draft-chen-idr-srv6-flowspec-path-redirect/)
| 0x09 | 
{.dense}

### Proposed New FSv2 Extended Community Action Registries 
#### Proposed New Sub-Type Registry: "Flowspec redirect to IP SEC SA-ID Sub-Type"
| Value | Code | document | 
|---|---|---|---|
| [TBD1] | Inner Encap Type 1 (IPsec + GRE) | [draft-dmc-idr-flowspec-tn-aware-mobility](https://datatracker.ietf.org/doc/draft-dmc-idr-flowspec-tn-aware-mobility/)
| [TBD2] | Inner Encap Type 2 (IPSec + Vxlan) | [draft-dmc-idr-flowspec-tn-aware-mobility](https://datatracker.ietf.org/doc/draft-dmc-idr-flowspec-tn-aware-mobility/)
