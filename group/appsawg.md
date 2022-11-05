---
title: Applications Area Working Group Wiki
description: This is used for recording things related to the Applications Area Working Group (appsawg) specifically, and the Applications Area in general.
published: true
date: 2022-11-05T14:38:25.606Z
tags: 
editor: markdown
dateCreated: 2022-11-05T14:29:53.448Z
---

# Applications Area Working Group Wiki
This is used for recording things related to the Applications Area Working Group (appsawg) specifically, and the Applications Area in general.

## Shepherding

APPSAWG makes liberal use of its discretion to assign document shepherds that are not necessarily working group co-chairs. We do this to help spread the workload around and to encourage newer participants to become part of the process. If you are interested in shepherding a particular document, contact the co-chairs. We tend to assign shepherds as soon as a document is admitted to the working group.

The IESG has settled on two different shepherd writeups: the old "Q&A" format, and the new "essay" format. The Applications AD prefer that shepherds use the new version, the essay format, which you can find here: [document shepherd writeup](https://wiki.ietf.org/group/iesg/draftshepherdwriteup). The completed writeup will be entered into the document's datatracker page by the chairs.

Keep in mind, as you fill out the shepherd writeup, that the point is to give the App ADs in particular, and the IESG in general, the information they need to know in order to evaluate the document. Also keep in mind that unnecessary information is... unnecessary. Describe the major issues and their resolutions, and talk about anything else that's exceptional. Things that are "business as usual" don't need to be mentioned. In the essay-format writeup, the checklist is for your use, and needn't be posted in the tracker.

## New Work Proposals
### New charter proposals:

[Timezone Data Distribution Service](https://datatracker.ietf.org/wg/tzdist/charter/) (tzdist, in formal charter process)
[Domain-based Message Authentication, Reporting and Conformance Extensions](https://wiki.ietf.org/groups/appsawg/dmarc) (dmarcext, proposed for comment)

### Older work proposals, retained for record keeping:

[Aggregated Service Discovery draft charter](https://trac.ietf.org/trac/appsawg/wiki/AggSrv) (aggsrv, BoF at IETF 86)
[iSchedule draft charter](https://trac.ietf.org/trac/appsawg/wiki/iSchedule) (isched, not pursued yet)

## Other Stuff
Implementation status of [JSON Patch](https://trac.ietf.org/trac/appsawg/wiki/JsonPatch)
Interest in [HTTP response code 451](https://trac.ietf.org/trac/appsawg/wiki/HTTP451), "Unavailable for legal reasons"

## Current Document Charters
APPSAWG requires charters for new documents we take on. We call them "mini-charters". A charter will typically be required to indicate:

- A description of the problem being solved
- What is in scope for the document
- What is not in scope for the document
- Why this work is appropriate for APPSAWG versus some other (or a new) working group
- The names of at least five people who have committed to providing timely reviews and other support for the document through to its publication

The charters for our active documents admitted since this policy were adopted are as follows:

### draft-ietf-appsawg-nullmx
SMTP mail has never provided a way for a domain to state that it does not receive mail. If a domain publishes MX records, it definitely does receive mail. If it publishes no MX, but does publish A or AAAA records there is no way to tell whether those records are indended to identify an "implicit MX". If a sending host attempts to send to an A or AAAA, and is unable to connect, there is no way to tell whether the failure is temporary or permanent, short of repeated retries.

As a result, if a user attempts to send mail to a mistyped domain, it can take up to a week (the recommended retry limit) to get back a failure report. In principle, a domain could set up a stub mail server that accepted connections and immediately rejected delivery attempts, but that is more work than most domains want to do. Hence our goal is to provide a cheap way to quickly tell senders not to bother. (Note that an SPF record with "-all" says that a domain sends no mail, which is not necessarily the same as receiving no mail.)

We propose that an MX record pointing to the root of the DNS, known as "MX ." means the domain accepts no mail. This approach has been used informally for almost a decade, with few if any problems, but has never been described in an IETF document. We propose only to assign the no-mail semantics to "MX ." and not make any other changes to SMTP.

There is one draft to adopt: [draft-delany-nullmx](http://tools.ietf.org/html/draft-delany-nullmx), to be submitted to the IESG by the end of May, 2014.

The following have committed to work on the document through to publication:

Reviewers:

- Murray Kucherawy <superuser@gmail.com>
- Dave Crocker <dcrocker@bbiw.net>
- Terry Zink <tzink@exchange.microsoft.com>
- Arnt Gulbrandsend <arnt@gulbrandsen.priv.no>
- Tim Draegen <tim@eudaemon.net>
- Kurt Andersen <kurt@linkedin.com>

### draft-ietf-appsawg-multimailbox-search
[RFC 6237](http://tools.ietf.org/html/rfc6237) defined an IMAP extension to search multiple mailboxes in one command. The extension was published as Experimental because there was interest in defining the protocol, but we weren't sure we got the protocol and the interactions right, and we had no implementations to confirm that with.

Since then, we have some implementation experience that tells us that, yes, we got the protocol right, and, as importantly, we got the interactions with other IMAP extensions right. The implementation experience has resulted in a couple of minor suggestions, and has confirmed that the extension is ready to be moved to Standards Track.

This document has three work items:

1. Change the status of IMAP Multimailbox Search to Standards Track.
2. Incorporate the suggested tweaks to the documentation.
3. Document the implementation experience and expressions of interest in implementing.

Milestone: Submission to the IESG, May 2014

Reviewers:

- (list pending)

### draft-ietf-appsawg-multipart-form-data
Problem: Many/most current implementations of "multipart/form-data" do not quite match [RFC 2388](http://tools.ietf.org/html/rfc2388). They don't necessarily match either other, either.

In scope: Fix the spec to be consistent with deployed implementations, recommend more consistent behavior, give implementation advice for compatibility.

Out of scope: Alternative representations for form submission other than MIME multipart.

Reviewers:

Alexey Melnikov
Martin J. Dürst
Dave Thaler
(other reviewer names pending)
See [https://github.com/masinter/multipart-form-data] for source, test cases, issue list.

### draft-ietf-appsawg-uri-scheme-reg
Problem: See [draft-thaler-uri-scheme-reg-ps](http://tools.ietf.org/html/draft-thaler-uri-scheme-reg-ps) for full problem statement. In short, most URI schemes today are not registered. The goals of the IANA registry, as stated in [RFC 4395](http://tools.ietf.org/html/rfc4395), are not currently being met as a result. Specifically, these are to allow people to:

1. Discover names and defining docs
2. Discourage collisions
3. Discern conventions and avoid confusion with existing schemes
4. Encourage registration via low bar for Provisional

We must either change the goals or the process or both, keeping in mind that success is likely only if enough benefits are aligned with the costs, i.e. the registrant perceives value in the process.

In scope: The document is intended to obsolete [RFC 4395](http://tools.ietf.org/html/rfc4395) and hence has the same scope. That is, the goals of the IANA registry, and the requirements and process for registering new URI schemes.

Out of scope: Any other IANA registries or process.

Why APPSAWG: The IRI WG, which previously hosted it, closed. Furthermore the focus of the problem being solved here is no longer about IRIs. This document is loosely related to the get-off-my-lawn draft and the two should be in the same WG.

Milestone: Submission to the IESG, December 2014

Reviewers:

- Larry Masinter
- Alexey Melnikov
- Graham Klyne
- Martin J. Dürst

### draft-ietf-appsawg-email-auth-codes
The adoption of SPF and DKIM as emerging email authentication technologies has been significant. Absent from these, an oversight at the time, is a way to indicate to an SMTP client the fact that a message is being rejected specifically because one of these mechanisms failed to authenticate the message. Without these, only generic authentication error codes can be returned.

This short document registers new Email Enhanced Status Codes (see [RFC 3643](http://tools.ietf.org/html/rfc3643) and [RFC 5248](http://tools.ietf.org/html/rfc5248)) so that this can be clearly indicated by SMTP servers. No other work is proposed for this document

The following have committed to work on the document through to publication:

- Kurt Andersen
- Dave Crocker
- Scott Kitterman

### draft-ietf-appsawg-authres-ptypes-registry
[RFC 7001](http://tools.ietf.org/html/rfc7001) defines a header field called "Authentication-Results" through which an MTA can indicate to downstream agents the results of various authentication checks on a message (e.g., DKIM, SPF). The ABNF in that document is rigid in terms of the types of information that can be reported, and not extensible.

This short document updates [RFC 7001](http://tools.ietf.org/html/rfc7001) such that the property types becomes an extensible list, and creates an IANA registry for it. No other work is proposed for this document.

The following have committed to work on the document through to publication:

- Franck Martin
- Scott Kitterman
- Tim Draegen
- Dave Crocker

### draft-ietf-appsawg-text-markdown
Markdown is a a family of lightweight plain text formatting syntaxes, based on conventions used for indicating formatting in Internet mail. Originally developed in 2004 by John Gruber, Markdown soon became widely used in websites and software development projects. Markdown implementations have caused the syntax in use in the Internet community to diverge, both because the original 2004 syntax has ambiguities, and because follow-on implementers found it fit to add new syntaxes to support additional renderings. Nevertheless, the popularity of Markdown content and the commonalities that instances and implementations share with each other, call for a uniform way to identify this type of content in open interchange.

This document registers the "text/markdown" Internet media type for use with Markdown content. The scope of this work includes a complete registration of this media type, including parameters that convey the breadth of Markdown that exists or may exist in the foreseeable future. IANA registries may be created to identify different variations and implementations of Markdown. Markdown syntax itself is out-of-scope for this work; the document will reference other documentation (which may evolve over time) for the Markdown syntax.

Submission to the IESG is planned for April 2015.

Reviewers:

- Michel Fortin
- Miek Gieben
- Fletcher T. Penney
- Evan Wondrasek
- Stuart Shieber
- Graham Klyne

Some pages for community input: [TextMarkdown/GoalsAndUses: Goals and Use Cases for Markdown and text/markdown]

### draft-ietf-appsawg-file-scheme
The "file" URI scheme is woefully out of date. The document that defines it, [RFC 1738](http://tools.ietf.org/html/rfc1738), has been superseded by the generic URI syntax of [RFC 3986](http://tools.ietf.org/html/rfc3986), and the status of [RFC 1738](http://tools.ietf.org/html/rfc1738) is listed as "Obsolete". As such, the "file" URI scheme is viewed by many in the Internet community as being without a current defining standard, and in need of updating to match current standards and implementations.

This document defines an updated "file" URI scheme, promoting interoperability by being compatible with the generic syntax of [RFC 3986](http://tools.ietf.org/html/rfc3986), while enumerating commonly-encountered variations that have arisen during the scheme's long history of vague standardisation.

Specifically:

1. A normative syntax specification that defines a subset of RFC 3986 URI syntax that will be considered valid "file" URI strings, and sufficient to cover common "file" URI usage in the wild where it does not conflict with RFC 3986.
2. An informative section describing common syntaxes that are not compatible with RFC 3986, possibly with advice for translating to a compatible syntax.
3. An informative section that describes some common "file" URI usages and how they map onto underlying file systems.

Reviewers:

- Julian Reschke <julian.reschke@gmx.de>
- Nico Williams <nico@cryptonector.com>
- Sean Leonard <dev+ietf@seantek.com>