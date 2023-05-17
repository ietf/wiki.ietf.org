---
title: Recharter 2019
description: 
published: true
date: 2023-02-18T01:50:59.178Z
tags: 
editor: markdown
dateCreated: 2023-01-30T21:30:24.027Z
---

Please prepend newer versions on the top of this wiki.

Proposed 2nd Charter for ANIMA Working Group

## 2.0.9 Draft charter (Sheng)
Note: Changed according to Alissa' comments

The Autonomic Networking Integrated Model and Approach (ANIMA) working group develops and maintains specifications and documentation for interoperable protocols and procedures for automated network management and control of professionally-managed networks.

The vision is a network that configures, heals, optimizes and protects itself. The strategy is the incremental introduction of components to smoothly evolve existing and new networks accordingly.

ANIMA work will rely on the framework described in draft-ietf-anima-reference-model already approved for publication. Work not related to this framework is welcome for review, but WG adoption of such work requires explicit rechartering. The two concrete areas of the reference model are (1) the Autonomic Networking Infrastructure (ANI), and (2) Autonomic Functions (AF) built from software modules called Autonomic Service Agents (ASA).

The ANI is specified through prior ANIMA work. It is composed of the Autonomic Control Plane (ACP; RFC 8368), Bootstrap over Secure Key Infrastructures (BRSKI) including Vouchers (RFC8366), and the Generic Autonomic Signaling Protocol (GRASP). ANIMA will work on closing gaps and extending the ANI and its components.

ANIMA will start to define Autonomic Functions (AF) to enable service automation in networks; it will also work on generic aspects of ASA including design guidelines and lifecycle management, coordination and dependency management.

The reference model also discusses Intent, but ANIMA will not work on this without explicit rechartering. It will rely on the Network Management Research Group (NMRG) to define the next steps for this topic. ANIMA will coordinate with other IETF and IRTF groups as needed.

The scope of possible work items are (additional works are subject to extra approval from the responsible AD):

- Extensions to the ANI, including variations of ANI deployment (e.g. in virtualised environments), information distribution within an AN, ANI OAMP interfaces (Operations, Administration, Management, Provisioning), interaction with YANG-based mechanisms, defining the domain boundary and membership management of the domain.
- Support for Autonomic Service Agents, including design and implementation guidelines for ASAs, life cycle management, authorisation and coordination of ASA.
- BRSKI features, including proxies, enrolment, adaptions over various network protocols, variations of voucher formats.
- Generic use cases of Autonomic Network and new GRASP extensions/options for them, including bulk transfer, DNS-SD interworking, autonomic resource management, autonomic SLA assurance, autonomic multi-tenant management, autonomic network measurement.
- Integration with Network Operations Centers (NOCs), including autonomic discovery/connectivity to NOC, YANG-based ANI/ASA management by the NOC and reporting AF from node to NOC.

The initial set of milestones targets documents for the following topics.

- Lifecycle and Management of Autonomic Service Agents (ASA), draft-*-lifecycle-management-asa
- Guidelines for developing Autonomic Service Agents (ASA), draft-*-anima-asa-guidelines
- Information distribution over GRASP, draft-*-anima-grasp-distribution
- Constrained Voucher Artifacts for Bootstrapping Protocols, draft-ietf-anima-constrained-voucher
- Constrained Join Proxy for Bootstrapping Protocols, draft-*-anima-constrained-join-proxy
## 2.0.8 Draft charter (Sheng)
Note: Changed according to ADs' comments

The Autonomic Networking Integrated Model and Approach (ANIMA) working group develops and maintains specifications and documentation for interoperable protocols and procedures for automated network management and control of professionally-managed networks.

The vision is a network that configures, heals, optimizes and protects itself. The strategy is the incremental introduction of components to smoothly evolve existing and new networks accordingly.

ANIMA work will rely on the framework described in draft-ietf-anima-reference-model already approved for publication. Work not related to this framework is welcome for review, but WG adoption of such work requires explicit rechartering. The two concrete areas of the reference model are (1) the Autonomic Networking Infrastructure (ANI), and (2) Autonomic Functions (AF) built from software modules called Autonomic Service Agents (ASA).

