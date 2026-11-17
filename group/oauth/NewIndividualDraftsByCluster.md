---
title: New Individual Drafts by Spec Cluster
description: 
published: true
date: 2026-09-03T01:22:56.607Z
tags: 
editor: markdown
dateCreated: 2026-09-03T01:22:56.607Z
---

# New Individual Drafts by Cluster

See [Spec Clusters](/group/oauth/OAuthSpecClusters)


## Client-to-Server API

* **draft-chen-oauth-rar-agent-extensions** — Extends RAR (RFC 9396) with `intent_request`, `policy_context`, and `lifecycle_binding` parameters to support goal-oriented and context-aware authorization requests.
* **draft-chen-oauth-scope-agent-extensions** — Defines a structured colon-separated scope syntax (`resource_type:action:target:constraints`) for expressing fine-grained permissions in AI agent ecosystems.
* **draft-embesozzi-oauth-agent-native-authorization** — Extends the FiPA first-party apps spec with a structured elicitation metadata format so AI agents and non-browser clients can interoperably handle authorization challenges.
* **draft-fx-oauth-government-content-access-control** — Defines an OAuth 2.1 profile for government authorities to enforce age- and content-based access restrictions using cryptographically verifiable eligibility decisions without disclosing user identity.
* **draft-gerber-oauth-deferred-token-response** — Defines a Deferred Token Response extension for OAuth 2.1 that adds an asynchronous polling mechanism to any grant type when the AS cannot immediately issue a token.
* **draft-hardt-oauth-aauth-protocol** — Defines AAuth, a new agent-to-resource authorization protocol supporting identity-based, resource-managed, PS-asserted, and federated access modes, built on HTTP Message Signatures.
* **draft-jia-oauth-scope-aggregation** — Defines a scope aggregation pattern allowing an AI agent to collect all required scopes across a multi-step workflow and request them in a single authorization procedure.
* **draft-jiang-oauth-intent-admission** — Defines an Intent Admission Assertion (IAA), a signed JWT using RAR that authenticates the intent originator, authorizes the request, and gates consent-required actions before forwarding to execution endpoints.
* **draft-kahrer-oauth-client-challenge-protocol** — Extends the OAuth token endpoint error response with a new error code that prompts the client to supply additional credentials (assertions, VCs, PoP material) mid-flow.
* **draft-liu-oauth-rego-policy** — Defines a `rego_policy` RAR authorization data type enabling clients (especially AI agents) to propose Rego-based behavioral constraint contracts in OAuth flows instead of static scopes.
* **draft-mcguinness-oauth-insufficient-claims** — Defines an `insufficient_claims` OAuth error code and `required_claims` parameter so an AS or RS can signal which claims are missing and prompt the client to re-request with the needed claims.
* **draft-mcguinness-oauth-mission** — Defines a Mission artifact—a human-approved, integrity-bound authorization object submitted via PAR that ties all subsequent token issuance for an agent to a single approved task.
* **draft-mishra-oauth-agent-grants** — Defines DAAP, a comprehensive delegated agent authorization protocol covering DID-based agent identity, JWT grant tokens with agent claims, multi-agent delegation, cascade revocation, and audit trails.
* **draft-parecki-oauth-jwt-dpop-grant** — Defines a new OAuth grant type using a JWT assertion to request a DPoP-bound access token, combining the JWT Bearer grant with proof-of-possession binding.
* **draft-parecki-oauth-jwt-grant-interaction-response** — Extends the JWT Authorization Grant (RFC 7523) so the AS can return a URI for user interaction instead of an immediate token, with polling support for async flows.
* **draft-rosomakho-oauth-txn-challenge** — Defines a transaction authorization challenge mechanism where a protected resource returns a challenge that the client must satisfy at the AS (using RAR) before the operation is approved.
* **draft-zehavi-oauth-native-clients-federation** — Extends the FiPA native authorization endpoint to support federated interactions where the AS can route the native client to a downstream AS or another native app for user interaction.


## Client Identity, Authentication, and Registration

* **draft-dellaert-oauth-approval-based-dcr** — Extends RFC 7591 Dynamic Client Registration with an approval-based flow allowing a user to explicitly approve new client registrations without requiring an Initial Access Token.
* **draft-ekahraman-oauth-attestation-authz-native-app** — Extends OAuth 2.0 to allow native applications to present attestation results about their security characteristics so the AS can tailor its authorization policy accordingly.
* **draft-mcguinness-oauth-ai-agent-instance** — Profiles the Client Instance Assertion for AI agent platforms, defining claims for attested agent instance identity, provenance (model, runtime), and delegation-chain semantics for sub-agents.
* **draft-mcguinness-oauth-client-instance-assertion** — Defines a Client Instance Assertion (signed JWT) for identifying a concrete runtime instance of an OAuth client, registered via a new token endpoint parameter or as a token exchange actor token.
* **draft-skyfire-oauth-using-kyapay-tokens** — Specifies how security intermediaries (bot managers, fraud systems, CIAM) consume KYAPay tokens to validate agent authorization and make access/routing/fraud decisions.
* **draft-yakung-oauth-agent-attestation** — Defines ACAP, a cryptographic credentialing protocol where each agent JWT carries the hash of the originating human instruction, delegation narrows scope and depth, and all events are recorded in a hash-chained audit log.


