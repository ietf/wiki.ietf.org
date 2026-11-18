---
title: Requesting IPFIX Information Elements
description: When a new IPFIX Information Element needs only an IANA request, when a draft is still needed, and what a good request contains.
published: true
date: 2026-11-18T19:14:55.361Z
tags: 
editor: markdown
dateCreated: 2026-11-18T19:14:55.361Z
---

# Requesting IPFIX Information Elements

**Audience:** people who want new IPFIX Information Elements (IEs), and chairs of WGs that receive drafts defining them.

## Summary

Most new IPFIX IEs **don't need an Internet-Draft**. The IANA [IPFIX Information Elements registry](https://www.iana.org/assignments/ipfix/) uses Expert Review ([RFC 7012, Section 7.4](https://www.rfc-editor.org/rfc/rfc7012#section-7.4)). You can send a request straight to IANA, and the designated experts (the "IE Doctors") review it under [RFC 7013 (BCP 184)](https://www.rfc-editor.org/rfc/rfc7013).

This is not a new policy. It is what RFC 7012 and RFC 7013 already say. This page brings it together in one place.

- **OPSAWG** will generally not adopt drafts that only define IPFIX IEs. The chairs will point the authors to this page.
- **Other WGs** decide for themselves whether to take such a draft. RFC 7013 gives them grounds to decline if they choose.
- **Drafts that a WG has already adopted** carry on as they are.

Going straight to IANA is usually faster for authors. It also spreads the experts' reviews across the year instead of bunching them before each IETF meeting.

## When an IANA request is enough

A request to IANA is enough when **all** of the following are true:

- The IE uses an existing data type from the [IPFIX Information Element Data Types](https://www.iana.org/assignments/ipfix/) subregistry.
- Any values it carries come from an existing IANA registry, or a registry or specification published by another standards body.
- Its definition fits the RFC 7013 Section 4 template, with nothing more to explain about how the IE is used.
- The technology it describes has a stable, published specification.

## When a draft is still appropriate

Write an Internet-Draft when any of the following apply:

- You need a **new subregistry**, for example for a new set of enumerated values.
- The work **changes IPFIX itself**: the protocol, its data types, or its information model.
- The application is **complex enough to need guidance on how the IEs are used together**. RFC 7013 Section 9 calls this "a new application ... complex enough to require additional clarification or specification as to the use of the defined Information Elements".
- The IE's meaning **depends on a specification that isn't published yet**. In that case, define the IE in that specification's draft, in the WG that owns the technology.

RFC 7013 Section 9 says such drafts are "best submitted to a Working Group with expertise in the area". That means the WG that owns the technology being exported, not OPSAWG just because the data is carried in IPFIX.

## How to request an IE

1. **Check the registry first.** Search the [IPFIX registry](https://www.iana.org/assignments/ipfix/) for an existing IE that already carries the data. Duplicate requests are the most common reason a request is declined.
2. **Decide whether you need IANA at all.** Proprietary or vendor-specific data can use enterprise-specific IEs under your organization's Private Enterprise Number ([RFC 7011, Section 3.2](https://www.rfc-editor.org/rfc/rfc7011#section-3.2)). Those don't need an IANA request.
3. **Write the definition** using the RFC 7013 Section 4 template. Check it against the [checklist below](#what-a-good-request-contains).
4. **Submit it to IANA** using the [protocol parameter assignment form](https://www.iana.org/form/protocol-assignment), and name the "IPFIX Information Elements" registry. Leave the ElementId blank; IANA assigns it.
5. **Respond to the experts.** IANA forwards the request to the IE Doctors. They may come back with questions or ask for changes before they approve it. Once they approve, IANA assigns the number and publishes the entry.

## What a good request contains

The experts say many requests are unclear about what the requester actually needs. A complete request helps the review go quickly. For each IE, include:

- [ ] **Name:** unique in the registry, lowerCamelCase, starting with the protocol name where there is one (for example, `sipMethod`). See RFC 7013 Section 4.1.
- [ ] **Description:** clear English text saying what is measured or reported, at which point, and under what conditions. A reader should be able to implement it from this text.
- [ ] **Data type**, plus **data type semantics** where they apply (for example, `totalCounter`, `deltaCounter`, `identifier`, or `flags`). Counters and identifiers normally use `unsigned64` or `signed64` (RFC 7013 Section 4.2).
- [ ] **Units** from the IPFIX Units subregistry, if the IE has units. If you need a new unit, request it in the same submission.
- [ ] **Range**, if it is narrower than the data type allows.
- [ ] **Value source:** for enumerated or coded values, the existing registry they come from. RFC 7013 Section 4.7 requires an existing registry to be used where one covers the values.
- [ ] **Reference:** a stable, published specification for the technology the IE describes.
- [ ] **Reversibility:** if the IE must not be reversed in bidirectional flows, say so in the description (RFC 7013 Section 4.8).
- [ ] **No hidden structure:** one value per IE. Split compound values into separate IEs (RFC 7013 Sections 4.5 and 4.6).
- [ ] **Intent to deploy:** a short statement of who will implement and use the IE. RFC 7013 Section 6 says IEs should not be added "unless there is an intent to implement and deploy them".
- [ ] **Motivation:** why the existing IEs don't cover the need.

<!-- TODO: merge the IE Doctors' own list of what every request should include, once received. -->

## Notes for WG chairs

- **IE-only draft arrives in your WG.** You can point the authors to this page. If your WG wants to take the draft, for example because the semantics need your WG's expertise, that is your call.
- **Your WG's draft defines IEs alongside other work.** That's fine and expected. Ask for an early IE Doctors review well before WGLC, so formatting and naming issues don't hold up IETF Last Call.
- **Your WG's draft creates a new registry with Expert Review.** You don't need to name the experts in the draft. IANA asks the responsible AD to identify them as part of approval. If the registry is related to IPFIX, the AD may want to consider someone with IPFIX expertise.

## References

- [RFC 7011](https://www.rfc-editor.org/rfc/rfc7011): IPFIX Protocol Specification
- [RFC 7012](https://www.rfc-editor.org/rfc/rfc7012): Information Model for IPFIX (Section 7.4: IANA considerations for the IE registry)
- [RFC 7013 / BCP 184](https://www.rfc-editor.org/rfc/rfc7013): Guidelines for Authors and Reviewers of IPFIX Information Elements
- [IANA IPFIX Entities registry](https://www.iana.org/assignments/ipfix/)
- [Active drafts with "ipfix" in the name](https://datatracker.ietf.org/doc/search/?name=ipfix&activedrafts=on)

Questions: [opsawg@ietf.org](mailto:opsawg@ietf.org), or the OPS ADs.