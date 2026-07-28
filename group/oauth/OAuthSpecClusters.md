---
title: OAuth Spec Clusters
description: 
published: true
date: 2026-07-28T09:33:21.249Z
tags: 
editor: markdown
dateCreated: 2026-07-28T09:32:30.263Z
---

> This page is related to an active IETF Working Group.
{.is-success}

# OAuth Spec Clusters

Presented at IETF 126

* [slides](https://datatracker.ietf.org/meeting/126/materials/slides-126-oauth-sessb-clustering-of-oauth-wg-work-00)
* [AI meeting minutes](https://ietfminutes.org/minutes/ietf126/oauth.html)

## Client/Server API

### RFCs
* RFC 6749 (draft-ietf-oauth-v2) — The OAuth 2.0 Authorization Framework
* RFC 6750 (draft-ietf-oauth-v2-bearer) — Bearer Token Usage
* RFC 7636 (draft-ietf-oauth-spop) — Proof Key for Code Exchange by OAuth Public Clients (PKCE)
* RFC 8628 (draft-ietf-oauth-device-flow) — OAuth 2.0 Device Authorization Grant
* RFC 8707 (draft-ietf-oauth-resource-indicators) — Resource Indicators for OAuth 2.0
* RFC 9101 (draft-ietf-oauth-jwsreq) — JWT-Secured Authorization Request (JAR)
* RFC 9126 (draft-ietf-oauth-par) — OAuth 2.0 Pushed Authorization Requests (PAR)
* RFC 9207 (draft-ietf-oauth-iss-auth-resp) — OAuth 2.0 Authorization Server Issuer Identification
* RFC 9396 (draft-ietf-oauth-rar) — OAuth 2.0 Rich Authorization Requests (RAR)
* RFC 9470 (draft-ietf-oauth-step-up-authn-challenge) — OAuth 2.0 Step Up Authentication Challenge Protocol


### Active Drafts
* draft-ietf-oauth-v2-1 — The OAuth 2.1 Authorization Framework
* draft-ietf-oauth-first-party-apps — OAuth 2.0 for First-Party Applications

## Client Identity, Authentication, Registration


### RFCs

* RFC 7521 (draft-ietf-oauth-assertions) — Assertion Framework for OAuth 2.0 Client Authentication and Authorization Grants
* RFC 7522 (draft-ietf-oauth-saml2-bearer) — SAML 2.0 Profile for OAuth 2.0 Client Authentication and Authorization Grants
* RFC 7523 (draft-ietf-oauth-jwt-bearer) — JSON Web Token (JWT) Profile for OAuth 2.0 Client Authentication and Authorization Grants
* RFC 7591 (draft-ietf-oauth-dyn-reg) — OAuth 2.0 Dynamic Client Registration Protocol
* RFC 7592 (draft-ietf-oauth-dyn-reg-management) — OAuth 2.0 Dynamic Client Registration Management Protocol
* RFC 8705 (draft-ietf-oauth-mtls) — OAuth 2.0 Mutual-TLS Client Authentication and Certificate-Bound Access Tokens

### Active Drafts

* draft-ietf-oauth-rfc7523bis — Assertion-Based Authorization Grants
* draft-ietf-oauth-spiffe-client-auth — OAuth SPIFFE Client Authentication
* draft-ietf-oauth-attestation-based-client-auth — OAuth 2.0 Attestation-Based Client Authentication


## Token Formats / Types

### RFCs

* RFC 7519 (draft-ietf-oauth-json-web-token) — JSON Web Token (JWT)
* RFC 7800 (draft-ietf-oauth-proof-of-possession) — Proof-of-Possession Key Semantics for JSON Web Tokens
* RFC 8176 (draft-ietf-oauth-amr-values) — Authentication Method Reference Values
* RFC 9068 (draft-ietf-oauth-access-token-jwt) — JSON Web Token (JWT) Profile for OAuth 2.0 Access Tokens
* RFC 9278 (draft-ietf-oauth-jwk-thumbprint-uri) — JWK Thumbprint URI
* RFC 9901 (draft-ietf-oauth-selective-disclosure-jwt) — Selective Disclosure for JSON Web Tokens (SD-JWT)

### Active Drafts

* draft-ietf-oauth-sd-jwt-vc — SD-JWT-based Verifiable Digital Credentials (SD-JWT VC)


## Token Lifecycle

### RFCs

* RFC 7009 (draft-ietf-oauth-revocation) — OAuth 2.0 Token Revocation
* RFC 7662 (draft-ietf-oauth-introspection) — OAuth 2.0 Token Introspection
* RFC 9701 (draft-ietf-oauth-jwt-introspection-response) — JWT Response for OAuth Token Introspection

### Active Drafts

* draft-ietf-oauth-status-list — Token Status List (TSL)
* draft-ietf-oauth-refresh-token-expiration — OAuth 2.0 Refresh Token and Authorization Expiration


## Security

### RFCs

* RFC 6819 (draft-ietf-oauth-v2-threatmodel) — OAuth 2.0 Threat Model and Security Considerations
* RFC 8252 (draft-ietf-oauth-native-apps) — OAuth 2.0 for Native Apps
* RFC 8725 (draft-ietf-oauth-jwt-bcp) — JSON Web Token Best Current Practices
* RFC 9700 (draft-ietf-oauth-security-topics) — OAuth 2.0 Security Best Current Practices

### Active

* draft-ietf-oauth-cross-device-security — Cross-Device Flows: Security Best Current Practice
* draft-ietf-oauth-browser-based-apps — OAuth 2.0 for Browser-Based Applications
* draft-ietf-oauth-rfc8725bis — JSON Web Token Best Current Practices (update)
* draft-ietf-oauth-security-topics-update — Updates to OAuth 2.0 Security Best Current Practice


## Discovery


### RFCs

* RFC 8414 (draft-ietf-oauth-discovery) — OAuth 2.0 Authorization Server Metadata
* RFC 9728 (draft-ietf-oauth-resource-metadata) — OAuth 2.0 Protected Resource Metadata

### Active

* draft-ietf-oauth-client-id-metadata-document — OAuth Client ID Metadata Document


## Proof of Possession

### RFCs

* RFC 8705 (draft-ietf-oauth-mtls) — OAuth 2.0 Mutual-TLS Client Authentication and Certificate-Bound Access Tokens
* RFC 9449 (draft-ietf-oauth-dpop) — OAuth 2.0 Demonstrating Proof of Possession (DPoP)

### Active Drafts

(none)

## Same-Domain Chaining

### RFCs

* RFC 8693 (draft-ietf-oauth-token-exchange) — OAuth 2.0 Token Exchange

### Active

* draft-ietf-oauth-transaction-tokens — Transaction Tokens


## Cross-Domain Chaining

### RFCs

* RFC 7521 (draft-ietf-oauth-assertions) — Assertion Framework for OAuth 2.0 Client Authentication and Authorization Grants
* RFC 7522 (draft-ietf-oauth-saml2-bearer) — SAML 2.0 Profile for OAuth 2.0 Client Authentication and Authorization Grants
* RFC 7523 (draft-ietf-oauth-jwt-bearer) — JSON Web Token (JWT) Profile for OAuth 2.0 Client Authentication and Authorization Grants

### Active

* draft-ietf-oauth-identity-chaining — OAuth Identity and Authorization Chaining Across Domains
* draft-ietf-oauth-identity-assertion-authz-grant — Identity Assertion JWT Authorization Grant



## Complex Delegation

(TBD)

