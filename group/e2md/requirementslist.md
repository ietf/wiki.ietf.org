---
title: Requirements List
description: 
published: true
date: 2023-02-26T23:44:57.594Z
tags: 
editor: markdown
dateCreated: 2023-02-26T23:44:50.069Z
---

# Requirements for E.164 To MetaData

TOC?

## 1 Generic requirements
### 1.1 Access to data
#### 1.1.1 Public and private use cases

Each proposal has a public use case. That is to say there is a valid requirement for that data to be published in public database unencumbered by access control. Most proposals have a private use case. That is to say there are valid requirements for that data to be subject to access control. For example:

  -  CNAM has an obvious private use case when the data personally identifies a private individual. It also has a public use case, when the CNAM refers to a company and local regulation exists that requires companies to accurately identify themselves as the originator of telephone calls. 

    How about the dimension User ENUM vs. Infrastructure ENUM?
   (see also picture here) [enum_forest.png](/enum_forest.png)

#### 1.1.2 Mechanisms for controlling access

The alternate mechanisms for controlling access to data include:

 -   indirection - some data is made public but only acts as a key, possibly along with other known data, into a private database.
 -   source differentiation - a public or private database that validates the source that makes the requests and returns specific data for that source
 -   private database - a wholly private database that access is only granted to by contractual agreement and on which all the data is the same (so no source differentiation).
 -   selective encryption - private records are encrypted with a key known to the authorized node. 

#### 1.1.3 Relationships between parties

The relationships between the various parties that produce and consume data, leading to access control requirements, are summarised as:

 -   A producer may choose to provide different information to different consumers.
  -  A producer may choose to provide no usable information at all to some consumers.
  -  A producer cannot expect a consumer to keep data secret from itself. (So if a consumer asks the same question of the producer and receives two different answers, for whatever reason such as source differentiation, then the consumer is trusted to use that data as the producer intends, it is not a requirement for a mechanism to prevent the consumer misusing that data.)

    This needs clarification!

  -  A producer may not wish for one consumer to know that it has published different data to another consumer. (So it may not want it obvious to a consumer that there is other data that it does not have access to.) 

### 1.2 Relevance

There are two known relevancy domains for the data:

  -  for originating a call
  -  for receiving a call 

It is a requirement that the client that makes the lookup can separate out the data for the relevancy domain that it is interested in.

    Do we really need this?
    (e.g. if a call is originated in the PSTN, both might be relevant.)

#### 1.2.1 Mechanisms for separating out relevancy domains

This may be achieved by:

 -   a single query only returning information from one relevancy domain
 -   the client filtering the returned values to extract those it requires 

### 1.3 Performance requirements

The database needs the following performance characteristics:

 -   A real-time response (in the order of milliseconds).
 -   Scalable to hundreds of millions of keys.
 -   Scalable to millions of querying clients.
 -   Scalable to accommodate millions of changes per day. 

It does not need the following performance characteristics:

 -   Deliver data greater that a few kilobytes in size.
 -   Guaranteed consistency. 

## 2 DNS Protocol considerations
### 2.1 Access to data

The various 'pure' DNS mechanisms for controlling access are:

 -   Private trees.

    Private trees as such do not implement access control.

 -   Only publishing an indirect key in DNS. 

The various DNS+ mechanisms for controlling access are:

  -  Source-URI

    This term needs to be defined!

  -  Replicating DNS on a different port and confining it to this data [Is this really what that proposal is about?] 

## 2.2 Relevancy

The various mechanisms for separating out relevancy domains are:

 -   Private trees
 -   Different branches of the same tree. So e164m.arpa for data needed to 'make' a call and e164r.arpa for data needed to 'receive' a call.
 -   Source-URI 
    
    
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2010-07-10. It was migrated from the old Trac wiki on 2023-02-26.*    