The ANI is specified through prior ANIMA work. It is composed of the Autonomic Control Plane (ACP; RFC 8368), Bootstrap over Secure Key Infrastructures (BRSKI) including Vouchers (RFC8366), and the Generic Autonomic Signaling Protocol (GRASP). ANIMA will work on closing gaps and extending the ANI and its components.

ANIMA will start to define Autonomic Functions (AF) to enable service automation in networks; it will also work on generic aspects of ASA including design guidelines and lifecycle management, coordination and dependency management.

The reference model also discusses Intent, but ANIMA will not work on this without explicit rechartering. It will rely on the Network Management Research Group (NMRG) to define the next steps for this topic. ANIMA will coordinate with other IETF and IRTF groups as needed.

The indicative scope of possible work items includes:

- Extensions to the ANI, including variations of ANI deployment (e.g. in virtualised environments), information distribution within an AN, ANI OAMP interfaces (Operations, Administration, Management, Provisioning), interaction with YANG-based mechanisms, defining the domain boundary and membership management of the domain.
- Support for Autonomic Service Agents, including design and implementation guidelines for ASAs, life cycle management, authorisation and coordination of ASA.
- BRSKI features, including proxies, enrolment, adaptions over various network protocols, variations of voucher formats.
- Generic use cases of Autonomic Network and new GRASP extensions/options for them, including but not limited to bulk transfer, DNS-SD interworking, autonomic resource management, autonomic SLA assurance, autonomic multi-tenant management, autonomic network measurement.
- Integration with Network Operations Centers (NOCs), including autonomic discovery/connectivity to NOC, YANG-based ANI/ASA management by the NOC and reporting AF from node to NOC.

The initial set of milestones targets documents for the following topics.

- Lifecycle and Management of Autonomic Service Agents (ASA), draft-*-lifecycle-management-asa
- Guidelines for developing Autonomic Service Agents (ASA), draft-*-anima-asa-guidelines
- Information distribution over GRASP, draft-*-anima-grasp-distribution
- Constrained Voucher Artifacts for Bootstrapping Protocols, draft-ietf-anima-constrained-voucher-03
- Constrained Join Proxy for Bootstrapping Protocols, draft-*-anima-constrained-join-proxy
## 2.0.7 Draft charter (Brian)
Note: Changed according to IESG comments

The Autonomic Networking Integrated Model and Approach (ANIMA) working group develops and maintains specifications and documentation for interoperable protocols and procedures for automated network management and control of professionally-managed networks.

The vision is a network that configures, heals, optimizes and protects itself. The strategy is the incremental introduction of components to smoothly evolve existing and new networks accordingly.

ANIMA work will rely on the framework described in draft-ietf-anima-reference-model already approved for publication. Work not related to this framework is welcome for review, but WG adoption of such work requires explicit rechartering. The two concrete areas of the reference model are (1) the Autonomic Networking Infrastructure (ANI), and (2) Autonomic Functions (AF) built from software modules called Autonomic Service Agents (ASA).

The ANI is specified through prior ANIMA work. It is composed of the Autonomic Control Plane (ACP; RFC 8368), Bootstrap over Secure Key Infrastructures (BRSKI) including Vouchers (RFC8366), and the Generic Autonomic Signaling Protocol (GRASP). ANIMA will work on closing gaps and extending the ANI and its components.

ANIMA will start to define Autonomic Functions (AF) to enable service automation in networks; it will also work on generic aspects of ASA including design guidelines and lifecycle management, coordination and dependency management.

The reference model also discusses Intent, but ANIMA will not work on this without explicit rechartering. It will rely on the Network Management Research Group (NMRG) to define the next steps for this topic. ANIMA will coordinate with other IETF and IRTF groups as needed.

New work items will be adopted by the WG only if their contributors target them to enter WG last call within a number of IETF meeting cycles agreed by the AD. Subject to this limitation, the indicative scope of possible work items includes:

