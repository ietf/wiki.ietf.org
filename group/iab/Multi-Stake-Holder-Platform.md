---
title: Multi Stake Holder Platform Wiki
description: 
published: true
date: 2025-09-01T10:38:51.889Z
tags: 
editor: markdown
dateCreated: 2023-01-26T04:05:43.693Z
---

# European Multi Stakeholder Platform on ICT Standardisation 

**This is a public working draft that has not been reviewed by the IAB or the IETF**

### Purpose of this Page
This page contains specific information about the IETF relevant to the European Multi Stakeholder Platform on ICT Standardisation, MSP for short. This page is intended for the stakeholders that seek information specific to the MSP's work and how that work relates to the IETF, it is not intended for IETF participants seeking [more information](https://digital-strategy.ec.europa.eu/en/policies/multi-stakeholder-platform-ict-standardisation) about the MSP.

For more detailed information, or to submit relevant information to the MSP, please contact [Mat Ford](mailto:ford@isoc.org) or [Olaf Kolkman](mailto:kolkman@isoc.org) who are the IETF representatives in the platform and the editors of this page.

## The Rolling Plan
### Introduction
This Rolling Plan for ICT Standardisation identifies EU policy priorities where ICT standardisation and ICT standards should be considered as part of policy making. The Rolling Plan is a strategic document focussing on the support that standards, technical specifications, and standardisation in general can provide in the context of EU policy priorities.

The Rolling Plan looks at the standardisation landscape in relation to the EU policy priorities. It identifies possible areas for action and may go into suggesting a plan or roadmap regarding effective standardisation support.

In chapter 3 of the Rolling Plan various policy areas are identified that need to be supported by ICT standardisation. Below we follow the structure of this Rolling Plan and supply information about the related standardisation and research activities in the IETF and IRTF. The final Rolling Plan itself incorporates the IETF-related sections on this page where appropriate.

Previous versions of the Rolling Plan and the IETF work that fits into it:

