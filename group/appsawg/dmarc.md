---
title: DMARC
description: 
published: true
date: 2022-11-29T19:41:15.018Z
tags: 
editor: markdown
dateCreated: 2022-11-05T14:33:24.517Z
---

``` 
Here is some draft text to consider for a DMARC working group charter:

Working group name: dmarc
Chair(s):
Area and Area Director(s):
Responsible Area Director:
Mailing list: https://www.ietf.org/mailman/listinfo/dmarc

Description of working group
----------------------------

Domain-based Message Authentication, Reporting & Conformance (DMARC)
extends stable, domain-level validation to the RFC5322.From field. DMARC
builds upon existing mail authentication technologies (SPF and DKIM),
using DNS records to add policy-related requests for receivers and
defining a feedback mechanism from receivers back to domain owners. This
can allow a domain owner to advertise that mail, which does not
authenticate use of the domain name in the From field, can safely
receive differential handling, such as rejection. Existing deployment of
DMARC has demonstrated utility at internet scale, in dealing with
significant email abuse, and has permitted simplifying some mail
handling processes. However, DMARC is problematic for mail that does not
flow from operators having a relationship with the domain owner,
directly to receivers operating the destination mailbox. Examples of
such "indirect" flows are mailing lists, publish-to-friend
functionality, mailbox forwarding (".forward"), and third-party services
that send on behalf of clients. The working group will explore possible
updates and extensions to the specifications in order to address
limitations and/or add capabilities. It will also provide technical
implementation guidance and review possible enhancements elsewhere in
the mail handling sequence that could improve could DMARC compatibility.

The existing base specification is being submitted as an Independent
Submission to become an Informational RFC.

Specifications produced by the working group will ensure preservation of
DMARC utility for detecting unauthorized use of domain names, while
improving the identification of legitimate sources that do not currently
conform to DMARC requirements. Issues based on operational experience
and/or data aggregated from multiple sources will be given priority.

The working group will seek to preserve interoperability with the
installed base of DMARC systems, and will provide careful justification
for any non-interoperability. The working group will seek to maintain
the viability of stable domain-level identifiers in mail, and will
document existing mail streams that do not conform to the DMARC model.


Working group activities will pursue three tracks:

     1. Inter-Specification -- Organize and document "DMARC
        interoperability issues", developing suggestions for
        improvements

The working group will document the effects of DMARC on indirect mail
flows, including deployed behaviors of many different intermediaries,
such as mailing list managers, automated mailbox forwarding services,
and MTAs that perform enhanced message handling that results in message
modification.

The working group will consider mechanisms for reducing or eliminating
the DMARC's effects on indirect mail flows.  Among the choices are:

   - A form of DKIM signature that is better able to survive transit
     through intermediaries.

   - Collaborative or passive transitive mechanisms that enable an
     intermediary to participate in the trust sequence, propagating
     authentication directly or reporting its results.

   - Message modification by an intermediary, to avoid authentication
     failures, such as by using specified conventions for changing the
     aligned identity.

Consideration also will be given to survivable authentication through
sequences of multiple intermediaries.


     2. Intra-Specification -- Audit each part of the DMARC
        specification (reporting, policy, auth), making improvements as
        appropriate.

The working group will not develop additional mail authentication
technologies, but may document authentication requirements that are
desirable.

The base specification relies on the ability of an email receiver to
determine the organizational domain responsible for sending mail. An
organizational domain is the basic domain name obtained through a public
registry, such as example.com or example.co.uk. While the common
practice is to use a "public suffix" list to determine organizational
domain, it is widely recognized that this solution will not scale, and
that the current list often is inaccurate. The task of defining a
standard mechanism for identifying organizational domain is out of scope
for this working group. However the working group can consider extending
the base DMARC specification to accommodate such a standard, should it
be developed during the life of this working group.

Improvements in DMARC features (identifier alignment, reporting, policy
preferences) will be considered, such as:

   - Enumeration of data elements required in "Failure" reports
        (specifically to address privacy issues)
   - Handling potential reporting abuse
   - Aggregate reporting to support additional reporting scenarios
   - Alternate reporting channels
   - Utility of arbitrary identifier alignment
   - Utility of a formalized policy exception mechanism


     3.  DMARC Usage

The working group will deliver an implementation and deployment guide.
The guide will catalog best current operational practices in terms of
configuration, installation, monitoring, diagnosis and reporting. It
will also develop advice on practices that are not yet well-established
but which are believed to be appropriate.

The group will consider separating configuration and other deployment
information that needs to be in the base spec, from information that
should be in a separate guide.

Among the topics anticipated to be included in the document are:

   - Identifier alignment configuration options
   - Implementation decisions regarding "pct"
   - Determining effective RUA sending frequency
   - Leveraging policy caching
   - Various options for integrating within an existing flow
   - Defining a useful, common set of options for the addresses to which
        feedback reports are to be sent
   - When and how to use local policy override options



Goals and milestones
--------------------

Phase I:

   Draft description of interoperability issues and plausible methods
for eliminating or reducing them.  This will not include final choices.

   Draft Guide on DMARC Usage


Phase II:

   Specification of DMARC improvements to support better
   interoperability

   Review and refinement of the DMARC specification

Phase III:

   Completion of Guide on DMARC Usage


References
----------
   DMARC - http://dmarc.org
   SPF - RFC7208
   DKIM - RFC6376
   Internet Message Format - RFC5322
   OAR / Original Authentication Results - draft-kucherawy-original-authres
   Using DMARC -  draft-crocker-dmarc-bcp-03 ```
