---
title: YANG FAQ
description: 
published: true
date: 2022-12-20T19:56:30.173Z
tags: 
editor: markdown
dateCreated: 2022-12-16T20:26:58.786Z
---

# YANG FAQ

Here you can find answers to some of the most frequently asked questions about YANG that do not seem appropriate for inclusion in the standards documents. If you have a question not answered on this page or in the WG documents, you can ask it on the NETMOD mailing list.

1.    Why doesn't YANG support XML attributes?
2.    Why doesn't YANG support the xs:list data type?
3.    Why doesn't YANG support reusable complex data types?
4.    Why doesn't YANG use the RelaxNG instance qualifiers (?, *, +) instead of leaf-list?
5.    What are the differences between P and NP containers and why should I care?
6.    Why doesn't YANG support nested key leafs?
7.    Why does YANG require list keys to be encoded first in all NETCONF PDUs?
8.    Why can't a leaf be used more than once in the same key?
9.    Why doesn't it make sense to use the type 'empty' in a key?
10.    Why can't choices be nested?
11.    Do augmented nodes with 'when' statements always exist for 'must' XPath evaluation purposes in other nodes?
12.    What are the differences between instance-identifiers and keyref?
13.    What happens if keyref objects loop?
14.    Why does YANG have a keyref, but no leafref?
15.    Why do keyrefs need to match the config value (T/F) of the leaf they point at?
16.    What is YIN?
17.    When should type "empty" be used?
18.    What does a default value mean for a leaf which represents operational data?
19.    How can YANG allow multiple root nodes? That can't work with XML.
20.    Why does YANG describe the conceptual database and not the PDUs ?
21.    Why is DSDL needed?
22.    What does DSDL describe the database or the PDUs ?

## Why doesn't YANG support XML attributes?

It was a design decision to keep things simple. (Balazs)

## Why doesn't YANG support the xs:list data type?

 xs:list in XSD is a simple type, which can be assigned to elements. For example, if such a list for an element "mibs" contains the values "rmon", "alarm", and "rmon2", it would be encoded in XML as:

`<mibs>rmon alarm rmon2</mibs>`

 The problem with this is that XPath expressions cannot be used to check individual elements of the list. This is a problem both in **must** expressions in the YANG modules themselves, and also when tools like XSLT are used to manipulate NETCONF data.

To illustrate this problem, suppose the element "foo" above contains "alarm" and "rmon2": 

`<mibs>alarm rmon2</mibs>`

 If we write an XPath expression which checks if "rmon" is present:

`substring (mibs , "rmon")`

 this XPath expression returns true.

This is a well-known problem with xs:list in XML in general, and usually it is recommended to use markup instead.

In YANG, there is a separate keyword **leaf-list** which is used instead. 

## Why doesn't YANG support reusable complex data types?

YANG supports reusable groupings. Everything that can be done with a complex type, and more, can be done with groupings.

Balazs: not fully true

## Why doesn't YANG use the RelaxNG instance qualifiers (?, *, +) instead of leaf-list?

The alternative here would be to drop **leaf-list**, and just have **leaf**, but with instance qualifiers. We believe there is a value in giving different names to different concepts. In this case, the two concepts are simple values and arrays of values.

YANG supports min-elements and max-elements, which give more control than ?, +, and *.

## What are the differences between P and NP containers and why should I care?
## Why doesn't YANG support nested key leafs?
## Why does YANG require list keys to be encoded first in all NETCONF PDUs?
## Why can't a leaf be used more than once in the same key?
## Why doesn't it make sense to use the type 'empty' in a key?
## Why can't choices be nested?
## Do augmented nodes with 'when' statements always exist for 'must' XPath evaluation purposes in other nodes?
## What are the differences between instance-identifiers and keyref?
## What happens if keyref objects loop?
## Why does YANG have a keyref, but no leafref?
## Why do keyrefs need to match the config value (T/F) of the leaf they point at? 
## What is YIN?

YIN is an alternative, equivalent XML syntax for YANG. A YANG module can be translated into YIN syntax without losing any information. The YIN module can then be manipulated by standard XML tools such as XSLT scripts. This can be a convenient way to for example extract documentation strings from a module. If necessary, the transformed YIN module can be translated back into YANG syntax, again without information loss.

## When should type "empty" be used?

There are two situations when type empty is useful.

The first is instead of type boolean, when the default value is =false=: 

```
leaf foo {
  type boolean;
  default false;
}


leaf foo {
  type empty;
} 
```



It is mainly a matter of taste which type to use in this case.

The second situation is when you want to define an extensible enumeration, as an alternative to the type "enumeration", which is not extensible by other modules. For example if an enumeration is used:

```
leaf protocol {
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

## Why does YANG describe the conceptual database and not the PDUs ?
## Why is DSDL needed?
## What does DSDL describe the database or the PDUs ?

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2008-09-16. It was migrated from the old Trac wiki on 2022-12-20.*
