---
title: Post-Quantum Cryptography
description: Activity in Post-Quantum Cryptography
published: true
date: 2022-11-29T19:42:54.765Z
tags: 
editor: markdown
dateCreated: 2022-11-14T20:36:35.917Z
---

The IETF is working on addressing the threats to classic cryptography posed by quantum computing.  By design, the IETF does not define new cryptography and focuses on standardizing protocol behavior.

The non-WG mailing list pqc@ietf ([https://www.ietf.org/mailman/listinfo/pqc subscribe] | [https://mailarchive.ietf.org/arch/browse/pqc/ archive]) is a forum in which to discuss this topic in the IETF. 

## Work being discussed
* [https://github.com/rdanyliw/ietf-pqc-transition "PQC Transition WG Proposal"] -- to establish a WG to facilitate the evolution of IETF protocols to support PQC. It would not define or update any protocols.  See [https://mailarchive.ietf.org/arch/msg/pqc/FdsciCPx5lmkkUFtz7D9poObTFY/ thread] on pqc@ietf list
* Side Meetings at IETF 115
 * [https://github.com/rdanyliw/ietf-pqc-trznsition/blob/main/ietf115-pqc-next-steps-side-meeting.md Addition PQC Next Steps] -- Monday, November 7, 2022, 1800-1900 (London time) in Richmond 6.
 * PQC in OpenPG -- Tuesday, November 8, 2022, 1430-1600 (London time) in Mezzanine 12

## Active or recently concluded work
* [https://datatracker.ietf.org/wg/lamps/about/ LAMPS WG]
 * CMS usage of PQC Signature Algorithms: [https://datatracker.ietf.org/doc/draft-ietf-lamps-cms-sphincs-plus/ SPHINCS+]
 * X.509 Algorithm Identifiers: [https://datatracker.ietf.org/doc/draft-ietf-lamps-kyber-certificates/ Kyber] and [https://datatracker.ietf.org/doc/draft-ietf-lamps-dilithium-certificates/ Dilithium]
* [https://datatracker.ietf.org/wg/ipsecme/about/ IPSECME WG]
 * [https://datatracker.ietf.org/doc/rfc8784/ mixing preshared keys in IKEv2]
 * [https://datatracker.ietf.org/doc/draft-ietf-ipsecme-ikev2-intermediate/ intermediate key exchange in IKEv2]
 * [https://datatracker.ietf.org/doc/draft-ietf-ipsecme-ikev2-multiple-ke/ multiple key exchanges for IKEv2]
* [https://datatracker.ietf.org/wg/tls/about/ TLS WG]
 * [https://datatracker.ietf.org/doc/draft-ietf-tls-hybrid-design/ hybrid key exchange in TLS 1.3]
 * [https://datatracker.ietf.org/doc/rfc8773 composite use of X.509 authentication and symmetric pre-shared key for quantum resistance]
* [https://datatracker.ietf.org/wg/cose/about/ COSE WG]
 * [https://datatracker.ietf.org/doc/draft-ietf-cose-post-quantum-signatures/ JOSE and COSE Encodings for PQC Signatures] (i.e., CRYSTALS Dilithium, Falcon, and SPHINCS+)
* [https://datatracker.ietf.org/wg/secdispatch/about SECDISPATCH WG]
 * From IETF 114: find home for [https://datatracker.ietf.org/doc/draft-driscoll-pqt-hybrid-terminology/ Terminology for Post-Quantum Traditional Hybrid Schemes]

## Past Discussions
* [https://github.com/rdanyliw/ietf-pq-maintenance/blob/main/pqm-charter.md Proposed charter text] on a new WG focused on PQ agility
* [https://mailarchive.ietf.org/arch/msg/saag/5uV72m80X9PTGFWFyDY5VrNyK-c/ Thread on the SAAG mailing list] to discuss next steps for PQC agility
* [https://datatracker.ietf.org/meeting/112/materials/slides-112-secdispatch-saag-session-1-update-on-nist-pqc-project-01 Update on NIST PQC Project] presented at IETF 112
* [https://datatracker.ietf.org/meeting/111/materials/slides-111-saag-how-should-the-ietf-approach-post-quantum-security-02 Summary of possible processes to realized PQC agility] presented at IETF 111

## Related community activity outside the IETF
* [https://csrc.nist.gov/projects/post-quantum-cryptography NIST PQC Project]
* NIST CCOE [https://csrc.nist.gov/publications/detail/white-paper/2021/08/04/migration-to-post-quantum-cryptography/final Migration to Post-Quantum Cryptography] project that includes reviewing IETF work for PQC agility

