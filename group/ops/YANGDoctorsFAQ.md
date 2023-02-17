---
title: YANG Doctor's FAQ Page
description: 
published: true
date: 2022-12-20T20:10:56.369Z
tags: 
editor: markdown
dateCreated: 2022-12-20T20:07:54.983Z
---

# YANG Doctor's FAQ Page

Here you can find answers to some of the most frequently asked questions about YANG that do not seem appropriate for inclusion in the standards documents. If you have a question not answered on this page or in the WG documents, you can ask it on YANG doctors maillist (yang-doctors@…) or on the NETMOD mailing list (netmod@…).

 1.   What should I do before asking YANG doctors?
 2.   What is YIN?
 3.   Why doesn't YANG support XML attributes?
 4.   Why doesn't YANG support the xs:list data type?
 5.   Why doesn't YANG support reusable complex data types?
 6.   Why doesn't YANG use the RelaxNG instance qualifiers (?, *, +) instead of leaf-list?
 7.   When should type "empty" be used?
 8.   What does a default value mean for a leaf which represents operational data?
 9.   How can YANG allow multiple root nodes? That can't work with XML.
 10.   Deviations versus if-feature?
 11.   Should NETCONF server export common YANG models?
 12.   Should Config, State, RPC, Notifications, etc. for a given protocol be all in one module, or different ones? (added by Rajiv Asati, answered by ...)
 13.   Intended, Applied and Derived States? (added by Rajiv Asati, answered by ...)
 14.   What is the recommended granularity of YANG modules?
 15.   Module Organization Illustration? (added by Rajiv Asati, answered by ...)
16.    Can a leaf exist inside a module by itself (without a container)?
17.    Are there any naming conventions for entities defined in YANG modules?
18.    Is it possible to use only a part of a grouping?
19.    Why does YANG describe the conceptual database and not the PDUs ?
 20.   Why is DSDL needed?
 21.   What does DSDL describe the database or the PDUs ?
 22.   What are the differences between P and NP containers and why should I care?
 23.   Why doesn't YANG support nested key leafs?
 24.   Why does YANG require list keys to be encoded first in all NETCONF PDUs?
 25.   Why can't a leaf be used more than once in the same key?
 26.   Why doesn't it make sense to use the type 'empty' in a key?
 27.   Why can't choices be nested?
 28.   Do augmented nodes with 'when' statements always exist for 'must' XPath evaluation purposes in other nodes?
 29.   How does a NETCONF server inform a client that the server does not support RPC statement?

## What should I do before asking YANG doctors?

First check if your question is not answered by RFC6020 on “YANG - A Data Modeling Language for the Network Configuration Protocol (NETCONF)” or RFC7950 (YANG 1.1).
If your answer is not in RFC6020 or in RFC6020bis document please review following information:
-   The questions and answers in the FAQ below and
-  RFC6087 on “Guidelines for Authors and Reviewers of YANG Data Model Documents” 

