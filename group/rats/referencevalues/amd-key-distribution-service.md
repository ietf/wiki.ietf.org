---
title: AMD Key Distribution Service (KDS)
description: Analysis of the KDS API and interaction model
published: true
date: 2025-04-09T12:52:48.766Z
tags: 
editor: markdown
dateCreated: 2025-04-09T12:32:10.027Z
---

# AMD Key Distribution Service (KDS)

## Overview
The AMD KDS is an endorsement distribution endpoint for [AMD SEV-SNP](https://www.amd.com/en/developer/sev.html) (confidential computing) processors. It provides the certificates (leaf, intermediate and root) needed for cryptographic verification of AMD attestation reports. Each leaf certificate is known as a Versioned Chip Endorsement Key (VCEK), and certifies the public attestation key for a specific physical AMD CPU combined with a Trusted Computing Base (TCB) - essentially, that means the CPU plus the set of authentic AMD firmware components that are provisioned onto it. Each leaf certificate is chained back to an intermediate certificate for the whole product family, and thence to the AMD root certificate, providing a complete chain of trust. All certificates are obtainable through the REST API.

Full documentation for VCEK and KDS is [here](https://www.amd.com/content/dam/amd/en/documents/epyc-technical-docs/specifications/57230.pdf). Chapter 4 describes the KDS.