- Extensions to the ANI, including variations of ANI deployment (e.g. in virtualised environments), information distribution within an AN, ANI OAMP interfaces (Operations, Administration, Management, Provisioning), interaction with YANG-based mechanisms, defining the domain boundary and membership management of the domain.
- Support for Autonomic Service Agents, including design and implementation guidelines for ASAs, life cycle management, authorisation and coordination of ASA.
- BRSKI features, including proxies, enrolment, adaptions over various network protocols, variations of voucher formats.
- Generic use cases of Autonomic Network and new GRASP extensions/options for them, including but not limited to bulk transfer, DNS-SD interworking, autonomic resource management, autonomic SLA assurance, autonomic multi-tenant management, autonomic network measurement.
- Integration with Network Operations Centers (NOCs), including autonomic discovery/connectivity to NOC, YANG-based ANI/ASA management by the NOC and reporting AF from node to NOC.

The initial set of milestones targets documents for the following topics.

- Lifecycle and Management of Autonomic Service Agents (ASA)
- Guidelines for developing Autonomic Service Agents (ASA)
- Information distribution over GRASP
- Constrained Voucher Artifacts for Bootstrapping Protocols
- Constrained Join Proxy for Bootstrapping Protocols
## 2.0.6 Draft charter (Toerlesss/Sheng?)
Note: Changes from 2.0.5: Added initial milestones at end, fixed up sentence about ANIMA/NMRG/Intent (via Laurent)

The Autonomic Networking Integrated Model and Approach (ANIMA) working group develops and maintains specifications and documentation for interoperable protocols and procedures for automated network management and control of networks that are developed, built and operated by professionals.

The vision is a network that configures, heals, optimizes and protects itself. The strategy is the incremental introduction of components to smoothly evolve existing and new networks accordingly.

ANIMA work will rely on the framework described in draft-ietf-anima-reference-model. Work not related to this framework is welcome for review, but WG adoption of such work requires explicit rechartering. The three areas of the framework are (1) the Autonomic Networking Infrastructure (ANI), (2) Autonomic Functions (AF) built from software modules called Autonomic Service Agents (ASA) and (3) Intent.

The ANI is specified through prior ANIMA work. It is composed of the Autonomic Control Plane (ACP; RFC 8368), Bootstrap over Secure Key Infrastructures (BRSKI) including Vouchers (RFC8366), and the Generic Autonomic Signaling Protocol (GRASP). ANIMA will work on closing gaps and extending the ANI and its components.

ANIMA will start to define Autonomic Functions (AF) to enable service automation in networks; it will also work on generic aspects of ASA including design guidelines and lifecycle management including coordination and dependency management.

ANIMA will not work on Intent or machine learning and other AI techniques without explicit rechartering.

ANIMA will coordinate with other IETF and IRTF groups. It will rely on Network Management Research Group (NMRG) to define the next steps for Intent.

Acceptance of work items by the WG will be scheduled/throttled so that contributors can target them to enter WG last call after not more than a number of IETF meeting cycles agreed by the AD.

Proposed work items include but are not limited to:

- Works extending ANI, including variation of ANI deployment (e.g. in virtualisation or compounding environment), information and signaling distribution within an AN, ANI OAMP interfaces (Operations, Administration, Management, Provisioning), e.g. YANG models, interaction with YANG-based mechanisms, defining the domain boundary and membership management of the domain, and etc.
- Works regarding to generic Autonomic Service Agents, including design and implementer guidelines for ASAs, life cycle management, authorisation and coordination of ASA, and etc.
- BRSKI relevant works, including proxies, enrolment, adaptions over various network protocols, variations of voucher formats, and etc.
- Generic use cases of Autonomic Network and new GRASP extensions/options for them, including but not limited to bulk transfer, DNS-SD interworking, autonomic resource management, autonomic SLA assurance, autonomic multi-tenant management, autonomic network measurement, and etc.
- Integration with Network Operations Centers (NOCs), including autonomic discovery/connectivity to NOC, YANG-based ANI/ASA management by the NOC and reporting and reporting AF from node to NOC.

