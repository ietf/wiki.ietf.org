---
title: Design Team on Diameter Extensibility
description: Design Team on Diameter Extensibility
published: true
date: 2022-12-06T22:39:05.038Z
tags: 
editor: markdown
dateCreated: 2022-12-06T22:39:05.038Z
---

# Design Team on Diameter Extensibility
The intention of this Design Team is to revisit the rules for Diameter extensibility (as described in [RFC 3588](http://tools.ietf.org/html/rfc3588), RFC 3588bis and the Diameter Design Guidelines document) to come up with a precise and short description on how Diameter has to be extended. The rules for design teams are described at the following [IESG statement on design teams](https://www.ietf.org/about/groups/iesg/statements/design-teams/).

This design team was created 19th February 2008.

## Members

The design team consisted of the following members:

 * Avi Lior
 * Glen Zorn
 * Jari Arkko
 * Lionel Morand
 * Mark Jones
 * Victor Fajardo
 * Tolga Asveren
 * Jouni Korhonen
 * Glenn McGregor 

Chairs:

 * Hannes Tschofenig
 * Dave Frascone 

### Mailing List Archive

The mailing list can be found [here](http://groups.google.com/group/diameter-extensibility/).

### Proposed Resolution

The solution below has been incorporated into the RFC3588bis document already. As such, the text below is just kept for informational purposes.

**1.2. Approach to Extensibility**

The Diameter protocol is designed to be extensible, using several mechanisms, including:

   o Defining new AVP values
   o Creating new AVPs
   o Creating new commands
   o Creating new applications

   From the point of extensibility Diameter authentication, authorization and accounting applications are treated in the same way.

   Note: Protocol designer should try to re-use existing functionality, namely AVP values, AVPs, commands, and Diameter applications. Reuse simplifies standardization and implementation. To avoid potential interoperability issues it is important to ensure that the semantic of the re-used features are well understood.

**1.2.1. Defining New AVP Values**

   In order to allocate a new AVP value for AVPs defined in the Diameter Base protocol, the IETF needs to approve a new RFC that describes the AVP value. IANA considerations for these AVP values are discussed in Section 11.4.

   The allocation of AVP values for other AVPs is guided by the IANA considerations of the documents that defines those AVPs. Typically, allocation of new values for an AVP defined in an IETF RFC should require IETF Review [RFC2434], where as values for vendor- specific AVPs can be allocated by the vendor.

**1.2.2. Creating New AVPs**

   A new AVP being defined MUST use one of the data types listed in Section 4.2 or 4.3. If an appropriate derived data type is already defined, it SHOULD be used instead of the base data type to encourage reusability and good design practice.

   In the event that a logical grouping of AVPs is necessary, and multiple "groups" are possible in a given command, it is recommended that a Grouped AVP be used (see Section 4.4).

The creation of new AVPs can happen in various ways. The recommended approach is to define a new general-purpose AVP in a standards track RFC approved by the IETF. However, as described in Section 11.1.1 there are also other mechanisms.

**1.2.3. Creating New Commands**

   A new Command Code has to be allocated when new required AVPs (those indicated as {AVP}) are added, deleted or are redefined (for example by changing a required AVP into an optional one).

   Furthermore, when a command is modified with respect to the number of round trips then a new Command Code has to be registered.

   A change to the ABNF of a command, such as described above, MUST result in the definition of a new Command Code. This subsequently leads to the need to define a new Diameter Application for any application that will use that new Command.

   The IANA considerations for commands are discussed in Section 11.2.1.

**1.2.4. Creating New Diameter Applications**

   Every Diameter application specification MUST have an IANA assigned Application Id (see Section 2.4 and Section 11.3). The managed Application ID space is flat and there is no relationship between different Diameter applications with respect to their application IDs. As such, there is no versioning supported provided by these application IDs itself; every Diameter application is a standalone application that may or may not have a semantical relationship with one or more Diameter applications being defined elsewhere.

   Before describing the rules for creating new Diameter applications it is important to discuss the semantic of the AVPs occurrences as stated in the ABNF and the M-bit flag for an AVP. There is no relationship imposed between the two; they are set independently.

   The ABNF indicates what AVPs are placed into a Diameter Command by the sender of that Command. Often, since there are multiple modes of protocol interactions many of the AVPs are indicated as optional. 

   The M-bit allows the sender to indicate to the receiver whether the semantic of an AVP and it's content has to be understood mandatorily or not. If the M-bit is set by the sender and the receiver does not understand the AVP or the values carried within that AVP then a failure is generated (see Section 7). 

   It is the decision of the protocol designer when to develop a new Diameter application rather than extending Diameter in other ways. However, a new Diameter application MUST be created when one or more of the following criteria are met:

   o M-bit Setting

Adding an AVP with the M-bit in the MUST column of the AVP flag table to an existing Command/Application? requires a new Diameter Application Id to be assigned to that Application.

 Adding an AVP with the M-bit in the MAY column of the AVP flag table to an existing Command/Application? requires a new Diameter Application Id to be assigned to that Application.

  Note: The M-bit setting for a given AVP is relevant to an Application and each command supported by that application where the AVP is inlcuded. That is, if an AVP appears in two commands for application Foo, then there should be two AVP flag tables describing when to set the M-bit.

   o Commands

   A new command is used within the existing application either because an additional command is added, an existing command has been modified so that a new Command Code had to be registered, or a command has been deleted.

   An implementation MAY add arbitrary optional AVPs to a command defined in an application, including vendor-specific AVPs without needing to define a new application. This can be done if the commands ABNF allows for it. Please refer to Section 11.1.1 for details.

**4.1. AVP Header**

...

   AVP Flags

...

   The 'M' Bit, known as the Mandatory bit, indicates whether support of the AVP is required. If an AVP with the 'M' bit set is received by a Diameter client, server, or translation agent and either the AVP or its value is unrecognized, the message MUST be rejected. An exception to this rule applies when the AVP is embedded within a Grouped AVP. See Section 4.4 for details. Diameter Relay and redirect agents MUST NOT reject messages with unrecognized AVPs.

   The 'M' bit MUST be set according to the rules defined within the Application/Command? carrying this AVP.

   AVPs with the 'M' bit cleared are informational only and a receiver that receives a message with such an AVP that is not supported, or whose value is not supported, MAY simply ignore the AVP.

**4.4. Grouped AVP Values**

   The Diameter protocol allows AVP values of type 'Grouped.' This implies that the Data field is actually a sequence of AVPs. It is possible to include an AVP with a Grouped type within a Grouped type, that is, to nest them. AVPs within an AVP of type Grouped have the same padding requirements as non-Grouped AVPs, as defined in Section 4.

   The AVP Code numbering space of all AVPs included in a Grouped AVP is

   the same as for non-grouped AVPs. Receivers of a Grouped AVP that does not have the 'M' (mandatory) bit set and one or more of the encapsulated AVPs within the group has the 'M' (mandatory) bit set MAY simply be ignored if the Grouped AVP itself is unrecognized.

   However, the encapsulated AVPs with 'M' (mandatory) bit set MUST belong to the Diameter application the Grouped APV is used in.

   The rule applies even if the encapsulated AVP with its 'M' (mandatory) bit set is further encapsulated within other sub-groups; i.e. other Grouped AVPs embedded within the Grouped AVP.
