---
title: Handshake Proposals
description: 
published: true
date: 2023-01-22T03:53:31.772Z
tags: 
editor: markdown
dateCreated: 2023-01-22T03:53:27.579Z
---

# [WebSocket](/group/hybi/WebSocket) Protocol Handshake Proposals
A key part of the [WebSocket](/group/hybi/WebSocket) protocol is the initial handshake that establishes a connection.

## Proposed Criteria for Evaluating Handshakes
- Security, including security against cross-protocol attacks
- HTTP compatibility
- Implementability
- Success rate at connection establishment under real-world conditions
- Practicality of routing in server-side infrastructure
## Handshake Proposals
### Current Draft: "GET+Upgrade"
This handshake involves doing a GET request with Connection: Upgrade, sixteen random bytes encoded by BASE64 from the client which are intended to check the connection and desynchronize intermediaries. The server computes a hash of the nonce and replies with it.

Draft: http://tools.ietf.org/html/draft-ietf-hybi-thewebsocketprotocol-05

See [FAQ](/group/hybi/FAQ) before posting question and proposal to the mailing list. Your point may be already well discussed.

### Draft 03: "GET+Upgrade"
This handshake involves doing a GET request with Connection: Upgrade, followed by eight random bytes from the client which are intended to check the connection and desynchronize intermediaries. Idiosyncratic way of passing a client nonce. The server computes a hash of the nonce and replies with it.

Draft: http://tools.ietf.org/html/draft-ietf-hybi-thewebsocketprotocol-03

### Gabriel+Greg Proposal: "GET+Upgrade+HELLO"
This handshake involes doing a GET request with Connection: Upgrade, followed by an exchange of special HELLO frames containing nonces between the server and the client. Also reduces quirkiness relative to the original proposal.

http://tools.ietf.org/html/draft-montenegro-hybi-upgrade-hello-handshake

### Eric+Adam Proposal: "CONNECT+invalid host+payload masking"
Three major changes relative to the current WG draft: (1) use the CONNECT method instead of GET with Upgrade headers; do not show the true host in the usual HTTP places, instead use a special "websocket.invalid" host; mask the payload using a key computed from client and server nonces. Claimed to have strong, provable security properties against cross-protocol attacks.

https://svn.tools.ietf.org/html/draft-abarth-websocket-handshake-00

### Ian Fette's Variant: "CONNECT+invalid host"
Ian Fette's variant that drops payload masking and a few other details from the Eric+Adam proposal,

http://www.ietf.org/mail-archive/web/hybi/current/msg05014.html

### David Cridland's Proposal: "Upgrade+CONNECT"
Uses GET+Upgrade, followed by a CONNECT to attempt to desynchronize intercepting proxies that are affected by it.

http://tools.ietf.org/html/draft-cridland-hybi-upgrade-connect-00

### Old drafts
Hixie 75 is the first version adopted by several browser vendors for their initial WebSocket implementation. HyBi 00 is the successor implemented by many browser vendors.

- http://www.whatwg.org/specs/web-socket-protocol/ by Hixie, August 16, 2010
- HyBi 00 http://tools.ietf.org/html/draft-ietf-hybi-thewebsocketprotocol-00
- Hixie 75 http://tools.ietf.org/html/draft-hixie-thewebsocketprotocol-75


#### References
Huang, E. Y. Chen, A. Barth, E. Rescorla, and C. Jackson "Transparent Proxies: Threat or Menace?" http://www.adambarth.com/experimental/websocket.pdf

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2011-02-25. It was migrated from the old Trac wiki on 2023-01-21.*