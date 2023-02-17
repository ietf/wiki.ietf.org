---
title: FAQ
description: 
published: true
date: 2023-01-22T03:46:11.021Z
tags: 
editor: markdown
dateCreated: 2023-01-22T03:46:07.035Z
---

This document is designed to be a rough guide to the rationale behind the current version of the HyBi WebSockets protocol.

**A note to contributors:** Please do not use the FAQ as a debating document. The FAQ is intended to describe the protocol as it is currently defined in the spec. If you want to see a change in the spec, bring it up on the mailing list and see if you can achieve a rough consensus. Do not present your arguments here as they will be removed.

**A second note to contributors:** Please do not remove the Questions when answering them. This is a FAQ = Frequently Answered Questions, not FA = Frequent Answers. Please write answers in a FAQ style and not book narrative style.

**MAIN GOAL of WebSocket protocol**
The main goal of the protocol is to allow bidirectional communication between an application running within a UA such as a web browser, and an application running on a distant server, not limited by the domain-origin or any other policy.

Thus, connections are allowed to be established to any hosts on any ports. The protocol has several subgoals:

## SUBGOALS
### 1. Coexist with HTTP servers on ports 80 and 443.
This was decided upon seeing empirical evidence that a large amount of users are behind firewalls or other intermediaries that only allow outgoing connections to the ports 80 and 443.

This goal meant that the protocol has to include HTTP-compliant headers, and thus be incompatible with most other protocols. While using HTTP, the WS clients may become confused if an HTTP server responds to them and need to know if the server _actually_ implemented WS:

### 2. Differentiate from HTTP enough to cause WS clients to know a WS server from HTTP server.
When adding HTTP-compliant headers to the protocol, a problem was found: intermediaries, such as proxies, would think that these connections are actual HTTP connections, and try to parse the data as if it was HTTP data. This meant that if a broken proxy implementation was to find "GET /ga.js\r\nHost: google.com\r\n\r\n" at start of the message, it would actually think that the data returned by the server is http://google.com/ga.js - in some cases the proxy would cache that and cause problems to the users behind it. Thus the goal number 3, a security goal:

### 3. Make sure that intermediaries do not confuse WS data content for valid HTTP requests.
## Question 1
What is the computation in handshake made to prevent ?

## Answer 1
The computation, as compared to the requirement of "101" response code and the "echo" procedure, is meant to prevent a caching intermediary from providing a WS-client with an cached WS-server reply without actual interaction with the WS-server. This is prevented by adding a challenge from the browser UA agent which is not visible from within to the JS author. This challenge is then processed in a WS-specific manner on the server. Issuing a new challenge each time ensures that a cached response will be invalidated as the response will not fit the challenge issued.

## Question 2
Why does the the current specification use hashing in the handshake computation ?

## Question 3
From the discussion on hybi mailing list, it seems that static POST headers added to each WS packet would make sure the data does not cause problems with intermediaries, or at least does not cause more problems than HTTP POST itself does.

Is that correct ?

# FAQs
## Why does the WebSockets protocol use masking from the client to the server?
One of the more contentious aspects of the WebSockets protocol is the decision to mask the frames as they travel from the client to the server. This can seem like an arbitrary decision to a newcomer. Rest assured that there have been many discussions on a great many issues over the course of months that led up to the decision, many of which will be listed below. It was not taken lightly.

There are good reasons not to use masking from the client to the server. It adds complexity to the protocol. It makes communication between the client and the server asymmetrical. It introduces a new frame type. You can't read the bits sent over the wire without a decoder. It requires additional CPU time to process. You lose the ability to call sendfile().

There are also arguments against these costs. Given the simple form of masking adopted, the complexity to implementations of the protocol are minimal. So is the CPU time particularly since the client, where the minimal amount of CPU is to be found, will not be dealing with a high volume of WebSockets connections anyway. The sendfile() method is lost from client to server, but it is most typically used server to client anyway, and it can still be used in that direction. Although the frame type appears different, it is really only the same frame type with a wrapper around it. Writing a decoder for a tool like Wireshark should be trivial.