The initial set of milestones targets documents for the the following topics.

- Lifecycle and Management of Autonomic Service Agents (ASA)
- Guidelines for developing Autonomic Service Agents (ASA)
- Information distribution over GRASP
- Constrained Voucher Artifacts for Bootstrapping Protocols
- Constrained Join Proxy for Bootstrapping Protocols

Milestones will be added and updated on Datatracker through WG progress along the above described work areas.

## 2.0.5 Draft charter (Sheng)
Proposed 2nd Charter for ANIMA Working Group

The Autonomic Networking Integrated Model and Approach (ANIMA) working group develops and maintains specifications and documentation for interoperable protocols and procedures for automated network management and control of networks that are developed, built and operated by professionals.

The vision is a network that configures, heals, optimizes and protects itself. The strategy is the incremental introduction of components to smoothly evolve existing and new networks accordingly.

ANIMA work will rely on the framework described in draft-ietf-anima-reference-model. Work not related to this framework is welcome for review, but WG adoption of such work requires explicit rechartering. The three areas of the framework are (1) the Autonomic Networking Infrastructure (ANI), (2) Autonomic Functions (AF) built from software modules called Autonomic Service Agents (ASA) and (3) Intent.

The ANI is specified through prior ANIMA work. It is composed of the Autonomic Control Plane (ACP), Bootstrap over Secure Key Infrastructures (BRSKI) including Vouchers, and the Generic Autonomic Signaling Protocol (GRASP). ANIMA will work on closing gaps and extended ANI and its components.

ANIMA will start to define AFs to enable service automation in networks; it will also work on generic aspects of ASA including design guidelines and lifecycle management including coordination and dependency management.

ANIMA will not work on Intent or machine learning and other AI techniques without explicit rechartering.

ANIMA will coordinate with other IETF and IRTF groups. It will rely on NMRG to define the next steps for Intent.

Acceptance of work items by the WG will be scheduled/throttled so that contributors can target them to enter WG last call after not more than 4 IETF meeting cycles.

Proposed work items include but are not limited to:

- Works extending ANI, including variation of ANI deployment (e.g. in virtualization or compounding environment), information and signaling distribution within an AN, ANI OAMP interfaces (Operations, Administration, Management, Provisioning), e.g. YANG models, interaction with YANG-based mechanisms, defining the domain boundary and membership management of the domain, and etc.
- Works regarding to generic Autonomic Service Agents, including design and implementer guidelines for ASAs, life cycle management, authorization and coordination of ASA, and etc.
- BRSKI relevant works, including proxies, enrollment, adaptions over various network protocols, variations of voucher formats, and etc.
- Generic use cases of Autonomic Network and new GRASP extensions/options for them, including but not limited to bulk transfer, DNS-SD interworking, autonomic resource management,autonomic SLA assurance, autonomic multi-tenant management, autonomic network measurement, and etc.
- Integration with Network Operations Centers (NOCs), including autonomic discovery/connectivity to NOC, YANG-based ANI/ASA management by the NOC and reporting and reporting AF from node to NOC.
## 2.0.4 Draft charter (Ignas' feedback/Toerless)
Proposed 2nd Charter for ANIMA Working Group

The Autonomic Networking Integrated Model and Approach (ANIMA) working group develops and maintains specifications and documentation for interoperable protocols and procedures for automated network management and control of networks that are developed, built and operated by professionals.

The vision is a network that configures, heals, optimizes and protects itself. The strategy is the incremental introduction of components to smoothly evolve existing and new networks accordingly.

ANIMA work will rely on the framework described in draft-ietf-anima-reference-model. Work not related to this framework is welcome for review, but WG adoption of such work requires explicit rechartering. The three areas of the framework are (1) the Autonomic Networking Infrastructure (ANI), (2) Autonomic Functions (AF) built from software modules called Autonomic Service Agents (ASA) and (3) Intent.

