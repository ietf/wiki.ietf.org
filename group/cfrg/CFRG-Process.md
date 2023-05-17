---
title: Crypto Forum Research Group Process
description: Overview of CFRG process and best practices
published: true
date: 2023-02-27T18:33:14.185Z
tags: 
editor: markdown
dateCreated: 2022-12-28T23:01:58.095Z
---

# CFRG Process Overview

Per the [charter](https://datatracker.ietf.org/rg/cfrg/about/), CFRG produces technical specifications and informational documents for the community. In general, these documents capture and codify results of the cryptographic research and engineering communities. However, there are cases where the CFRG develops constructions alongside external analysis of said constructions, such as with HPKE (RFC9180). 

CFRG documents are not IETF standards. As a result, the process for developing and publishing specifications and documents is different than that which might be found in the IETF and elsewhere. This page summarizes some key points to consider as a document author or editor, a contributor, an expert reviewer, and possible consumer of the documents. 

The process for publishing a document is oriented around the IRTF consensus building process. The stages for a document that flows through the CFRG and towards publication as an RFC, along with the expected time to complete each stage, match [that of the IRTF](https://datatracker.ietf.org/help/state/draft/irtf) and are as follows:

- Individual draft: During this stage, a document is incubated under control of its editors.
- CFRG adoption call: During this stage, editors work to finish the document and ensure that it represents consensus of the research group. Importantly, editors are primarily responsible for enacting the willing of the research group. The CFRG chairs may request a review one or more reviews from members of the Crypto Review Panel as the document develops.
- CFRG last call (RGLC): During this stage, the research group determines if there is rough consensus on the contents of the document. The CFRG chairs require at least one review from the Crypto Review Panel before exiting this stage. Editors are expected to resolve all RGLC comments before the document advancess to the next stage. The duration of this stage is approximately one month.
- Document shepherd writeup: During this stage, the document shepherd (typically a CFRG chair or the secretary) produce a document describing the status of this document to be used in the later stages. The duration of this stage is approximately one month.
- IRTF chair review: During this stage, the IRTF chair produces a review of the document.  Editors are expected to resolve all RGLC comments before the document advancess to the next stage. The duration of this stage depends on the IRTF chair workload and can range from one to several months.
- IRSG poll: During this stage, IRSG members poll on the publication of the document and additionally offer reviews from members of the IRSG. Editors are expected to resolve all RGLC comments before the document advancess to the next stage. The duration of this stage depends on IRSG member engagement, though typically does not last more than a month.
- IESG conflict review: During this stage, the IESG determines if there is any conflict with ongoing IETF Work. This stage does not typically yield new reviews. The duration of this stage depends on how quickly the IESG can schedule review of the document, though typically does not last more than a month.
- RFC editing and publication: During this stage, the RFC editor works on finalizing the document and producing an RFC. Editors are expected to actively engage in communication with the RFC editors to resolve comments and approve publication in a timely manner. The duration of this stage depends on the current workload of the RFC editor and whether there are any dependent documents that need resolution. It often takes a couple of months.

The rest of this page lists guidelines and expectations for various participants and contributors to the CFRG.

## Author/Editor guidelines and expectations

- Document authors and editors are expected to engage in the process. This means they must be collaborative and receptive to feedback in a timely manner. Failure to collaborate with others will be grounds for removal as a document editor. 
- The contents of a CFRG document are entirely under control of the group. The editors are entrusted to enact the consensus of the group.
- Editors are expected to help drive development, consensus, and finalization of their documents alongside the chairs.
- Editors are expected to share non-trivial changes and updates with the RG. Suitable ways to share information include CFRG group presentations or messages to the mailing list. 
- Editors are expected to make the state of security analysis clear.
- Editors are expected to provide test vectors for documents that specify algorithms or protocols.
- Editors are expected to work with CFRG chairs and experts to determine the suitable amount of analysis that a document needs. 
- Editors are expected to track significant changes to their documents — especially those that specify algorithms or constructions— via a change log.
- Editors are expected to disclose patents or other IP related to a document they are aware of. Editors are also expected to disclose lack of awareness of patents and IP. 

## Contributor expectations

- Contributions can take many forms, including, but not limited to, implementations, feedback, and questions.
- Contributions are best delivered on the mailing list or issue tracker for the corresponding document. For example, if the document uses GitHub, then filing a GitHub issue is a proper way to deliver feedback or ask questions.
- When in doubt about how to deliver feedback or what to focus on, ask yourself three basic questions: is the document clear and concise? Is the document correct? Is the document helpful for protocol and application developers? If you see any issues that would affect the document’s ability to deliver on these goals, let the editors and the CFRG know!

## Expert reviewer expectations

- Focus on technical contents of the document, not editorial contents. While both are useful in retrospect, your primary responsibility as an expert reviewer is to make sure the document is correct and helpful for its intended use case. Clarity is primarily the job of the document editors. It is unhelpful to block technical reviews on editorial issues.

## General public expectations

- CFRG and the IRTF take time. Over the course of time in which a document is ratified, expect its contents to change. Relevant changes for consumers include wire breaking changes that may affect implementations, as well as applicability changes that may alter how the document applies to your use case. 
- The best way to track changes to a particular document is via the source — the document’s source control or using datatracker.ietf.org. 