- [Rolling Plan 2019](https://joinup.ec.europa.eu/collection/rolling-plan-ict-standardisation/rolling-plan-2019)
- [Rolling Plan 2020](https://interoperable-europe.ec.europa.eu/collection/rolling-plan-ict-standardisation/rolling-plan-2020)
- [Rolling Plan 2021](https://interoperable-europe.ec.europa.eu/collection/rolling-plan-ict-standardisation/rolling-plan-2021)
- [Rolling Plan 2022](https://interoperable-europe.ec.europa.eu/collection/rolling-plan-ict-standardisation/rolling-plan-2022)
- [Rolling Plan 2023](https://interoperable-europe.ec.europa.eu/collection/rolling-plan-ict-standardisation/rolling-plan-2023)
- [Rolling Plan 2024](https://interoperable-europe.ec.europa.eu/collection/rolling-plan-ict-standardisation/rolling-plan-2024)
- [Rolling Plan 2025](https://interoperable-europe.ec.europa.eu/collection/rolling-plan-ict-standardisation/rolling-plan-2025)
- Rolling Plan 2026 (to follow)

### Draft Rolling Plan 2026
The current structure is based on the draft document "Rolling Plan on ICT Standardisation (2026 revision)". The objective of this page is to raise awareness regarding policy areas that need standardisation from a European Union point of view and collect input regarding relevant work at the IETF and IRTF.

Since there may not be sufficient specific policy area expertise for each of the areas mentioned in Chapter 3 of the Rolling Plan the references below are likely to be incomplete. Readers are advised to review the [IETF areas](https://www.ietf.org/topics/areas/) for potentially related technology work and contact [Mat Ford](mailto:ford@isoc.org) or [Olaf Kolkman](mailto:kolkman@isoc.org) or any Area Director with general or specific questions.

### General comments
- From the EU RP Task Force: The Review process leads to a new version of the EU Rolling Plan on ICT Standardisation. The new version will be finalised by the MSP in December before being handed over to the Commission for endorsement and publication. From end of July until late September all MSP members have the opportunity to provide comments and further input to the draft Rolling Plan as provided by the European Commission. Focus should be put in particular to the actions. For an effective Rolling Plan it is important to have actions that are as precise as possible so that they can trigger respective standardisation work. Therefore, the CARV criteria should be met: actions should be **C**oncrete, **A**chievable, **R**elevant and **V**oluntary.
- The numbering of the various section titles refers to the numbers of the sections in the rolling plan.

## EU Policy Areas Supported by ICT Standardisation
## 3.0 Foundational drivers
### 3.0.1 Data Economy
**RP:** The actions proposed focus on fields where ICT standardisation can support horizontal and high-level policy objectives in the area of data economy. Actions that address sector specific needs and objectives are included in the respective chapters addressing the different sectors and technology areas.

Action 1: Stock-taking and collaboration:

- Action 1.1: SDOs to identify, map and inform about standards that are available or under development that are of relevance in supporting the scenarios listed in section A2 above. StandICT.eu to contribute to this activity.  

- Action 1.2: SDOs to collaborate on addressing standardisation needs around all the data lifecycle, from data collection to record keeping, archiving and long term preservation of information and start the respective standardisation activities, taking into account the results of ISA2 program and other relevant activities (see for example section C.2).

- Action 1.3: Following an analysis of standards available or under development (Action 1 above) and of possible standardisation needs (Action 2 above), SDOs to collaborate on developing specific standards in support of the scenarios outlined in section A.2 above, closing well-identified gaps

Action 2: In the context of the MSP, start an analysis on the role of open source software complementing standardisation in the support of the scenarios listed in section A.2 above, e.g. with APIs, protocols, service delivery and other platforms. 

Action 3: In collaboration with the Data Spaces Support Centre (DSSC), and considering the policy objectives outlined in the chapter on Data Interoperability as well as the work of the EU High-Level Forum, stakeholders to address the topic of gathering and processing data from different sources across domains and develop proposals for respective standardisation projects.

Action 4: Coordinate and support the standardization of data spaces by identifying cross-sectoral and cross-border projects, use cases, and pilots that implement data spaces extending beyond domain and geographic boundaries. This will help define and test the interoperability standards for data spaces 

Action 5: SDOs to establish an exchange with relevant open source developing foundations for identifying open source technologies that are available or under way and that can be of relevance for supporting the upcoming EU Data Act and EU policy objectives around the EU data strategy.

#### IETF/IAB input to Rolling Plan

The following IETF Working Groups are active in this area:

The [Building Blocks for HTTP APIs (httpapi)](https://datatracker.ietf.org/wg/httpapi/about/) Working Group will standardise HTTP protocol extensions for use when HTTP is used for machine-to-machine communication, facilitated by HTTP APIs. Output can include the following:

- Specifications for HTTP extensions that relate to HTTP APIs (typically, new HTTP header and/or trailer fields)
- Specifications for new message body formats, or conventions for their use in HTTP APIs (e.g., patterns of JSON objects)
- Best practices and other documentation for HTTP API designers, consumers, implementers, operators, etc.

The [Workload Identity in Multi System Environments (wimse)](https://datatracker.ietf.org/wg/wimse/about/) Working Group is chartered to address the challenges associated with implementing fine-grained, least privilege access control for workloads deployed across multiple service platforms, spanning both public and private clouds. The work will build on existing standards, open source projects, and community practices, focusing on combining them in a coherent manner to address multi-service workload identity use cases.
The WIMSE working group will closely collaborate with:
- Other IETF working groups that address topics related to identity, authentication, and authorization, including, but not limited to, OAuth, SCIM, SCITT, and RATS.
- The Cloud Native Computing Foundation (CNCF), particularly with regard to the SPIFFE/SPIRE project.
- The OpenID Foundation.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-301-data-economy

### 3.0.2 Cybersecurity / network and information security
**RP:** 
Action 1. Cyber Resilience Act Implementation: European Standardization Organizations (ESOs) d to develop standards in line with the Standardisation Request M/606.
The first deliverables relating to the horizontal framework and vulnerability handling are expected for 30 August 2026. Product-specific standards covering the important and critical product categories (CRA Annex III and IV) should be ready by 30 October 2026. The set of standardisation deliverables covering the essential requirements of Annex 1 Part 1 in a product-agnostic way are due one year later on 30 October 2027.
SDOs  are invited to develop pertinent standards for the CRA default product category in coordination with the ongoing standardisation work in reply to M/606.

Action 2. NIS2 Directive Support: ESOs and SDOs are invited to develop standards to protect critical infrastructure per the NIS2 Directive, including the support to trust services under the NIS2, as well as promoting the implementation of the EN 62443 series for the firm establishment of EU regulatory requirement operational technology (OT) security including critical infrastructures.

Action 3. Cybersecurity Act/Cybersecurity Certification Framework facilitation: ESOs and SDOs are invited to evaluate current standards under the European Cybersecurity Certification Framework (including both the present and planned schemes as well as initiatives under the Union Rolling Work Programme for European cybersecurity certification (URWP)) to update or introduce new standards on time to facilitate certification activities, including the preparation of candidate certification schemes.

Action 4. Post-Quantum Cryptography: ESOs and SDOs are welcome to assess post-quantum algorithms, examine advanced cryptographic schemes and adopt standards for secure and interoperable post-quantum communications, including in hybrid form. These standards should support authentication and seamless identity management capabilities  across variety of networks, in all layers of the cloud-edge/IoT continuum, and in particular for constrained devices, aligning with limitations of available resources.

Action 5. Support to the European Health Data Space regulation: ESOs and SDOs are welcome to evaluate the need and feasibility of sector-specific cybersecurity standards for healthcare (for e.g. electronic health record systems, digital health applications, software as medical device, medical devices software, IoMT) that would complement relevant horizontal cybersecurity standards.

Action 6. Horizontal support to EU policies: ESOs and SDOs are invited to perform gap analysis and explore harmonized methodologies for evaluating cybersecurity risks and controls, integrating these into existing and new standards for trusted products and technologies, both software and hardware, in line with EU policy requirements.

ESOs are encouraged to collaborate with global SDOs and the open-source community to identify available or ongoing technologies of relevance for supporting EU policies, in particular the Cyber Resilience Act. 

#### IETF/IAB input to Rolling Plan

The [IETF Security Area](https://datatracker.ietf.org/wg/#SEC) is the home for working groups focused on security protocols. They provide one or more of the security services: integrity, authentication, non-repudiation, confidentiality, and access control. Since many of the security mechanisms needed to provide these security services employ cryptography, key management is also vital.

The Security Area intersects with all other IETF Areas, and the participants are frequently involved with activities in the working groups from other areas. This involvement focuses upon practical application of Security Area protocols and technologies to the protocols of other Areas.

With specific reference to Commission Recommendation (EU) C(2024) 2393 of 11 April 2024 on a Coordinated Implementation Roadmap for the transition to Post-Quantum Cryptography (PQC), the IETF has established the [Post-Quantum Use In Protocols](https://datatracker.ietf.org/wg/pquip/about/) Working Group which provides a standing venue to discuss PQC (operational and engineering) transition issues and experiences to date relevant to work in the IETF. The WG will document operational and design guidance which supports PQC transition.

The full list of IETF Working Groups in the Security Area is [available here](https://datatracker.ietf.org/wg#SEC).

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-302-cybersecurity-network-and-information-security

## 3.1 Key enablers
### 3.1.1 5G and beyond
**RP:** 
Action 1: Global industry standards. Foster the emergence of global industry standards under EU leadership for key 5G/6G technologies (radio access network, core network) and network architectures notably through the exploitation of 5G public-private partnership results in key EU and international standardisation bodies (3GPP, ITU, ETSI).

Action 2:   Ensure that 5G/6G standards are compatible with innovative use-cases of vertical industries and ensure sufficient spectrum-sharing capabilities, notably through broader participation of industries and authorities with sector-specific needs and in close collaboration with other industry specific standards developing organisations, in 5G standardisation organisations. Several projects funded by the European Commission, as well as the  5G PPP are dealing with 5G standardisation. 

Action 3: Lawful interception and lawful disclosure related standards. Foster the emergence of standards that ensure proper provisions for enabling lawful interception mechanisms in the context of 5G networks by encouraging and coordinating law enforcement involvement in 5G standardisation related committees (e.g. ETSI TC LI, ETSI NFV-SEC, 3GPP SA3-LI) and promoting a European approach based on its legal system.

Action 4:  SDOs to work with the stakeholders in standardisation to deliver a report on the standardisation needs and specific requirements for the uptake of 5G in vertical sectors (e.g. transportation, healthcare, manufacturing, energy).


#### IETF/IAB input to Rolling Plan

Interactions between IETF and 5G developments fall into several categories:

- New dependencies on existing IETF technology: For instance, introducing a flexible authentication framework based on EAP (RFC 3748, RFC 5448). This work is being addressed in the [EAP Method Update](https://datatracker.ietf.org/wg/emu/about/) (EMU) Working Group. This working group has been chartered to provide updates to some commonly used EAP methods. Specifically, the working group shall produce documents to:
	- Provide guidance or updates to enable the use of TLS 1.3 in the context of EAP TLS (RFC 5216). Update the security considerations relating to EAP TLS, to document the implications of using new vs. old TLS versions, any recently gained new knowledge on vulnerabilities, and the possible implications of pervasive surveillance.
	- Update the EAP-AKA' specification (RFC 5448) to ensure that its capability to provide a cryptographic binding to network context stays in sync with what updates may come to the referenced 3GPP specifications through the use of EAP in 5G.
- Dependencies on ongoing IETF work: The IETF [Deterministic Networking](https://datatracker.ietf.org/wg/detnet/about) (DETNET) Working Group defines mechanisms to guarantee deterministic delays for some flows across a network. As one of the 5G use cases is time-critical communication and low-latency applications, this is a component technology that is being looked at. Similarly, IETF routing-related work such as [traffic engineering](https://datatracker.ietf.org/wg/teas/about/), [service chaining](https://datatracker.ietf.org/wg/sfc/about) and [source routing](https://datatracker.ietf.org/wg/spring/about) are likely tools for managing traffic flows in 5G networks, as they are for other large service provider networks. 5G-related topics are also discussed in the [Distributed Mobility Management Working Group](https://datatracker.ietf.org/wg/dmm/about/).
- There are many IETF tools already for dealing with virtualisation and separation of networks (see 3.1.2 Cloud computing, below), so the first order of business is mapping what can be done with those tools for the 5G use cases.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-311-5g-and-beyond

### 3.1.2 Cloud and edge computing
**RP:** 
Action 1: Identify needs for ICT standards and open source technologies to further improve the interoperability, data protection and portability of cloud services and continue or start respective development activities. This should also take into account available open source technologies and their role for interoperability, data sovereignty, data protection and management of multiple clouds.

Action 2: Promote the use of the ICT standards needed to further improve the interoperability, data sovereignty, data protection and portability of cloud services as well as multi-cloud management.

Action 3: Further strengthen the interlock between standardisation and open source in the area of Cloud and establish and support bilateral actions for close collaboration of open source and standardisation. Foster a level playing field that allows the use of Open Source procedures and deliverables where they make economic sense complementing or substituting standardisation.

Action 4:  Promote international standards on service level agreements (SLAs) and usage of the cloud code of conduct (CoC).

Action 5: Promote the use of the ISO/IEC JTC 1 reference cloud architecture and define generic cloud architecture building blocks. Map available standards to the generic cloud architecture building blocks. Define privacy, security and test standards for each building block. This will also help determine which standards can be used for open cloud platforms and architectures taking into account the key role of open source for cloud infrastructure design and implementations.

Action 6: Promote the development of adequate standards/open source developments to ensure a competitive playing field for cloud services provision in Europe and contribute to the green agenda.

Action 7: SDOs and open source communities to foster their collaboration, mutual exchange, integration of Open Source outcomes in SDO deliverables and identification of technologies, e.g. APIs, that have been developed in open source and could be standardised.

Action 8: SDOs should focus on addressing the edge/cloud X-continuum paradigm and standardisation challenges. In particular, due to huge increase of connected devices and systems, several computing deployments are embracing the notion of computing continuum, where the right compute resources are placed at optimal processing points, i.e., cloud data centre, edge computing systems and end devices, This requires the support of: (1) continuum of technologies across sensors, connectivity, gateways, edge processing, robotics, platforms, applications, Al, and analytics, including underlying technologies like optical, wireless (cellular and non-cellular) and satellite communications, (2) continuum of intelligence and edge capabilities, (3) continuum of edge applications across vertical sectors and seamless integration.

Action 9: SDOs to contribute to the preparation of an overview of relevant harmonised standards and open interoperability specifications that respond to the legal requirements outlined in the Data Act and that could be recognised in the to-be-established common Union repository for the interoperability of data processing services. 

Action 10: SDOs to Promote the development of a standard or a set of standards for processor sockets for cloud computing infrastructure.


#### IETF/IAB input to Rolling Plan

The IETF has multiple groups working on standards for virtualization techniques, including techniques used in cloud computing and datacenters.

The [Workload Identity in Multi System Environments (wimse)](https://datatracker.ietf.org/wg/wimse/about/) Working Group is chartered to address the challenges associated with implementing fine-grained, least privilege access control for workloads deployed across multiple service platforms, spanning both public and private clouds. The work will build on existing standards, open source projects, and community practices, focusing on combining them in a coherent manner to address multi-service workload identity use cases such as those identified in the [Workload Identity Use Cases Internet Draft](https://datatracker.ietf.org/doc/draft-gilman-wimse-use-cases/).

The goal of the WIMSE working group is to identify, articulate, and bridge the gaps and ambiguities in workload identity problems and define solutions across a diverse set of platforms and deployments, building on various protocols used in workload environments. The WG will standardize solutions (as proposed standard) and document existing or best practices (as informational or BCP) per the Program of Work.

The [Network Virtualization Overlays (NVO3) Working Group](https://datatracker.ietf.org/wg/nvo3/about/) develops a set of protocols and extensions that enable network virtualization within a datacenter environment that assumes an IP-based underlay. An NVO3 solution provides layer 2 and/or layer 3 services for virtual networks enabling multi-tenancy and workload mobility, addressing management and security issues.

The [System for Cross-domain Identity Management (SCIM) Working Group](https://datatracker.ietf.org/wg/scim/about/) works on standardising methods for creating, reading, searching, modifying, and deleting user identities and identity-related objects across administrative domains, with the goal of simplifying common tasks related to user identity management in services and applications.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-312-cloud-and-edge-computing

### 3.1.3. Data interoperability
**RP:** 
Action 1: SDOs to optimize the management of DCAT and DCAT-AP (data discovery)
-	Related legal requirements: Open Data Directive, implementing act on High Value Data Sets, Data Act
-	Help to establish a governance framework for DCAT profiles
-	Develop rules for the management of new requirements, including criteria to decide whether to implement these in the base DCAT-AP standard or as extensions
-	Consider the development of interface standards for DCAT-AP publication and querying
-	Evaluate the suitability of DCAT for sharing of closed data, for example in a data spaces context

Action 2: SDOs to define a framework for the sharing of data from smart devices (data sharing, data usage)
-	Related legal requirements: Data Governance Act, Data Act, GDPR

Action 3: SDOs to define a framework for the sharing of consent-based data based (data altruism by organisations or persons), including metadata standards to define the consent attributes (e.g. purpose) and mechanisms to manage withdrawal of consent (data sharing, data governance).
-	Related legal requirements: Data Governance Act, GDPR

Action 4: SDOs to optimize the management of domain ontologies:
o	Related legal requirements: Open Data Directive, implementing act on High Value Data Sets, Data Act
-	Help to establish a common governance framework for ontologies
-	Address long-term sustainability aspects such as maintenance funding 
-	Develop standard criteria to evaluate quality of ontologies, e.g. avoiding bias, ensuring completeness, use of persistent URLs
-	Develop standard methods for the automated testing of ontologies

Action 5: SDOs to identify standards for data integration, semantic mapping / tagging, data fabric. Also addressing the way this can help to leverage common domain ontologies (data usage)

Action 6: SDOs to define standards for data governance, addressing two levels:
-	Data governance standards to support individual parties, for example certification of internal data governance processes and tools.
-	Data governance standards to support collaborative data sharing, in particular open data portals and data spaces.
-	Data governance standards to support collaboration with existing communities for the creation and evolution of each specification / standard. 

Action 7: Support standardisation needs of the European open data infrastructure, especially the European Data Portal and the SEMIC.


#### IETF/IAB input to Rolling Plan

The following IETF Working Group is active in this area:

The [A Semantic Definition Format for Data and Interactions of Things (asdf) Working Group](https://datatracker.ietf.org/wg/asdf/about/) is tasked with developing [Semantic Definition Format (SDF)](https://datatracker.ietf.org/doc/draft-onedm-t2trg-sdf/) into a standards-track specification for thing interaction and data modelling. In the process of developing this specification, further functional requirements that emerge in the usage of SDF for model harmonization will be addressed.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-313-data-interoperability

### 3.1.4. Internet of Things
**RP:** 
Action 1: SDOs to work on a landscape overview report and a gap analysis for IoT standardisation in the edge and swarm context.

Action 2.1: SDOs to continue ongoing work in the area of semantic standards for better data interoperability. Special focus should be put on further extending the SAREF ontology both in number of extensions (e.g. SAREF for maritime, etc.) and the content of each extension and further evolve it towards the requirements of the common European Data Spaces.. Define and provide guidance on a process to reuse, extend and maintain ontologies based on a common information model, taking into account the needs of the application domains (e.g. health, energy, …)

Action 2.2 Define a process to define SAREF interoperability profiles that would extend current standards on behaviour and policy interoperability and contribute to ISO/IEC 21823-5 IoT Behaviour and Policy Interoperability.

Action 2.3 SAREF should also be adapted for new realities such as edge computing, (federated) machine learning and (Generative) AI, metaverse, digital twin, etc. SDOs should also continue ongoing work for existing standards (e.g. ISO 13584-1 or IEC 61360/ Common Data Dictionary) on semantics. Contributions  on ISO/IEC 30152 (guidance on the integration of IoT and digital twin to data spaces) should be provided taking into account the support of SAREF.

Action 2.4 Provide guidance on how SAREF can be used to support digital twin interoperability. Concepts for digital twins require additional property types for operational use compared to the purely descriptive properties of an asset. These are states and parameters of the assets as well as their measured and actor values (dynamic data). Commands and entire functions (often called technical functions) must also be described using the same concepts. The concept of properties in today’s standards is to extend such semantics in the data models to be able to represent dynamic values correctly. Models for functions/commands are to be developed or existing ones defined in standards.

Action 2.5 Stakeholders, who are not members of ETSI, can contribute to the SAREF ontology via ETSI labs. The draft of the EN 303760 for SAREF to be approved by the EU member states to enter into force in 2024/2025. 

Action 3: SDOs to provide standards supporting compliance as well as standards enabling the integration of (Generative) AI, data processing capabilities and digital twin systems into IoT products, systems, applications and processes. The digital twin part should cover aspects such as identifiers, trust, security, privacy, APIs, provisioning, monitoring, vocabularies and ontologies, metadata, etc.

Action 4: Develop a European standard for cyber security compliance of products and systems that is aligned with the current compliance framework of organisations based on the ISO 27000 Information Security Management Standards series, new work on the evaluation of complex system (ISO/IEC 27115) and on the reuse of evaluation schemes (ISO/EC 27116) and the GDPR regulation and the future compliance framework of systems based on standards such as ISO/IEC 27100, ISO/IEC 27400, 27402, 27403, ISO 31700.. Preferably the standard could be used to harmonise the requirements set out in the NIS directive and the cybersecurity certification framework.

Action 5: Promote the development and foster the adoption of novel Reference Architectures for IoT developed in ISO/IEC JTC 1/SC 41 (ISO/IEC 30141 Ed2 IoT reference architecture, ISO/IEC 30188 Digital twin reference architecture)  and OneM2M. This architectures should interconnect highly heterogeneous and distributed edge nodes and (resource-constraint) devices and be compliant to the latest developments such as edge computing, distributed intelligence and learning, cognitive computing, mesh networking, swarm computing and digital twins.

Action 6: SDOs to assess further gaps and develop standards on the safety and cybersecurity of IoT consumer products under the European Cybersecurity Act or sectorial legislation.

Action 7: SDOs should consider further inclusion of and outreach to verticals.

Action 8: SDOs should get involved in the definition of the technical common ground of the Common European Data Spaces to be developed and deployed under the Digital Europe and Horizon Europe programmes and leverage the IoT interoperability standardisation assets for that purpose. This could include the management of data lifecycle, common interoperability and discovery language, common data models, data curation network, trustworthiness, governance models, decentralised architecture, scale-up methodologies, etc. Alignment of specifications should be undertaken between ISO/IEC 20151 (Dataspace concepts and characteristics), the DSSC blueprint and the CEEDS blueprint.

Action 9: SDOs should look in the standardisation needs of the new edge paradigm and investigate the impact on it of the specific use cases of the verticals (such as energy, mobility, agriculture, health and other). Specific concepts such as software containers, APIs and interfaces, etc. should be explored.

Action 10: Increased collaboration/synchronization between standardisation bodies (e.g., ETSI SAREF, W3C SOSA/SSN, IEEE 1872.2 Autonomous Robotics Ontology, ISO 21823- 3 IoT Semantic Interoperability, etc.).

Action 11: SDOs should consider addressing the standardisation of federated Learning and (Generative) AI for IoT edge related challenges. In particular, federated Learning brings Al models close to the edge to enhance data protection, improve inference reliability, and increase autonomy of end clusters (e.g., end loT/lloT devices, on-premises servers, etc.). The cloud plays a federation role for aggregating insights from different loT edge distributed clusters to generate a federated model shared with each individual cluster. Such standardisation challenges are: (1) workflow standardisation, (2) interfaces edge/cloud, orchestration, (3) model contamination, and (4) pipes for handling distributed traffic.

Action 12: SDOs should get involved in the standardisation of loT Swarm Systems. In particular, focus on concepts for loT intelligence clustering to promote collaboration and share of resources and functions for performing specific tasks. These concepts impose standardisation challenges in the required architecture, such as interfaces, data models and ontologies and as well as security and privacy models.

Action 13: SDOs should focus on standardisation needs for IoT and edge computing coexistence/integration/interoperability and continuum across several sectors and platforms, based on the new PWI TR JTC1-SC41-22 (Internet of Things (IoT) – Architecture considerations for IoT, edge and cloud) resulting from EUCloudEdgeIoT.. In particular, the use of end-to-end capabilities of IoT technologies across the edge granularity and beyond impose continuum standardisation challenges, such as support of interoperability by the means of new interfaces, data models, security and privacy models and security and privacy models.

Action 14: SDOs should consider addressing standardisation challenges for service discovery and authentication in the context of distributed and federated edge computing systems and in particular, for scenarios where multiple mobile devices are used that require services simultaneously and uninterruptedly. There is a challenge of effectively managing billions of IoT devices, ensuring that they are suitably configured, running appropriate software, kept up-to-date with security updates and patches, and run only properly authenticated and authorised applications. Authentication of services and service providers, while accounting for resource usage, is also an essential part of the economics of the network of the future. There is a need of ensuring interoperability across platforms, devices, and locations, by enabling assets to be securely purchased and transferred between virtual and real-world locations, authenticated and validated, using various consensus methods that support the validation of identity, ownership, and usage rights of any asset subject to relevant rights.

Action 15: SDOs should investigate and elaborate on system-level optimisation techniques combining lower power consumption and energy harvesting technologies, E2E energy methods and models for data compression and exchange in edge-cloud IoT platforms, benchmarking methods for energy-efficient and low CO2 footprint of edge IoT infrastructure and technical solutions, energy-efficient data aggregation mechanisms in intelligent edge IoT systems considering the associated processing and connectivity capabilities across the computing continuum. Specify (or modify existing) interfaces that help monitor and control of the energy usage in communication protocol layer stacks applied in IoT and edge computing solutions. Specify (or modify existing) IoT and edge computing related standards, interfaces, data models and ontologies to reduce the energy and carbon footprint.

Action 16: SDOs should investigate IoT system level and network function virtualisation and AI-based zero-touch operations automation including automated reconfiguration and setup. 

Action 17: SDOs to work towards a faster standardisation cycle more adapted to the fast pace of IoT technology developments. Some examples already exist (e.g. for SAREF and FIWARE).

Action 18: European and international SDOs to increase collaboration, information exchange and contribution with relevant EU projects. Collaboration is already ongoing with ETSI SmartM2M and ISO/IEC JTC1 SC41. It should be deepened further and other SDOs should also follow.


#### IETF/IAB input to Rolling Plan

The IETF has a number of Working Groups chartered to develop standards to support the Internet of Things.

The [IPv6 Over Low Power WPAN (6LOWPAN) Working Group](https://datatracker.ietf.org/wg/6lowpan/about/) developed standards to ensure interoperability between smart object networks and defining the necessary security and management protocols and constructs for building such networks.

The [IPv6 over Networks of Resource-constrained Nodes (6LO) Working Group](https://datatracker.ietf.org/wg/6lo/about/) develops IPv6 adaptation mechanisms to a wider range of radio technologies including “Bluetooth Low Energy” (RFC 7668), ITU-T G.9959 (as used in Z-Wave, RFC 7428), and the Digital Enhanced Cordless Telecommunications (DECT) Ultra Low Energy (ULE) cordless phone standard and the low-cost wired networking technology Master-Slave / Token-Passing (MS/TP) that is widely used over RS-485 in building automation.

The [IPv6 Over Low Power Wide-Area Networks (lpwan) WG](https://datatracker.ietf.org/wg/lpwan/about/) focused on enabling IPv6 connectivity over the following selection of Low-Power Wide-Area networking technologies: SIGFOX, LoRa, WI-SUN and NB-IOT.

The [Light-Weight Implementation Guidance (LWIG) Working Group](https://datatracker.ietf.org/wg/lwig/about/) focused on helping the implementors of the smallest devices. Standards developed by the group enable the building of minimal yet interoperable IP-capable devices for the most constrained environments.

The [Routing over Low Power and Lossy Networks (ROLL) Working Group](https://datatracker.ietf.org/wg/roll/about/) is developing standards to support the routing of communications within low-power and lossy networks.

The [Constrained RESTful Environments (CORE) Working Group](https://datatracker.ietf.org/wg/core/about/) is specifying protocols that allow applications running in resource-constrained environments to interoperate with each other and the rest of the Internet. CORE is one of the most active IoT groups. Its main output centres around the “Constrained Application Protocol” (CoAP, RFC 7252), a radically simplified UDP-based analog to HTTP. Extensions to CoAP enable group communications (RFC 7390) and low-complexity server-push for the observation of resources (RFC 7641). This is complemented by a discovery and self-description mechanism based on a weblink format suitable for constrained devices (RFC 6690). Current WG activities focus on extensions that enable transfer of large resources, use of resource directories for coordinating discovery, reusable interface descriptions, and the transport of CoAP over TCP and TLS. CoRE is also looking at a data format to represent sensor measurements, which will benefit from the “Concise Binary Object Representation” (CBOR) (RFC 7049), a JSON analog optimised for binary data and low-resource implementations.

The [A Semantic Definition Format for Data and Interaction of Things (asdf) Working Group](https://datatracker.ietf.org/wg/asdf/about/) is developing Semantic Definition Format (SDF) into a standards-track specification for thing interaction and data modelling. In the process of developing this specification, further functional requirements that emerge in the usage of SDF for model harmonization will be addressed.

The [IOT Operations (iotops) Working Group](https://datatracker.ietf.org/wg/iotops/about/) is discussing and documenting operational issues related to IoT devices, in particular related to device onboarding and lifecycle management. This group is also tackling issues related to IoT operational security.

Security aspects of the IoT are being addressed in the following Working Groups:

The [Trusted Execution Environment Provisioning (TEEP) WG](https://datatracker.ietf.org/wg/teep/about/) is working on standardising protocols for provisioning applications into secure areas of computer processors.

The [Software Updates for Internet of Things (SUIT) WG](https://datatracker.ietf.org/wg/suit/about/) is working on mechanisms for securely updating the firmware in IoT devices.

The [Authentication and Authorisation for Constrained Environments (ACE) WG](https://datatracker.ietf.org/wg/ace/about/) is working on a standardised solution for authentication and authorisation to enable authorised access to resources on a device in constrained environments. In such environments, typical for the IoT, the network nodes are limited in CPU, memory and power. This work was supported by the COSE WG that built simplified CBOR analogs for the JSON object signing and encryption methods that were developed in the JOSE WG.

The [DTLS In Constrained Environments (DICE) WG](https://datatracker.ietf.org/wg/dice/about/) focused on supporting the use of DTLS Transport-Layer Security in these environments. Such constrained environments, including constrained devices (e.g. memory, algorithm choices) and constrained networks (e.g. PDU sizes, packet loss), are typical for the IoT, Smart grids, etc.

The [Lightweight Authenticated Key Exchange (LAKE) WG](https://datatracker.ietf.org/wg/lake/about/) is developing a ‘lightweight’ authenticated key exchange (LAKE) that enables forward security. 'Lightweight' refers to:

- resource consumption, measured by number of round-trips to complete, bytes on the wire, wall-clock time to complete, or power consumption
- the amount of new code required on end systems which already have an OSCORE stack

but the LAKE must still provide the security properties expected of IETF protocols, e.g., providing confidentiality protection, integrity protection, and authentication with strong work factor.

While the IoT-oriented IETF working groups have already produced the first wave of mature standards for IoT, new research questions are emerging based on the use of those standards. The IRTF [Thing-to-Thing Research Group (T2TRG)](https://irtf.org/t2trg) was chartered in 2015 to investigate open research issues in IoT, focusing on issues that exhibit standardisation potential at the IETF.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-314-internet-of-things

### 3.1.5 Electronic identification and trust services including e-signatures
**RP:** 
Action 1. SDOs to take ongoing EU policy activities into account in standardisation, e.g. in ISO/IEC JTC 1/SC 27/WG 5 (identity management and privacy technologies) and other working groups of ISO/IEC JTC 1/SC 27. Also, the standards being developed by ISO/IEC JTC1 SC17 including on mobile driving licenses and identity management via mobile devices are particularly relevant to electronic identification. Furthermore, in order to promote the strengths of the European approach to electronic identification and trust services at global level and to foster mutual recognition of electronic identification and trust services with non-EU countries, ESOs should keep European and international standards aligned wherever possible. The promotion and maintenance of related European approaches, which especially take into account data protection considerations, in international standards should be supported. 

Action 2: As required by the revised eIDAS Regulation prepare standards for: 
- a) Interfaces between the European Digital Identity Wallet and trust services as well as services for signing by means of electronic signatures and seals.
- b) Interfaces between the European Digital Identity Wallet and relying parties and issuers of electronic attestations of attributes.
- c) Issuance and revocation of wallets.
- d) Policy and security requirements on providers of electronic attestation of attribute services including issuance and revocation of electronic attestation of attribute.
- e) Security evaluation and certification of the European Digital Identity Wallet.
- f) Policy and security requirements on providers of trust services for electronic ledger.
- g) Policy and security requirements on providers of trust services for electronic archiving.
- h) Update to trusted lists to support new trust services.
- i) Management of trust relating to the EU Digital Identity Wallet.
- j) Supporting additional requirements for identity proofing and validation of attributes.
- k) Adapting existing standards to take into account new provisions and requirements in the revised Regulation including accessibility for persons with disabilities and special needs, alignment with NIS2.
- l) Ensuring that the requirements of privacy by design are met so that compliance with GDPR can be demonstrated.
- m) Next generation of registered electronic mail and electronic delivery to take account of new services and components available under the revised regulation including EU digital identity wallets and electronic ledgers.
- n) Use of electronic identities and electronic signatures with other trust services including electronic ledgers in support of smart contracts.
- o) Support implementation and use of the Trusted Lists, including support for new trust services and other potential used of trust lists for managing the trust infrastructure of the EU Digital Identity Wallet.
- p) Maintain and update the set of standards supporting creation and validation of electronic signatures, seals, certificates, attestations and timestamps and their preservation.

Action 3: SDOs to cooperate and work in the areas of identifiers, vocabularies, semantics, taxonomies, ontologies for electronic attestations, considering work from stakeholders that are already involved in these activities in their respective sectors.

Action 4: The impact of quantum computing technologies on the cryptographic algorithms, in particular public key cryptography, used for electronic identification and trust services including e-signatures needs to be analysed, and the potential impact on the relevant standards identified.  This should lead to guidance on the migration to Quantum Safe Cryptography.

Action 5: SDOs to engage in a collaborative process to address the gaps between existing standards/technical specifications and the requirements of the EUDI Wallet ecosystem. This involves reviewing the initial gap analysis and participating in discussions to agree on the necessary steps for addressing these gaps. Additionally, SDOs are to contribute to identifying key functionalities that need new or updated standards/technical specifications and be involved in their development to support the successful implementation of the EUDI Wallet as outlined in the eIDAS 2 regulations.

Action 6: SDOs to develop technical interoperability mechanisms between wallets released in different regions of the world, such as EUDIW, LACnet. Technical interoperability could set the grounds for the future adoption of political and regulatory decisions that allow, in the long term, for mutual recognition of digital identities with legal effects that would support international trade and commerce and would providing a way to evaluate the trustworthiness of a wallet or an attestation in cross-regional contexts.

#### IETF/IAB input to Rolling Plan

The following IETF Working Groups are active in this area:

The [Secure Patterns for Internet Credentials (spice)](https://datatracker.ietf.org/wg/spice/about/) Working Group is chartered to analyze existing and emerging IETF technologies and address any remaining gaps to facilitate their application in digital credentials and presentations.

The SPICE WG will develop digital credential profiles that support various use cases. The profiles developed by the SPICE WG will enable digital credentials to leverage existing IETF technologies. Privacy by design, confidentiality, and consent will be considered, and implementation guidance will be given for each proposed standard in the program of work.

The [Web Authorization Protocol (oauth)](https://datatracker.ietf.org/wg/oauth/about/) Working Group developed a protocol suite that allows a user to grant a third-party Web site or application access to the user's protected resources, without necessarily revealing their long-term credentials, or even their identity. It also developed security schemes for presenting authorisation tokens to access a protected resource.

The ongoing standardisation effort within the OAUTH working group is focusing on enhancing interoperability of OAUTH deployments.

The [Public Notary Transparency (trans)](https://datatracker.ietf.org/wg/trans/about/) Working Group developed a standards-track specification of the Certificate Transparency protocol (RFC6962) that allows detection of the mis-issuance of certificates issued by CAs or via ad-hoc mapping by maintaining cryptographically verifiable audit logs.

The [Automated Certificate Management Environment (acme)](https://datatracker.ietf.org/wg/acme/about/) Working Group specifies conventions for automated X.509 certificate management, including validation of control over an identifier, certificate issuance, certificate renewal, and certificate revocation. The initial focus of the ACME WG is on domain name certificates (as used by web servers), but other uses of certificates can be considered as work progresses.

The [Supply Chain Integrity, Tranparency, and Trust (scitt)](https://datatracker.ietf.org/wg/scitt/about/) Working Group works to define a set of interoperable building blocks that will allow implementers to build integrity and accountability into software supply chain systems to help assure trustworthy operation. For example, a public computer interface system could report its software composition that can then be compared against known software compositions or certifications for such a device thereby giving confidence that the system is running the software expected and has not been modified, either by attack or accident, in the supply chain.

The [Digital Emblems (diem)](https://datatracker.ietf.org/wg/diem/about/) Working Group is chartered to define an architecture and discovery mechanism enabling digital emblems to be presented and validated across applications and platforms in a cohesive way.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-315-electronic-identification-and-trust-services-including-e-signatures

### 3.1.6 e-Infrastructures for data and computing intensive science and the European Open Science Cloud
Editor's note: No specific work identified in the IETF or IRTF

### 3.1.7 Broadband infrastructure mapping
**RP:** 
Action 1 SDOs to  further develop a standardised methodology and guidelines to assess and map availability and quality of fixed and wireless/mobile broadband services (including coverage, QoS and QoE, key quality indicators - KQI) also in view of the development of VHC (very high-capacity) and 5G services for a range of public and private users including the large industries such as vertical industrial sectors.

#### IETF/IAB input to Rolling Plan

The [Large-Scale Measurement of Broadband Performance (LMAP) Working Group](https://datatracker.ietf.org/wg/lmap/about/) standardised the LMAP measurement system for performance measurements of broadband access devices such as home and enterprise edge routers, personal computers, mobile devices, and set top boxes, whether wired or wireless.

Measuring portions of the Internet on a large scale is essential for accurate characterisations of performance over time and geography, for network diagnostic investigations by providers and their users, and for collecting information to support public policy development. The goal is to have the measurements (made using the same metrics and mechanisms) for a large number of points on the Internet, and to have the results collected and stored in the same form.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-317-broadband-infrastructure-mapping

### 3.1.8 Accessibility of ICT products and services
**RP:** 
Action 1:  SDOs to work on the development and revisions of the harmonised standards and technical reports, as requested by standardisation request Mandate 587.

Action 2: SDOs to produce a technical report describing requirements for ICT products and services to be designed to meet the needs of persons with cognitive and learning disabilities; the report should propose enhancements to relevant existing standards and identify needs for further standardisation such as the development of measurable requirements to address cognitive accessibility to be included in the standards implementing relevant legislation. The report should take into account the latest research in the field of cognitive disabilities and give guidance on which aspects of cognitive disabilities are sufficiently well understood so that support for people with such disabilities can be standardised (and tested) in a technically meaningful way.

Action 3:  SDOs to produce a technical report on the possible accessibility requirements and standardisation needs of ICT products and services that are based on emerging technologies, such as natural language processing, wearables, virtual and augmented reality, AI, as well as biometrics and enhanced ICT security. These technologies must be designed to meet the needs of persons with disabilities, which includes cognitive and learning disabilities. 

Action 4:  SDOs to continue work on the implementation of the methodology developed under M/473, providing that new standardisation deliverables including the European standards comply with the methodology for mainstream accessibility in standardisation processes and the revision of existing standards in line with what it was agreed in the Mandate deliverable 3.1


#### IETF/IAB input to Rolling Plan

Relevant work may be found in the [ART area](https://datatracker.ietf.org/wg#art). For instance [RFC 3551](http://www.rfc-editor.org/rfc/rfc3551.txt) identifies the requirements for SIP to support the hearing impaired and [RFC4103](http://www.rfc-editor.org/rfc/rfc4103.txt) defines the RTP payload for text conversation.

RFCs [4103](http://www.rfc-editor.org/rfc/rfc4103.txt) and [5194](http://www.rfc-editor.org/rfc/rfc5194.txt) are being referenced in various accessibility regulations being proposed in the US ([Section 255/508](http://transition.fcc.gov/Daily_Releases/Daily_Business/2013/db0311/DOC-319386A1.pdf)) and EU (e.g. M376).

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-318-acccessibility-of-ict-products-and-services

### 3.1.9 Artificial Intelligence
**RP:** 
Action 1: SDOs should establish coordinated linkages with, and adequately consider European requirements or expectations from initiatives, including policy initiatives, and organisations contributing to the discourse on AI standardisation. This in particular includes the contents of the AI Act, the standardisation request on AI issued by the European Commission in 2023, its amendment, as well as the orientations set in the 2021 review of the Coordinated Plan.

Action 2: SDOs should further increase their coordination efforts around AI standardisation both in Europe and internationally in order to avoid overlap or unnecessary duplication of efforts and aim to the highest quality to avoid  the creation and use of discriminating algorithms and to ensure a trustworthy and safe deployment of this technology.

Action 3: ESOs should coordinate with the Commission and appropriately direct their activities to ensure that the objectives set in the standardisation request on AI issued in 2023 (and its amendment) are adequately and timely fulfilled. This includes ensuring active participation of representatives from SMEs and civil society organisations in their activities. 

Action 4: SDOs to take into account the cross-sectorial aspects of the AI Act and the interactions between the AI Act and existing or future sectorial safety legislation.

Action 5: EC and ESOs should coordinate to promote mobilisation of stakeholders around AI standardisation activities.

Action 6: Taking into account the gap analysis by EC/JRC, EC/JRC to coordinate with SDOs and other initiatives on a follow-up and ways to address the identified gaps. 


#### IETF/IAB input to Rolling Plan

The IETF [Autonomic Networking Integrated Model and Approach Working Group](https://datatracker.ietf.org/wg/anima/about/) will develop a system of autonomic functions that carry out the intentions of the network operator without the need for detailed low- level management of individual devices. This will be done by providing a secure closed-loop interaction mechanism whereby network elements cooperate directly to satisfy management intent. The working group will develop a control paradigm where network processes coordinate their decisions and automatically translate them into local actions, based on various sources of information including operator-supplied configuration information or from the existing protocols, such as routing protocol, etc.

Autonomic networking refers to the self-managing characteristics (configuration, protection, healing, and optimization) of distributed network elements, adapting to unpredictable changes while hiding intrinsic complexity from operators and users. Autonomic Networking, which often involves closed-loop control, is applicable to the complete network (functions) lifecycle (e.g. installation, commissioning, operating, etc). An autonomic function that works in a distributed way across various network elements is a candidate for protocol design. Such functions should allow central guidance and reporting, and co-existence with non-autonomic methods of management. The general objective of this working group is to enable the progressive introduction of autonomic functions into operational networks, as well as reusable autonomic network infrastructure, in order to reduce operating expenses.

The [AI Preferences (aipref)](https://datatracker.ietf.org/wg/aipref/about/) Working Group will standardize building blocks that allow for the expression of preferences about how content is collected and processed for Artificial Intelligence (AI) model development, deployment, and use. There are many ways that preferences regarding content might be expressed. The Working Group will focus on attaching preferences to content either by including preferences in content metadata or by signaling preferences using the protocol that delivers content.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-319-artificial-intelligence

### 3.1.10 European Global Navigation Satellite System (EGNSS)
Editor's note: No specific work identified in the IETF or IRTF

### 3.1.11 Quantum Technologies
**RP:** 
Action 1:  CEN & CENELEC to continue their standardisation work on the most recent topics for quantum technology that were suggested by the Focus Group on Quantum Technologies and their published standardisation roadmap. 

Action 2: SDOs should develop standards for supply chains for modular quantum computers and communication architectures, and their enabling technologies. Initially the focus should be on QT research infrastructure, evolving towards QT commercial infrastructure

Action 3: The creation of an intelligent Dashboard to support SMEs, in which the existing standards as well the work relating to quantum technologies of the main standardisation bodies are presented. The dashboard will facilitate SMEs to identify relevant open-source projects in the field of Quantum Computing and Communications, e.g. providing tools for testing, benchmarking etc.

Action 4: SDOs to set up processes for eliciting industry standardisation needs, and industry alliances to coordinate their experts' efforts to contribute to standardisation.

Action 5:  SDOs should further increase their coordination efforts in Europe and internationally around Quantum Technologies standardisation in order to to avoid overlap or unnecessary duplication of efforts.

Action 6: SDOs should appropriately consider the effect of quantum computing and Quantum communication technologies on cybersecurity and provide an overview and analyse whether new standards or updates of existing standards on safety, privacy and cybersecurity are required.

Action 7: SDOs should devote specific attention to the standardisation processes (public documents) and existing or future sectorial export control legislation.

Action 8: SDOs should cooperate with the EuroQCI and start forming the technical committees to create the necessary pre-standards/standards for the commercial quantum communication technology in synergy with the specific requirements that are being explored for a certification of the technology.

Action 9: SDOs should cooperate with the EuroHPC Joint Undertaking and start forming the technical committees to create the necessary pre-standards/standards  for quantum computing technology in synergy with the specific requirements that are being explored for a certification of the technology.


#### IETF/IAB input to Rolling Plan

Some IETF protocols rely upon cryptographic mechanisms that are considered secure given today’s “classical computers” but would be vulnerable to attacks by a Cryptographically Relevant Quantum Computer (CRQC). These mechanisms rely upon algorithms based on integer factorization or the discrete logarithm problem. Active work is underway to develop and validate Post-Quantum Cryptography (PQC) mechanisms that are expected to be resilient to the cryptanalysis capabilities of future CRQCs (e.g., CFRG, US NIST). Select IETF WGs (e.g., LAMPS, TLS, IPSECME, COSE) have already begun standardizing revised protocol behaviors. The focus of the [Post-Quantum Use In Protocols Working Group](https://datatracker.ietf.org/wg/pquip/about/) is to support this growing body of work in the IETF to facilitate the evolution of IETF protocols and document associated operational guidance with respect to PQC.

The WG will provide a standing venue to discuss PQC (operational and engineering) transition issues and experiences to date relevant to work in the IETF. The WG will also provide a venue of last resort to discuss PQC-related issues in IETF protocols that have no associated maintenance WGs. This WG will not update existing protocols, specify new protocols, define new cryptographic mechanisms, or assess whether a given cryptographic mechanism is quantum-resistant.

The Internet Research Task Force (IRTF) has hosted the [Quantum Internet Research Group (QIRG)](https://irtf.org/qirg) since the IETF 101 meeting in March 2018. The QIRG has no official membership and participation is open to everybody. The Research Group communicates primarily through its [mailing list](https://www.irtf.org/mailman/listinfo/qirg) which can be freely subscribed and posted to. The entire mailing list archive is [publicly available online](https://mailarchive.ietf.org/arch/browse/qirg/). The QIRG also holds two or three meetings per year, virtually or in-person, usually at the IETF meetings. The scope of the QIRG’s work is defined in its [charter](https://irtf.org/qirg). A key goal of the QIRG is the development of an architectural framework delineating network node roles and definitions that will serve as the first step toward a quantum network architecture. However, it is important to note that the QIRG focuses on fully entanglement-based quantum networks. QKD and trusted repeater networks are also often discussed, but usually in the context of being a stepping stone towards such a full quantum internet. The QIRG, just like all the other IRTF Research Groups, does not work on standards. It is instead focused on developing research collaborations and teamwork in exploring research issues related to the Internet. Nevertheless, the Research Group does also work on producing [technical documents on quantum networks](https://datatracker.ietf.org/rg/qirg/documents/). Currently, the research group is working on two documents:

- [Architectural Principles for a Quantum Internet](https://www.rfc-editor.org/rfc/rfc9340.html) - now published as [RFC9340](https://www.rfc-editor.org/rfc/rfc9340.html).
- [Application Scenarios for the Quantum Internet](https://datatracker.ietf.org/doc/draft-irtf-qirg-quantum-internet-use-cases/).

Since quantum networks are so different when compared to classical networking, the QIRG is also focused on educating the classical networking community on this new subject. In addition to discussions on the mailing list, the QIRG also hosts seminars with speakers from both industry and academia. So far three such seminars have taken place:

- “[Practical Quantum Networking at Room Temperature”](https://www.youtube.com/watch?v=2ELYL71tlD8) by Mehdi Namazi (Qunnect Inc.),
- “[Genuine and Optimized Entanglement-Based Quantum Networks”](https://www.youtube.com/watch?v=j-Ri-RRfUXY) by Wolfgang Dür (University of Innsbruck),
- “[Building Quantum Networks at the Local-Area Scale”](https://www.youtube.com/watch?v=D_Nb43-uicY) by Marc Kaplan (VeriQloud?)

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-3111-quantum-technologies

### 3.1.12 Trusted and secure chips
**RP:**
Action 1:  An overview of existing standards and specifications addressing the trusted and secure chips supply chain and existing gaps

Action 2: Develop technical specifications for verification at device level the trustworthiness of advance chips (<5 nm CMOS process node).

Action 3: Develop technical specifications for Anti-counterfeit (premetive controls) for a) design & verification and b) packaging

Action 4: Develop technical specification for design & verify traceability

#### IETF/IAB input to Rolling Plan
The Trusted Execution Environment (TEE) is a secure area of a processor. The TEE provides security features such as isolated execution and integrity of Trusted Applications, along with provisions for maintaining the confidentiality of their assets. In general terms, the TEE offers an execution space that provides a higher level of security than a "rich" operating system and more functionality than a secure element. For example, implementations of the TEE concept have been developed by ARM and Intel, using the TrustZone and the SGX technology, respectively.

To programmatically install, update, and delete applications in a TEE, he [Trusted Execution Environment Provisioning (teep)](https://datatracker.ietf.org/wg/teep/about/) Working Group is developing the Trusted Execution Environment Provisioning protocol to run between a service within the TEE on a given device, a relay application or service access point on the device's network stack and a server-side infrastructure that interacts with and optionally maintains the applications. Some tasks are security sensitive and the server side requires information about the device characteristics in the form of attestation and the device-side may require information about the server.

The [Supply Chain Integrity, Tranparency, and Trust (scitt)](https://datatracker.ietf.org/wg/scitt/about/) Working Group works to define a set of interoperable building blocks that will allow implementers to build integrity and accountability into software supply chain systems to help assure trustworthy operation. For example, a public computer interface system could report its software composition that can then be compared against known software compositions or certifications for such a device thereby giving confidence that the system is running the software expected and has not been modified, either by attack or accident, in the supply chain.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-3112-trusted-and-secure-chips

### 3.1.13 Internet
**RP:**
Action 1: SDOs, industry, operators, academia, and civil society are encouraged to contribute to the multistakeholder forum for Internet standards deployment referenced in the NIS2 Implementing Regulation, by identifying best available standards, sharing deployment experience, and supporting the timely implementation of secure, interoperable network infrastructures aligned with the Regulation’s legal requirements and broader EU policy goals.

Action 2: SDOs should share insights, roadmaps, technical gaps and interdependencies that can support the EU’s mapping of Future Internet standardisation priorities, particularly for networking protocols and architectural needs for Web 4.0 shaped by AI, extended reality (XR), blockchain, and quantum technologies.

Action 3: SDOs are invited to contribute to the Open Internet Stack by identifying and maintaining open standards for open-source, interoperable digital infrastructure layers as an alternative to proprietary solutions, updating existing protocols to reflect emerging societal and technological needs, and embedding EU policy principles such as privacy, data protection, and transparency. Their engagement is essential in ensuring the interoperability, global usability, and trustworthiness of the Open Internet Stack. and to contribute to the EU’s competitiveness and startup strategies by lowering entry barriers, enabling open and royalty-free innovation, and supporting the development of interoperable digital services that help European innovators scale and compete globally—while fostering greater inclusion of open, values-driven innovation communities in standardisation processes. 

Action 4: SDOs should consider the conclusions of the 2025 Global Multistakeholder High-Level Conference on the Governance of Web 4.0 and Virtual Worlds — as reflected in its outcome document — when developing and prioritising new Internet standards. The conclusions advance shared goals of an open, interoperable, inclusive and resilient future Internet. SDOs are invited to take into account the policy and technical principles and the recommendations outlined in the outcome document, including the creation of multistakeholder governance sandboxes. These elements align with the EU’s broader strategic Internet governance view which highlights the risks of fragmentation, closed ecosystems and conflicting standards frameworks.   

#### IETF/IAB input to Rolling Plan


https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-3113-internet

## 3.2 Societal challenges
### 3.2.1 Digital Health, healthy living and ageing
Editor's note: No specific work identified in the IETF or IRTF

### 3.2.2 Digital skills
Editor's note: No specific work identified in the IETF or IRTF

### 3.2.3 Digital learning
Editor's note: No specific work identified in the IETF or IRTF

### 3.2.4 eGovernment
Editor's note: No specific work identified in the IETF or IRTF

### 3.2.5 eCall
**RP:** 
Action 1: SDOs to develop technical specification and standards for the implementation of eCall in vehicles of categories other than M1 and N1 and for other user types, taking into account requirements included within type-approval regulation and ongoing activities in this area (pilots, the Connecting Europe Facility (CEF), etc).

Action 2: SDOs to lay down physical and operating requirements for aftermarket in-vehicle devices.

Action 3: SDOs to draft guidelines on certification of eCall Systems including aftermarket in-vehicle devices.

Action 4: SDOs to provide conformance and performance tests to the recently developed standards for packet-switched networks (HLAP E-UTRAN — LTE/4G and migration to further generations by use of an IMS sublayer)

Action 5: SDOs to develop conformance and performance tests for recently developed technical specifications / standards for the provision of the eCall service eCall via shared vehicle platforms (C-ITS).

Action 6: SDOs to produce detailed conformity test specifications in support of certification schemes and periodic testing on IVS equipment.

Action 7: SDOs to carry out plugtest interoperability events, taking into account the technological evolution of the system [1].

Action 8: SDOs to collect feedback about the early versions of the standards and their implementation with technical representatives from vendors and implementers.

Action 9: SDOs to collect feedback from the relevant stakeholders on the real operation of the eCall service and when needed improve the standards, including through the European eCall Implementation Platform.

Action 10: SDOs to consider any changes to eCall that may be relevant in a 5G paradigm.

Action 11: In view of technology and networks evolution , SDOs to consider the development of conformance and interoperability test specifications for eCall provided over 4G (using VoLTE) and 5G (and VoNR) networks. When developing these specifications, considered the work done in CEN TS 17240

#### IETF/IAB input to Rolling Plan

The [Emergency Context Resolution with Internet Technologies (ECRIT) Working Group](https://datatracker.ietf.org/wg/ecrit/about/) has developed a general architecture for enabling IP applications to discover and connect to emergency services.

The [Geographic Location/Privacy (GEOPRIV) Working Group](https://datatracker.ietf.org/wg/geopriv/about/) has developed protocols that allow IP networks to inform end devices about their geolocation, a critical pre-requisite for emergency calling.

The application-specific working groups in the IETF (for example, the [Session Initiation Protocol Core (SIPCORE) Working Group](https://datatracker.ietf.org/wg/sipcore/about/)) have developed extensions to support emergency calling as required.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-325-ecall

### 3.2.6 Pandemic preparedness
Editor's note: No specific work identified in the IETF or IRTF

### 3.2.7 Safety, transparency and due process online
Editor's note: No specific work identified in the IETF or IRTF

### 3.2.8 Emergency communications and public warning systems
**RP:** 
Action 1: SDOs to update the existing standards to reflect the conceptual framework of the Directive (EU) 2018/1972, in particular where the concept of 'emergency services' is not consistently used to reflect the 'public safety answering points' or 'emergency communications' (for example ETSI TS 103 479).

Action 2: SDOs to address data protection and privacy requirements (privacy by design) in ongoing standardisation activities concerning emergency communications and processing and transmission of caller location information.

Action 3: SDOs to identify the applicable specifications and standardisation needs for the transmission of handset derived caller location to the most appropriate PSAPs by mobile network operators in both, user plane and control plane modes.

Action 4: SDOs to identify interoperability issues for packet switched emergency communications (e.g: VoLTE) at network and handset level, in particular when using roaming services.

Action 5: SDOs to set requirements, functional architecture, protocol and procedures specification for a Pan European mobile emergency application. Identify standardisation needs for the deployment of emergency applications enhanced with caller location information and accessibility  features for the widest range of users, including end-users living with disabilities.

Action 6: ESOs to elaborate standards on accessibility of emergency communications as arising under the European Accessibility Act.

Action 7: to support the standardization of emergency SMS, in particular to '112', to enable the correct routing while roaming services are used.

Action 8: SDOs to define dictionaries for public warning messages for emergency communication services based on the input of various civil protection agencies.

Action 9: SDOs to identify standardisation needs for the establishment of a Union wide public warning system in line with recital 294 of Directive (EU) 2018/1972.


#### IETF/IAB input to Rolling Plan

The [Emergency Context Resolution with Internet Technologies (ECRIT) Working Group](https://datatracker.ietf.org/wg/ecrit/about/) has developed a general architecture for enabling IP applications to discover and connect to emergency services.

The [Geographic Location/Privacy (GEOPRIV) Working Group](https://datatracker.ietf.org/wg/geopriv/about/) developed protocols that allow IP networks to inform end devices about their geolocation, a critical pre-requisite for emergency calling.

The application-specific working groups in the IETF (for example, the [Session Initiation Protocol Core (SIPCORE) Working Group](https://datatracker.ietf.org/wg/sipcore/about/)) have developed extensions to support emergency calling as required.

The [Secure Telephone Identity Revisited (STIR) WG](https://datatracker.ietf.org/wg/stir/about/) is developing Internet-based mechanisms that allow verification of the calling party's authorisation to use a particular telephone number for an incoming call. The main focus is on the SIP as one of the main VoIP technologies used by parties that want to misrepresent their origin, in this context the telephone number of origin. See, for example, [RFC7375 "Secure telephone identity threat model"](https://datatracker.ietf.org/doc/rfc7375/).

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-328-emergency-communications-and-public-warning-systems

## 3.3 Innovation for the Digital Single Market
### 3.3.1 e-Procurement – Pre and Post award
Editor's note: No specific work identified in the IETF or IRTF

### 3.3.2 e-Invoicing
Editor's note: No specific work identified in the IETF or IRTF

### 3.3.3 Retail Payments
Editor's note: No specific work identified in the IETF or IRTF

### 3.3.4 Preservation of digital cinema
Editor's note: No specific work identified in the IETF or IRTF

### 3.3.5 FinTech and RegTech standardisation
Editor's note: No specific work identified in the IETF or IRTF

### 3.3.6 Blockchain and Distributed Digital Ledger Technologies
**RP:** 
Action 1: The standardisation community should continue analysing possible standardisation gaps and identify solutions to fill them, taking into account also other chapters in the Rolling Plan including actions and references to Blockchain and DLT and their applications. Activities may focus on governance and interoperability, electronic ledgers, organisational frameworks and methodologies, processes and products evaluation schemes, Blockchain and distributed ledger guidelines, smart technologies, objects, distributed computing devices and data services.

Action 2: Continue identifying use cases which are relevant for EU (including EU regulatory requirements like from GDPR, ePrivacy, eIDAS, AMLD, TOOP, etc..) and submit them to relevant standardisation bodies, including CEN & CENELEC and ETSI, and also ISO, ITU

Action 3: Continue identification of actual blockchain/DLT implementations in the EU and assess the need for standardisation, harmonisation and workforce training or adaptation.

Action 4: Standardisation of the operation and reference implementation of permissioned distributed ledgers and distributed applications, with the purpose of creating an open ecosystem of industrial interoperable solutions.

Action 5: Standards Development Organisations active in blockchain/DLT standardisation to liaise and coordinate to take advantage of synergies and maximise resources, including with relevant public and private partnerships

Action 6: ESOs to develop standards in line with the Data Act Regulation, in particular regarding essential requirements for smart-contracts. In addition, it would be recommended to explore a general framework for Governance of the European networks based on DLT to allow the flow of smart contracts between different networks.

Action 7: ESOs when relevant to develop the standards needed for the introduction of Digital Euro (CBDC),  if the European Central Bank (ECB) decides to its issuance, and for digital assets (MiCA Regulation), in particular to ensure interoperability with smart-contracts, legacy systems, etc, linked with either CBDCs or private money. As per Art. 24 of the draft digital euro Regulation proposed by the Commission in June 2023, to ensure conditional payments on digital euro, the ECB may adopt detailed measures, rules and standards that PSPs can use to ensure interoperable conditional digital euro payment transactions. ESOs to liaise with ECB and in particular with the Digital euro scheme rulebook development group to ensure coordination between the standards for conditional payments involving digital euro and other existing or future standards.

Action 8: In the context of the standardisation described in Action 7, ESO to develop standards towards assessing CO2 footprint of different blockchains/DLTs, MiCA, EU Sustainable Finance taxonomy.

Action 9: Standardisation efforts to analyze and if needed, enhance the interoperability and international compatibility of the current and pending EBSI topics and capabilities previously mentioned.

Action 10: ESOs to develop standards in line with the eIDAS2 regulation, in particular regarding essential requirements for electronic ledgers. 


#### IETF/IAB input to Rolling Plan

The [Decentralized Internet Infrastructure Research Group (DINRG)](https://datatracker.ietf.org/rg/dinrg/about/) investigates open research issues in decentralizing infrastructure services such as trust management, identity management, name resolution, resource/asset ownership management, and resource discovery. The focus of DINRG is on infrastructure services that can benefit from decentralization or that are difficult to realize in local, potentially connectivity-constrained networks. Other topics of interest are the investigation of economic drivers and incentives and the development and operation of experimental platforms. DINRG will operate in a technology- and solution-neutral manner, i.e., while the RG has an interest in distributed ledger technologies, it is not limited to specific technologies or implementation aspects.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-336-blockchain-and-distributed-digital-ledger-technologies

### 3.3.7 Web 4.0 and virtual worlds
Editor's note: No specific work identified in the IETF or IRTF

### 3.3.8 Media
Editor's note: No specific work identified in the IETF or IRTF

## 3.4 Sustainable growth
### 3.4.1 Smart grids and Smart Metering
**RP:** 
Action 1: Active involvement and participation of CEN & CENELEC CG-SG experts in the ongoing work of the Smart Grids Task Force, including regarding the activity on interoperability for access to data in a smart grid environment currently performed under the Joint Working Group of ENTSO-E/EU DSO entity, building upon available standards.  This is to prepare the ground for implementing acts on interoperability requirements and transparent and non-discriminatory procedures for access and exchange of data. The respective reports from this latest strand of work, as well as earlier deliverables from other activities of the Task Force are available on the smart grids task force dedicated webpage (CIRCA BC), which is a collaborative platform that gives access to all task-force documents, via the platform library”.

Action 2:  ETSI, CEN & CENELEC and the other relevant SDOs and related organisations (such as DLMS, KNX and others) should combine their efforts to further enrich and extend the SAREF4ENER extension as well as the main SAREF ontology (including interoperability profiles and associated justifications (interoperability cases) from large-scale projects or initiatives like the EU code of conduct on energy management related interoperability of Energy Smart Appliances). The ETSI SAREF portal and the ETSI labs, which was launched recently, could be the tools to be leveraged for this purpose. Security aspects should be investigated. All new additions to the SAREF specifications should be transposed into the OneM2M specifications. A number of European projects could contribute to a larger scale deployment of SAREF-based solutions such as the Operational Digital Platforms under CEF Digital and the deployment of a common European data space in the DIGITAL programme, which is being prepared in Horizon Europe. An EN describing the principles of SAREF, thus avoiding annual updates, which is in under approval by the EU members tates, should be completed. The updates needed to make SAREF fit for digital twins, edge-cloud IoT continuum, AI as well as other recent technological developments should be investigated and developed.

Action 3: CEN & CENELEC, IEEE and OASIS to foster their cooperation to ensure complementary parallel standardisation efforts, to avoid serious conflicts between their respective standardisation deliverables. This action should notably be undertaken in the context of H2-type standards (the interface used for smart grid communication), distributed energy resources and the smart grids architecture model as developed under M/490.

Action 4: ETSI, CEN & CENELEC should include the outcomes and recommendations from the H2020 IoT Large Scale Pilot on Smart Grids and Smart Homes INTERCONNECT into the SAREF4ENER and SAREF4BLDG standards.  All new additions to the SAREF specifications should be transposed into the OneM2M specifications. The principles of SAREFisation should also be included.

Action 5: ETSI, CEN & CENELEC should collaborate with (or participate in) the Horizon Europe projects, which will establish the foundations for a Common European Energy Dataspace, and help identify, develop and standardise a set of common technical specifications for it, as well as the deployment action for the energy data space within the DIGITAL Europe programme. They should also collaborate with an upcoming Horizon Europe project on establishing an interoperable ecosystem in the energy area through creating a set of Minimum Interoperability Mechanisms for the energy sector.  

Action 6: SDOs and related stakeholders and initiatives should work towards cross-sector interoperability, in particular for data exchange between grid, building and mobility domains.

Action 7: SDOs, in particular their grid-oriented, mobility-oriented, DER-oriented and storage-oriented technical committees, should cooperate to develop standards enabling the electric vehicles (with their – on-board or off-board – chargers) to play an active role through demand-response up to offering grid services.

Action 8: SDOs should collaborate with the project(s) ODEON and HEDGE-IoT resulting from call HORIZON-CL5-2023-D3-01-15 “Supporting the green and digital transformation of the energy ecosystem and enhancing its resilience through the development and piloting of AI-IoT Edge-cloud and platform solutions” to modify existing standards or adopt new ones based on the standardisation work and deliverables of the project(s).

Action 9: SDOs should collaborate with the European Commission and its initiatives to develop and standardise a (Generative)-AI-based “digital spine” of the European Energy System, which is incorporating all functionalities of the digital layer of the energy system, enables multiple innovative energy services, has the needed distributed cloud-edge architecture to support the evolving energy system and which is highly resilient, flexible and automated.


#### IETF/IAB input to Rolling Plan

[RFC6272](http://www.rfc-editor.org/rfc/rfc6272.txt) identifies the key infrastructure protocols of the Internet Protocol Suite for use in the Smart Grid. The target audience is those people seeking guidance on how to construct an appropriate Internet Protocol Suite profile for the Smart Grid. In practice, such a profile would consist of selecting what is needed for Smart Grid deployment from the picture presented here.

The [Energy Management (EMAN) WG](https://datatracker.ietf.org/wg/eman/about/) has produced several specifications for an energy management framework, for power/energy monitoring and configuration. See   http://datatracker.ietf.org/wg/eman/documents/ for the details. The framework focuses on energy management for IP-based network equipment (routers, switches, PCs, IP cameras, phones and the like).

Many of the IETF Working Groups listed under section 3.1.4 Internet of Things above are developing standards for embedded devices that may also be applicable to Smart grids.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-341-smart-grids-and-smart-metering

### 3.4.2 Smart and sustainable cities and communities
**RP:** 
Action 1: A Toolbox for Local Digital Twins is being developed with a set of advanced AI-based tools for urban Digital Twin. Concerning Local Digital Twins, the following should be undertaken:
-	ESOs to develop an European standard for a Local Digital Twin reference architecture depicting components and specifications, based on on-going works supported by the EC and EDIC on CitiVerse.

Action 2: Recommendation for the standardisation of the MIMs framework (y.MIMs) is being discussed at ITU-T Study Group 20 dealing with Internet of Things, smart cities and communities, to position MIMs as a global standard that every community can benefit from. There is a need to have a EU standard for the individual technical MIMs:
-	ESOs to develop European standards of MIM key specifications (MIMs 1, 2, and 7) based on on-going works in Living-in.EU technical subgroup and standardisation efforts of the MIM framework at ITU-T (Y.MIM).


#### IETF/IAB input to Rolling Plan

The [Energy Management (EMAN) WG](https://datatracker.ietf.org/wg/eman/about/) has produced several specifications for an energy management framework, for power/energy monitoring and configuration. See http://datatracker.ietf.org/wg/eman/documents/ for the details. The framework focuses on energy management for IP-based network equipment (routers, switches, PCs, IP cameras, phones and the like).

A recently published standards track specification ([RFC7603](https://tools.ietf.org/html/rfc7603)) presents the applicability of the EMAN information model in a variety of scenarios with cases and target devices. These use cases are useful for identifying requirements for the framework and MIBs. Further, it describes the relationship of the EMAN framework to other relevant energy monitoring standards and architectures.

Many of the IETF Working Groups listed under section 3.1.4 Internet of Things above are developing standards for embedded devices that may also be applicable to this section.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-342-smart-and-sustainable-cities-and-communities

### 3.4.3. ICT Environmental Impact
**RP:** 
Action 1: Definition of Global KPIs for Energy Management of Fixed and Mobile access, and Core networks.

Action 2: Guidelines for the use of Global KPIs for Data Centres.

Action 3: Definition of Global KPIs for Data Services.

Action 4: Guidelines for the definition of Green Data Services.

Action 5: Definition and guidelines of KPIs for ICT networks.

Action 6: SDOs to identify needs and develop standards to support UN SDGs, in particular KPI for both synergies and conflicts in Digital transformation and Green transition projects.

Action 7: ETSI, in collaboration with the EGDC, to consider possible paths for ITU L.1480 and L.1333 to be made available for European standardisation to meet EU policy objectives.


#### IETF/IAB input to Rolling Plan

The [Energy Management (EMAN) Working Group](https://datatracker.ietf.org/wg/eman/about/) produced several specifications for an energy management framework, for power/energy monitoring and configuration. See http://datatracker.ietf.org/wg/eman/documents/ for the details. The framework focuses on energy management for IP-based network equipment (routers, switches, PCs, IP cameras, phones and the like).

A standards track specification ([RFC7603](https://tools.ietf.org/html/rfc7603)) presents the applicability of the EMAN information model in a variety of scenarios with cases and target devices. These use cases are useful for identifying requirements for the framework and MIBs. Further, it describes the relationship of the EMAN framework to other relevant energy monitoring standards and architectures.

The EMAN Working Group previously worked on a closely related technology area, but the standards didn’t achieve wide industry adoption, and as illustrated in RFC 9547, the absence of standardized interfaces for measuring, reporting, and managing energy consumption across diverse network setups remains a significant challenge.

The [Getting Ready for Energy Efficient Networking (green)](https://datatracker.ietf.org/wg/green/about/) Working Group will examine the EMAN work to re-use where applicable but also consider updated operator input and requirements over those previously documented in RFC 6988. Similarly, it will examine the framework previously described in RFC 7326.

It will develop new data models, specified in YANG rather than as MIBs.

It is necessary to support heterogeneous deployment where energy-related statistics and management may be provided via other models and mechanisms. Guidance will be provided to operators in these heterogeneous environments to cover the incremental deployment of energy-efficient features in both network devices and the management of energy-efficient networks.

The GREEN Working Group is chartered to explore use cases, derive requirements, and provide solutions for identifying and characterizing energy efficiency metrics, methods related to energy consumption of network devices, and optimizing energy efficiency across the network.

The [Internet Architecture Board](https://www.iab.org/) has recently established the [Environmental Impacts of Internet Technology (E-Impact)](https://datatracker.ietf.org/group/eimpact/about/) program as a venue for discussing environmental impacts and sustainability of Internet technology. Within this scope, the program looks at trends, issues, improvement opportunities, ideas, best practices, and subsequent direction of work related to Internet technology, architecture, and operations, including visibility and efficiency on energy and other environmentally-impacting attributes. In particular, the group focuses on Internet architecture's role in these topics.

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-343-ict-environmental-impact

### 3.4.4. European Electronic Toll Service (EETS)
Editor's note: No specific work identified in the IETF or IRTF

### 3.4.5. Intelligent Transport Systems (ITS) - Cooperative, Connected and Automated Mobility (ITS-CCAM) and Electromobility
Editor's note: No specific work identified in the IETF or IRTF

### 3.4.6 Digitisation of European Industry
Editor's note: No specific work identified in the IETF or IRTF

### 3.4.7. Robotics and autonomous systems
Editor's note: No specific work identified in the IETF or IRTF

### 3.4.8 Construction - Building Information Modelling
Editor's note: No specific work identified in the IETF or IRTF

### 3.4.9 Water Management Digitalisation
Editor's note: No specific work identified in the IETF or IRTF

### 3.4.10 Single European Sky
Editor's note: No specific work identified in the IETF or IRTF

### 3.4.11 U-Space
**RP**:
Action 1: Based on the U-space regulatory framework, and in coordination with the European UAS Standardisation Coordination Group (EUSCG), standardise semantic and technical interoperability specifications to exchange U-space information and operational data:
-	between air navigation service providers, common information service providers and U-space service providers; and
-	between U-space service providers and UAS operators.

Action 2: The following complementary actions could be developed in addition to the standardisation action:
-	Development of a reference implementation of U-space software components to facilitate the adoption of U-space.
-	Development of a testing platform to assess whether the U-space interfaces developed by service providers comply with the standardised specifications.


#### IETF/IAB input to Rolling Plan

The [Drone Remote ID Protocol (drip) WG](https://datatracker.ietf.org/wg/drip/about/) has recently formed in the IETF. Civil Aviation Authorities (CAAs) worldwide have initiated rule making for Unmanned Aircraft Systems (UAS) Remote Identification (RID). CAAs currently promulgate performance-based regulations that do not mandate specific techniques, but rather cite industry-consensus technical standards as acceptable means of compliance. One key standard is ASTM International (formerly the American Society for Testing and Materials) WK65041. This technical specification defines UAS RID message formats, and transmission methods. Network RID defines a set of information for UAS to be made available globally via the Internet. Broadcast RID defines a set of messages for UAS to send locally one-way over Bluetooth or Wi-Fi. WK65041 does not address how to populate/query registries, how to ensure trustworthiness of information, nor how to make the information useful.

DRIP’s goal is to specify how RID can be made trustworthy and available in both Internet and local-only connected scenarios, especially in emergency situations. Some UAS operate in environments where the network or the devices or both are severely constrained in terms of processing, bandwidth (e.g., Bluetooth 4 beacon payload is 25 bytes long), or battery life, and DRIP aims to function in these environments. The specifications produced by the WG will need to balance public safety authorities’ need to know trustworthy information with UAS operators’ and other involved parties’ privacy.

The working group will primarily leverage Internet standards (including HIP, EPP, RDAP, and DNS) and infrastructure as well as domain name registration business models. The WG will track and align with the requirements being developed by regulatory authorities, e.g., the International Civil Aviation Organization the European Union Aviation Safety Agency (EASA) delegated and implementing regulations, and the US Federal Aviation Administration (US FAA).

https://wiki.ietf.org/en/group/iab/Multi-Stake-Holder-Platform#h-3411-u-space

### 3.4.12 Circular economy and sustainability
Editor's note: No specific work identified in the IETF or IRTF

## Document Editing History
2025-08-19: Updated to reflect RP2026 changes from MSP, added updated text on RP Actions, updated references to relevant IETF work including §3.0.1 wimse, §3.1.5 diem, §3.1.9 aipref, §3.4.3 green

2024-08-08: Updated to reflect RP2025 changes from MSP, added updated text on RP Actions, updated references to relevant IETF work including §3.0.2 pquip, §3.0.3 dult, §3.1.2 wimse, §3.1.4 lwig, §3.1.5 spice

2023-09-22: Archived RP2023, updates to reflect RP2024 changes from MSP, added updated text on RP Actions, updated references to relevant IETF work, updated all links from old trac instance to new IETF wiki.

2022-09-21: Archived RP2022, updates to reflect RP2023 changes from MSP, added text on qirg, ohai, ppm, httpapi, and tigress WGs.

2021-09-24: Archived RP2021, updates to reflect RP2022 changes from MSP, added text on asdf, iotops and madinas WGs.

2020-10-02: Revise text on QUIC prior to submission

2020-09-18: Archived RP2020, numerous updates to reflect RP2021 changes

2019-09-10: Minor updates to prepare for RP2020 draft submission deadline

2019-09-03: Archived RP2019, updates to reflect RP2020 changes

2018-09-19: Final updates prior to submission to EC RP 2019

2018-08-27: Archived RP2018, updates to reflect RP2019 changes

2017-09-22: More updates to reflect current IETF/IRTF work

2017-09-20: Update to reflect current IETF and IRTF work, and to include updated text from RP2018 regarding EC perspectives

2017-09-12: Backup RP2017, created template RP2018

2016-08-23: A round of updates to reflect current work

2016-08-08: Changed the structure, moving the materials related to RP2016 to a separate page. Updated with the current draft of the RP 2017

2015-08-27: Updated the document reflecting the draft 2016 Rolling Plan

2014-03-12: Added link to the final document and modified link to point to more accessible MSP pages

2013-08-04: Added reference to Emun WG in section 3.3.2

2013-07-04: Initial layout and first draft descriptions added.

Attachments:
[089_draft_rolling_plan_tfrp055r3_rp.pdf](/089_draft_rolling_plan_tfrp055r3_rp.pdf)
[118_rev_1_rolling_plan_draft_final.pdf](/118_rev_1_rolling_plan_draft_final.pdf)
&nbsp;