## Token Formats/Types (JWT, SD-JWT)

* **draft-aap-oauth-profile** — Defines a JWT claim schema and profile for how OAuth 2.0, token exchange, and proof-of-possession should be used together in AI agent-to-API scenarios.
* **draft-aravind-oauth-decision-subject** — Defines a new `dsub` JWT claim to name the party an agent's action is taken upon, for audit legibility purposes.
* **draft-aravind-oauth-operator-of-record** — Registers a new `opr` JWT claim marking whether a human or agent operated a credential presentation, for record integrity purposes.
* **draft-gco-oauth-delegate-sd-jwt** — Extends SD-JWT to support further delegation from a Holder to a Delegate Holder by allowing the Key Binding JWT to itself be an SD-JWT with its own selective disclosure.
* **draft-liu-oauth-authorization-evidence** — Defines a RAR authorization details type for embedding cryptographic evidence of user consent and an audit trail into OAuth 2.0 access tokens.
* **draft-mcguinness-oauth-actor-profile** — Defines a consistent `act` claim profile with `sub_profile` for entity-type classification across JWT grants, access tokens, and transaction tokens, with discovery metadata for AS/RS signaling.
* **draft-mora-oauth-entity-profiles** — Introduces Entity Profiles as structured descriptors (JWT claims and metadata) categorizing OAuth clients and token subjects (user, device, agent, service, etc.) for use across token types and flows.
* **draft-skyfire-oauth-aml-methods** — Defines an `aml` JWT claim and registry of values for declaring which Anti-Money Laundering and Countering Financing of Terrorism methods were applied.
* **draft-skyfire-oauth-amr-values** — Registers additional `amr` (Authentication Methods References) JWT claim values for authentication methods in common use not yet covered by existing registrations.
* **draft-skyfire-oauth-id-verification** — Defines an `ivm` JWT claim and registry of values for declaring how a person's identity was verified (database, digital/physical document, in-person, etc.).
* **draft-skyfire-oauth-kyapay-token** — Defines the KYAPay token format (JWT) carrying agent identity (KYA) and payment (PAY) information for requests made by software agents on behalf of human principals.


## Token Lifecycle

* **draft-chen-oauth-agent-revocation** — Extends RFC 7009 token revocation with agent-level batch revocation, cascade propagation, and conditional revocation for agent networks.
* **draft-parecki-oauth-global-token-revocation** — Defines a Global Token Revocation endpoint enabling security tools or identity providers to instruct an AS to revoke all tokens for a user and require re-authentication.


## Security

* **draft-chen-oauth-agent-authz-use-cases** — Performs a gap analysis of the existing OAuth 2.0 framework against emerging AI agent authorization use cases to identify what new extensions are needed.
* **draft-chen-oauth-roadmap** — Provides an informational categorized roadmap of all OAuth RFCs and active drafts to help implementers navigate the ecosystem.
* **draft-emerson-oauth-user-mediated-delivery** — Proposes user-mediated credential delivery methods that keep authorization decisions in the user's trusted context, separate from the agent's execution environment, to address prompt-injection risks.
* **draft-hardt-oauth-protected-authorization** — Defines browser-level protection for OAuth redirect-based flows using a new `OAuth-Authorization` header that conveys attested origin and delivers the authorization code off the URL.
* **draft-valverde-oauth-pact** — Defines PACT, a comprehensive OAuth 2.1 security profile for privacy-preserving agent delegation composing CIBA, Token Exchange, Ed25519 runtime proofs, capability grants with typed constraints, and risk-graduated consent routing.
* **draft-valverde-oauth-veil** — Defines VEIL, an OAuth 2.1 security profile separating proof claims from identity claims so PII never appears on long-lived tokens, with pairwise subject identifiers and HMAC-protected consent records.
* **draft-vicente-oauth-apm** — Defines the Authorization Posture Mechanism (APM) for per-request re-evaluation of the consistency between client certificate, access token, and device posture, with graduated least-privilege outcomes when posture degrades.


## Discovery

* **draft-mcguinness-oauth-domain-authorized-issuer** — Defines a DNS-based Domain-Authorized Issuer trust method allowing a domain owner to publish which OAuth ASes are authorized to assert identities in that namespace.
* **draft-mcguinness-oauth-resource-token-resp** — Adds a `resource` parameter to OAuth token responses so clients can confirm which resource an issued token is valid for, mitigating resource mix-up attacks.
* **draft-mcguinness-oauth-rfc9728bis** — Updates RFC 9728 Protected Resource Metadata to allow the resource identifier in a WWW-Authenticate challenge to be any URI sharing the same TLS origin with a path prefix, not just an exact match.
* **draft-skokan-oauth-resource-response** — Adds a `resource` parameter to access token responses indicating which resource(s) the token is valid for, extending RFC 8707 Resource Indicators.
* **draft-zehavi-oauth-rar-metadata** — Defines metadata for RAR authorization detail types and standardizes failure signaling and remediation when a resource server rejects a request due to insufficient authorization details.