The ANI is specified through prior ANIMA work. It is composed of the Autonomic Control Plane (ACP), Bootstrap over Secure Key Infrastructures (BRSKI) including Vouchers, and the Generic Autonomic Signaling Protocol (GRASP). ANIMA will work on closing gaps and extended ANI and its components.

ANIMA will start to define AF to enable service automation in networks; it will also work on generic aspects of ASA including design guidelines and lifecycle management including coordination and dependency management.

ANIMA will not work on Intent or machine learning and other AI techniques without explicit rechartering.

ANIMA will coordinate with other IETF and IRTF groups. It will rely on NMRG to define the next steps for Intent.

Acceptance of work items by the WG will be scheduled/throttled so that contributors can target them to enter WG last call after not more than 4 IETF meeting cycles. Work items expected to take longer are subject to AD approval.

Proposed work items include but are not limited to:

- Defining the domain boundary, membership of the domain
- Structure, life cycle, roles, authorization and coordination of autonomic service agents
- Integration with Network Operations Centers (NOCs) and reporting mechanisms
- Information and Service distribution within an autonomic network
- Interaction with YANG-based mechanisms
- Additional generic use cases such as resource management or SLA assurance
- ANI OAMP interfaces (Operations, Administration, Management, Provisioning), e.g. YANG models
- ANI deployment structure (virtualization, compounding)
- Variations of Voucher formats
- BRSKI/Bootstrap protocol aspects (different proxies, extensions for wireless, adaptions for different markets)
- GRASP extensions for common use cases (e.g. bulk transfer, DNS-SD interworking)
- Autonomic discovery of NOC services
- Autonomic Multi-tenant Management and Autonomic SLA management.
- Design and Implementer guidelines for ASAs,
- ASA Lifecycle management,
- ASA coordination/dependency resolution.
## 2.0.3 Draft charter (Toerless)
Proposed 2nd Charter for ANIMA Working Group

The Autonomic Networking Integrated Model and Approach (ANIMA) working group develops and maintains specifications and documentation for interoperable protocols and procedures for automated network management and control of networks that are developed, built and operated by professionals.

The vision is a network that configures, heals, optimizes and protects itself. The strategy is the incremental introduction of components to smoothly evolve existing and new networks accordingly.

ANIMA work will rely on the framework described in draft-ietf-anima-reference-model. Work not related to this framework is welcome for review, but WG adoption of such work requires explicit rechartering. The three areas of the framework are (1) the Autonomic Networking Infrastructure (ANI), (2) Autonomic Functions (AF) built from software modules called Autonomic Service Agents (ASA) and (3) Intent.

The ANI is specified through prior ANIMA work. It is composed of the Autonomic Control Plane (ACP), Bootstrap over Secure Key Infrastructures (BRSKI) including Vouchers, and the Generic Autonomic Signaling Protocol (GRASP). ANIMA will work on closing gaps and extended ANI and its components.

ANIMA will start to define AF to enable service automation in networks; it will also work on generic aspects of ASA including design guidelines and lifecycle management including coordination and dependency management.

ANIMA will not work on Intent or machine learning and other AI techniques without explicit rechartering.

ANIMA will coordinate with other IETF and IRTF groups. It will rely on NMRG to define the next steps for Intent.

Acceptance of work items by the WG will be scheduled/throttled so that contributors can target them to enter WG last call after not more than 4 IETF meeting cycles. Work items expected to take longer are subject to AD approval.

Proposed work items include but are not limited to:

