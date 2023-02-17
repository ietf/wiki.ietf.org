---
title: Force Analysis
description: 
published: true
date: 2023-01-22T02:26:07.541Z
tags: 
editor: markdown
dateCreated: 2023-01-22T02:26:01.758Z
---

# FORCES Analysis 
[draft-hadi-i2rs-forces-gap-analysis-00](http://tools.ietf.org/html/draft-hadi-i2rs-forces-gap-analysis-00) provides an executive summary introduction to ForCES.
The requirements listed here were taken from various I2RS documents as well as perceived requirements.
We first list the protocol then model analysis.

## Protocol Requirements Analysis
1) *Model-Driven Programmatic Interfaces
The I2RS protocol MUST work in conjunction with I2RS data model to facilitate programmatic interfaces*

The ForCES architecture provides (very) few simple protocol verbs which act upon a multitude of nouns as represented by the ForCES model. This allows powerful programmatic interfaces i.e the "API" construct boils down to a formulation of operations in the form of a "verb" acting on a "noun" followed by "optional arguements". From that perspective it is very similar to http (where the commands map to http commands and the htpp uris map to ForCES paths). In other words, the ForCES semantic allows composing of rich services on top of the basic grammar.

2) *Extensibility*
*The I2RS protocol MUST be extensible*
The ForCES protocol is extensible. New top Level TLVs can be introduced. New flags to extend paths and semantics of commands can be added.

3) *Protocol operations
The I2RS protocol, using the I2RS data model, MUST allow clients to:

a) *connect to I2RS agents*
**The ForCES protocol does not meet this requirement as it stands today.**
The relationship would be more the agent initiating the connection to the client (as opposed to the required reverse)
b) *determine the capabilities and capacities exposed by each agent.*
The ForCES protocol facilitates discovery of capabilities and capacities of a modelled Entity.
c) *control(adding/updating/deleting) and query the various I2RS objects owned by an agent*
**The ForCES protocol does not fully meet this requirement.**
For example, an update and a create/add operation are one and the same in the programmatic interfaces

d) *subscribe to and receive agent-generated events*
The ForCES protocol has very powerful publish-subscribe event model which meets this requirement.
e) *analytics, audits and logging*
*protocol requirements being ability to express time stamps and identity **not sure if this calls out for "streaming" of data (as opposed to message based) and whether a requirement to call out here is separate "channel" for this kind of activity.**

*TBA*

4) *Support for Secure Communication between clients and agent.
I2RS protocol communications must allow for mutual message authentication, and different levels of integrity, confidentiality, and replay protection of packets.*

ForCES protocol is defined to work with IPSec and therefore meets these requirements. A transport module using TLS may be more friendly for I2RS (but would need to be defined)

5) *Client Identity and Authentication*

*Any client to agent object access must be subject to mutual authentication, authorization and resource accountability. The protocol MAY need to carry information to enable this requirement.*

**There is a gap that the ForCES protocol needs to address to properly meet this I2RS requirement.**
Several proposals are made in section 4.6 of [draft-hadi-i2rs-forces-gap-analysis](http://tools.ietf.org/html/draft-hadi-i2rs-forces-gap-analysis)

6) *Scalability*

a) *The I2RS protocol MUST be capable of supporting at least thousands of clients end points. i.e there should be no limitation in the protocol definition which restricts the agent from handling many clients (e.g in a header definition dont use an 8bit field to define a client id)*

ForCES protocol meets this requirement

b) *Multiple pipelined Operations: A single client should be able to send multiple independent operations via I2RS without being required to wait for each to complete before sending the next. The protocol SHALL allow for such mechanisms (eg using windowing etc)*

ForCES protocol meets this requirement

c) *High-Throughput (from RIB model draft) need
It should be possible to do bulking of table information in either direction (eg a single request to dump a RIB table or a single transaction to update large amounts of table rows).*

The ForCES protocol is binary and supports command and data batching. A single get request allows the ForCES protocol to send in either client/agent direction a large number of table entries.
[achieving 100s of thousands of table updates/second should be possible].

d) *High transaction rate: (from problem statement draft)
At a minimum, the I2RS Agent and associated router should be able to handle a considerable number of operations per second above what basic Netconf or a propretiary CLI can.*

The ForCES protocol is binary with design to have high transaction rates.

e) *Low Latency: It MUST be possible to complete simple I2RS operations within a sub-second time-scale. It SHOULD be possible to to possible to process bulk data intensive operations (eg a table dump or update) with low latency.*

The ForCES protocol is binary with very low operational overhead. The ForCES protocol achieves these goals.

