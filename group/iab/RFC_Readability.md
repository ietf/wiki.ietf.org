---
title: RFC Readability
description: 
published: true
date: 2023-12-06T00:24:55.568Z
tags: 
editor: markdown
dateCreated: 2023-12-06T00:24:55.568Z
---

Warning: This is an early brainstorming page

## Characteristics of readable RFCs
- Very short with good examples
- Introductory, Architecture, or Roadmap documents for complex topics
- Start with an high-level overview and then go through the protocol step-by-step focusing on the specification to be short and to the point (while leaving reasoning and additional explanations for later)
- Avoid too many external or normative references

## Example RFCs and why they're good
### Wes: IMAP: RFC 3501
- RFC 3501 has solid examples throughout the document

### Suggestions by Others
**Peter Saint-Andre**
Authored:

- [RFC 6120] - XMPP
- [RFC 6648] - Deprecating the X- prefix
- [RFC 7525] - Recommendations for secure use of TLS

Others he likes:

- [RFC 3365] - Strong Security Requirements for Internet Engineering Task Force Standard Protocols
- [RFC 3552] - Guidelines for Writing RFC Text on Security Considerations
- [RFC 4122] - A Universally Unique IDentifier (UUID) URN Namespace
- [RFC 4648] - The Base16, Base32, and Base64 Data Encodings

**Aqua Q Glass**
- [RFC 2317] -- classes addressing -- "It reads well and easily thorough, and plain, as in text."
  - Wes notes: short, good examples, operational considerations

**Andrew G. Malis**

RFC 826 - ARP because "If "interoperable implementations" is an indicator, then it's hard to beat RFC 826, which must have many many thousands, if not millions, of independent implementations by now."

**Sam Weiler**

[RFC 4101] - Writing protocol models, "includes many sub-examples"

**Töma Gavrichenkov**

[RFC 7754] Technical Considerations for Internet Service Blocking and Filtering, because it is a "masterpiece with regards to readability"

**Ted Lemon**

[RFC 7230] (and friends) Hypertext Transfer Protocol (HTTP/1.1). "Very readable and understandable".

Also thinks FTP and SMTP are likely good from memory.


**Joe Touch**
[RFC 793] - TCP -- RFC793 remains a great model for how to spec a protocol - including defining the internal state machine AND the abstract API.

Especially because it predates the decision* that APIs weren’t part of protocols.

**Donald Eastlake**
[RFC 6325] - Routing Bridges (RBridges): Base Protocol Specification

Although I am one of the authors, I think RFC 6325 is pretty clear. When it went through the IESG a few ADs commented that it was easy to understand, for a document of its size.

**Mary Barnes**
[RFC 6503] - Centralized Conferencing Manipulation Protocol

"it's special because this protocol was the basis for the original Meetecho implementation."

**Marc Petit-Huguenin**

My job is to implement RFCs and so my definition of a "good" RFC is restricted to how easy it is to write a correct and interoperable implementation. On the ones I implemented RFC 5766 has most of the properties I now expect for a "good" RFC (Philip Matthews is the author who imposed that in RFC 5766):

An implementer does not need to read the informative parts (abstract, introduction, overview of operations, informative references, appendixes) to implement the RFC.
The text should not rely on examples to explain the protocol (message state charts, which are examples, are often used for that purpose). In fact an RFC should still be implementable after removing all the examples.
It should be short, and to the point. Most RFCs are far too verbose and it is at the cost of spending time extracting the good stuff from it.
The normative structure should more or less follow a logical sequence that makes sense for an implementer. RFC 5766 takes the implementer step by step: on the client side creating an allocation, then sending it; on the server side receiving it and sending a response; back on the sending side, receiving the response and process it. Some RFCs just mix all these things together, and the implementer has to prepare the work by disentangling that mess, which is no fun at all.
P.S.: You may be interested in https://datatracker.ietf.org/doc/draft-petithuguenin-computerate-specifying/, a multi-year effort in designing a way to make RFCs better, so their implementations are better, with the ultimate goal of "mak[ing] the Internet work better."

Unrelated second comment from a discussion:

I remember during the IESG review of RFC 5928 that an AD asked me to add an example to explain a particularly difficult algorithm. I refused to take that short-cut, and kept improving the normative text until the AD was understanding it. Then, and only then, I added the example in a separate section. As I wrote it I do not want to propose RFC 5928 as an example of a good RFC, but it certainly contains most of the properties I was talking about.

**Tom Petch**

RFC1155 RFC1156 RFC1157 to which I always pointed those wanting to know what SNMP was, even after, perhaps especially after, SNMPv3 was up and running a decade or two later.

I was going to add RFC793 but Joe has beaten me to it. RFC791 is not bad either.

and:


I said earlier that TCP and the trio of SNMPv1 RFC were high on my list. I think it worthwhile to say what are not, and top of that list would be the original, core specifications of IPv6. I say this because of the thousands and thousands of posts about a range of topics along the lines of 'it meaans this', 'no it does not'; rinse and repeat. Followers of the lists will recognise such as M and O bits site local length of prefix and interface ID header insertion The text of this last was honed and honed and the meaning is completely clear. That is, it has one meaning to the IPv6 community but Spring did not want to conform to that and so found another clear meaning, in what has been called the devil's paragraph.

