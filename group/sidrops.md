---
title: SIDROPS
description: Secure Inter-Domain Routing Operations
published: true
date: 2026-01-01T06:41:39.260Z
tags: 
editor: markdown
dateCreated: 2024-01-03T23:52:35.023Z
---

> This page is related to an active IETF Working Group.
{.is-success}
# Welcome to SIDROPS!

We're here to make the global Internet routing system more secure through the development and maintenance of RPKI.

## Introduction

The foundation of the architecture for a secure Internet is a Resource Public Key Infrastructure (RPKI) that represents the allocation hierarchy of IP address space and Autonomous System (AS) numbers; and a distributed repository system for storing and disseminating the data objects that comprise the RPKI, as well as other signed objects necessary for improved routing security.

The SIDROPS working group is composed of volunteers who dedicate time and resources to advance operations the RPKI. The working group's charter is available [here](https://datatracker.ietf.org/wg/sidrops/about/).

## Implementation Requirement

SIDROPS requires at least two interoperable implementations of a Standards Track draft before it is advanced to RFC. Our goals in doing this include gaining some level of document quality assurance (can an implementor, working from the spec, implement it interoperably?) but also gaining some level of protocol quality assurance, some assurance that the proposal is implementable in practice (most RPKI implementations are large and have many moving parts that new proposals must integrate with). If, as a side-effect, fewer SIDROPS RFCs go unimplimented, that's a benefit too. Of course, perfection is impossible and even with this requirement, mistakes will creep in. Exception cases may exist where the implementation requirement wouldn't advance these goals.

Implementation reports are published on our wiki (see below). Implementation reports should highlight aspects of the spec that have been implemented (for example, consider the sections and SHOULD/MUST/MAY/etc keywords as a matrix, with tickmarks to indicate compliance), aspects that have not been implemented (and why, if the answer would be interesting), what testing, interoperation, and deployment the implementation has seen, and any observations that the reporter deems interesting. Naturally it should indicate the software release, organization, and individual filing the report.

If you have questions or concerns regarding the implementation requirement, please send questions to the [SIDROPS mailing-list](https://www.ietf.org/mailman/listinfo/sidrops) or the [SIDROPS chairs](mailto:sidrops-chairs@ietf.org). We are here to help you!

## SIDROPS WG Last Call


## SIDROPS WG Call for adoption

[draft-spaghetti-sidrops-rpki-crl-numbers](/group/sidrops/draft-spaghetti-sidrops-rpki-crl-numbers)

## Draft Implementation status

[draft-ietf-sidrops-signed-tal](/group/sidrops/draft-ietf-sidrops-signed-tal)
[draft-ietf-sidrops-aspa-profile](/group/sidrops/draft-ietf-sidrops-aspa-profile)
[draft-ietf-sidrops-8210bis](/group/sidrops/draft-ietf-sidrops-8210bis)
[draft-ietf-sidrops-cms-signing-time](draft-ietf-sidrops-cms-signing-time)
[draft-ietf-sidrops-rrdp-desynchronization](/group/sidrops/draft-ietf-sidrops-rrdp-desynchronization)
[draft-ietf-sidrops-rrdp-same-origin](/group/sidrops/draft-ietf-sidrops-rrdp-same-origin)

[draft-snijders-constraining-rpki-trust-anchors](/group/sidrops/draft-snijders-constraining-rpki-trust-anchors)