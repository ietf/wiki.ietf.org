---
title: ja 
description: Concept requirements document
published: true
date: 2025-03-12T15:32:37.942Z
tags: 
editor: markdown
dateCreated: 2025-03-03T08:18:26.821Z
---

**IMPORTANT: This is a concept requirements document, all requirements are subject to change following group discussion.**

This is a non-exhaustive list of requirements for the RESTful Provisioning Protocol (RPP).

Currently this list reads more like a "wish" list and it also contains comments and questions, over time this list must be refined to a final set of requirements.

# Requirements

## RESTful

Overall cross-cutting requirements

- RPP MUST adhere to REST architectural principles, targeting at least level 2 of the Richardson Maturity Model.

- REST service discovery - allow for loose coupling between clients and servers (HATEOAS)

- RPP SHOULD leverage widely deployed web standards, tools, and infrastructure components such as HTTP, JSON, OpenAPI specification, API gateways, and load balancing, caching and delegate responsibility to the HTTP layer where possible.

- provide a clear, clean, easy to use and self-explanatory interface that can easily be integrated into existing software systems. 

- RPP MUST be stateless and MUST NOT keep client session or any other application state. Each client request needs to provide all the information necessary for the server to successfully process the request.
  
- When the semantics of a resource URL and HTTP method do not require a request message, the use of a request message should be optional.

- Discovery (Bootstrap) mechanism for clients to locate RPP services
  - IANA bootstrap Service Registry
  - DNS TXT record
  - well-known URI

- RPP specifications SHOULD include OpenAPI definitions to facilitate documentation, testing, and code generation, and provide implementer-friendly extension descriptions.

- Every RPP request should be atomic and idempotent when possible.

- RPP MAY support compound object create request having embedded contact/host vs. request serialization (client waiting for contact/host creation to succeed before sending a domain request). Return complete representation (similar to object info in EPP) after compound request completed or return redirect to newly created object location.


## Data model

- The base data model structures are data format agnostic and can be mapped to multiple data formats (JSON, XML, YAML etc.)

- Commonly used EPP extension may be added to the RPP core data model (example: DNSSEC)

-  The data model MUST have support for internationalization, including for Contact objects (potentially drawing from RDAP JSContact), email addresses, and Internationalized Domain Names (IDNs).

- RPP should also support human-readable localized responses.

- RPP SHOULD provide mechanisms for registrars to signal data omission, indicating data collected but not transmitted to the registry.

- RPP MUST allow for the use of different profiles to indicate required parts of the data model, mapping definitions, or functional subsets for compatibility.

- The data model must have support for internationalization of contact details (RDAP JScontact?, or maybe limited items from that)
	- Email
  - IDN -> domain name
  - Human readable localized responses
  
- Flexible data validation, the server may choose to let the client decide the hwo strict thr data validation must be. Use Prefer HTTP header "handling=strict" vs. "handling=lenient” to make the server behave strictly about unknown attributes vs. ignoring unknown attributes. Another way would be with a more fine-granular approach like the “crit” claim in JWT.

## Data format 

- Support for multiple data formats (e.g. JSON, XML, YAML)

- The protocol supports at least the JSON format as the data-interchange format for request and response payloads. 

- Support validation of request and response message, in order to determine if the content is valid and no required attributes are missing.

- A server may choose to include support for multiple media types.

- A client must be able to signal to the server what media type the server should expect for the request content and to use for the response content.

- Allow for the use of server profiles, indicating required parts for the data model and/or mapping definitions.

- RPP SHOULD consider mechanisms to support data formats outside of core RPP domain. Especially formats, which lose their properties if transformed, like Verifiable Credentials for contacts which are digitally signed.

