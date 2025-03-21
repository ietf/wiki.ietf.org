---
title:  Implementations of draft-ietf-grow-nrtm-v4
description: 
published: true
date: 2025-03-21T12:10:13.781Z
tags: 
editor: markdown
dateCreated: 2025-02-18T16:04:21.194Z
---

# draft-ietf-grow-nrtm-v4 implementations
https://datatracker.ietf.org/doc/draft-ietf-grow-nrtm-v4/

Draft summary: NRTMv4 is a one-way synchronization protocol for Internet Routing Registry (IRR) records.  The protocol allows instances of IRR database servers to mirror IRR records, specified in the Routing Policy Specification Language (RPSL), between each other.

## Implementations

The following versions of IRR software have reported to have implemented [draft-ietf-grow-nrtm-v4-05](http://tools.ietf.org/html/draft-ietf-grow-nrtm-v4). (Future version numbers are expectations and might change)

|**Implementation** |	**Version** |	**Reported by**|
|---|---|---|
|[IRRD](https://github.com/irrdnet/irrd/) |	4.5 (unreleased) | Sasha Romijn |
|RIPE NCC Whois 	| 1.115.1 (released)  | Ed Shryane |
|[nrtm4-validator](https://github.com/mxsasha/nrtm4-validator/) | 0.1.0 (released) | Sasha Romijn
| Deutsche Telekom [nrtm4-client](#) | 0.1.0 (unreleased) | Fedor Vompe
|[nrtm4tools](https://github.com/petchells/nrtm4tools) | unreleased | Paul Etchells

## Implemented Features 

For brevity, Update Notification File is abbreviated as UNF.

The nrtm4-validator is a partial client implementation, as it does not retain any local data. Its purpose is syntax validation for e.g. monitoring. It is not included in the feature tables due to the limited implementation, but does serve use as a check against other implementations.

### Mirror server

| |IRRD | RIPE NCC Whois |
|-|-|-|-|
| published public key MUST be encoded in PEM (3.1) | yes | yes |
| RECOMMENDED that implementations provide easily accessible tools for operators to generate new signing keys ... and assist with key rotation (3.1) | yes | yes |
| configuration options SHOULD be clearly named to indicate that they are private keys (3.1) | yes | yes |
| MUST follow the initialization steps upon the first export ..., or if the server ...  can not reliably produce a continuous set of deltas from a previous state (3.2) | yes | yes |
| (on reinitialization) The mirror server MUST generate a new session ID (3.2) | yes | yes |
| (on reinitialization) server MUST generate a snapshot for version number one (3.2) | yes | yes |
| (on reinitialization) server MUST generate a new UNF with the new session ID, a reference to the new snapshot, and no deltas | yes | yes |
| Changes to IRR objects MUST be recorded in Delta Files (3.3.1) | yes | yes |
| MUST publish a Delta File approximately every minute, if there have been changes ... (3.3.1) | yes | yes |
| If multiple changes have occurred within the time frame that would cancel each other out ... MUST still include all these changes (3.3.1) | yes | yes |
| if lagging in production of Delta Files ... MUST generate one larger "catch up" Delta File (3.3.1) | yes | yes |
| A new Delta File MUST be generated with a new version, one greater than the last Delta File version, or one greater than the last Snapshot File version if there were no prior deltas at all (3.3.1) | yes | yes |
| The Delta File MUST include all changes that happened during the time frame, in the order in which they occurred. (3.3.1) | yes | yes |
| The URL where the Delta File is published MUST contain the session ID and version number ... It MUST also contain a random value that can not be predicted before publication (3.3.1) | yes | yes |
| After generating a new Delta File, a mirror server SHOULD remove all Delta Files older than 24 hours (3.3.1) | yes | yes |
| The UNF MUST be updated to include the new Delta File and update the database version (3.3.1) | yes | yes |
| The mirror server MUST generate a new Snapshot File between once per hour and once per day, if there have been changes to the IRR objects (3.3.2) | yes | yes |
| version number of the new snapshot MUST be equal to the last Delta File version (3.3.2) | yes | yes |
| If there have been no changes to the IRR objects since the last snapshot, the mirror server MUST NOT generate a new snapshot (3.3.2) | ?? | yes |
| URL where the Snapshot File is published MUST contain the session ID and version number ... It MUST also contain a random value that can not be predicted before publication (3.3.2) | yes | yes |
| The UNF MUST be updated to include the new snapshot, if one was generated (3.3.2) | yes | yes |
| SHOULD continue to produce Delta Files during this (snapshot update) window, which means the server MAY publish a Snapshot File with a version number older than the most recent Delta File at the time of publication (3.3.2) | yes/yes | yes |
| UNF must be updated when a new Delta or Snapshot File is published and, even if there have been no changes, at least every 24 hours (3.3.3) | yes | yes |
| MAY have a policy that restricts the publication of certain IRR objects or attributes, or modifies these before publication (3.3.4)  | yes | yes |
| RECOMMENDED to modify objects in such a way that this change is evident to humans reading the object text (3.3.4)  | yes | yes |
| RECOMMENDED to remove password hashes from the auth lines in mntner objects (3.3.4) | yes | yes |
| a policy that restricts or modifies object publication, this MUST be applied consistently to Snapshot Files and Delta Files from the moment the policy is enacted or modified. | yes | yes |
{.dense}


### Mirror client

| |IRRD | RIPE NCC Whois |
|-|-|-|-|
| MUST initialize from a Snapshot File when initially configured or if they are not able to update their local data from the provided Delta Files (4.2) | yes | ?? |
| MUST retrieve the UNF (4.2 and 4.3) | yes | ?? |
| MUST verify that the source attribute in the UNF matches the configured IRR Database name (4.2 and 4.3) | yes | ?? |
| (on reinitialization) MUST retrieve the Snapshot File and load the objects into its local storage (4.2) | yes | ?? |
| (on reinitialization) MUST verify that the hash of the Snapshot File matches the hash in the UNF that referenced it. If ... compressed with GZIP, the hash MUST match the compressed data. In case of a mismatch of this hash, the file MUST be rejected (4.2) | yes/yes/yes | ?? |
| (on reinitialization) MUST record the session_id and version of the loaded Snapshot File (4.2) | yes | ?? |
| MUST verify that the session ID matches the previously known session ID. If this does not match, the client MUST reinitialize from the snapshot (4.3) | yes/yes | ?? |
| MUST verify that the UNF version is the same or higher than the client's current most recent version. If not, the UNF MUST be rejected. It is RECOMMENDED for the client to distinguish between an UNF that is a single version older, and a much older version, in any status messages (4.3) | yes/yes/no | ?? |
| MUST verify that the UNF contains one contiguous set of Delta File versions after the client's current most recent version up to the latest version in the UNF. If ... not contiguous, the UNF MUST be rejected. If the available Delta File versions do not range from the client's most recent version plus one, the client MUST reinitialize from the snapshot (4.3) | yes/yes/yes | ?? |
| MUST verify that the hashes of each Delta and Snapshot File have not changed compared to previous entries seen for the same file type and version. If a newer UNF contains a different hash for a specific file ... client MUST reject the UNF (4.3) | yes/yes | ?? |
| MUST retrieve all Delta Files for versions since the client's last known version (4.3) | yes | ?? |
| MUST verify that the hash of each newly downloaded Delta File matches the hash in the UNF that referenced it. If the Delta File was compressed with GZIP, the hash MUST match the compressed file. In case of a mismatch of this hash, the Delta File MUST be rejected (4.3) | yes/yes/yes | ?? |
| MUST process all changes in the Delta Files in order (4.3) | yes | ?? |
| MUST update its records of the most recent version to the version of the UNF (4.3) | yes | ?? |
| If the UNF or one of the Delta Files is rejected, the mirror client MUST NOT process any newer Deltas than those that are valid and have been successfully verified (4.3) | yes | ?? |
| If some Delta Files are rejected, it MAY process the valid Delta Files, but MUST NOT skip over any rejected Delta Files while doing so (4.3) | no/NA | ?? |
| Every time a mirror client retrieves a new version of the UNF, it MUST verify the included signature (4.4) | yes | ?? |
| The signature MUST be valid for the configured public key for the contents of the UNF (4.4) | yes | ?? |
| If the signature does not match, the mirror client MUST reject the UNF, unless a key rotation is in progress (4.4) | yes | ?? |
| If the generation timestamp is more than 24 hours ago, the file is stale and the mirror client SHOULD warn the operator ... but MAY continue to process it otherwise (4.4) | yes/no (old files are rejected) | ?? |
| MAY have a policy that restricts the processing of objects to certain object classes, or other limitations on which objects it processes .. this MUST be applied consistently to Snapshot Files and Delta Files from the moment the policy is enacted or modified (4.5) | yes/yes | ?? |
{.dense}

### Operational Considerations

| |IRRD | RIPE NCC Whois |
|-|-|-|-|
| A mirror client SHOULD be able to handle unknown object classes and objects that are invalid according to its own validation rules (8.1) | yes | ?? |
| RECOMMENDED for mirror clients to log these cases (8.1) | yes | ?? |
| RECOMMENDED for mirror clients to be flexible where possible and reasonable when applying their own validation rules to IRR objects retrieved from mirror servers (8.1) | yes | ?? |
| (for intermediate instances, if supported) they MUST have separate session IDs. The intermediate server MUST NOT republish the same files it retrieved from the authoritative source with the same session ID (8.2) | yes/yes | ?? |
| implementations MAY also support reading from files on the local filesystem (8.3) | yes | ?? |
| (local files) SHOULD still follow all validation rules, including the validation of the signature and hashes (8.3) | yes | ?? |
| (for key rotation) MUST include this key in the next_signing_key field in any UNF generated while the new signing key is configured (8.4) | yes | ?? |
| MAY offer a method to cause the Notification Update File to be refreshed earlier (8.4)  | no | ?? |
| When mirror clients next retrieve the UNF, they MUST detect the next_signing_key field, and store the key (8.4) | yes | ?? |
| (after rotation) Any UNF generated after this point MUST be signed with this new key, and will not contain a next_signing_key field (8.4) | yes | ?? |
| RECOMMENDED period between publication of the upcoming key in the next_signing_key field, and removal of the old key, is one week (8.4) | N/A, manual operator process | ?? |
| When mirror clients retrieve an UNF and find that the signature does not match, they MUST attempt to verify against a next_signing_key encountered in a previous (valid) file. If the signature matches for this new key, the client MUST update its configuration to use the new key for validation. After this, the client MUST NOT use the old key for validation at any time: a mirror server can not switch back to an old key (8.4) | yes/yes/yes | ?? |
{.dense}

### Security Considerations

| |IRRD | RIPE NCC Whois |
|-|-|-|-|
| The HTTPS endpoint used for NRTMv4 MUST be configured according to the best practices in RFC9325 (9) | N/A, HTTPS configuration by operator in separate frontend proxy | yes |
| Mirror clients MUST NOT use other protocols than HTTPS, such as HTTP or FTP (9) | yes | yes |
{.dense}

## Overview of tested Interoperability

| | IRRD server | RIPE NCC whois server | nrtm4-validator server
|-|:-:|:-:|:-:|:-:|:-:|:-:|
| IRRD client | yes | yes | not implemented |
| RIPE NCC whois client | not implemented | not implemented | not implemented |
| nrtm4-validator client | yes | yes | not implemented |
| nrtm4tools client | untested | yes | not implemented |
{.dense}