## Proof of Possession

* **draft-ambekar-oauth-epop** — Defines an enveloped proof-of-possession profile that cryptographically binds authorization codes and tokens to a client key across HTTP and non-HTTP transports.
* **draft-chu-oauth-as-attested-user-cert** — Extends RAR to allow a client to request that the AS include an AS-attested Resource Owner public key certificate in or bound to an access token, so the RS can verify delegated intent.
* **draft-mcguinness-oauth-actor-proofs** — Defines an `actor_proofs` claim providing per-hop signed proof chains in which each actor in a delegation chain signs its own participation and target binding.
* **draft-mcguinness-oauth-token-exchange-cnf** — Defines a `cnf` response parameter for Token Exchange (RFC 8693) responses so clients can confirm sender-constraint binding without inspecting the issued token itself.
* **draft-mw-oauth-tls-session-bound-tokens** — Defines a mechanism binding OAuth access tokens to a specific mTLS connection via a TLS-Exporter-derived proof token, preventing token replay on different connections.
* **draft-richer-oauth-httpsig** — Defines a method for using HTTP Message Signatures to bind OAuth access tokens to client keys, as an alternative to DPoP or mTLS for proof-of-possession.
* **draft-skokan-oauth-additional-hashes** — Adds SHA-512 as an alternative hash algorithm for PKCE, mTLS certificate-bound tokens, and DPoP, for deployments that prohibit SHA-256.


## Same-Domain Chaining

* **draft-araut-oauth-transaction-tokens-for-agents** — Extends Transaction Tokens with an `agentic_ctx` claim to propagate agent context within a trusted domain's call graph for single- and multi-agent flows.
* **draft-araut-oauth-transactiontokens-bcp** — Provides best current practices for deploying Transaction Tokens within a trusted domain, covering token size, propagation, and validation.
* **draft-coetzee-oauth-spt-txn-tokens** — Defines transaction-bound SPT-Txn tokens where authority exists only inside a single short-lived token bound to one declared action, with an offline-verifiable delegation chain that can only narrow authority.
* **draft-li-oauth-delegated-authorization** — Defines a mechanism for a client to create a delegated access token with a subset of its granted privileges to pass to a subordinate application.
* **draft-liu-oauth-chain-delegation** — Defines a `delegation_chain` JWT claim as a structured companion to the `act` claim, capturing per-hop authorization constraints and optional delegator cryptographic confirmation.
* **draft-mcguinness-oauth-actor-receipts** — Defines an `actor_receipts` claim providing a signed per-hop receipt chain that records which issuer added each actor hop and links receipts for prior-hop provenance validation.
* **draft-mw-oauth-actor-chain** — Defines six actor-chain profiles for OAuth Token Exchange governing how delegation paths are preserved, disclosed, and validated across successive hops in multi-service or agentic workflows.
* **draft-ni-oauth-batch-authorization-delegation** — Describes Batch Authorization Delegation allowing a single request to obtain a batch of fine-grained actor-bound permissions that are then delegated to multiple collaborating agents via token exchange.
* **draft-niyikiza-oauth-attenuating-agent-tokens** — Defines Attenuating Authorization Tokens (AATs) where each delegation step can only narrow the permitted tools and argument constraints, with offline verifiability against a root trust anchor.
* **draft-song-oauth-ai-agent-collaborate-authz** — Extends OAuth 2.0 token and message flows to enable a group of collaborating sub-agents to share bounded delegated authorization without repeated AS interactions.


## Cross-Domain Chaining

* **draft-agnihotri-oauth-agent-impl-status** — Reports an open-source implementation of cross-domain identity chaining and transaction tokens, mapping normative sections to source code.
* **draft-liu-oauth-cross-domain-txn-token** — Describes a mechanism for propagating transaction tokens across multiple trust domains using indirect or direct Txn-Token exchange with claims transcription.
* **draft-mcguinness-oauth-id-assertion-framework** — Defines an Identity Assertion Trust Framework with an Authority Delegation Model and a Trust Policy document so a Resource AS can verify that an identity assertion's issuer is authorized for the claimed namespace.
* **draft-moros-oauth-browser-session-handoff** — Defines a profile composing Token Exchange (RFC 8693) with a short-lived code to establish a browser session at a Relying Party from an identity assertion issued by an independent IdP, without front-channel token leakage.
* **draft-skyfire-oauth-kyapay-token-exchange** — Specifies how KYAPay tokens (carrying verified agent and human identity and payment info) can be exchanged for OAuth access tokens to grant agents access to resources across trust boundaries.
* **draft-zhu-oauth-async-delegation** — Defines a Delegation Handle token issued alongside a chained access token that allows the acting client to refresh the chained token after the user has gone offline, without re-prompting or widening privileges.