Currently you may find 50 posts a day on the meaning of 'local' and 'global'.

Quite why this cluster of RFC have been so troublesome I am unclear, but they are, as the posts show, and that in turn may well have hindered the deployment of IPv6.


**Michael Thomas**

Even though it's a bit self-serving, I think DKIM (rfc 4871) was pretty clear as it managed to get dozens of interoperable implementations. The ability to get interoperability without back knowledge or trawling the working group mailing list is a good sign that they are well written. Back in the day, IP and TCP RFC's were very easy to understand.

**Colin Perkins**

I like RFC 1939 (POP3) as a good example. It has a very clear description of the state machine, clearly stating what commands can be used in each state, and giving examples. And it’s clearly written and readable.

### Other comments
**Christian Huitema**

That's a bit what I was trying to do in RFC 8963. Using citation counts and web search referrals as a proxy for "RFC that appeal to a wide audience". Out of the 60 RFC listed in 3 sets of 20 samples for 1998, 2008, and 2018, the 4 RFC with more than 100 references were:

RFC 2267 - Network Ingress Filtering: Defeating Denial of Service Attacks which employ IP Source Address Spoofing RFC 8446 - The Transport Layer Security (TLS) Protocol Version 1.3 RFC 5326 - Licklider Transmission Protocol - Specification RFC 2404 - The Use of HMAC-SHA-1-96 within ESP and AH

Clearly, out of about 9000 RFC, many more would meet the criteria. But there has to be something good about these 4.

## Things that don't work
- Biting off more that you can chew
  - the flip side: a gazillion tiny documents are hard to read
- Forward references

## Some thoughts about things to include here (RW)
- Not everything needs to be in the same document. It's probably good to describe what you are trying to achieve in a separate document, or at least in a separate section of the document, rather than trying to blend these things into the document specification.
- Use cases should be provided as a way to "flesh out" the description of what you are trying to achieve; uses cases should not be a substitute for describing what you are trying to achieve. If there is a single use case that cannot be generalized, the protocol or extensions might not be well thought out or extensible.
- Try to describe the problem you are solving first, then describe the solution. the "problem" is not a use case, but rather what the protocol is trying to accomplish, such as carrying data from host to host, etc.
- Describe what each part of the protocol intends to do, or what problem it is trying to solve. If you work from the RINA model, what part of the protocol solves each of the four problems: marshaling, multiplexing, managing errors, and managing flow control. If the protocol does not solve all four, then what other protocols are you relying on to solve those problems? If you are dealing with a control plane, then information needs to be distributed, loop free paths need to be calculated, etc. Break things down into the problems to be solved, then describe how they are solved.
- Again -- perhaps not in the same document, but perhaps in an appendix, try to describe some of the tradeoffs involved in the protocol design as it is described. This will help readers understand why things are the way they are, providing context that aids in understanding.

## Next Steps
Ideas, not formal will-do steps:

1. make a list of subjective tags we can identify in the documents
2. review IESG reviews in the first paragraph of AD responses
3. review the list of RFCs for features
4. rate RFCs in a survey per feature

And maybe in the end:

1. write a document about what makes a good RFC

Wes todo:

1. Wes to send Collin, Russ, and Cullen random RFCs from the list to do a quick review of

## RFC reading assignments
The following is the list of extract RFCs from feedback to Wes from IETF members. Goals:

- Read the assigned RFCS
- Summarize in a few keywords or short phrases stating "why they're good", especially highlighting readability notes. An example keyword might just be "examples" or "well structured", etc. Add those keywords as sub-bullets below the RFC in question.
- Feel free to change these instructions or add other suggested things to document

### The list
- RFC 793 - TCP - Wes
  - Early motivations for the work
  - Stated interactions with other protocol layers
  - Linearly explained (sequentially?)
  - Succinct
- RFC 826 - Collin
- RFC 1155 - Russ
- RFC 1939 - Cullen
  - clear use of examples that helped explain it
  - Easy simple logical build of complexity
  - Section N makes sense without reading N+1
  - Note: Lacks some of things we might expect in newer protocols but is a good RFC.
- RFC 2267
- RFC 2317
- RFC 2404
- RFC 3365
- RFC 3501
- RFC 3552
- RFC 4101
- RFC 4122
- RFC 4648
- RFC 5326
- RFC 5766
- RFC 5928 - Cullen
  - harder to read
  - note that the author talked about the difficulty of documenting this, and didn't necessarily indicate it was a sample of "good" but rather depicts the problem space well
- RFC 6120 - Russ
- RFC 6325 - Collin
- RFC 6503 - Wes
- RFC 6648
- RFC 7230
- RFC 7525
- RFC 7754
- RFC 8446
- RFC 8963


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2021-07-21. It was migrated from the old IAB wiki on 2023-12-05.*