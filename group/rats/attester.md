---
title: RATS WG - Coveyer
description:
published: true
date: 2026-07-19T19:00:00.607Z
tags:
editor: markdown
dateCreated: 2026-07-19T19:00:00.607Z
---

This is part of the [RATS Atomic Composite](atomic-composites) visual language.

An Attester is a special kind of Conveyer which produces Evidence.

~~~ aasvg
  .------.
  |  TE  |
  +------+
  |  AK  |
  '------'
~~~
![Atom - Attester](atom-attester.svg "Atom: Attester")

Internally, it is composed of an Attesting Environment, identified by the attestation key (AK), and a Target Environment (TE), i.e., the Trusted Computing Base (TCB) measured by the Attester.

An Attester exposes the following Interface (see {{interface}}):

| Direction | Name | Description | Mandatory |
|--|--|--|--|
| IN | `Nonce` | Fixed size parameter (typically 32 or 64 bytes) used to bind the produced Evidence to a randomly selected parameter chosen by the caller. | Y |
| IN | `UserData` | Typically a variable-size parameter that allows the binding of arbitrary application data (e.g., an authentication key held by a confidential computing workload) to the attestation Evidence. | N |
| IN | `ClaimsSelection` | A parameter that allows the user to select which claims should appear in the Evidence. The format is attester-specific (e.g., PCR selection for TPM-like attesters) | N |
| OUT | `Evidence` | The Evidence signed by the AK.  It contains either the full set of claims or a subset thereof, as well as the nonce supplied by the caller and any user data. | Y |
| OUT | `OtherData` | Related Conceptual Messages, such as Attestation Results, Endorsement, etc. | N |