- Support for partially updating an object, ussing HTTP PATCH method and [JSON Merge Patch](https://datatracker.ietf.org/doc/html/rfc7386)


## EPP Compatibility

- RPP SHOULD provide functional equivalents for core EPP functionalities related to domain names, hosts, and contacts as defined in RFC5731, RFC5732 and RFC5733 mappings for core objects (domain, contact, host) and a selection of commonly used EPP extensions will be provided in separate specifications.

- RPP aims for data model compatibility with the existing EPP data model for core objects (domain, contact, host) to allow automatic/mechanical mapping/conversion between EPP and RPP. Compatibility definitions for RPP to EPP mappings may be defined in compatibility profiles.

- A RPP service may choose to only support a subset of EPP functionality, this MUST be discoverable by the client.

## Extensibility

- The protocol MUST be extensible to accommodate new functionalities, data objects, and operations beyond the initial scope.

- The RPP data model SHOULD aim for easy and natural extensibility to richer models compared to EPP, including attributes for VAT numbers, company numbers etc.

- Allow for flexibility in extending data model (EPP object extension) e.g. adding new objects or a new attribute to an existing object.

- Allow extension for new operations (EPP protocol extension) on resources, e.g. registry-lock “/domains/example.nl/extensions/lock”.

- The extension name/definition may need to include an IANA registration.

- No need for EPP command-response extension, use standard HTTP response/error handling (headers)?

- lightweight process of publishing extensions and implementer-friendly description requirements (like OpenAPI requirement together with extension specification)

- Use of IANA registry for namespaces?

## Security

- Support for modern authentication and authorization schemes allows for easy integration in modern HTTP infrastructure, and may enable support for new functionality and or protocol features that are not (easily) possible using EPP.

- Support for scalable modern authorization standards (OAuth, OpenId Connect)

- Support for an easier and faster object transfer process, where approval from the losing registar can be obtained interactively by the registrant during the transfer process

- Define and standarize scopes for different usage scenarios

- Federated authentication (b2b)

- Fine-granular authorisation model for changes, using framework such as OAuth, beyond current auth-code based authorisation for transfers only
   - Domain transfers without first getting the "normal" transfertoken should be possible
  - DNS providers should be able to use the API to update the NS records
	- OpenID Connect to interactively allow for DNS provider to update NS records, directly at the registry of indirectly through a supporting registar.
  - Renewals
  
- RPP MUST employ strong authentication and utilize encrypted transport (HTTPS) to protect sensitive data and authentication material.  Security mechanisms SHOULD be flexible to allow operators to choose appropriate methods and support federated authentication scenarios. RPP authorization models are intended to be fine-grained and go beyond simple auth-code based models, allowing for control at the operation and potentially attribute level, supporting use cases like domain transfers, DNS provider authorizations, and renewals.

- Enable support for simple object transfer transaction using outh2.0 and/or OpenID Connect (also see Security above)

- Enable support for DNS hoster to update NS records directly in registry when approved by sponsoring registrar. (also see Security above)


## Scalability

- RPP MUST support load balancing at the level of request messages


## Performance

- RPP MUST allow optional or no request/response message when this is not required, improving performance and network bandwidth requirements for both client and server. Fewer messages have to be created, marshalled, and transmitted.

- RPP MAY allow for common bulk operations, resource listing, and filtering capabilities where this does not impact scalability negatively.


## Representation

- Depth of data representation
  - The client may want to request different depth of data representations, depending of its use-case:
      - Minimal representation (like ID, or ID+name)
      - Full representation (all data of object itself)
      - Full representation + dereferenced referrals (for example domain with contact and host details)
    
  - Different representations may be requested in different contexts:
      - GET request to the resource itself
      - GET request to get a collection of objects
      - responses to PUT/POST/PATCH requests
    
  - Design: Consider using Prefer HTTP header “return” tag to distinguish between full and minimal data representation in the responses (for example if client is not interested in the full response for bulk use-cases) 


- Representation of the data vs. transaction information

  - The data representation in responses to transactions shall only contain the provisioning object itself, the transaction information shall be  represented in HTTP headers

  - Not having transaction identifiers in the representation allows for more efficient caching, so maybe not include client/server ids for info/check requests but only for data modifying requests?

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
