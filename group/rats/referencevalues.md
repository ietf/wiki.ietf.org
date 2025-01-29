---
title: RATS WG - Protocols/APIs for conveying Reference Values
description: 
published: true
date: 2025-01-29T16:08:15.641Z
tags: 
editor: markdown
dateCreated: 2024-11-11T12:59:46.791Z
---

# Protocols for Conveying Endorsements and Reference Values

## Introduction
This wiki page is an informal community resource that intends to focus attention on the problem of endorsement and reference value (RV) conveyance in the RATS architecture, and to invite collaboration in this area. The aim is to gather ideas and do some early consensus building, with a view to eventually creating/evolving one or more Internet Drafts to enrich the standards landscape around these conveyances.

## Prerequisites
Required reading for contributors to this effort:-

- [RFC9334 Remote Attestation Procedures (RATS)](https://datatracker.ietf.org/doc/rfc9334/)
- [RATS Endorsements](https://datatracker.ietf.org/doc/draft-ietf-rats-endorsements/)

Other useful sources:-

- [Reference Interaction Models](https://datatracker.ietf.org/doc/draft-ietf-rats-reference-interaction-models/)
- [Concise Reference Integrity Manifest](https://datatracker.ietf.org/doc/draft-ietf-rats-corim/)
- [Slides](https://github.com/CCC-Attestation/meetings/blob/main/materials/PaulHoward_EndorsementDistribution_Sept2024.pdf) from CCC Attestation SIG meeting, Sept 2024
- [Paul Howard's presentation](https://www.youtube.com/watch?v=5ao8vvY19LA&t=584s) of above slides

## Background and Motivation
Endorsements and Reference Values are both artifacts that are defined within [RFC9334](https://datatracker.ietf.org/doc/rfc9334/). The conveyance pathways that are in scope are those between the Endorser and the Verifier, and those between the Reference Value Provider and the Verifier.

Endorsement and RV conveyance intersect with some interesting industry problems. There is a trend away from implicit trust in computing environments and platforms. Attestation is emerging as a method of building explicit trust. Attestation evidence cannot be evaluated without a trusted source of endorsements and reference values.

Endorsements and reference values can have multiple disparate sources throughout a supply chain. There is a combination of technical and commercial factors that will motivate different business entities and supply chain actors to make endorsements and reference values available to verifiers. Examples of such business entities could be:

- Silicon manufacturers
- Hardware integrators
- Firmware providers
- Software providers

There is also diversity among the potential consumers of these artifacts. They would all be considered to be a Verifier in RATS terms. But in practice they could include such things as:

- Cloud-hosted verification services
- Local Verifier combined with Relying Party
- Constrained nodes and endpoint devices

This diversity of producers and consumers creates a software integration problem and a fragmentation risk for the industry. A profusion of platform-specific or vendor-specific endpoints will cause a headache for software integrators.

Alignment on data formats and APIs will help the industry to address this challenge, and maximise re-use of software components for transacting data between endpoints.

RATS has historically focused on data formats and abstract interaction models, and has not ventured into the area of API or protocol definitions. There has been [some discussion](https://mailarchive.ietf.org/arch/msg/rats/cVmsy6V974aL1DIVQqECFnVjOtY/) on the RATS mailing list about whether to include APIs in RATS, which did not reach a conclusion, but these endorsement/RV conveyances represent one area where it might be fruitful to define a complete API so to maximise the benefit to the industry.

## Endorsement/RV Ingestion and Distribution
The term _conveyance_ implies any directional flow from a producer to a consumer. Conveyances in RATS are always expressed neutrally with respect to whether such a flow would operate according to a "push" model (where the producer commands the consumer) or a "pull" model (where the consumer commands the producer). This agnosticism is important for allowing the flexible construction of systems to solve for different use cases.

We can usefully separate the general concept of _conveyance_ with the more specific concepts of _ingestion_ and _distribution_, referring to the push and pull models respectively.

Both models are in scope here. However, there is some prior art in terms of ingestion. The [Veraison](https://github.com/veraison) project (part of the [Confidential Computing Consortium (CCC)](https://confidentialcomputing.io)), includes an [Endorsement Provisioning API](https://github.com/veraison/docs/tree/main/api/endorsement-provisioning), defined as an HTTP interface using [OpenAPI](https://swagger.io/specification/).

Veraison's Endorsement Provisioning API exemplifies the ingestion model, where supply chain actors _push_ endorsements and reference values into the Verifier. This is because it was built as a Verifier, not as an Endorser. It does not exemplify any kind of endorsement _distribution_ API today.

Therefore, Endorsement/RV distribution is where there is the greatest gap in terms of community standardisation efforts.

## Veraison as a Proving Ground for Reference Interaction Models
It would be interesting to explore the patterns of ingestion and distribution as new _reference interaction models_ in RATS. The existing [Reference Interaction Models](https://datatracker.ietf.org/doc/draft-ietf-rats-reference-interaction-models/) are focused on the conveyance of Evidence, rather than that of Endorsements/RVs. We need to examine how to enrich the landscape of I-Ds to focus on interaction models between other roles. It may not be practical for a single I-D to cover them all. See the open questions in a later section below.

One of the existing reference interaction models is the so-called _challenge-response_ model, which is instantiated by Veraison's [challenge-response API](https://github.com/veraison/docs/tree/main/api/challenge-response). This is an example of where Veraison has taken one of the reference interaction models from RATS, and implemented it as an OpenAPI specification.

So far, challenge-response is the only one of Veraison's APIs that is based on a RATS Reference Interaction Model. However, if endorsement ingestion and distribution were also described in the Reference Interaction Models, then it's conceivable that the existing endorsement-provisioning API could implement the former, and some yet-to-be-defined distribution API could implement the latter. This would lead to a situation where all of Veraison's main APIs (disregarding general housekeeping/management functions) are based on reference models from within RATS, which might be a nice place to be. Veraison is a specific implementation and therefore not part of the RATS WG charter directly. It is a CCC open-source project. However, it has some history as a proving ground and an experimental platform for the evolution of RATS WG models and data formats - not only challenge-response as mentioned above, but also data formats such as EAT, CMW and CoRIM, that are nurtured within IETF.

## Endorsements and Reference Values
Endorsements and Reference Values are both artifacts that are defined within [section 4.2 of RFC9334](https://www.rfc-editor.org/rfc/rfc9334.html#section-4.2)). This wiki page adopts that definition. However, there has been some discourse on the distinction between endorsements and RVs, and on whether an RV can be considered to be a special case of endorsement, since an RV is a known-good value. On this page, the phrase "Endorsement/RV" is used as a convenient shorthand in order to maintain the distinction while also respecting the similarity. The scope of this effort is to define APIs for the conveyance of both Endorsements and Reference Values.

## Examples of Endorsements/RVs
Just for illustrative purposes, here is a non-exhaustive list of artifacts that might be considered as endorsements/RVs:-

- An endorsed public key (including but not limited to x509 or similar certificate). Attestation evidence is typically signed by the Attester. Cryptographic verification of the evidence requires access to the Attester's public key, and that public key in turn needs a means of establishing trust. This establishment of trust would typically be the result of an Endorser making the public key available as an endorsement.
- Intermediate/root public keys or trust chains. In the case above, where the Attester's endorsed public key is something like an x509 certificate, the Endorser might also make the parent certificate chain available.
- Statements or measurements of valid platform state/configuration (e.g., a security certification record, a benchmark identifier, etc.).
- Measurements (hashes) of firmware or software images that are included in the system.

## Security Properties of Endorsements/RVs
Endorsements/RVs need to exhibit the security properties of **integrity** and **availability**.

ASSERTION (to check): They do not need to exhibit the security properties of **confidentiality**, at least in general. There may be some specific conveyance channels where confidentiality is needed. But where this is the case, sufficient protection can probably be provided in the transport (eg. TLS). For the particular case of endorsement _distribution_, the channels are likely to be deliberately public, designed to be consumed in the field by a variety of components. There would be no value in confidentiality here. Integrity and availability would matter far more. Take the examples of existing distribution services at the bottom of this page. All of those emit signed data in the clear (modulo TLS). What this suggests is that confidentiality does not specifically need to be baked into API designs or data formats for distribution.

## Categories of Endorser (or Reference Value Provider)
It may be useful to categorise the Endorser/RVP along the following lines (although there's a need to align on terminology):

- A **primary** Endorser/RVP is an original source of truth for one or more supply chain components. It does not consume any endorsements/RVs from anywhere else. It would typically be the same entity that manufactures the thing that is being endorsed. One example might be a silicon manufacturer that produces chips with a factory-provisioned identity, where the endorsements are the public keys/certificates for those identities. Another example might be a firmware distributor, which provides access to binary images along with their reference measurements/hashes. This could also perhaps be called a "leaf" or "component" endorser/RVP.
- A **secondary** Endorser/RVP is one that aggregates Endorsements/RVs from other sources, despite not being the originator of the endorsed component(s). An example could be a Cloud Service Provider (CSP) that endorses entire compute environments (eg. VMs), and distributes aggregated endorsements/RVs for the whole system, which could include measurements of virtual firmware, platform firmware, and platform hardware right down to the RoT. This could also be called an "aggregate" or "system" endorser/RVP.

A Verifier might need to consume Endorsements/RVs from either or both of these.

A secondary Endorser/RVP might consume Endorsements/RVs from one or more primary Endorsers/RVPs.

Where this distinction matters the most is in the trust model that exists between the producer and the consumer (see next heading).

(TODO: some diagrams would be helpful here)

## Trust Models
If we assume the above primary/secondary classification model, then the trust relationships between the producer and the consumer can be considered as follows.

For a primary Endorser/RVP, the trust model is relatively simple and has already been characterised in RATS. A primary Endorser/RVP produces signed artifacts. The consumer (such as  Verifier) simply needs to hold a trust anchor for the Endorser/RVP in order to verify their integrity and authenticity.

For a secondary Endorser/RVP, there are two possible models.

The first model would be the same simple model expressed above. In this case, the secondary Endorser/RVP is essentially behaving as a trusted and convenient "one-stop shop", and is trusted to faithfully aggregate data from the leaf-case supply chain actors. The consumer, once again, simply needs a suitable trust anchor to the Endorser/RVP.

In the second model, this level of trust would be deemed insufficient, and it would also be necessary for the consumer to verify not only the aggregated data, but also the leaf data as produced from the original (primary) supply chain actors. We can also call this a trust-but-verify model, where the consumer trusts the aggregator _in the first instance_, but then needs to follow references from the aggregated endorsement data to the individual contributing pieces, and verify those as well.

It would be valuable to establish common terminology for these two models - eg. "centralised trust" and "distributed trust". Or maybe there are some more industry-standard terms to apply here.

For endorsement conveyance in general, and for distribution in particular, it would be necessary to design protocols such that either trust model can be accommodated.

NOTE: CoRIM already has a means by which a manifest can provide links/references to contributing components.

## Desirable Properties of an Endorsement Distribution API
As part of the requirements gathering exercise for a distribution API, below are some desirable properties that an API should have.

- Transport/message independence. The producers of Endorsements/RVs would typically be highly compute-capable nodes, such as cloud services operated by supply chain vendors. However, the same cannot be said for the consumer. A consumer might be a constrained node with an on-device Verifier, where a CoAP (or similar) protocol might be preferred over HTTP. Something like a common CDDL data model, which could be transacted via HTTP or CoAP APIs, might be suitable.
- Support for different trust models (see above) - aggregated endorsement payloads should make it possible to discover and verify the primary sources.
- Flexibility/extensibility of payload. It should not be assumed that the endorsements/RVs are required to be expressed in one specific format (such as CoRIM, for example). With suitable application of CMW/media types and negotiation, it should be possible to transact different formats while maintaining a consistent overall framework.
- Efficient use of the transport - allowing the consumer to cache data locally, and/or query for deltas between previously-cached data and the current data.
- Flexible interaction design (also related to caching/deltas above). There could be one interaction model that is essentially just a `GET` method, but we could also consider a publish-subscribe pattern.
- Reuse, where possible, of existing RATS designs, e.g.: [EAT](https://datatracker.ietf.org/doc/draft-ietf-rats-eat/), [CoRIM](https://datatracker.ietf.org/doc/draft-ietf-rats-corim/), [CMW](https://datatracker.ietf.org/doc/draft-ietf-rats-msg-wrap/), [EAT measured component](https://datatracker.ietf.org/doc/draft-ietf-rats-eat-measured-component/), [Epoch Markers](https://datatracker.ietf.org/doc/draft-ietf-rats-epoch-markers/).

## PoC With Veraison Components
(Possibly migrate this section elsewhere because it's quite implementation-specific).

A PoC could be built with components of the Veraison project to show how endorsement distribution could work end-to-end, exemplifying both the producer and the consumer.

Veraison today has been built as a Verifier. As mentioned earlier, it _ingests_ endorsements from primary supply chain actors using its endorsement-provisioning API.

In this PoC, a new API endpoint would be added to Veraison's services, exemplifying endorsement _distribution_, allowing Veraison to be deployed as an Endorser/RVP, and providing an experimental playground for the API design and possible long-term evolution.

The Veraison project conveniently also provides a suitable consumer, namely the [rust-ccatoken](https://github.com/veraison/rust-ccatoken) component. This component is able to both verify and appraise attestation evidence according to Arm's Confidential Computing Architecture (CCA) scheme. It is able to cache Endorsements/RVs locally. It would be an ideal place to integrate the client side of the distribution API. (We would need a Rust implementation of a client library for the API).

See Slide 11 [here](https://github.com/CCC-Attestation/meetings/blob/main/materials/PaulHoward_EndorsementDistribution_Sept2024.pdf) for an architectural sketch of the PoC.

It is interesting to note that Veraison would be acting as a _secondary_ Endorser (as per the discussion above) in this PoC. This is because Veraison's existing endorsement-provisioning API would be used as the conveyance from the primary supply chain sources. Veraison would store those Endorsements/RVs in its database, and then use the distribution API to broadcast an aggregated view of them. So there is an opportunity here for the PoC to exemplify the different trust models and demonstrate an API that is capable of supporting both.

## Questions and Discussion Points
In no particular order...

- What exactly needs to go into I-Ds?
    - Should we enhance [I-D.rats-reference-interaction-models](https://datatracker.ietf.org/doc/draft-ietf-rats-reference-interaction-models/) to cover endorsement/RV ingestion/distribution conveyance paths? Or is that document already too large? Should it be a specific new I-D for Endorser/RVP models? (Latest rounds of review strongly suggest that the existing I-D should have its scope/title explicitly narrowed to cover Evidence only, in which case the natural next steo would be a separate I-D with similarly-narrowed scope to focus on Endorsement conveyances.
    - Should I-Ds include actual API definitions, eg OpenAPI specifications? No RATS I-D has gone this far to date. However, there is some precedent elsewhere in IETF, eg. [I-D.duffy-csmp](https://www.ietf.org/archive/id/draft-duffy-csmp-01.html).
 - How would distribution API endpoints be discovered by the consumer?
    - A-priori knowledge? Documentation produced by supply-chain entities? (This is the case for the AMD and NVIDIA services referenced below).
    - Hints in the Evidence? (EAT tokens can provide hints that reference suitable Verifier endpoints, so could this be extended or appropriated to include endorsement endpoints?)
     
## Examples of Existing Endorsement Distribution APIs
There do not appear to be any existing standardisation efforts in flight for endorsement distribution APIs, either in IETF or other communities. However, a number of endorsement distribution endpoints do already exist in the industry, each of which follows its own proprietary scheme. Some examples are given below.

- The [AMD Key Distribution Service (KDS)](https://www.amd.com/content/dam/amd/en/documents/epyc-technical-docs/specifications/57230.pdf).
- The [NVIDIA Reference Integrity Manifest (RIM) Service](https://docs.attestation.nvidia.com/api-docs/rim.html#get-/v1/rim/ids).

## Documents in Other Standards Development Organisations

- TCG DICE [Endorsement Architecture for Devices](https://trustedcomputinggroup.org/wp-content/uploads/TCG-Endorsement-Architecture-for-Devices-V1-R38_pub.pdf)