- Defining the domain boundary, membership of the domain
- Structure, life cycle, roles, authorization and coordination of autonomic service agents
- Integration with Network Operations Centers (NOCs) and reporting mechanisms
- Information and Service distribution within an autonomic network
- Interaction with YANG-based mechanisms
- Additional generic use cases such as resource management or SLA assurance
- ANI OAMP interfaces (Operations, Administration, Management, Provisioning), e.g. YANG models
- ANI deployment structure (virtualization, compounding)
- Variations of Voucher formats
- BRSKI/Bootstrap protocol aspects (different proxies, extensions for wireless)
- GRASP extensions for common use cases (e.g. bulk transfer, DNS-SD interworking)
- Autonomic discovery of NOC services
- Autonomic Slice Management and Autonomic SLA management.
- Design and Implementer guidelines for ASAs,
- ASA Lifecycle management,
- ASA coordination/dependency resolution.
## 2.0.2 Draft of shortened charter (Brian)
DRAFT Version 2.0.2 (2018-12-28)

Proposed 2nd Charter for ANIMA Working Group

The Autonomic Networking Integrated Model and Approach (ANIMA) working group develops and maintains specifications and documentation for interoperable protocols and procedures for automated network management and control of networks that are developed, built and operated by professional personnel.

The vision is a network that configures, heals, optimizes and protects itself. The strategy is the incremental introduction of components to smoothly evolve existing and new networks accordingly.

The basis is the framework and components already developed by ANIMA, described in draft-ietf-anima-reference-model. Relevant work not related to this framework is welcome for review, but WG adoption of such work requires explicit rechartering.

The components defined so far constitute the Autonomic Networking Infrastructure (ANI): Autonomic Control Plane (ACP), Bootstrap over Secure Key Infrastructures (BRSKI) including Vouchers, and the Generic Autonomic Signaling Protocol (GRASP).

There are known gaps in this framework, including:

- Defining the domain boundary, membership of the domain
- Structure, life cycle, roles, authorisation and coordination of autonomic service agents
- Integration with Network Operations Centers (NOCs) and reporting mechanisms
- Information distribution within an autonomic network
- Interaction with YANG-based mechanisms
- Additional generic use cases such as resource management or SLA assurance

ANIMA will work on these gaps and other aspects of the existing framework.

There are long term issues that are not yet well enough understood to consider specific solutions:

- Intent (high level policy)
- Tie in to machine learning and other AI techniques

ANIMA will not work on these issues without explicit rechartering.

ANIMA will continue to work on fixes, extensions, variations and operational or implementation aspects of the ANI, such as:

- ANI OAMP interfaces (Operations, Administration, Management, Provisioning), e.g. YANG models
- ANI deployment structure (virtualization, compounding)
- Variations of Voucher formats
- BRSKI/Bootstrap protocol aspects (different proxies, extensions for wireless)
- GRASP extensions for common use cases (e.g. bulk transfer, DNS-SD interworking)

Autonomic Functions in ANIMA are distributed functions leveraging the ANI. The working group may adopt work items to specify autonomic functions such as:

- Autonomic discovery of NOC services
- Autonomic Slice Management and Autonomic SLA management.

Such work must be detailed enough for deployable and operable solutions, preferably on the standards or BCP track.

Autonomic Software Agents (ASAs) are software modules that implement Autonomic Functions. The working group may adopt general work items such as:

- Design and Implementer guidelines for ASAs,
- ASA Lifecycle management,
- ASA coordination/dependency resolution.

Adoption of work items will be based on their perceived value to implementors and/or operators.

ANIMA will coordinate with other IETF and IRTF groups when deciding which work items to adopt. Although ANIMA scope is limited to professionally operated networks, some work items have wider value that may be considered during adoption.

Working group items accepted under this charter should enter WG last call after not more than 4 IETF meeting cycles. Work items expected to take longer are subject to AD approval.

TBD: list of initial deliverables and milestones.

## 2.0.1 Detailed proposal for new charter (Sheng, Toerless, Brian)
This text was proposed for discussion at IETF 103 and was found to be too lengthy and detailed, but is shown as background to the proposed shortened charter:

Version 2.0.1 (10/15/2018) Proposed 2nd Charter for ANIMA Working Group

The Autonomic Networking Integrated Model and Approach (ANIMA) working group is developing specifications and supporting documentation for interoperable protocols, implementations and operational procedures for automated network management and control mechanism for networks that are developed, build and operated by professional personnel.