The claim has been made that it also prevents the use of telnet or curl for initiating a WebSockets connection, but this is a non-starter. The design of WebSockets framing has always required binary control over the bits sent out. The only way around this would be to introduce a new Base64 masking, which isn't currently on the table. You would never be able to debug WebSockets with these tools the way you can debug HTTP, at least not after the HTTP upgrade has completed. You could use a tool that can send and receive binary, like netcat, but if you are hand-crafting binary frames then in that case you can provide the masking yourself if necessary, possibly using 0 as the mask.

Given these costs, what benefits could justify masking? The original motivation was a [study done](http://www.adambarth.com/experimental/websocket.pdf) that suggested that a WebSockets connection had the potential to hijack a naively-written intermediary by appearing to be speaking HTTP after the upgrade. The study showed that some of these intermediaries existed in the wild, and that some designs of WebSockets could exploit them.

There was also the possibility that other naively-written servers for other protocols could be fooled by a WebSockets connection. The existence or non-existence of these other servers could not be proved, and the exact bugs in all the naively-implemented intermediaries could not be identified. Many felt that the issue with buggy intermediaries was not the responsibility of the WebSockets protocol designers. However, the browser vendors faced a [different situation](http://www.ietf.org/mail-archive/web/hybi/current/msg02400.html). Any time a browser is used in an attack, the browser vendors are blamed even if the fault lies in a buggy server or intermediary. Faced with a potential security issue that would play out in ways that couldn't be foreseen, several browser vendors [opted to turn off](http://news.cnet.com/8301-30685_3-20025272-264.html) WebSockets in their shipping browsers.

Without browser support, WebSockets is of much less value. It was decided that a solution was required that would satisfy the browser vendors. One solution was to flip the bit to indicate whether a frame is the last one in a message to be a FIN bit. Using this, an initial control message (which can only be in one frame) will always have it set on. Since it is the first bit in the frame, that means that an initial WebSocket frame would never have a printable ASCII character as the first character of the frame, which would seem to rule out a lot of attacks.

There were several objections to this. It was felt to be too insecure to rely on an incidental piece of the framing to protect against the ability to use WebSockets in an attack. Were all the potential servers that could be attacked using only printable ASCII in their protocol? Could servers and intermediaries with poor parsing implementations simply skip over non-ASCII until they got to something that looked like something they understood?

Another solution offered was to use the CONNECT method of HTTP for the upgrade, rather than GET. Unfortunately, some objected that using it would have meant breaking the semantics of the web. CONNECT is intended to be used for a tunnel, and it requires a bending of perspective in order to see a tunnel being created from a WebSockets client to a WebSockets server. It is not a tunnel but an upgrade.

Other HTTP methods were considered but all failed to reach the necessary consensus. A new method such as WEBSOCKET was felt to be risky since the effect on intermediaries was unknown. It was also felt that intermediaries would take much longer to adopt support for a new method than for modifying an existing one. Using OPTIONS was also considered, although there were concerns about how WebSockets would interact with other uses of the method. Using POST had its own [objections](http://www.ietf.org/mail-archive/web/hybi/current/msg04285.html). Another solution offered was to send out a GET followed by a CONNECT, so that any intermediary that didn't recognize the 101 response to the upgrade would be fooled into thinking a tunnel had been created and would ignore any data thereafter, but it also failed to reach rough consensus.

Yet another solution offered was to use a bogus host. This was considered a bad idea by the people that worked with large data centers, as it would vastly complicate the work of load balancers, multiplexers, and so on in virtual hosting environments that actually needed to rely on the host data to know where to route a connection.

Different people were proposing different subsets of one or more of these solutions. Finally, it was recognized that by adopting masking, all the other solutions were unnecessary. This simplified approach seemed very promising to many.

This was not without its controversy. Many argued strongly against it because of the costs it introduced, listed previously. However, it did solve the problem of WebSockets being used to attack intermediaries and servers. It did so in a more generic way than the other solutions as well, by keeping the attacker from being able to control the bits on the wire. While no other attacks could be shown to be prevented by this feature, history has shown that many attacks would not have been possible if the attacker could not control the bits, so from a theoretical perspective this was considered a benefit.

Many complained that there was no benefit to masking WebSockets because raw sockets as provided by Java or Flash could do whatever they wanted. The difference was that WebSockets are intended to be shipped in browsers already enabled. Many security-conscious environments do not permit any plugins to the browser specifically because of the insecurity of Java and Flash with raw sockets. Browsers that wanted to deploy into those environments had to have a more secure solution.

A [poll was held](http://www.ietf.org/mail-archive/web/hybi/current/msg05378.html) and it was determined at that point there was rough consensus for masking among the members of the WG. For some it was considered a good solution to the problem, for others it was the worst solution except for all the others. For still others it was seen as the only way to move on and get a WebSockets protocol defined.

The next decision concerned the masking strategy to use. Some wanted a cryptographically strong masking that would be impossible for an attacker to in any way control, others wanted a simpler masking such as a simple repeating 4-byte XOR across the frame. Another [poll was held](http://www.ietf.org/mail-archive/web/hybi/current/msg05871.html) and the simpler masking option won out.

For someone just joining the mailing list there may be a temptation to re-open discussions on this matter. You may be surprised by the curtness of the replies asking that these issues not be rehashed again. Coming to the decisions on these matters has been painful. Many people had to give up some of their most cherished notions in order for rough consensus to be achieved. Now that we have finally achieved a rough consensus, opening up old wounds is seen as very counter-productive.

If you honestly think you have a perspective to offer on masking that was not considered during the months of debate, first look through the archives to ensure that no-one has previously brought it up (since this FAQ can only offer a summary without approaching book length). If it was brought up previously, then you should know it won't convince enough people to make a difference this time either. If it is genuinely new, then ask yourself whether reopening this issue is worth delaying the rollout of WebSockets by another 6 months, since that seems to be about how long it would take to achieve consensus again. If you believe it is, then ask yourself how likely it is that you can persuade a majority of the other people on the list that it is worth the delay. If you still think it is worth doing, then go ahead and offer your perspective on the list. Just don't be surprised by the reaction.

## Why the method is GET
The short answer is that it was chosen originally by the editor and there has never been a rough consensus to change it.

There have been two major objections to using GET. The first is that it was used in the attack that resulted in masking being introduced. There was much discussion about changing the method at that time (see the FAQ on masking above) but the need to change away from the GET method disappeared when everyone settled on masking as a solution.

The other objection that has been raised is that GET is supposed to be idempotent, and it is unclear whether a WebSockets connection will leave a resource unchanged. The counter-argument to this is that the GET is not changing the resource, it is asking for a messaging channel on it. If that channel eventually changes the resource, that is not as a direct result of the GET. In the end, no one side of the argument convinced enough people to change the method.

Leaving the method unspecified has been suggested, but it was felt that would lead to too much complication in testing. Using POST was felt to be insecure. Using OPTIONS caused concern about how it would interact with other uses of OPTIONS. Using a new method was deemed to be much riskier, as the effects of such a method were unknown. As well, it would take longer to roll out the protocol because it increased the need to get WebSocket-aware intermediaries deployed.

In the end, everyone had their favorite method (with opinions scattered across the board) but no one had a strong objection to any of them, particularly to retaining GET. And so it stayed.

## Why does the WebSockets handshake use headers that start with Sec-
Headers that start with Sec- are specifically restricted from being used by a script in a browser. That means an attacker cannot launch a cross protocol attack using XMLHttpRequest by making it look like a WebSockets client. The XMLHttpRequest interface doesn't allow setting fields with the Sec- prefix.

## What Sec-WebSocket-Key and Sec-WebSocket-Accept are for
This is a security feature of WebSockets. By having a client send out an encoded random number and having a server give a response that can only be generated by aWebSocket server, the client can verify that they are indeed talking to a WebSocket server and not to some other kind of server.

It also has the nice effect that it forces server implementers to pay attention to the information in the handshake. Too many HTTP servers have been written that naively assume everything they receive is HTTP, which can cause security issues and other problems. Because a server has to extract the key from the header in order to generate the response, server implementations will have to do at least some parsing of the headers.

See:

- [Maciej's post](http://www.ietf.org/mail-archive/web/hybi/current/msg01198.html)
- [Bjoern's explanation](http://www.ietf.org/mail-archive/web/hybi/current/msg06551.html)
## What is 258EAFA5-E914-47DA-95CA-C5AB0DC85B11
A GUID generated for the WebSocket protocol. There's no specific reason why this value has been chosen, but it is unique and won't be used by anything other than WebSockets.

## Why is SHA-1 necessary? How about simple math like multiplication or CRC
SHA-1 was deemed a reasonable approach to getting a hash value that is very unlikely to collide with another. Implementations are widely available in many languages, and since the calculation is done only at the beginning of the connection, the cost was seen as minimal enough not to cause any concerns especially compared to other elements of setting up a connection.

See:

- [Dave's comment](http://www.ietf.org/mail-archive/web/hybi/current/msg06598.html)
	- Common, verifiable and very unlikely to clash
## Why using frame length field, not sentinel based framing as Hixie 75
- To support binary frame
- Use only one method to identify frame boundary for both binary and text frame to keep framing simple
## What's the benefit of having fragmentation in WebSocket layer
- Sending dynamically generated contents efficiently without queuing data until all the data of a message is available (without waiting until we know the size of application data that we need to write length field)
	- [John's post](http://www6.ietf.org/mail-archive/web/hybi/current/msg03759.html) "As Greg mentioned, generating ..."
- Similar concept to the widely used [chunked transfer](http://tools.ietf.org/html/rfc2616#section-3.6.1) encoding for HTTP
- Necessary for multiplexing
- Only FIN bit or combination of FIN bit and continuous opcode?
## Why both continuation opcode and FIN bit
- Theoretically, just FIN is sufficient if we have some state machine
- TBA
## Why 3-mode encoding is used for frame length field? So complicated.
- Small overhead for short frame
- Support huge frame (63 bit)
- [Maciej's pos](http://www.ietf.org/mail-archive/web/hybi/current/msg03085.html)
- [Informal poll on frame encoding schemes (Google Moderator)](https://www.google.com/moderator/#15/e=2809f&t=2809f.40&f=2809f.7beeb)
- The number of reserved bits we can get was also the point of the argument
## Why the extended frame length field is 63-bit
- Since some environments doesn't support unsigned 64 bit data type e.g. Java
	- [Greg's post](http://www.ietf.org/mail-archive/web/hybi/current/msg03030.html)
## Frame masking
- WebSocket can be abused to poisoning HTTP proxy unless we mask data so that attacker's script cannot control what is sent over TCP.
	- Lin-Shung et. al, Transparent Proxies: Threat or Menace? http://www.adambarth.com/experimental/websocket.pdf
## What closing handshake is for
- [Prevent RST hazard](http://www.ietf.org/mail-archive/web/hybi/current/msg01137.html) "Please note: The close-frame ..."
- Allow a peer to confirm that the peer has received all data
- Allow a peer to confirm that the other peer has received all data (This feature has been dropped)
- [Use closing handshake instead of TCP shutdown](http://www.ietf.org/mail-archive/web/hybi/current/msg01526.html) "I think the net result is ..."
## deflate-stream extension
- [Revised proposal](http://www.ietf.org/mail-archive/web/hybi/current/msg04117.html)
- [First proposal by Patrick](/meeting/115/hackathon)http://www.ietf.org/mail-archive/web/hybi/current/msg04071.html) Compress only applied to the application data portion
## Why not TLS only? Then no need to mask frame
- In some countries, censoring is required by law e.g. filtering porn in school
- SNI is not well deployed. NPN is not realistic
## What masking bit is for?
- [Bruce's post](http://www.ietf.org/mail-archive/web/hybi/current/msg06613.html)
## Server may mask frames to client?
- [Andy's post](http://www.ietf.org/mail-archive/web/hybi/current/msg07768.html) is asking this. Not well answered yet.
## Frames with zero length payload are masked?
- [Len's post](http://www.ietf.org/mail-archive/web/hybi/current/msg07644.html) asked this.
## Text message can be fragmented in the middle of UTF-8 byte sequence?
- See [this thread](http://www.ietf.org/mail-archive/web/hybi/current/msg07811.html)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2011-07-22. It was migrated from the old Trac wiki on 2023-01-21.*