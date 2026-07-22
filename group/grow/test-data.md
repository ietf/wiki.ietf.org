---
title: Test data for GROW drafts
description: 
published: true
date: 2026-07-22T11:55:20.197Z
tags: 
editor: markdown
dateCreated: 2026-07-22T11:55:20.197Z
---

# Test data for GROW drafts


## draft-ietf-grow-bmp-tlv / draft-petrie-grow-mrt-bmp / draft-lucente-grow-bmp-offline


These are files containing BMPv4 messages as described in -bmp-tlv-20, converted from RouteViews BMPv3 data.
They come in two formats (.pcapng, .bin) and two variations (as BMP Snapshot, and without any Snapshot info), resulting in four files.

The pcapng files use DLT type USER15 (more info below).
BMP Snapshot message codepoint: `251` (reserved range)
BMP Snapshot ID TLV codepoint: `32767` (last of FCFS)
Snapshot ID (16 bytes): `[0,1,2,3..15]`

[bmpv4-snapshot.pcapng](/grow/test-data/bmpv4-snapshot.pcapng)

[bmpv4.pcapng](/grow/test-data/bmpv4.pcapng)

[bmpv4-snapshot.bin](/grow/test-data/bmpv4-snapshot.bin)

[bmpv4.bin](/grow/test-data/bmpv4.bin)


### Notes

While working on draft-petrie-grow-mrt-bmp during the hackathon at IETF126, pcapng appeared to be a better format to store BMP messages in compared to MRT. The .bin files contain only the wireformat BMP messages, and could be replayed with a tool such as `socat`.

#### Configuring wireshark to properly dissect BMP
