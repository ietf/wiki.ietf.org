---
title: Proposed Charter
description: 
published: true
date: 2023-02-26T23:37:00.218Z
tags: 
editor: markdown
dateCreated: 2023-02-26T23:37:00.218Z
---

# E.164 to MetaData (E2MD)

Proposed charter: State 2010-07-10

## CHAIR(S):

  -  TBA 

## REAL-TIME APPLICATIONS AND INFRASTRUCTURE AREA DIRECTOR(S):

 -   Robert Sparks <rjsparks@…>
 -   Gonzalo Camarillo <gonzalo.camarillo@…> 

## REAL-TIME APPLICATIONS AND INFRASTRUCTURE AREA ADVISOR:

 -   Gonzalo Camarillo <gonzalo.camarillo@…> 

## MAILING LISTS:

 -   General Discussion: e2md@…
 -   Listinfo: ​https://www.ietf.org/mailman/listinfo/e2md
 -   To Subscribe: e2md-request@…
 -   In Body: subscribe
 -   Archive: ​http://www.ietf.org/mail-archive/web/e2md/index.html

## DESCRIPTION OF WORKING GROUP:

ENUM is an established use of the DNS that defines a service for mapping E.164 (telephone) numbers onto the DNS. This permits "identifying available services connected to one E.164 number." That is, ENUM maps a telephone number to a service URI, which is then used it to set up a communication session [RFC3761]. Deployment experience with ENUM has uncovered a need to have DNS entries support additional parameters (metadata) that are associated with a number or with the Internet-based use of the number but which are not service URIs. These parameters cannot be supported through the current set of ENUM capabilities. E2md will define a a means of associating metadata with ENUM DNS entries, either directly in the DNS or through a URI pointer.

ENUM seeks to provide DNS-based capabilities that can integrate with, and possibly supplant, existing telephone call setup mechanisms. This requires a balanced design mixture of emulation of existing mechanisms and invention of new ones. For a service as developed as telephony, pure emulation and pure invention each carry significant risks in performance and function. Hence, incremental efforts to explore this balance are needed. The e2md working group's enhancement will support this exploration.

Examples of enhanced capabilities that respond to immediate community need include:

  1.  Encoding information about the service provider associated with an E.164 DNS terminal node entry, to aid choosing among entries. Currently there is no way for the accessing system to determine this characteristic in a standardized fashion. 

 2.   Disclosing capability information associated with an E.164 DNS terminal node entry, to permit criteria-based selection among multiple entries. Currently there is no way for the accessing system to determine this characteristic in a standardized fashion. 

 3.   A method to optimize overlapped (incremental) dialing, to aid interoperability with the installed base of PSTN equipment. The alternative is per-digit DNS queries, as a user dials a number. Hence this capability will reduce query overhead and -- where ENUM per-query charging occurs – reduce charges. 

The working group will produce a statement of the requirements and the basic functionality that will satisfy them. It will then produce a specification for the ENUM enhancement that will perform the extensible service that is needed and provide for registering particular uses of this service.

The ENUM approach to E.164 number use is deployed in private, as well as public, DNS environments. The working group will consider both scenarios, with respect to operations, policy and security. Design choices will be made with consideration of the guidance in RFC 5507 and RFC 5397.
## GOALS AND MILESTONES:

xxx Functions and Services draft

xxx e2md ENUM enhancement specification 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2010-07-10. It was migrated from the old Trac wiki on 2023-02-26.*