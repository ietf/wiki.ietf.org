---
title: Typical ART Area Issues
description: 
published: true
date: 2025-04-07T19:58:23.845Z
tags: 
editor: markdown
dateCreated: 2022-11-05T15:21:45.195Z
---

# Typical ART Area Issues

Certain applications-related issues show up time and time again when the Area Directors in the IETF ART Area (or members of the [ART Area Review Team](https://datatracker.ietf.org/group/artart/about/)) complete reviews of Internet-Drafts. I-D authors are advised to address these issues ahead of time to smooth the path to RFC publication.

(Note: the following list is incomplete; please help us improve it by posting to the `art@ietf.org` discussion list.)

## ABNF and BNF

Although the majority of specifications use ABNF-5234 ([RFC 5234](https://datatracker.ietf.org/html/rfc5234)), there are many exceptions. Some older email and web specifications use ABNF-822 ([RFC 822](https://datatracker.ietf.org/html/rfc822), or similar). The latter allows for free insertion of folding whitespaces between different BNF productions. So it is very important to state which version of BNF is used.

Also, please make sure that you check your ABNF using the "BAP" tool at [https://author-tools.ietf.org/abnf]

## Base64

Many specifications use Base 64 as defined by [RFC 4648](https://datatracker.ietf.org/html/rfc4648), but do not specify which flavor: either "Base 64 Encoding" (Section 4) or "Base 64 Encoding with URL and Filename Safe Alphabet" (Section 5). Also specify what you want done with line-feeds and line lengths. For most modern applications, you SHOULD NOT wrap lines.

## Byte Order

In binary protocols, fields longer than 8 bits need to specify byte order. Although network byte order (the most significant byte first) is almost universally used, there are some exceptions, so it is important to spell this out.

## Dates and Times

If your specification includes protocol elements with a datatype of "date" or "datetime" or "time", make sure you define the details of its syntax. Even if you reference something like [RFC 3339](https://datatracker.ietf.org/html/rfc3339) (which is generally recommended for IETF specifications), make sure that you document all the details about various options, such as use of non-UTC time zones and fractional seconds.

## Internationalization

In general, refer to [RFC 6365](https://datatracker.ietf.org/html/rfc6365) for helpful discussion about internationalization.

### Character Sets

If your specification includes textual elements, that text should consist of Unicode characters. This presents a variety of issues discussed in the rest of this section.

On the wire and in storage, you don’t transfer or store abstract "characters", but rather Unicode's integer "code points" that represent them.  Not all the available code points actually represent characters and some of them have the potential to cause software problems.  This is discussed in [Unicode Character Repertoire Subsets](https://datatracker.ietf.org/doc/draft-bray-unichars/), recently approved by the IESG and soon to be an RFC. It provides multiple options you can reference to specify which subset of the available code points you want to support.

Once you have thought through what the appropriate character set for your work is, the question arises of how to encode those characters for transmission or storage.  In IETF protocols, UTF-8 is preferred (along with US-ASCII, which is a subset of UTF-8). See [RFC 2277](https://datatracker.ietf.org/html/rfc2277) (BCP 18), Sections 3.1 and 3.2. And see below about Unicode Normalization.

### Unicode Normalization

If your spec has protocol elements for usernames, passwords, or identifiers of any kind, please specify how Unicode characters in such fields will be normalized. Visit [http://unicode.org/] for details. See (and possibly cite) [RFC 5198](https://datatracker.ietf.org/html/rfc5198) for information about UTF-8 and normalization. If your character strings might be entered by users and/or might be compared for equality, you will need to consider normalization and canonicalization issues.

### Internationalized Domain Names

Your spec might state that a protocol element is a domain name, but ignore the existence of internationalized domain names (IDNs) that include non-ASCII characters. However, IDNs are becoming much more common, so please consult the IDNA documents about the handling of IDNs. The relevant specs are [RFC 5890](https://datatracker.ietf.org/html/rfc5890), [RFC 5891](https://datatracker.ietf.org/html/rfc5891), [RFC 5892](https://datatracker.ietf.org/html/rfc5892), [RFC 5893](https://datatracker.ietf.org/html/rfc5893), and [RFC 5894](https://datatracker.ietf.org/html/rfc5894). In addition, [RFC 5895](https://datatracker.ietf.org/html/rfc5895) (not part of the official IDNA series) might also be relevant to your application.

### Language Tags

If your spec has protocol elements that contain human-readable text, you need to specify language tags for those fields, or justify why language tagging is not needed. For details, see [RFC 2277](https://datatracker.ietf.org/html/rfc2277) (BCP 18), Section 4.2. Also note that [RFC 5646](https://datatracker.ietf.org/html/rfc5646) becomes a Normative Reference when the ability to tag languages is added.

One common approach is to carry the language tag in a separate field (e.g., in XML the "xml:lang" attribute, in ASN.1 by a new field). Such a field can be attached to each element requiring the language tag, or can be global for the whole object/document.

## HTTP

See [Building Protocols with HTTP](https://datatracker.ietf.org/html/rfc9205) for an overview of how to use HTTP in IETF protocols.

## Passwords

Binary passwords should have a standard way to represent them to users/enter in configuration files (e.g., hex). Text passwords will almost certainly have internationalization issues; see above.

## Media Types

First, it's "media type", not "MIME type" or "MIME media type".

If your spec has a protocol element that is defined to contain a media type, make sure you specify if MIME-related parameters are allowed (e.g. 'text/plain' versus 'text/plain;charset=UTF-8').

If your spec defines a new media type registration, you need to follow the process defined in [RFC 6838](https://datatracker.ietf.org/html/rfc6838) (also read [RFC 2046](https://datatracker.ietf.org/html/rfc2046) for background information). In essence, that means you need to do the following:

- Using the template in RFC 6838, create a registration and add it to your spec (review some of the similar registrations at [http://www.iana.org/assignments/media-types/application/] for insights). 

- Submit your actual registration (not a pointer to it) for review on the media-types@ietf.org discussion list. Do this before you're ready to request publication of your draft. (you may also search this discussion list for previous registrations [here](https://mailarchive.ietf.org/arch/browse/media-types/)).

- Wait at least two weeks for review comments and make sure you respond to the feedback provided on the list. 

## Status / Error Codes

Several application protocols reuse HTTP status codes, then define several other codes that are specific to their protocol. This mechanism works, but has limited semantic extensibility, and if they are HTTP-based protocols, are usually not allowed (since HTTP status codes are supposed to be generic). Instead, consider using the approach from [RFC 6120](https://datatracker.ietf.org/html/rfc6120), section 8.3, which acknowledges that new error types will come up in the future, but groups those errors so that unknown errors can get generic processing.

## Versioning

Protocol versions happen, so it's usually important to define a version field of some kind. When you do so, specify the requirements on future versions regarding backward compatibility and how this is expressed in the version number (if at all). For example many protocols use `<major>.<minor>` version format, where changes to the `<minor>` version might mean backward compatible changes. The first two paragraphs from Section 4.4.1 of [RFC 3920](https://datatracker.ietf.org/html/rfc3920) provide some text you could re-use.

## XML 
  
### Formal Descriptions

To formally describe your XML format, you can use either [W3 XML Schema](http://www.w3.org/TR/xmlschema-1/) or [RELAX NG](/group/art/TypicalARTAreaIssues)http://relaxng.org/). The IETF does not have a preference between these.

  ### Schema "Gotchas"

XML is, by nature, extensible. If you formally describe your XML format using [W3 XML Schema](http://www.w3.org/TR/xmlschema-1/), use the available facilities to declare which elements are extensible and how. For example, use the following constructs:

```
<xs:anyAttribute namespace="##other" processContents="lax"/>

(Any additional attribute is allowed on the element.)

<xs:any namespace="##other" processContents="lax"/>

(Any additional subordinate element is allowed.)
```


A good article on this topic is [http://www.pacificspirit.com/Authoring/Compatibility/ProvidingCompatibleSchemaEvolution.html]

[W3C XML Schema Part 2](http://www.w3.org/TR/xmlschema-2/) has a helpful chart of [built-in datatypes](http://www.w3.org/TR/xmlschema-2/#built-in-datatypes) -- consider using the most specific datatypes that describe your elements and attributes.

The [boolean](http://www.w3.org/TR/xmlschema-2/#boolean) datatype has two lexical representations: "true/false" or "1/0". Please make it clear if one representation is preferred, or consider adding a note such as the following:

```In accordance with Section 3.2.2.1 of XML Schema Part 2: Datatypes, the allowable lexical representations for the xs:boolean datatype are the strings "0" and "false" for the concept 'false' and the strings "1" and "true" for the concept 'true'; implementations MUST support both styles of lexical representation.```

An [online schema validator](http://www.w3.org/2001/03/webdata/xsv) is available at the W3C.

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2021-04-23. It was migrated from the old Trac wiki on 2023-01-12.*
