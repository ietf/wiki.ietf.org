---
title: CORE WG - Constrained RESTful Environments Wiki
description: 
published: true
date: 2024-12-20T11:30:49.744Z
tags: 
editor: markdown
dateCreated: 2023-01-24T00:20:32.189Z
---

# CoRE WG Wiki
The Constrained RESTful Environments (CoRE) WG was created out of the 6LowApp activity (see [concluded 6lowapp WG](https://datatracker.ietf.org/wg/6lowapp/about/) for historical information).

This wiki is used for collecting information that is not, or not yet, material for CoRE Internet-Drafts, RFCs or IANA registries.

## Use of version control repositories
Most of the current work on the WG drafts happens on the CoRE-WG GitHub organization: https://github.com/core-wg

With respect to the mode of operation of the repository, the CoRE WG follows the lead of the [HTTPBIS WG](https://datatracker.ietf.org/group/httpbis/about/). Specifically that means that GitHub issues are welcome to record editorial issues as well as technical ones; as are "pull requests" (forks of the repository with fixes for an issue). However, technical discussion should not happen in the forums implicitly created by the issues, but on the CoRE WG mailing list.

## Status
The CoRE WG completed specifications can be found at the [CoRE Datatracker documents page](https://datatracker.ietf.org/wg/core/documents/). Scroll down to "RFCs".
On top of this page is an up-to-date listing of the current Internet-Drafts and their status.

IETF administrative information about CoRE is available from [the CoRE Datatracker](http://datatracker.ietf.org/wg/core/).

## CoRE/CoAP external sites and tools
There's a site for testing CoAP: https://coap.me/
A website for all things CoAP: https://coap.space

## CoRE IANA Registries

The IANA registries for CoRE WG documents can be found [here](http://www.iana.org/assignments/core-parameters/core-parameters.xhtml).

For a number of these registries, in the subsections below, this Wiki page keeps supplemental information based on consensus from the WG, or discussions on the [core-parameters](https://mailarchive.ietf.org/arch/browse/core-parameters/) mailing list. This is particular information that is not kept in the IANA registries themselves or in related RFCs.

### CoAP Content-Formats

The [CoAP Content-Formats registry](https://www.iana.org/assignments/core-parameters/core-parameters.xhtml#content-formats) has the following additional remarks:

1. In the range 256-9999	IETF Review or IESG Approval, the sub-range 1000-9999 is currently earmarked (informally reserved) for an experiment to automatically assign Content-Format IDs to existing media types as registered by IANA in the [Media Types registry](https://www.iana.org/assignments/media-types/media-types.xhtml).
   * To support this, the designated experts are requested to only allocate in the range 256-999 as long as there are IDs available there.
   * Further information [in this thread on the core-parameters mailing list](https://mailarchive.ietf.org/arch/msg/core-parameters/Qiu3c9QbTMmlkK-XSf-ICZllwQE/).

1. Content-Format 434 is earmarked for [application/sdf+json](https://datatracker.ietf.org/doc/html/draft-ietf-asdf-sdf-18#name-content-format)   (see [thread](https://mailarchive.ietf.org/arch/msg/core-parameters/iLDsdxk80YO9IsLMXMAgcx5S8Ak/))

### Resource Type (rt=) Link Target Attribute Values

The [Resource Type (rt=) Link Target Attribute Values registry](https://www.iana.org/assignments/core-parameters/core-parameters.xhtml#rt-link-target-att-value) enables implementers of (IoT) devices to learn about, and potentially re-use, functionality that was defined/registered by others. This can ease and accelerate the development and testing of such devices.
However, by its definition the registry only includes plain (string) values, while URIs (including URNs) are never included. The following page keeps track of known URIs used to encode Resource Types. 

* [Known URIs Used in CoRE Protocols](/group/core/RtUris)

### Interface Description (if=) Link Target Attribute Values
The [Interface Description (if=) Link Target Attribute Values registry](https://www.iana.org/assignments/core-parameters/core-parameters.xhtml#if-link-target-att-value), similar to the above, enables implementers to re-use interface types.
The below page keeps track of known URIs used to encode Interface Descriptions.

* [Known URIs Used in CoRE Protocols](/group/core/RtUris)

## CoRE Agile Backlog
We are a very active working group with a lot of personal draft submissions being maintained. In order to maintain common objectives for progressing work, the following page maintains an Agile backlog of work items that are the next highest priority for the working group. This page is to be reviewed and updated periodically (e.g. at IETF meetings). This is not however a formal tool of the IETF, and acceptance of a draft as a WG item follows normal IETF procedure.

[CoRE Agile Backlog](/group/core/CoreBacklog)

## ETSI CoRE Plugtests (Historic information)
The CoRE protocols have been tested in more formal "plugtest" events organized by ETSI. More info about these can be found at [the ETSI plugtests page](http://www.etsi.org/plugtests/coap/coap.htm)

The first of these plugtests took place collocated with IETF83 in Paris, March 2012. A second plugtest took place near the ETSI premises on Nov 28–30, 2012. The third CoAP plugtest tested the final, approved version of CoAP and included DTLS and OMA LWM2M tests, taking place in Las Vegas on November 19–22, 2013. A quick summary of the results is [here](http://www.ietf.org/mail-archive/web/core/current/msg05117.html). The fourth CoAP plugtest, taking place in London March 2014, tested the base specification in conjunction with the final updates to Observe. A quick summary of the results is [here](https://www.ietf.org/mail-archive/web/core/current/msg05340.html).

---

