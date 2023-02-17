---
title: Routing Area Directors' ADnits
description: 
published: true
date: 2022-12-22T19:57:26.592Z
tags: 
editor: markdown
dateCreated: 2022-12-22T19:56:22.586Z
---

# Routing Area Directors' ADnits

(This page last updated 2014-05-13)

These are issues and concerns that are often raised by the Routing ADs during AD review when publication of an I-D as an RFC is requested, or that have been observed to be raised by other ADs during IESG review.

They are presented here to help authors get their documents approved more quickly.

Here is a presentation given to the MPLS working group at IETF-89 on this subject [PowerPoint slides](http://www.ietf.org/proceedings/89/slides/slides-89-mpls-15.pptx)

[Back to the Routing Area wiki](/group/rtg)

---

## Explain why your I-D is experimental

 *   How is the Internet kept safe from the experiment?
 *   How will you judge the success of the experiment?
 *   How do you plan to move the experiment to standards track? 

## The first section of the I-D should be the Introduction

In particular, a Terminology section should be placed later.
## Expand all acronyms on first use in the body text

Regardless of what is in the Abstract. And expand them in the Abstract as well.
## Consider including a discussion of manageability

Especially in

 -   architecture or framework drafts
 -   new protocol specifications 

Useful resources are:

 -   **Guidelines for Considering Operations and Management of New Protocols and Protocol Extensions** RFC 5706
 -   **Inclusion of Manageability Sections in Path Computation Element (PCE) Working Group Drafts** RFC 6123 for some examples. 

### Number of names on the front cover

Try to restrict according to the RFC Editor preferences ( <= 5 )
## Make the Abstract according to RFC Editor preferences

- [RFC Editor guidance](http://www.rfc-editor.org/styleguide.html)
- [RFC Editor tutorial](http://www.ietf.org/edu/documents/tutorial76.pdf) 

## Do not place citations in the Abstract

Just don't do it!

But you can mention an RFC by name.

For example *As described in the PCEP specification (RFC 5440) ...*
## Format of Integers

It may seem obvious to you, and it may be common practice in the protocol you are extending, but some people get agitated about exactly what format your protocol fields are encoded in. So, when you are describing a message, object, or TLV format, please include text that says:

 -   this field is encoded as an integer
 -   how many bytes is it?
 -   is it signed or unsigned?
 -   what order are the bytes presented in? 

For example, the Froible field is encoded as a two byte unsigned integer in line format.
## Formal language

If you use a formal language such as BNF, include a reference to the specification of that language.
## Obsoleting other RFCs

I-Ds that Obsolete an existing RFC should include a section that describes the changes from the previous version. This may simply say "completely new procedures", but in the case where only selected modifications have been made, these should be individually flagged.
## Revising other RFCs

If you are revising a published RFC by writing a "bis" you must pick up any Errata that have been recorded for the RFC.
## Is the I-D really covered by the WG charter!

Well, if it isn't in charter, what makes you think that the WG will adopt it? And if the WG does adopt it, what makes you think the AD will sponsor its publication?
## Are there empty sections?

If there are two consecutive section headings without intervening text there is probably something wrong. This applies even if the second heading is for a sub-section of the first section.
## Congestion

Does the I-D properly cover "congestion". This should include consideration of how the protocol reacts when the protocol speakers are congested, how the protocol reacts when it suffers packet loss due to congestion, how the protocol contributes to network congestion, and whether the protocol can take action to reduce congestion.
## IPR

Were IPR disclosures that have been made and logged with the IETF properly raised during WG and IETF last calls?
## Corporate affiliation

Is there an excess representation of a single company in the set of editors, authors, WG chairs, document shepherd, and responsible AD?

It may be necessary to arrange for a different document shepherd or responsible AD.
## Dates and Times

If your spec includes protocol elements with a datatype of date or datetime or time, make sure you define the details of its syntax. Even if you reference something like RFC 3339 (which is generally recommended for IETF specifications), make sure that you document all the details about various options, such as use of non-UTC time zones and fractional seconds.
## Internationalization - Character Sets

Your spec might have various textual protocol elements, but not explicitly mention the allowable charsets. In IETF protocols, UTF-8 is preferred (along with US-ASCII, which is a subset of UTF-8). See RFC 2277 (BCP 18), Sections 3.1 and 3.2.
## Unicode Normalization

If your spec has protocol elements for usernames, passwords, or identifiers of any kind, please specify how Unicode characters in such fields will be normalized.
## Internationalized Domain Names

Your spec might state that a protocol element is a domain name, but ignore the existence of internationalized domain names (IDNs) that include non-ASCII characters. However, IDNs are becoming much more common, so please consult the IDNA documents about the handling of IDNs.
## Language Tags

If your spec has protocol elements that contain human-readable text, you need to specify language tags for those fields, or justify why language tagging is not needed. For details, see RFC 2277 (BCP 18), Section 4.2. Also note that RFC 5646 becomes a Normative Reference when the ability to tag languages is added.
## Passwords

Binary passwords should have a standard way to represent them to users/enter in configuration files (e.g. hex).
## Versioning

Protocol versions happen, so it may be valuable to define a version field of some kind. When you do so, specify the requirements on future versions regarding backward compatibility and how this is expressed in the version number (if at all). For example many protocols use "`<major>.<minor>`" version format, where changes to the `<minor>` version might mean backward compatible changes. The first paragraphs from Section 4.7.5 of RFC 6120 provide some text you could re-use.

XML is, by nature, extensible. If you formally define your XML format using XML Schema, you should properly use XML Schema facilities to declare which elements are extensible and how. For example to use the following constructs:

    <xs:anyAttribute namespace="##other" processContents="lax"/>

    (Any additional attribute is allowed on the element.)

    <xs:any namespace="##other" processContents="lax"/>

    (Any additional subordinate element is allowed.)

Some good articles to read about this [here](http://www.w3.org/2005/05/xsd-versioning-resources.html)

[Back to the Routing Area wiki](/group/rtg) 
  
  
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-05-13. It was migrated from the old Trac wiki on 2022-12-22.*