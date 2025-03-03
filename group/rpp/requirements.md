---
title: RPP - Requirements
description: Concept requirements document
published: true
date: 2025-03-03T09:49:27.468Z
tags: 
editor: markdown
dateCreated: 2025-03-03T08:18:26.821Z
---

**IMPORTANT: This is a concept requirements document, all concept requirements are subject to change following group discussion.**

This is a non-exhaustive list of requirements for the RESTful Provisioning Protocol (RPP).

Currently this list reads more like a "wish" list and it also contains comments and questions, over time this list must be refined to a final set of requirements.


## Authentication/Authorization

Adding support for modern authentication schemes may allow for more efficient provisioning systems and may enable support for new functionality and or protocol features that are not (easily) possible using EPP.

- Support for scalable modern authorization standards (OAuth, OpenId Connect)
	- maybe this can help enable a easier and faster object transfer process, where approval from the losing registar can be obtained interactively by the registrant during the transfer process
- Define and standarize scopes for different usage scenarios
- Federated authentication (b2b)
- Fine-granular authorisation model for changes, using framework such as OAuth, beyond current auth-code based authorisation for transfers only
- Domain transfers without first getting the "normal" transfertoken should be possible
- DNS providers should be able to use the API to update the NS records
	- OpenID Connect to interactively allow for DNS provider to update NS records, directly at the registry of indirectly through a supporting registar.
- Renewals

## EPP Compatibility

- Compatible with the existing EPP data model (what level?)
- Allow automatic/mechanical bidirectional mapping/conversion between RPP and EPP
- EPP -> RPP 
	- a mapping should should exist for the core objects (domain, contact, host) and a selection of most commonly used extensions - a draft shall name all RFCs
- RPP -> EPP 
	- A compatibility definition may be defined for the scope of RPP being represented in EPP
	- What objects/attributes are included?
- Compatibility Profiles (compatibility definition?)
	- Allow servers to only support a subset of EPP functionality?


### Profiles

- Allow for the use of server profiles, indicating required parts for the data model and/or  mapping definitions.
	- Uses a HTTP header for profile signaling?

## Internationalization

- The data model must have support for internationalization of contact details (RDAP JScontact?, or maybe limited items from that)
	- Email
  - IDN -> domain name
  - Human readable localized responses

## Transactions

Every RPP request should be atomic and idempotent when possible.

- Does RPP need transaction support over multiple RPP requests?
- References? ROID? Handles?
- Compound requests (optional for server) 
  - domain create request having embedded contact/host vs. request serialization (client waiting for contact/host creation to succeed before sending a domain request) Return complete representation (similar to object info in EPP) after compound request completed or return redirect to newly created object location.

## Depth of data representation
- The client may want to request different depth of data representations, depending of its use-case:
    - Minimal representation (like ID, or ID+name)
    - Full representation (all data of object itself)
    - Full representation + dereferenced referrals (for example domain with contact and host details)
- Different representations may be requested in different contexts:
    - GET request to the resource itself
    - GET request to get a collection of objects
    - responses to PUT/POST/PATCH requests
- Design: Consider using Prefer HTTP header “return” tag to distinguish between full and minimal data representation in the responses (for example if client is not interested in the full response for bulk use-cases) 

Question: are we not describing EPP Check vs Info command here? the new RPP "info" command may combine both the check and info command in a single REST endpoint?

## Representation of the data vs. transaction information

- The data representation in responses to transactions shall only contain the provisioning object itself, the transaction information shall be rather represented in headers
- Not having transaction identifiers in the representation allows for more efficient caching, so maybe not include client/server ids for info/check requests but only for data modifying requests?

## Extensibility

- Allow for flexibility in extending data model (EPP object extension) e.g. adding new objects or a new attribute to an existing object.
- Use Prefer HTTP header "handling=strict" vs. "handling=lenient” to make the server behave strictly about unknown attributes vs. ignoring unknown attributes. Another way would be with a more fine-granular approach like the “crit” claim in JWT.
- Allow extension for new operations (EPP protocol extension) on resources, e.g. registry-lock “/domains/example.nl/extensions/lock” . The extension name/definition may need to include an IANA registration. 
- No need for EPP command-response extension, use standard HTTP response/error handling (headers)?

## Data Model

- Commonly used EPP extension may be added to the RPP core data model (example: DNSSEC)

## Expanded features

- Discovery mechanism for clients to locate RPP services
- Allow for common bulk/listing/filter capabilities
 - Where this does not harm the scalability and performqance requirements

## Architecture

- REST service discovery - allow for less coupling between clients and servers (HATEOAS)

## Documentation

- OpenAPI as part of the specification would be nice to have

## Extensions

- lightweight process of publishing extensions and implementer-friendly description requirements (like OpenAPI requirement together with extension specification)
- Use of IANA registry for namespaces?

## Other

The items below have been mentioned on the mailinglist and may need to be added as an requirement.

- Data Omission - what requirements will there be around a registrar's ability to signal that it has collected some data but has not transmitted it to the registry?  
- Registration attribution - will there be requirements for attribution of registration actions (who did what), and will cryptography be used?  
- Registrant verification - will there be requirements to support registrant verification (NIS2)?  
- Linking - will the protocol support linking to RDAP objects, other RPP objects, etc...  
- Include identification of legal vs. natural contacts.
- Expanded common models (when compared to EPP), maybe there should be much more attributes then it is in EPP (Vatnumber / Company Number/ properties for Identity papers) Trademark information and more There are a lot of epp extensions in the wild that try to handle this.
- include also DNS provisioning as potential use-case
- possibility to seamlessly compose the API with other registry use-cases to have uniform API layer from the client perspective
- investigate possible multi-party authorisation schemas. Use case: DNS operator would get authorisation to update DS or NS record through RPP.
  - This may refer to roles not yet considered in EPP processes, e.g. a third-party DNSSEC signing authority. For a potential use case, see [the discussion on the DD mailing list on that topic](https://mailarchive.ietf.org/arch/msg/dd/iTf8pEMq5-sismlxfNbrFpzAIKU/), which discusses potential approaches for DNS, some of which would require modelling relationships between parent/child/signer zone authorities in a provisioning protocol.
- possibility of mobile app or direct browser integration (use case for registries which directly authenticate their domain holders and allow operations on a domain and/or if RPP would be exposed by a registrar)