The vision of ANIMA is the fully self-CHOP network (Configure, Heal, Optimize, Protect). The strategy is the incremental introduction of components to make it easier to evolve existing and next-generation networks into that direction including the evolution of DevOps? for networks through the support of more agile and modular developed and deployed networking automation.

The basis for ongoing work in ANIMA are the framework and components developed by ANIMA so far, documented in draft-ietf-anima-reference-model. Standalone work not relating to any component of this framework is welcome for review, but WG adoption of such work will be done through explicit rechartering.

The components developed so far in this ANIMA framework constitute the Autonomic Networking Infrastructure (ANI): Autonomic Control Plane (ACP), Bootstrap over Secure Key Infrastructures (BRSKI) including the concept of Vouchers, and Generic Autonomic Signaling Protocol (GRASP) .

There are known gaps in this framework, including:

- Defining the domain boundary, membership of the domain
- Structure, life cycle, roles, authorisation and coordination of autonomic service agents
- Integration with Network Operations Centers and reporting mechanisms
- Information distribution within an autonomic network
- Interaction with YANG-based management mechanisms
- Additional generic use cases such as resource management or SLA assurance

ANIMA will work on these gaps and other aspects of the existing framework (more details below).

There are long term issues that are not yet well enough understood to consider specific technical solutions:

- Intent (high level policy)
- Tie in to machine learning and other AI techniques

ANIMA will not work on these issue without explicit rechartering.

ANIMA will continue to work on fixes, extensions, variations and operational or implementation detailing of the overall ANI and its components. Examples of such work is not limited to, but includes:

- ANI OAMP interfaces (Operations, Administration, Management, Provisioning) (e.g.: Yang models for the ANI)
- Structuring ANI (virtualization, compounding)
- Variations of Voucher formats
- BRSKI/Bootstrap protocol aspects (different proxies, extensions for wireless)
- Common GRASP extensions for multiple use cases (Bulk transfer, DNS-SD compatible GRASP objectives)

Autonomic Functions is the ANIMA framework term for distributed functions leveraging the ANI (preferrably autonomically managed). The ANIMA working group will consider work items to specify individual autonomic functions including but not limited to:

Standardized autonomic functions/use-cases such as autodiscovery of (de)centraized services by ANI networks - such as those in Network Operations Centers (NOC).
Autonomic Slice Management and Autonomic SLA management.
Work on ANI use cases and Autonomic Functions must be detailled and complete enough to support implementation of solutions that can be deployed and operated. Standards track is preferred, but more exploratory experimental or informational work proposals will be accepted based on the expected operational benefits.

Autonomic Software Agents are the ANIMA framework components representing software modules that implement Autonomic Functions. The ANIMA working group will consider work items relating to ASA and other aspects of autonomic functions that are applicable independent of a specific Autonomic Function and its ASA. These work items include, but are not limited to:

- Design and Implementer guidelines for ASA
- ASA Lifecycle management,
- ASA coordination/dependency resolution.
Acceptance of work items will be based on the perceived value to implementors and/or operators. Status of work can be standards track if the work includes normative statements about node external interfaces (such as requirements for Yang interfaces on ASA). Exploratory work in this area can be experimental. Work describing node-internal only behavior will be informational.

ANIMA will coordinate with other IETF working groups and IRTF research groups and only accept work that is not better suited for other groups. Examples include variations of components of the ANI in a solutions owned by other working group (such as 6TISCH for specific variations of BRSKI mechanisms), details of ANI components owned by another working group (e.g.: ROLL for the ACP used RPL protocol extensions/modifications), NMRG for definition of Intent terminology and taxonomy, and DINRG for definition of aspects of distributed autonomic functions not well enough understood to allow adoption by ANIMA (note: pending on DINRG being accepted as a RG).

Working group items accepted under this charter will be tracked through milestones and have by default to be brought into WG last call in not more than 4 IETF cycles. Work items expected to take longer time are subject to AD approval.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-07-10. It was migrated from the old Trac wiki on 2023-01-30.*