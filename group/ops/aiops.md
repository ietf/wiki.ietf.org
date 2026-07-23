---
title: AI in OPS
description: Management AD guidance on what AI-driven network operations work is ready for IETF standardization, and what isn't.
published: true
date: 2026-07-23T13:03:09.188Z
tags: 
editor: markdown
dateCreated: 2026-07-10T00:28:18.971Z
---

# AI-Driven Network Operations: Evaluation Guidelines

*Guidance from the Management Area Director on evaluating AI/ML network operations submissions*
*v1.3 · Last updated: 15 July 2026*

> **Side Meeting — IETF 126, Vienna**
> There will be a side meeting on this topic on **Friday, July 24 at 8:00 a.m.** in **Park Suite 4**. Room capacity is limited; attendees are encouraged to join remotely via WebEx: <https://ietf.webex.com/meet/sidemeetings1>
Agenda/Logistics/Notes: <https://notes.ietf.org/notes-ietf-126-sidemeeting-aiops>


**By audience:** [WG Chairs](#for-wg-chairs) &middot; [Draft Authors](#for-draft-authors) &middot; [BoF Organizers](#for-bof-organizers) &middot; [Side Meeting Participants](#for-side-meeting-participants)

## Contents

- [Background](#background)
- [Current Landscape](#current-landscape)
- [Where IETF Can Contribute](#where-ietf-can-contribute)
- [Categories of Work](#categories-of-work)
  - [Use Cases and Requirements](#use-cases-and-requirements)
  - [YANG Data Models](#yang-data-models)
  - [NETCONF/RESTCONF Protocol Extensions](#netconfrestconf-protocol-extensions)
  - [MCP Extensions for Network Management](#mcp-extensions-for-network-management)
  - [Agent-to-Controller and Agent-to-Agent Interfaces](#agent-to-controller-and-agent-to-agent-interfaces)
  - [Operational Security BCP](#operational-security-bcp)
  - [Governance Principles](#governance-principles)
- [Open Questions: AI Agent Lifecycle](#open-questions-ai-agent-lifecycle)
- [What Is Out of Scope](#what-is-out-of-scope)
- [Summary Table](#summary-table)
- [For WG Chairs](#for-wg-chairs)
- [For Draft Authors](#for-draft-authors)
- [For BoF Organizers](#for-bof-organizers)
- [For Side Meeting Participants](#for-side-meeting-participants)
- [Questions and Feedback](#questions-and-feedback)

---

## Background

I am posting this page to share my assessment of the AI-driven network operations space and to provide guidance to working group chairs, draft authors, and the broader community on how I am thinking about this work as the Management AD. The disposition of individual submissions remains a matter for community consensus; this guidance reflects my view on what the IETF is well-positioned to produce and what I will be looking for when evaluating proposals for new work. The focus throughout is network management — how AI agents are configured, governed, and monitored — not AI applied to networking more broadly.

AI and ML techniques are increasingly being applied to network operations: anomaly detection, closed-loop remediation, intent translation, and autonomous device management. The IETF community has responded with a growing number of individual drafts, but these efforts remain disconnected. There is no working group with adopted work items in this space, no agreed set of deliverables, and no clear standards-track path for the work. Without coordination, the community risks producing overlapping informational documents rather than interoperable standards.

The autonomic networking architecture the IETF has already standardized provides directly relevant context. The Autonomic Service Agent (ASA) model, Autonomic Control Plane (ACP), BRSKI, and GRASP (RFC 8990) were designed for autonomous, policy-driven agents operating in network infrastructure. LLM-based AI agents represent a more capable instantiation of that model, not a departure from it. Work in this space should build on this foundation rather than treat AI agents as an entirely new category of management entity.

This page identifies what the IETF is well-positioned to standardize, describes categories of work appropriate for IETF standardization, and flags where community consensus is still forming.

Adoption and disposition of individual submissions are decisions for WG chairs and the working group's rough consensus, not the AD. Where this page describes a decision I will make, it is specifically whether a working group is formed — a decision made in concert with the relevant WG chairs, not unilaterally by the AD. Throughout this page, work items in this space are chartered into the **Proposed New WG**: OPSAWG's and NMOP's current charters do not cover AI agent management for network operations as their own scope, and expanding either to absorb this work is not the proposed path. Coordination with OPSAWG, NMOP, and NETCONF WG remains important wherever their existing YANG models or protocol mechanics are directly reused. This does not preclude NMOP from running complementary, scoped experiments in this space — in the spirit of its NETCONF/YANG-Push-with-Kafka work — for example on closed-loop automation, anomaly detection, or YANG topology/digital-map issues; that is a parallel, coordinated track alongside the Proposed New WG's standards-track deliverables, not an alternative home for them.

## Current Landscape

The following efforts are currently active in the IETF and IRTF in this space:

- [`draft-smith-opsawg-ai-network-governance`](https://datatracker.ietf.org/doc/draft-smith-opsawg-ai-network-governance/) — proposes a governance framework of thirteen principles for AI-mediated autonomous network device management, covering human authority, safety, auditability, reversibility, and bounded autonomy.
- [`draft-zhao-nmop-network-management-agent`](https://datatracker.ietf.org/doc/draft-zhao-nmop-network-management-agent/) — defines a Network Management Agent (NMA) concept using an Intent-Awareness-Analysis-Decision-Execution (IAADE) control loop, with Agent-to-User (A2U), Agent-to-Controller (A2C), and Agent-to-Network (A2N) interfaces. The A2C interface is deferred to future work.
- [`draft-king-rokui-ainetops-usecases`](https://datatracker.ietf.org/doc/draft-king-rokui-ainetops-usecases/) — documents use cases including reactive troubleshooting, proactive assurance, closed-loop optimization, misconfiguration detection, and virtual operator assistance.
- [`draft-irtf-nmrg-ai-challenges`](https://datatracker.ietf.org/doc/draft-irtf-nmrg-ai-challenges/) — identifies IRTF research challenges for coupling AI with network management, including distribution of AI tasks and privacy concerns.
- [`draft-zeng-opsawg-applicability-mcp-a2a`](https://datatracker.ietf.org/doc/draft-zeng-opsawg-applicability-mcp-a2a/) — argues that NETCONF has five architectural gaps for AI-driven operations and proposes MCP and A2A as complementary layers, not replacements for NETCONF.
- [`draft-zeng-opsawg-llm-netconf-gap`](https://datatracker.ietf.org/doc/draft-zeng-opsawg-llm-netconf-gap/) — gap analysis of NETCONF/RESTCONF for LLM-driven intent-based networking, identifying the absence of a YANG-to-JSON-Schema automation pipeline as a blocking gap.
- [`draft-zw-opsawg-mcp-network-mgmt`](https://datatracker.ietf.org/doc/draft-zw-opsawg-mcp-network-mgmt/) — specifies concrete MCP extensions mapping directly onto YANG datastore operations (get, edit-config, commit, rollback) with YANG-module capability advertisement.
- [`draft-irtf-nmrg-llm-nm`](https://datatracker.ietf.org/doc/draft-irtf-nmrg-llm-nm/) — proposes a framework for LLM-assisted network management with a mandatory human-in-the-loop audit step before any AI-generated configuration is deployed.
- [`draft-carpenter-anima-grasp-rendezvous`](https://becarpenter.github.io/grasp-rendezvous/draft-carpenter-anima-grasp-rendezvous.html) — defines two GRASP-based procedures for agent rendezvous: a simple procedure using GRASP M_DISCOVER/M_RESPONSE, and a negotiated procedure using brief GRASP dialogue. The mechanism operates without dependency on DNS or mDNS, making it applicable in network instability scenarios where other discovery mechanisms may fail. Builds on RFC 8990 (GRASP) and the autonomic networking architecture; a prototype implementation exists. Authentication and authorization between rendezvous participants are explicitly deferred to the post-rendezvous protocol.
- [`draft-zhao-nmop-nma-a2u-yang`](https://datatracker.ietf.org/doc/draft-zhao-nmop-nma-a2u-yang/) — YANG model for the Agent-to-User (A2U) interface, covering NMA capability discovery, unified intent submission, task lifecycle management, execution plan exposure, human-in-the-loop confirmation, and consistent error reporting. Developed by the same authors as `draft-zhao-nmop-network-management-agent`; fills the "intent submission" YANG model slot identified in this guidance.
- [`draft-feng-netmod-naim-00`](https://datatracker.ietf.org/doc/draft-feng-netmod-naim/) — proposes NAIM (Natural AI Interface Modeling), a canonical semantic representation format for network models designed to bridge the gap between YANG's machine-readable structures and the semantic framing LLMs need for effective reasoning. Positioned as a layer between YANG and MCP, not a replacement for either.
- [`draft-fu-nmop-agent-communication-framework`](https://datatracker.ietf.org/doc/draft-fu-nmop-agent-communication-framework/) — defines a centralized agent registry system for network AIOps, covering dynamic discovery of deployed AI agents, capability descriptors, and an Agent Name Service component. Based on deployment experience at China Telecom; addresses the agent discovery lifecycle gap.
- [`draft-fu-nmop-tokenops-probelem-statement`](https://datatracker.ietf.org/doc/draft-fu-nmop-tokenops-probelem-statement/) — problem statement for model grounding: how an AI agent is populated with accurate, real-time network context (topology, performance state, policy) before it begins operating. Based on operational deployment experience at China Telecom.

The **AINETOPS non-WG mailing list** ([ainetops@ietf.org](mailto:ainetops@ietf.org)) was established to discuss integration of AI and ML in network operations using IETF technologies.

Two BoFs approved for IETF 126 are directly relevant to work identified on this page:

- The **DAWN BoF** (Discovery of Agents, Workloads, and Named Entities) directly addresses the agent discovery area identified below as a lifecycle gap. With twelve drafts in circulation — covering terminology, problem statement, use cases, requirements, gap analysis, an information model, mDNS-based zero-configuration discovery, DNS-based agent naming, privacy considerations, and IPv6 agent-awareness — DAWN is the primary venue for agent discovery standardization. Its scope is considerably broader than MCP capability advertisement specifically.
- The **AGENTPROTO BoF** (Agent Communication Protocols) addresses end-to-end protocols for agent-to-agent communication. Its drafts propose MoQ (Media over QUIC) as the transport substrate, and include MCP over MoQT, a general agent communication framework (PACE), use cases, and a security principal binding specification. AGENTPROTO's transport approach is not anchored in NETCONF/RESTCONF, which has implications for how OPS area A2A interface work is framed.

Additional individual drafts are being positioned for IETF 126 and were not yet available for inclusion in this landscape summary. These will be assessed against the same categories and criteria during or after the IETF 126 meeting, alongside the drafts listed above.

## Where IETF Can Contribute

The IETF's established strengths lie in defining data models, protocol behavior, and operational guidelines. Applied to AI-driven network operations, this means:

- Standardizing the data models (in YANG or other schema languages) that describe how AI agents are configured, governed, and monitored, giving operators a vendor-neutral basis for AI agent management. Whether those models are served via NETCONF/RESTCONF, MCP, or another interface is a separate design question the community will need to resolve for each category of work.
- Producing operational guidance (including security) as a BCP, so operators deploying AI agents can follow a common baseline regardless of vendor implementation.

The IETF is **not** well-positioned to specify AI algorithms, model architectures, or training methodologies.

## Categories of Work

The following subsections describe categories of work that are well-suited to IETF standardization. Whether any given submission should be adopted, where it should be placed, and on what track it should be published are matters for the WG and community consensus.

### Use Cases and Requirements

A use cases and requirements document is a valuable early work item that scopes and prioritizes normative deliverables. It should not be a standalone endpoint — its value is in grounding subsequent data model and protocol work. [`draft-king-rokui-ainetops-usecases`](https://datatracker.ietf.org/doc/draft-king-rokui-ainetops-usecases/) is an example of current community work in this category.

### YANG Data Models

YANG data models represent a primary category of work appropriate for IETF standardization. The problem space and required data structures are sufficiently well understood to support standards-track YANG work in the following areas:

- **Intent submission (A2U interface).** Operators and peer agents submit intents to the NMA via a structured format carrying a high-level operational goal and associated constraints (latency bounds, cost limits, resource scope). A YANG model for this northbound interface is well within IETF scope.
- **AI agent audit log.** [`draft-smith-opsawg-ai-network-governance`](https://datatracker.ietf.org/doc/draft-smith-opsawg-ai-network-governance/) specifies what an audit trail must contain: action timestamps, triggering anomaly, AI prompts and responses, pre- and post-action state snapshots, outcome, and human approval status. Standardizing this as a YANG model would ensure interoperability across vendors and compatibility with existing operational tooling. The model would also capture the human-in-the-loop workflow: whether a proposed action required human approval, the approver identity, and the approval/rejection timestamp. Audit log retention periods are a local policy decision and are not appropriate for inclusion in the model.
- **AI agent configuration and governance.** The governance parameters from [`draft-smith-opsawg-ai-network-governance`](https://datatracker.ietf.org/doc/draft-smith-opsawg-ai-network-governance/) — Action Registry, Allow/Block Lists, rate limits, protected resource targets, and degradation level thresholds — are all operator-configured state. Standardizing these as a YANG schema gives operators a vendor-neutral basis for AI agent governance. The question of which management interface carries that schema (*CONF, MCP, or other) is separate and should not be prejudged by the data model work itself.
- **AI agent operational state.** The runtime state of an AI agent — degradation level, rate-limit counters, retry counts, escalation state, and execution mode — constitutes operational state operators need to observe. The model would include the current phase of the IAADE loop from [`draft-zhao-nmop-network-management-agent`](https://datatracker.ietf.org/doc/draft-zhao-nmop-network-management-agent/), the active intent being processed, and per-phase inputs, outputs, and exceptions.

### NETCONF/RESTCONF Protocol Extensions

Protocol extensions anchored in existing IETF management protocols are in principle well within IETF scope. However, several proposed extensions in this category are contested, and chairs should be aware of the open questions before adopting work here.

- **Intent-based RPCs.** The controller northbound interface may need to support operations that accept a high-level operational goal rather than specific configuration parameters, and return status on goal fulfillment. This is qualitatively different from the existing NETCONF request-response model and may warrant new RPC definitions.
- **AI attribution metadata.**
  > **Open question.** Some submissions propose a dedicated metadata attribute on `<edit-config>` and RESTCONF PATCH to identify AI-initiated changes. A counterargument is that AI agents, like any other operator, already have unique management-plane identities, and existing *CONF audit mechanisms are sufficient to trace what they did. Adding an AI-specific tag may also create a false sense of security. This is an open question for the community.
- **Session context isolation.**
  > **Open question.** Some submissions propose a new lightweight context identifier for NETCONF sessions to isolate concurrent agent tasks. Private candidates in NETCONF already provide a form of session isolation; whether a new mechanism is warranted, or whether existing facilities are sufficient, is an open question.

### MCP Extensions for Network Management

The Model Context Protocol (MCP) is an AI-facing capability-discovery and invocation interface through which tools, resources, and prompts can be exposed to LLM-based agents. An MCP server may abstract or broker operations implemented using NETCONF, RESTCONF, or other backends — this is an implementation relationship, not a protocol-layer relationship. The network-management semantics come from the underlying YANG models, information models, and tool contracts; MCP exposes those capabilities but does not itself carry the semantics. Three current submissions — [`draft-zeng-opsawg-applicability-mcp-a2a`](https://datatracker.ietf.org/doc/draft-zeng-opsawg-applicability-mcp-a2a/), [`draft-zeng-opsawg-llm-netconf-gap`](https://datatracker.ietf.org/doc/draft-zeng-opsawg-llm-netconf-gap/), [`draft-zw-opsawg-mcp-network-mgmt`](https://datatracker.ietf.org/doc/draft-zw-opsawg-mcp-network-mgmt/) — explore this interface and its relationship to NETCONF and YANG.

- **MCP-to-YANG operation mapping.** Mapping YANG datastores and NETCONF/RESTCONF operations to MCP tool schemas — so that an MCP server exposes operations like get, edit-config, commit, and rollback as JSON-Schema-described tools with consistent parameter names and error codes — is appropriate IETF work.
- **Capability discovery.**
  > **Open question — see DAWN BoF.** Some submissions propose a new YANG module for MCP capability advertisement. A counterargument is that *CONF already has capability discovery mechanisms today — for example, MCP can expose a tool or resource that fetches `ietf-yang-library` directly. Whether additional standardization is needed here, or whether existing mechanisms are sufficient, is an open question being discussed in the DAWN BoF. Chairs should not treat this as settled work.
- **MCP implementation guidance.**
  An OPS document covering how MCP implementors should interface with NETCONF, RESTCONF, YANG-Push, and message brokers — including tool contract design, context window management, and semantic enrichment — is broadly viewed as a valuable near-term deliverable, analogous to how `draft-ietf-nmop-yang-message-broker-integration` provides guidance for message broker deployments. This is broader than the security BCP and should be considered as a separate deliverable, or as an expanded BCP scope.
  > **Open question — YANG semantic gap.** Whether existing YANG models provide sufficient semantic framing for LLMs to reason effectively over network state is actively debated. Community discussion and early deployment experience suggest that raw YANG data may lack the contextual and relational semantics an AI agent needs. [`draft-feng-netmod-naim-00`](https://datatracker.ietf.org/doc/draft-feng-netmod-naim/) (NAIM — Natural AI Interface Modeling) proposes a canonical semantic representation layer between YANG and AI agents; a counterargument is that the Message Broker with YANG schema registry already serves this function for streaming data, preserving schema and semantics without an additional layer. Whether IETF should standardize a semantic enrichment layer — and if so, in what form and venue — is an open question.

### Agent-to-Controller and Agent-to-Agent Interfaces

[`draft-zhao-nmop-network-management-agent`](https://datatracker.ietf.org/doc/draft-zhao-nmop-network-management-agent/) identifies two interfaces that require standardization: the Agent-to-Controller (A2C) interface between the NMA and an existing SDN controller, and peer Agent-to-Agent (A2A) interfaces for multi-agent coordination across heterogeneous deployments.

Interface definitions of this type are appropriate IETF work when expressed using existing IETF management protocols and YANG data models, avoiding the introduction of a new protocol. For the A2A case, such work would typically include: a YANG module for agent capability advertisement *once a management session is already established* (distinct from the pre-session discovery/rendezvous problem covered by DAWN and by the draft below), a mechanism for task delegation and status reporting, and the trust and authorization model governing agent-to-agent interactions.

[`draft-carpenter-anima-grasp-rendezvous`](https://becarpenter.github.io/grasp-rendezvous/draft-carpenter-anima-grasp-rendezvous.html) provides a concrete example of protocol-anchored A2A work in this space: two GRASP-based rendezvous procedures built directly on RFC 8990, with a working prototype. It addresses discovery/bootstrapping, not capability advertisement within an established session — see the cross-reference under [Agent Discovery](#open-questions-ai-agent-lifecycle) for how this relates to DAWN. The draft explicitly scopes out authentication and authorization between rendezvous participants — a gap that is significant for AI agent deployments, where the authorization model governing what one agent can ask another to do carries governance implications beyond those of traditional autonomous agents. Work building on this draft should address that gap, either in scope or by identifying a companion work item.

> **Open question — see AGENTPROTO BoF.** The AGENTPROTO BoF (approved IETF 126) proposes A2A communication protocols built on MoQ (Media over QUIC) rather than NETCONF/RESTCONF. If AGENTPROTO forms a working group, it may define the A2A protocol standard that OPS area management work would reference rather than define independently. Whether network management A2A interfaces require separate treatment in OPSAWG, NMOP, or the Proposed New WG — or whether they are a use case AGENTPROTO would cover — is an open question the side meeting should address.

### Operational Security BCP

The security considerations specific to AI-mediated network management are qualitatively different from traditional management plane access. A BCP document addressing the following concerns is well within IETF scope:

- **Prompt injection** — device-generated telemetry strings included in AI prompts as an attack surface.
- **Credential management** — AI agents require management plane credentials that must not appear in plaintext configuration or AI prompts.
- **Audit trail integrity** — write-ahead logging with integrity protection, forwarded to external aggregators to prevent tampering.
- **Exfiltration risk** — AI agents sending telemetry to external services may inadvertently exfiltrate topology, credential, or customer data.

### Governance Principles

Governance principle documents represent a distinct category appropriate for IETF publication. When a submission defines a well-structured, broadly applicable set of principles for AI-mediated network management — covering human authority, safety, auditability, reversibility, and bounded autonomy — it can provide a stable reference foundation for the normative work in the other categories. Such submissions are strong candidates for Informational publication if the community reaches consensus on their content.

The normative content that implements governance principles — specific configurations, data models, and protocol behaviors — is better expressed in YANG data models than in the principles document itself. [`draft-smith-opsawg-ai-network-governance`](https://datatracker.ietf.org/doc/draft-smith-opsawg-ai-network-governance/) is an example of current community work in this category.

## Open Questions: AI Agent Lifecycle

The community has identified a set of AI agent lifecycle topics not yet well-addressed by current submissions and representing a gap in the existing work:

- **Agent discovery.** How operators discover what AI agents are running in their network, what capabilities they have, and what authority they hold. The **DAWN BoF** (approved IETF 126) is directly addressing this with twelve drafts covering terminology, use cases, requirements, gap analysis, and multiple protocol proposals. Work in this area should be directed to and coordinated with DAWN rather than treated as an unaddressed gap. [`draft-carpenter-anima-grasp-rendezvous`](https://becarpenter.github.io/grasp-rendezvous/draft-carpenter-anima-grasp-rendezvous.html) is itself a discovery mechanism — a GRASP-based alternative to DNS/mDNS for the network-instability case — and should be coordinated with DAWN rather than progressed as a separate, uncoordinated discovery track.
- **Benchmarking.** How the performance of AI agents for network operations tasks is measured and compared across implementations. The IETF BMWG has active work on AI benchmarking that is directly relevant; work in this area should coordinate with and reference that effort.
- **Model grounding.** How an AI agent is initialized with accurate, current knowledge of the specific network it manages — topology, device inventory, policy — before it begins operating. [`draft-fu-nmop-tokenops-probelem-statement`](https://datatracker.ietf.org/doc/draft-fu-nmop-tokenops-probelem-statement/) (China Telecom) addresses this as a problem statement, based on operational deployment experience.
- **Model upgrade and lifecycle management.** How an AI agent's underlying model is updated, rolled back, or replaced without disrupting ongoing network operations, and how the impact of a model change is assessed. RFC 9222 Section 7 addresses upgrade and lifecycle management for autonomous agents and is directly relevant existing work in this area. The residual question is whether LLM-specific scenarios — model version rollback distinct from software upgrades, impact assessment of a model change on network behavior, model grounding preservation across upgrades — introduce considerations beyond RFC 9222's current scope.

## What Is Out of Scope

**AI network architecture documents**
High-level architecture descriptions of how AI fits into network management are better suited to IRTF or IAB documents. IETF work should start from a defined architecture and produce data models and protocol extensions for it, not define the architecture itself. *Note:* the boundary between an architecture document and legitimate protocol or model work is a matter of community judgment. [`draft-zhao-nmop-network-management-agent`](https://datatracker.ietf.org/doc/draft-zhao-nmop-network-management-agent/) has been raised as a case that may straddle this boundary; apply the [evaluation criteria](#for-wg-chairs) when assessing it.

**AI and ML algorithm specification**
Specifying which algorithms to use for anomaly detection, classification, or remediation recommendation is outside IETF scope. YANG data models and protocol extensions in this space are intentionally AI-service-agnostic.

**Standalone gap analyses**
Gap analyses directly coupled to a committed standards-track or BCP work item in the same body of work are in scope. Gap analyses that stand alone — without an associated data model or protocol document — are not strong candidates for adoption as work items.

**External framework alignment guidelines**
Guidelines for aligning IETF YANG data models with TMF, 3GPP, or other external frameworks are outside IETF scope and should be addressed through liaison statements rather than adopted as WG work items.

## Summary Table

Whether any specific submission falls within a given category, and what should happen to it, are matters for community evaluation.

| Category | Track | Key Evaluation Criterion |
|---|---|---|
| Use cases and requirements | Community decision | Scopes normative work; should not stand alone as a work item endpoint |
| YANG data models (intent, audit, governance, operational state) | Standards Track | Vendor-neutral schema for AI agent management; management interface (*CONF, MCP, or other) is a separate design question |
| NETCONF/RESTCONF intent-based RPCs | Standards Track | Accepts high-level operational goals as inputs; qualitatively different from existing NETCONF RPCs |
| NETCONF attribution metadata / session isolation | Contested | Open questions: agents already have unique *CONF identities; private candidates may already provide session isolation |
| MCP-to-YANG operation mapping | Standards Track | Maps YANG datastore operations to MCP tool schemas with consistent parameter names and error codes |
| MCP capability discovery | Contested — see DAWN | Open question: *CONF already has ietf-yang-library; whether additional standardization is needed is under discussion |
| Agent-to-Controller and Agent-to-Agent interfaces | Standards Track | AGENTPROTO BoF may define A2A transport on MoQ rather than *CONF; coordinate before assuming *CONF substrate |
| Operational security BCP | BCP | Normative baseline for operators; not vendor- or algorithm-specific |
| Governance principles | Informational | Broad community consensus on principles; normative specifics expressed in YANG models |
| AI agent lifecycle — discovery | See DAWN BoF | DAWN BoF (IETF 126) is the primary venue; twelve drafts in progress |
| AI agent lifecycle — benchmarking | Gap | Coordinate with BMWG |
| AI agent lifecycle — grounding | Problem statement exists | See draft-fu-nmop-tokenops-probelem-statement (China Telecom); normative work not yet started |
| AI agent lifecycle — upgrade and lifecycle management | Partial — see RFC 9222 §7 | RFC 9222 §7 covers autonomous agent upgrade and lifecycle; residual gap: LLM-specific scenarios (model version rollback, model change impact assessment) |
| Standalone gap analyses | Scoped only | Must be coupled to an associated standards-track or BCP work item in the same body of work |

---

## For WG Chairs

### Evaluating Proposed Work Items

Adoption of individual submissions as work items is a decision for chairs and the working group, not the AD. When evaluating whether to adopt a submission as part of a proposal for the Proposed New WG, I encourage chairs to apply the following criteria — the same criteria I will use when assessing whether the overall WG-formation proposal is ready to bring to IESG:

- Proposed work items should commit to producing specific data models, protocol extensions, or BCP guidance. General architectural descriptions and high-level surveys are more appropriate for IRTF or IAB publications and are not strong candidates for adoption as WG work items.
- Gap analyses are appropriate work items only when directly coupled to a committed standards-track or BCP deliverable in the same body of work. Standalone gap analyses do not advance the standards track and are not strong candidates for adoption.
- A use cases and requirements document is a valuable early work item to scope and prioritize normative deliverables. Whether such a document is published as an RFC or serves as an internal reference is a community decision.
- Proposals for new work should explicitly delineate what is out of scope, in particular AI and ML algorithm specification, which belongs in the IRTF.

These criteria complement the standard threshold questions from [RFC 5434](https://www.rfc-editor.org/rfc/rfc5434):

- Is there a problem that needs solving, and is the IETF the right group to solve it?
- Is there a critical mass of participants willing to write and review drafts?
- Is the scope well-defined — do people agree on what the WG will and will not work on?
- Is there agreement that the specific proposed deliverables are the right set?
- Is there a reasonable probability of completing those deliverables in a timely fashion?
- Are there other forces — open-source projects, industry consortia, other standards bodies — that might address the problem faster or more effectively? The AI space moves quickly enough that this question deserves explicit consideration before committing IETF resources to a given area.

### Handling Contested Areas

Several areas in this space remain actively contested (see the open question callouts in [Categories of Work](#categories-of-work)). When a submission touches a contested area, chairs should:

- Ensure the problem statement explicitly addresses the counterarguments before scheduling adoption calls.
- Consider whether the open question needs to be resolved at a BoF or side meeting before a WG takes it on.
- Not allow the existence of a draft to substitute for community consensus on whether the problem is real.

## For Draft Authors

### Where to Submit

Use the [summary table](#summary-table) to identify which category your work falls in, then target the appropriate venue:

- **YANG data models** (intent, audit, governance, operational state) → Proposed New WG. Start on the [AINETOPS list](mailto:ainetops@ietf.org).
- **Intent-based RPCs** → Proposed New WG; coordinate with NETCONF WG on protocol mechanics.
- **MCP-to-YANG operation mapping** → Proposed New WG; coordinate with NETCONF WG if NETCONF notification semantics are affected.
- **A2C / A2A interfaces** → coordinate first with the AGENTPROTO BoF; if a WG forms there, that is the primary home for A2A protocols. The Proposed New WG is the fallback for management-plane-specific A2C/A2A work tightly coupled to the YANG data model deliverables.
- **Operational security BCP** → Proposed New WG.
- **Governance principles** → Proposed New WG.
- **Lifecycle gaps** (discovery, benchmarking, grounding, upgrade) → emerging area; start on the AINETOPS list and coordinate with BMWG for benchmarking work. A strong candidate for the Proposed New WG once chartered.

### What Makes a Submission a Strong Candidate

- Commits to a specific deliverable: a YANG model, a protocol extension, or a BCP — not a survey or architecture description.
- Builds on or is explicitly paired with a use cases and requirements document.
- Clearly states what the work does *not* do and why those boundaries are appropriate.
- Is not a standalone gap analysis; gap analyses must be coupled to a committed normative work item.

### What to Expect Pushback On

If your work touches any of the following contested areas, come prepared with a clear problem statement that addresses the counterarguments:

- **AI attribution metadata in *CONF** — be ready to explain why existing per-user audit mechanisms are insufficient.
- **Session context isolation** — be ready to explain why NETCONF private candidates do not already solve the problem.
- **YANG module for MCP capability discovery** — be ready to explain why `ietf-yang-library`, accessible via an MCP tool or resource, is not sufficient. Note this is also within scope of the DAWN BoF discussion.
- ***CONF as the management interface for AI agents** — be ready to address whether the industry will use *CONF for agent management, or whether MCP or another interface is more appropriate for your use case.

## For BoF Organizers

### BoF Readiness

If you are considering proposing a BoF in this space, the [RFC 5434](https://www.rfc-editor.org/rfc/rfc5434) questions are the primary lens I will apply when evaluating the proposal. In addition, I will want clear answers to the following before recommending a BoF to IESG:

- **Problem statement.** What is the concrete problem that the Proposed New WG would solve? OPSAWG's, NMOP's, and NETCONF WG's current charters do not cover AI agent management for network operations as their own scope — be ready to explain why expanding one of them is not sufficient, if challenged.
- **Scope boundary.** What will the WG explicitly *not* do? The risk in this space is a broad mandate that produces informational documents rather than interoperable standards. Proposed milestones should be deliverable-specific.
- **Parallel activity.** The AI tooling space (MCP, A2A, open-source agents, cloud provider frameworks) is moving quickly. What is the IETF's unique contribution that the market cannot produce on its own, and on what timescale? DAWN, AGENTPROTO, and BMWG activity may already address parts of the proposed scope — DAWN for agent discovery and capability advertisement, AGENTPROTO for A2A communication protocols.
- **Desired BoF outcome.** A successful BoF produces concrete next steps — proposed milestones, a draft charter, or a clear decision that the work belongs elsewhere — not just a consensus that the topic is interesting.

The [open questions on the AI agent lifecycle](#open-questions-ai-agent-lifecycle) and the contested items in [Categories of Work](#categories-of-work) are the areas most likely to benefit from BoF-level discussion if there is sufficient community interest and critical mass. If you are considering a BoF proposal, I encourage you to reach out to me on the OPSAWG, NMOP, or AINETOPS mailing list before the deadline.

## For Side Meeting Participants

### Structuring the Side Meeting

A BoF is not a required step for WG formation. Together with the chair candidates the meeting identifies, I am prepared to take a proposal for the Proposed New WG directly to IESG — without a BoF — if the IETF 126 side meeting produces clear answers to the questions in Part B below. For that to work, the side meeting must address not just the open technical questions in Part A, but the WG formation questions that a BoF would normally resolve. If those questions are not answered to a level I can bring to IESG, I will state what remains unresolved at the close of the meeting.

#### Part A — Open Technical Questions

These questions need resolution before the scope of any new WG can be meaningfully defined. Brief review of what is settled (YANG data models for intent, audit, and governance; MCP-to-YANG operation mapping; A2C/A2A interfaces; BCP) should take no more than ten minutes. The remaining time in Part A focuses on contested areas:

- **Contested protocol extensions.** Attribution metadata in *CONF: is the problem real, given that agents already have unique management-plane identities? Session isolation: do NETCONF private candidates suffice? For each, the goal is emerging consensus or an explicit statement of what evidence is needed to reach it.
- **Capability discovery.** Is `ietf-yang-library` accessible via an MCP tool or resource sufficient, or is a new YANG module warranted? How does this relate to the DAWN BoF?
- **AI agent lifecycle gaps.** Which of discovery, benchmarking, grounding, and upgrade are ready for IETF work? Which belong in BMWG? Which need more problem statement work before IETF can take them on?

#### Part B — WG Formation Questions

If the side meeting is the trigger for WG formation rather than a precursor to a BoF, the following questions must be addressed to a level that the Management AD can take to IESG. These are the same questions a BoF would answer; bypassing the BoF does not bypass the questions.

- **Problem statement.** Can the room agree on a single, concrete statement of the problem a new WG would solve? It must be specific enough to distinguish from existing WG scope. "AI is important for network operations" is not a problem statement; "there is no working group with adopted work items for AI-driven network operations, no agreed set of deliverables, and no clear standards-track path, and without coordination the community risks producing overlapping informational documents rather than interoperable standards" is closer. The room must reach rough consensus on the statement before proceeding.
- **Critical mass.** Who present — and who on the AINETOPS, OPSAWG, and NMOP mailing lists — is committed to writing drafts, reviewing them, and implementing the resulting standards? A WG that cannot sustain this will be closed. Names and organizations need to be on the record, not just raised hands.
- **Deliverables and milestones.** For each proposed deliverable, the meeting should confirm: What type of document (YANG model, protocol extension, BCP, Informational)? What track? Who is the likely author or authoring team? What is a realistic first-revision milestone? A general mandate ("the WG will work on YANG models for AI agents") is not sufficient; IESG expects specific, completable milestones.
- **Scope boundary.** For each topic the proposed WG would explicitly *not* work on, confirm rough consensus that it is excluded. Defining what is out of scope is as important as what is in. This includes: AI and ML algorithm specification, standalone gap analyses, external framework alignment, and work already covered by the DAWN BoF, the AGENTPROTO BoF, or BMWG.
- **Draft charter text.** Has a first draft of charter text been circulated? If not, the meeting must identify who will write it and by what date. The AD cannot bring an unchartered WG proposal to IESG without text; meeting notes alone are insufficient. Charter text should reflect the problem statement, scope, and deliverables agreed in the meeting.
- **Chair candidates.** Are there one or two individuals willing to serve as WG chairs? The AD needs names before taking a proposal to IESG. Chairs must be willing to shepherd the work, manage the mailing list, and run WG sessions at IETF meetings. This is not a courtesy question — no chair candidates means no WG proposal.
- **Next steps.** Together with the identified chair candidates, I will state at the close of the meeting whether the conditions for a direct Proposed New WG proposal to IESG have been met. If they have, I will take the proposal forward. If not, we will identify what remains unresolved and what the community needs to produce before I can do so.
- **Known objections.** A BoF surfaces opposition publicly; bypassing the BoF does not make objections go away. This includes objections to the premise that OPSAWG's, NMOP's, and NETCONF WG's charters cannot absorb this work — that premise is not given a separate agenda slot, so any pushback on it is captured here rather than pre-empted. The side meeting must identify who has raised concerns, on what grounds, and whether those concerns are addressable or fundamental. The AD will need to account for known objections in the IESG proposal. Unaddressed objections become IESG DISCUSS positions.

#### Preparation and Success Criteria

Participants should review the [BoF Readiness](#for-bof-organizers) section of this page, since Part B of the side meeting covers the same ground.

Success looks different depending on outcome:

- **If forming the Proposed New WG is the outcome:** The meeting ends with an agreed problem statement, a named set of deliverables and milestones, at least one willing chair candidate, and an AD commitment, made jointly with that chair candidate, to bring the proposal to IESG. Draft charter text either exists or has a named author and deadline.
- **If WG formation is deferred to a BoF:** The meeting ends with a clear statement of what needs to be resolved before a BoF is warranted, and concrete actions — draft updates, mailing list threads, coordination with DAWN or BMWG — that move the work toward that threshold.

## Questions and Feedback

This page reflects the current understanding of the AI/ML network operations space and will be updated as community consensus develops. Feedback and questions on specific submissions or proposals are welcome on the mailing lists below.

**OPSAWG mailing list:** [opsawg@ietf.org](mailto:opsawg@ietf.org) — [archive](https://mailarchive.ietf.org/arch/browse/opsawg/)
**NMOP mailing list:** [nmop@ietf.org](mailto:nmop@ietf.org) — [archive](https://mailarchive.ietf.org/arch/browse/nmop/)
**AINETOPS mailing list:** [ainetops@ietf.org](mailto:ainetops@ietf.org) — [archive](https://mailarchive.ietf.org/arch/browse/ainetops/)