Additional sources interesting to look at are:
- Tutorial on [Working with YANG Data Models](https://www.ietf.org/edu/technical-tutorials.html#yang)
- Tutorial on [Network Configuration Management with NETCONF and YANG](https://www.ietf.org/edu/technical-tutorials.html#netconfandyang)
- But also RFC6244 on “An Architecture for Network Management Using NETCONF and YANG” 
    
Additional pages in the Internet with information on YANG and its usage are:
- [YANG Central](http://www.yang-central.org/)
- YANG related info at [Netconf Central](http://www.netconfcentral.org/) 

After searching the sources above, if you still have questions please write an email to yang-doctors@ietf.org and describe your question with some examples. 

## What is YIN?
YIN is an alternative, equivalent XML syntax for YANG. A YANG module can be translated into YIN syntax without losing any information. The YIN module can then be manipulated by standard XML tools such as XSLT scripts. This can be a convenient way to for example extract documentation strings from a module. If necessary, the transformed YIN module can be translated back into YANG syntax, again without information loss.

## Why doesn't YANG support XML attributes?

It was a design decision to keep things simple. (Balazs)

XML attributes are best used for conveying metadata. YANG was initially only interested in modeling data, and hence left support for metadata out. RFC 7952 adds to YANG an ability to model metadata, which is encoded as XML attributes. (Kent)
## Why doesn't YANG support the xs:list data type?

xs:list in XSD is a simple type, which can be assigned to elements. For example, if such a list for an element "mibs" contains the values "rmon", "alarm", and "rmon2", it would be encoded in XML as:

`<mibs > rmon alarm rmon2 </ mibs >`

The problem with this is that XPath expressions cannot be used to check individual elements of the list. This is a problem both in must expressions in the YANG modules themselves, and also when tools like XSLT are used to manipulate NETCONF data.

To illustrate this problem, suppose the element "foo" above contains "alarm" and "rmon2":

`< mibs > alarm rmon2< /mibs >`

If we write an XPath expression which checks if "rmon" is present:

`substring ( mibs, "rmon")`

this XPath expression returns true.
This is a well-known problem with xs:list in XML in general, and usually it is recommended to use markup instead.

In YANG, there is a separate keyword **leaf-list** which is used instead.

## Why doesn't YANG support reusable complex data types?

YANG supports reusable groupings. Everything that can be done with a complex type, and more, can be done with groupings.

Balazs: not fully true

## Why doesn't YANG use the RelaxNG instance qualifiers (?, *, +) instead of leaf-list?

The alternative here would be to drop leaf-list, and just have leaf, but with instance qualifiers. We believe there is a value in giving different names to different concepts. In this case, the two concepts are simple values and arrays of values.

YANG supports min-elements and max-elements, which give more control than ?, +, and *.
## When should type "empty" be used?

There are two situations when type empty is useful.

The first is instead of type boolean, when the default value is =false=:
```
leaf foo {
  type boolean;
  default false;
}
```
```
leaf foo {
  type empty;
}
```

It is mainly a matter of taste which type to use in this case.
The second situation is when you want to define an extensible enumeration, as an alternative to the type "enumeration", which is not extensible by other modules. For example if an enumeration is used:

```leaf protocol {
  type enumeration {
    enum smtp;
    enum pop3;
  }
}
```

and we want to add a new protocol 'imap4', it must be done by adding a new enum in the module. But if we use a choice of type empty instead:

```
container protocol {
  choice p {
    case smtp { leaf smtp { type empty; } }
    case pop3 { leaf pop3 { type empty; } }
  }
}
```

then another module can augment the first:

```
augment /foo:protocol/p {
  case imap4 { leaf imap4 { type empty; } }
}
```

## What does a default value mean for a leaf which represents operational data?

It means that the default is the value the agent will use to create it. It's not like a config knob, where there might be other choices besides this one. This is extra machine-readable text that says that a state or statistic object has an initial value.
Consider this example:

```
leaf backupFanSpeed {
  type enumeration {
    enum off;
    enum low;
    enum medium;
    enum high;
  }
  config false;
  default off;
}
```

You can only monitor the backup fan speed in this example. The backup fan starts out in the 'off' mode, and does not turn on unless needed. Just like zero-based-counter64, it is good for the manager to know the initial value of a non-config object.

## How can YANG allow multiple root nodes? That can't work with XML.

A YANG module can have multiple top-level nodes. If data described by such a model is mapped to XML, there will be multiple XML elements. However, the data described in a model is never mapped to root XML elements. The root XML element is always one of `<rpc>`, `<rpc-reply>`, or `<notification>`. The data described by YANG models end up inside the `<data>` or `<config>` elements.

Note that the same thing happens if the data store is described by more than one YANG module, even if each YANG module has a single top-level node.

## Deviations versus if-feature?
From a pure YANG perspective, if-features are better than deviations. Features should be used when you define "conformance profiles" at model design time. Deviations are used *by specific implementations* when they fail to implement a specific conformance profile.

## Should NETCONF server export common YANG models?

ietf-yang-types and iana-if-types are common models used by both the client and server. Should a server advertise and export these models?

With YANG 1.1, the ietf-yang-library handles this case, by requiring a server to list these modules with conformance type 'import'.

With YANG 1, these modules can safely be advertised since they have typedefs only.

### Should Config, State, RPC, Notifications, etc. for a given protocol be all in one module, or different ones? (added by Rajiv Asati, answered by ...)

It would be useful to have standard "guidelines" (and rationale) for keeping some or all of them in one module or not. Let's not allow various protocols to deviate lacking proper justification.

## Intended, Applied and Derived States? (added by Rajiv Asati, answered by ...)

At this time, no guideline can be provided. Discussions are ongoing regarding how to best model intended configuration, applied configuration, and derived state. For example, please see https://mailarchive.ietf.org/arch/msg/netmod/Dlvg3uyE65FXXp16PvForJKDmyM.

Eventually, the final solution will be published as a draft and additional guidelines may be added to 6087bis. There should be a guideline (a starting point, at least) to keep them in one container or 2 different containers or 3 different containers with rationale. It is not a good idea to leave it open to the yang designers for various protocols/working groups.

## What is the recommended granularity of YANG modules?

It is impossible to set any hard and fast rules, each case should be considered separately. In general, each YANG module should correspond to an identifiable functional block of the device or technology for which the module is being written.

Update rules for YANG modules (see section 11 in draft-ietf-netmod-rfc6020bis are an important factor that should be taken into account. Once a YANG module is published in an RFC, only backward-compatible changes are permitted – other changes require a new module to be started. With a finer granularity of modules, such a change is likely to have less impact on other modules and implementations.

## Module Organization Illustration? (added by Rajiv Asati, answered by ...)

It would be useful provide a guideline (perhaps, with a mandate in this case) to always include the diagram for tree structure with more specifics as shown below:

    Module: _foo_organization

        Config (intended)
        State (derived with or without applied)
        Notification
        RPC
        ...

## Can a leaf exist inside a module by itself (without a container)?

Yes.

Per RFC 7950, module-stmt includes body-stmts, which includes data-def-stmt, which includes leaf-stmt. (Kent)

## Are there any naming conventions for entities defined in YANG modules?

Yes, section 5.3 in draft-ietf-netmod-rfc6087bis specifies the rules for YANG identifiers. In short: use only lowercase letters, and separate words with a hyphen, e.g., `routing-protocol`. Any camel-type names, such as `routingProtocol`, should be avoided.

## Is it possible to use only a part of a grouping?

There is no direct support in YANG for doing this. One rather hackish way is to add a dummy **if-feature** statement to the “unwanted” data nodes by means of the **refine** statement, and make sure this feature isn't advertised.

When designing groupings, it is therefore advisable to make them reasonably granular so as to allow reusing selected parts in different situations.

## Why does YANG describe the conceptual database and not the PDUs ?
## Why is DSDL needed?
## What does DSDL describe the database or the PDUs ?
## What are the differences between P and NP containers and why should I care?
## Why doesn't YANG support nested key leafs?
## Why does YANG require list keys to be encoded first in all NETCONF PDUs?
## Why can't a leaf be used more than once in the same key?
## Why doesn't it make sense to use the type 'empty' in a key?
## Why can't choices be nested?
## Do augmented nodes with 'when' statements always exist for 'must' XPath evaluation purposes in other nodes?
## How does a NETCONF server inform a client that the server does not support RPC statement?

A server informs the client that it does not support a particular RPC statement by announcing a deviation for the RPC. See https://tools.ietf.org/html/rfc7950#section-7.20.3. In addition, the server should return a `<rpc-error>` with the message 'operation-not-supported' if a client tries to use RPC.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-08-16. It was migrated from the old Trac wiki on 2022-12-20.*
