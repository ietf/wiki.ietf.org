---
title: Masking Proposals
description: 
published: true
date: 2023-01-22T03:56:13.086Z
tags: 
editor: markdown
dateCreated: 2023-01-22T03:56:08.260Z
---

# WebSocket Protocol Masking Proposals 
Motivations for client to server masking are described in the [FAQ](/group/hybi/FAQ). This section covers different proposals for the masking mechanism.

## Masked framing VS mask in frame
### Masked framing
`[key1][masked frame1] [key2][masked frame 2] ..... [keyN][masked frame N]`

PROS:

- All bytes other than the key are masked. This prevents an attacker from using frame fields like the length to send "clear text"

CONS:

- Masking is not independent of framing - poor layered protocol design.
- All WS handling that needs to be aware of frame boundaries will need to implement masking. This will mean that more infrastructure will have masking hard coded into it, thus it will soon become very difficult, if not impossible to change framing as it will be baked into WS aware intermediaries.
- Intermediaries that do not care about content will still need to unmask and remask the frames.
- The parser/generator code for WS becomes more complex and asymmetric because it must implement masking for some WS streams but not for others.
- Unmasking cannot be done as single optimised pass over the data, but must be done on-the-fly in the parsing code.
- The options for masking algorithms is limited. For example session based keys could not be used in a MUX environment as the session key would need to be known to access the extension data to know the stream ID, so the session ID could be known so you can't know the session key. While session based masking may not be desirable for other reasons, this limitation indicates a fundamental limitation of the masked frame approach.
### Mask in frame
`[key1, masked payload 1]  [key2, masked payload 2] ..... [keyN, masked payload N]`

PROS:

- Masking is independent of framing. Good layered protocol design.
- Intermediaries that do not process the payload will not need to implement masking. This saves CPU, memory and also will make it easier to change and/or remove masking in future.
- WS parsing code is simple and symmetric.
- session based masking algorithms can be used if desired.
- Can utilise the extension data space to carry the key - thus testing the implementation of the parsing of extension data length and preventing implementations assuming this will be zero.

CONS:

- The frame op-code, flags and length are sent in the clear. Of these, an attacker has reasonable control over the length field, so could conceivably send 8 characters including "GET\n" as the length (although this would be very difficult to do via the current javascript API. There are also simple heuristic defences for this, such as fragmenting any frame that has a length that is all ascii and has a CR).
### Conclusions
In summary, mask in frame is far more flexible, low cost and demonstrable better design, at cost of exposing a very very unlikely subcase of an already very very unlikely vulnerability to an as of yet undiscovered threat, of which an exploitable variation is already in the wild using non ws clients.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2011-02-25. It was migrated from the old Trac wiki on 2023-01-21.*