f) Filterable Information Access: The protocol MUST allow to extract information in a scalable fashion that is more easily used by clients, the ability to specify filtering constructs in the I2RS protocol request MUST be possible.
The ForCES protocol does not have proper semantics to achieve this goal. It is not difficult to add it since the semantics already support definition of filter keys.

7) *Multi-Headed Control
Multiple clients may communicate to the same I2RS agent. It is necessary that the I2RS agent can handle requests from multiple clients to the same object within constraints of the client access authorization.*

**The ForCES architecture/protocol does not allow for this.**

ForCES only allows a single master writer and multiple readers. This was done for the sake of simplicity of the HA mode. It is possible to meet some aspect of this requirement as was proposed in http://www.ietf.org/proceedings/86/slides/slides-86-forces-7.pdf

8) *Reliability
The I2RS protocol will be used to transport information that requires varying levels of reliability.
By strict or robust reliability in this requirement we mean, no losses, no corruption, no re-ordering of information being transported and delivery in a timely fashion.*
- *Some information or payloads, such as subscribed-to events may not require robust reliability (can tolerate some degree of losses)*.
- *Payloads such as configuration information from clients to the I2RS agent or responses from the I2RS agent are mission critical and must be delivered in a robust reliable fashion. Thus, for information of this sort, I2RS MUST either provide built-in protocol mechanisms or use a reliable transport protocol for achieving robust/strict reliability.**

The ForCES protocol through the use of appropriate transport meets these requirements.

9) *Message Priority
The I2RS protocol MUST provide a means to express the protocol message priorities. As various types of messages are expected, their level of importance will be different depending on congestion.*

The ForCES protocol meets these requirements.

10) *Protection against node overload
based on CPU overload or queue overflow to either an agent resource or client(s). XXX: This may end up being an implementation issue/ Agents/clients utilizing the I2RS protocol can be subjected CPU overload or queue overflow. The I2RS agent MUST be robust under such conditions.*

ForCES architecture was designed with this requirement in mind.

11) *Transactions capability (section 7.9 of architecture doc)
The protocol must be able to express error handling for batched operations. These are:*
- *Perform all or none*
- *Perform until error*
- *Perform all storing errors*

ForCES meets these requirements.

12) T*ransport independence
Not sure how well this is a fit. It may complicate things. If we were to separate the semantics of the I2RS protocol from the underlying transport protocol then we could allow for more flexibility of different characteristics.*

ForCES meets these requirements.
## Perceived Impact on Requirements
Various changes will be needed for the ForCES protocol to be compliant. These are:
- Allow for client to agent connection. The change from a ForCES pov will require allowing a CE to connect to an FE
- Allow for disambiguation of CREATE from UPDATE to conform to full crud operation. This is a simple requirement which has been requested for in the past.
- Allow for the protocol (or the model) to carry identity tokens for AAA. The requirement could be met in the form of simple extension TLVs
- Multi-head control extensions would be needed to allow multiple writers to the same LFB instance's components. We would need to revive the request made by http://www.ietf.org/proceedings/86/slides/slides-86-forces-7.pdf
## Good Properties
The ForCES protocol meets **most** of the requirements for I2RS.

## Not So Good Properties
ForCES protocol is tied to the ForCES data model.

## Things FORCES does better than NETCONF / YANG
ForCES protocol could be made to meet requirements. Speak no speak evil of other proposals.

## Data Model Requirements Analysis
*1) The data model MUST be able to describe the target objects*

*a) with formal constraints for validation purpose*

*b) basic read-write access permissions*

*c) class object capabilities and capacities*

*d) event object definitions with publish-subscribe semantics*

The ForCES data model meets these requirements.

*2) The model MUST be object oriented.
This allows it to extensible in the form of classes and sub-classing.*

The ForCES data model meets these requirements.

*3) The data model MUST be able to express semantics of instances.*

The ForCES data model meets these requirements by being Object oriented.

*4) The data model MUST be able to manage variation*

*a) Presence compliance of defined objects should be possible to express. (eg optional vs mandatory)*

*b) Default values MUST be possible to specify (facilitate templating)*

*c) Hierarchies MUST be possible to specify*

The ForCES data model meets these requirements.

*5) Data Model MUST be able to handle Object Life cycle management.*
Typically this means:

*a) Versioning support
b) being able to handle both backward and forward compatibility*

The ForCES data model meets these requirements.
## Perceived Impact on Requirements
Data model definitions for various objects will need to be defined - but this is a given regardless of which data model used.

## Good Properties
The ForCES data model meets **all** of the requirements for I2RS.

## Things FORCES does better than NETCONF / YANG
ForCES meets the requirements. Speak no evil of other proposals.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-05-14. It was migrated from the old Trac wiki on 2023-01-21.*