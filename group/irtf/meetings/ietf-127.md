---
title: IRTF Meeting Report for IETF-127
description: IRTF Research Group Meetings at IETF-127 in San Francisco
published: true
date: 2026-11-24T17:52:59.479Z
tags: 
editor: markdown
dateCreated: 2026-11-24T17:47:53.387Z
---

# IRTF Activities at IETF-127

![irtf-ietf127-linkedin.png](/irtf-ietf127-linkedin.png){.align-center}
The [Internet Research Task Force (IRTF)](https://www.irtf.org/) met alongside IETF-127 in San Francisco on 14–20 November 2026. This report covers sessions of 12 research groups, including the inaugural meeting of the new proposed **Networking for AI Research Group (Net4AI)**, the **IRTF Open Meeting (IRTFOPEN)**, and the **ARMOR side meeting**.

The **IRTF Open Meeting** brought the community together around the Applied Networking Research Prize talks by **Mona Wang on WireWatch** and **Protick Bhowmick on RevDNS**, followed by **Mark Handley's invited talk, Big Dumb Networks**, on the architecture of AI training interconnects. These presentations connected research on security, decentralized infrastructure, and large-scale networking with practical deployment challenges.

Net4AI was a notable addition to the week's research program, bringing together work on GPU communication, distributed inference state, and the foundations of agent communication. Across the other groups, recurring questions included how to evaluate AI systems in network operations, how to measure dependencies and interference, and how to connect security and performance research with deployment experience.

## About the IRTF

The IRTF brings researchers, engineers, and operators together to investigate long-term Internet challenges. Its research groups provide continuity between individual papers and presentations: a place to examine assumptions, compare approaches, share implementations, and refine research questions through open discussion. The San Francisco sessions illustrated that role across cryptography, network architecture, measurement, management, access, and the standards process itself.

*Sources: [IETF-127 proceedings](https://datatracker.ietf.org/meeting/127/proceedings), group agendas and presentation materials, [automatically generated minutes](https://ietfminutes.org/minutes/ietf127/index.html), and the [IETF-127 side-meeting schedule](https://sidemeetings.ietf.org/?meeting=127). Automatic minutes may contain errors and are not a record of formal consensus.*

## IRTF Open Meeting — Research prizes and AI infrastructure

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-irtfopen-07) · [All materials](https://datatracker.ietf.org/meeting/127/session/irtfopen) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/irtfopen.html)

The IRTF Open Meeting brought together the IRTF chair's update, two Applied Networking Research Prize presentations, and an invited talk on networking for large AI systems.

**Mona Wang presented WireWatch**, examining the security of proprietary network encryption in Android applications. The work illustrates why encrypted traffic cannot automatically be treated as secure: custom protocols and flawed implementations can expose users even when applications appear to protect their communications.

**Protick Bhowmick presented RevDNS**, a design for reliable, decentralized certificate revocation using DNS. It uses DNSSEC and cached proofs of non-existence to make the common case—checking a certificate that has not been revoked—efficient, while reducing dependence on direct queries to certificate-status services.

**Mark Handley's invited talk, Big Dumb Networks**, described an approach to AI training interconnects that keeps the network fabric comparatively simple and moves path selection, reliability, and rapid failure response toward the endpoints. The talk provided an operational counterpart to Net4AI's research agenda, showing how demanding workloads can motivate a different division of responsibility between hosts and the network.

### Presentation materials

- [Chair Presentation](https://datatracker.ietf.org/meeting/127/materials/slides-127-irtfopen-chair-presentation-02)
- [Mark Handley: Big Dumb Networks](https://datatracker.ietf.org/meeting/127/materials/slides-127-irtfopen-mark-handley-big-dumb-networks-00)
- [Mona Wang: WireWatch](https://datatracker.ietf.org/meeting/127/materials/slides-127-irtfopen-mona-wang-wirewatch-00)
- [Protick Bhowmick: The Case for RevDNS](https://datatracker.ietf.org/meeting/127/materials/slides-127-irtfopen-protick-bhowmick-the-case-for-revdns-00)

### Recordings

[Watch the IRTF Open Meeting](https://youtu.be/kbOUJ0ThfAM)

## Net4AI — A new proposed research group for networking and AI

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-net4ai-03) · [All materials](https://datatracker.ietf.org/meeting/127/session/net4ai) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/net4ai.html)

The new proposed [Networking for AI Research Group (Net4AI)](https://www.irtf.org/net4ai.html) held its inaugural session on Monday, 16 November. Chaired by Antoine Fressancourt and Dirk Kutscher, the group provides a forum for investigating how Internet architecture can support distributed AI systems across organizations and administrative domains. Its research agenda includes transport, caching, naming, agent communication, and security, with an emphasis on experimentation and reproducible results.

The first session connected three levels of this problem: moving data efficiently between accelerators, sharing the state used by inference systems, and giving autonomous agents a common basis for communication.

- **Yang Zhou presented UCCL-Tran and UCCL-Zip.** UCCL-Tran puts transport control in software while retaining direct GPU data movement through network interface hardware. This allows congestion control, path selection, and loss recovery to evolve more quickly. UCCL-Zip reduces transferred data through lossless tensor compression, overlapping compression with transmission. The Internet research questions include operation across paths with unequal delays, reordering, and the balance between compute cost and communication cost.
- **Siddhant Ray presented an Internet for the KV cache.** Large language models can reuse previously computed key-value cache state when input context recurs. The proposal examines when transferring that state is preferable to recomputing it, and what a shared architecture for discovery, placement, and retrieval would require across storage tiers and providers.
- **Lixia Zhang examined a common semantic foundation for networked autonomous systems.** Naming and secure communication alone do not tell agents what an action means or where its authority ends. The presentation explored how shared names and explicitly bounded semantic contexts could support interoperable agent systems.

Together, these contributions establish a concrete starting point for Net4AI: connect architectural questions to working systems, and use implementation experience to identify the research problems that extend beyond a single deployment. Researchers can follow and contribute through the [Net4AI mailing list](https://mailman3.irtf.org/mailman3/lists/net4ai.irtf.org/).

### Presentation materials

- [An Internet for the KV Cache - Siddhant Ray](https://datatracker.ietf.org/meeting/127/materials/slides-127-net4ai-an-internet-for-the-kv-cache-siddhant-ray-00)
- [Chair slides](https://datatracker.ietf.org/meeting/127/materials/slides-127-net4ai-chair-slides-01)
- [Lixia Zhang: Semantic foundations for networked autonomous systems](https://datatracker.ietf.org/meeting/127/materials/slides-127-net4ai-net4ai-semantic-foundation-00)
- [Yang Zhou: The UCCL project — UCCL-Tran and UCCL-Zip](https://datatracker.ietf.org/meeting/127/materials/slides-127-net4ai-the-uccl-project-uccl-zip-and-uccl-tran-yang-zhou-01)

### Recordings

[Video 1](https://youtu.be/PHWrq7YDmmc)

## ARMOR — Protocol resilience against on-path interference

ARMOR explores how Internet endpoints can maintain communication when systems along the network path interfere with it. The technical problem includes packet injection or manipulation, throttling, and forced protocol downgrades, whether caused deliberately or unintentionally. Deep packet inspection and monitoring enter the proposed scope when they enable such interference. [Proposed scope](https://github.com/grittygrease/armor-charter).

The research direction connects measurement with mechanisms that applications can use to respond:

- **Detection and adaptation:** networking libraries and APIs that help applications recognize interference and change communication strategies.
- **Resilient communication:** experimental evaluation of overlay routing, multiple paths, tunneling, traffic obfuscation, and protocol variation, including deployment studies involving mechanisms such as ECH and MASQUE.
- **Reproducible evaluation:** testbeds, tools, and datasets that reproduce interference and compare countermeasures, including their consequences for users and any new security risks they introduce.

The aim is to turn observations of interference into evaluated protocol and deployment techniques. Proposed initial outputs include terminology and threat models, a catalog of datasets and testbeds, and a study of deployment barriers. [Draft charter](https://github.com/grittygrease/armor-charter/blob/main/charter.md).

Nick Sullivan and Mallory Knodel organized the side meeting on Wednesday, 18 November, to discuss the charter and its relationship to existing research groups, with the objective of developing a proposal for the IRTF Chair. ARMOR remains a proposed effort; the meeting did not itself establish a research group. [Meeting announcement](https://mailarchive.ietf.org/arch/msg/armor/EnZEHPQe8XV-693tT4mZuObqWh8/) · [Presentation material](https://github.com/grittygrease/armor-charter) · [Mailing-list discussion](https://mailarchive.ietf.org/arch/browse/armor/).

## Covered meetings

| Group | Agenda | Recordings | Automatic minutes |
|---|---|---|---|
| [IRTFOPEN](https://datatracker.ietf.org/meeting/127/session/irtfopen) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-irtfopen-07) | [Video 1](https://youtu.be/kbOUJ0ThfAM) | [Minutes](https://ietfminutes.org/minutes/ietf127/irtfopen.html) |
| [NET4AI](https://datatracker.ietf.org/meeting/127/session/net4ai) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-net4ai-03) | [Video 1](https://youtu.be/PHWrq7YDmmc) | [Minutes](https://ietfminutes.org/minutes/ietf127/net4ai.html) |
| [CFRG](https://datatracker.ietf.org/meeting/127/session/cfrg) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-cfrg-03) | [Video 1](https://youtu.be/iTWBbrWMR3w) · [Video 2](https://youtu.be/7gEnaP9Yn4g) | [Minutes](https://ietfminutes.org/minutes/ietf127/cfrg.html) |
| [DINRG](https://datatracker.ietf.org/meeting/127/session/dinrg) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-dinrg-03) | [Video 1](https://youtu.be/MnrA2-3davw) | [Minutes](https://ietfminutes.org/minutes/ietf127/dinrg.html) |
| [GAIA](https://datatracker.ietf.org/meeting/127/session/gaia) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-gaia-00) | [Video 1](https://youtu.be/7rIa0XlXToE) | [Minutes](https://ietfminutes.org/minutes/ietf127/gaia.html) |
| [HRPC](https://datatracker.ietf.org/meeting/127/session/hrpc) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-hrpc-01) | [Video 1](https://youtu.be/BLOv9sGyGac) | [Minutes](https://ietfminutes.org/minutes/ietf127/hrpc.html) |
| [ICCRG](https://datatracker.ietf.org/meeting/127/session/iccrg) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-iccrg-01) | [Video 1](https://youtu.be/rEm8PiKBISk) | [Minutes](https://ietfminutes.org/minutes/ietf127/iccrg.html) |
| [ICNRG](https://datatracker.ietf.org/meeting/127/session/icnrg) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-icnrg-05) | [Video 1](https://youtu.be/KRpdIMd4lZg) | [Minutes](https://ietfminutes.org/minutes/ietf127/icnrg.html) |
| [MAPRG](https://datatracker.ietf.org/meeting/127/session/maprg) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-maprg-09) | [Video 1](https://youtu.be/sFl3Y2CiNB8) | [Minutes](https://ietfminutes.org/minutes/ietf127/maprg.html) |
| [NMRG](https://datatracker.ietf.org/meeting/127/session/nmrg) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-nmrg-00) | [Video 1](https://youtu.be/dSNmrhK2460) · [Video 2](https://youtu.be/7UFRdxKkg0g) | [Minutes](https://ietfminutes.org/minutes/ietf127/nmrg.html) |
| [PANRG](https://datatracker.ietf.org/meeting/127/session/panrg) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-panrg-01) | [Video 1](https://youtu.be/AOew63xCPR8) | [Minutes](https://ietfminutes.org/minutes/ietf127/panrg.html) |
| [RASPRG](https://datatracker.ietf.org/meeting/127/session/rasprg) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-rasprg-02) | [Video 1](https://youtu.be/uyJCrp0SlI4) | [Minutes](https://ietfminutes.org/minutes/ietf127/rasprg.html) |
| [UFMRG](https://datatracker.ietf.org/meeting/127/session/ufmrg) | [Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-ufmrg-02) | [Video 1](https://youtu.be/0IGyCGou1tk) | [Minutes](https://ietfminutes.org/minutes/ietf127/ufmrg.html) |

## CFRG — Crypto Forum

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-cfrg-03) · [All materials](https://datatracker.ietf.org/meeting/127/session/cfrg) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/cfrg.html)

CFRG's two sessions brought together work on zero-knowledge proofs, post-quantum cryptography, and the security properties needed by applications using credentials and authentication protocols.

The first session covered Sigma protocols and the Fiat-Shamir transformation, updates to Longfellow, and proofs of possession for ECDSA device binding. A recurring concern was how to translate mathematical constructions into specifications with unambiguous encodings, sound proofs, and practical implementations. The discussion of Longfellow also connected performance improvements with formal verification.

The second session covered post-quantum password-authenticated key exchange, blind signatures and anonymous credentials, hybrid signatures with strong unforgeability, and Keccak-based authenticated encryption. These topics expose different aspects of the transition to post-quantum systems: preserving privacy, combining algorithms safely, and making implementations usable in existing applications. The uploaded material also includes a discussion of how to organize zero-knowledge work within the IETF community.

### Presentation materials

- [A widely-adoptable version of CPaceOQUAKE+](https://datatracker.ietf.org/meeting/127/materials/slides-127-cfrg-sessa-a-widely-adoptable-version-of-cpaceoquake-00)
- [Chairs' slides (Thursday)](https://datatracker.ietf.org/meeting/127/materials/slides-127-cfrg-sessa-chairs-slides-00)
- [Chairs' slides (Wednesday)](https://datatracker.ietf.org/meeting/127/materials/slides-127-cfrg-sessb-chairs-slides-00)
- [Hybrid Digital Signatures with Strong Unforgeability](https://datatracker.ietf.org/meeting/127/materials/slides-127-cfrg-sessa-hybrid-digital-signatures-with-strong-unforgeability-00)
- [Keccak-based authenticated encryption](https://datatracker.ietf.org/meeting/127/materials/slides-127-cfrg-sessa-keccak-based-authenticated-encryption-00)
- [Longfellow ZK](https://datatracker.ietf.org/meeting/127/materials/slides-127-cfrg-sessb-longfellow-zk-00)
- [PQ blind signatures and anonymous credentials](https://datatracker.ietf.org/meeting/127/materials/slides-127-cfrg-sessa-pq-blind-signatures-and-anonymous-credentials-01)
- [Schnorr-Type Proofs of Possession for ECDSA Device Binding](https://datatracker.ietf.org/meeting/127/materials/slides-127-cfrg-sessb-schnorr-type-proofs-of-possession-for-ecdsa-device-binding-00)
- [Sigma protocols and Fiat-Shamir](https://datatracker.ietf.org/meeting/127/materials/slides-127-cfrg-sessb-sigma-protocols-and-fiat-shamir-04)
- [Zero-knowledge at IETF](https://datatracker.ietf.org/meeting/127/materials/slides-127-cfrg-sessa-zero-knowledge-at-ietf-00)

### Recordings

[Video 1](https://youtu.be/iTWBbrWMR3w) · [Video 2](https://youtu.be/7gEnaP9Yn4g)

## DINRG — Decentralization of the Internet Research Group

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-dinrg-03) · [All materials](https://datatracker.ietf.org/meeting/127/session/dinrg) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/dinrg.html)

DINRG examined how protocol deployments and application architectures affect concentration of control over the Internet. Two presentations considered Encrypted Client Hello (ECH): one explored centralization and the privileged visibility of front-end operators, while the other used active probing to discover deployments that are not necessarily visible through advertised DNS configurations.

A presentation on passkeys examined dependencies on platform providers and the tension between widespread adoption and user portability. The Ownly experience offered a complementary perspective, exploring decentralized collaborative applications built around end-to-end principles. The session also included analysis of early attestation in confidential computing.

The discussion connected these examples to a broader research question: how should decentralization be evaluated in operational systems, where an interoperable protocol can still produce concentrated dependencies? The automatic minutes also record interest in examining major service outages as evidence of those dependencies.

### Presentation materials

- [Architecting Decentralized End-to-End Applications: Reinstalling End-to-End Principles](https://datatracker.ietf.org/meeting/127/materials/slides-127-dinrg-architecting-decentralized-end-to-end-applications-reinstalling-end-to-end-principles-00)
- [Chairs Opening](https://datatracker.ietf.org/meeting/127/materials/slides-127-dinrg-chairs-opening-00)
- [Discovering Encrypted Client Hello Deployments by Active ECH Probing](https://datatracker.ietf.org/meeting/127/materials/slides-127-dinrg-discovering-encrypted-client-hello-deployments-by-active-ech-probing-00)
- [EarlyAttestationBleed and EarlyAttestationTschüss](https://datatracker.ietf.org/meeting/127/materials/slides-127-dinrg-earlyattestationbleed-and-earlyattestationtschuss-00)
- [ECH at Scale: Centralization and Privileged Linkability](https://datatracker.ietf.org/meeting/127/materials/slides-127-dinrg-ech-at-scale-centralization-and-privileged-linkability-00)
- [The Platform Dependencies of Passkeys: Catalyst or Compromise?](https://datatracker.ietf.org/meeting/127/materials/slides-127-dinrg-the-platform-dependencies-of-passkeys-catalyst-or-compromise-00)

### Recordings

[Video 1](https://youtu.be/MnrA2-3davw)

## GAIA — Global Access to the Internet for All

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-gaia-00) · [All materials](https://datatracker.ietf.org/meeting/127/session/gaia) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/gaia.html)

GAIA connected research on Internet access with practical deployment and measurement tools. The Agumbe community-network presentation described bringing connectivity to a difficult rainforest environment in Karnataka, India, including the challenges of terrain, power, and ongoing operation.

Other presentations examined adaptive techniques for detecting fine-grained Internet outages and open-source tools that expose terrain, land-cover, and population data for network planning. Both address the need to understand connectivity at a scale that is useful to local communities, rather than relying only on aggregate national or regional indicators.

The session also explored libp2p and AGNTCY as building blocks for distributed agents, alongside methods for measuring resilience in permissionless networks. These contributions linked universal access with a wider question: how can applications continue to function when connectivity is intermittent, paths are constrained, or infrastructure is not centrally controlled?

### Presentation materials

- [Connecting Agumbe: The Malgudi Days Town of India](https://datatracker.ietf.org/meeting/127/materials/slides-127-gaia-connecting-agumbe-the-malgudi-days-town-of-india-00)
- [libp2p × AGNTCY: Networking the Internet of Agents](https://datatracker.ietf.org/meeting/127/materials/slides-127-gaia-libp2p-agntcy-networking-the-internet-of-agents-00)
- [Measuring Resilience in Permissionless Networks: From libp2p Connectivity to Universal Connectivity](https://datatracker.ietf.org/meeting/127/materials/slides-127-gaia-measuring-resilience-in-permissionless-networks-from-libp2p-connectivity-to-universal-connectivity-00)
- [On Efficiently Detecting Fine-Grained Residential Internet Outages](https://datatracker.ietf.org/meeting/127/materials/slides-127-gaia-on-efficiently-detecting-fine-grained-residential-internet-outages-00)
- [Open Source Tools for Mapping Connectivity, Land Cover, and Population](https://datatracker.ietf.org/meeting/127/materials/slides-127-gaia-open-source-tools-for-mapping-connectivity-land-cover-and-population-00)
- [Session Slides](https://datatracker.ietf.org/meeting/127/materials/slides-127-gaia-session-slides-01)

### Recordings

[Video 1](https://youtu.be/7rIa0XlXToE)

## HRPC — Human Rights Protocol Considerations

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-hrpc-01) · [All materials](https://datatracker.ietf.org/meeting/127/session/hrpc) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/hrpc.html)

HRPC focused on the people affected by network design and on the methods needed to study those effects. Presentations explored human-centered networking research, the role of measurement and archival evidence in documenting interference, and middleboxes whose effects extend beyond the jurisdictions in which filtering is expected.

Research on hidden-device detectors examined the relationship between usability and safety for people at risk of surveillance. The session also discussed the association draft and guidance intended to help civil-society organizations contribute to IETF work.

Across these topics, the research challenge is to connect technical observations with their consequences for users. Throughput, reachability, and protocol correctness remain important, but they do not by themselves describe whether a system supports participation, protects vulnerable people, or creates unintended barriers. This work also provides relevant context for the ARMOR proposal's focus on interference and resilience.

### Presentation materials

- [Archiving the Internet: the importance of network measurement for human rights](https://datatracker.ietf.org/meeting/127/materials/slides-127-hrpc-archiving-the-internet-the-importance-of-network-measurement-for-human-rights-00)
- [Chair's Welcome Slides](https://datatracker.ietf.org/meeting/127/materials/slides-127-hrpc-chairs-welcome-slides-01)
- [Guidance For Civil Society On Informing IETF Work](https://datatracker.ietf.org/meeting/127/materials/slides-127-hrpc-guidance-for-civil-society-on-informing-ietf-work-00)
- [Middlebox in the Middle: Non-Domestic Network Interference](https://datatracker.ietf.org/meeting/127/materials/slides-127-hrpc-middlebox-in-the-middle-non-domestic-network-interference-00)
- [Unveiling and Engaging with the Humans of Networking Research](https://datatracker.ietf.org/meeting/127/materials/slides-127-hrpc-unveiling-and-engaging-with-the-humans-of-networking-research-00)
- [Usability of Commercial Hidden Device Detectors](https://datatracker.ietf.org/meeting/127/materials/slides-127-hrpc-usability-of-commercial-hidden-device-detectors-00)

### Recordings

[Video 1](https://youtu.be/BLOv9sGyGac)

## ICCRG — Internet Congestion Control

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-iccrg-01) · [All materials](https://datatracker.ietf.org/meeting/127/session/iccrg) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/iccrg.html)

ICCRG examined congestion-control interactions and the practical effects of bursty traffic. The session covered methods for evaluating how heterogeneous congestion-control algorithms affect one another, including the difficulty of reducing those interactions to a single fairness measure.

A presentation on extending low-latency service considered bottlenecks beyond the access network. Work on residential access networks examined congestion, sharing, and pacing at finer time scales than average utilization reveals. Another presentation addressed microbursts introduced by TCP segmentation offload, exploring how pacing responsibilities can be divided between the host and the network interface.

The common issue was the gap between a link's aggregate capacity and the timing of actual packet arrivals. The research points toward evaluations that account for short-lived queues, application behavior, and implementation details as well as the congestion-control algorithm itself.

### Presentation materials

- [Chair slides](https://datatracker.ietf.org/meeting/127/materials/slides-127-iccrg-chair-slides-05)
- [Extending Low Latency Service Across the Internet](https://datatracker.ietf.org/meeting/127/materials/slides-127-iccrg-extending-low-latency-service-across-the-internet-00)
- [Improving the Evaluation of Heterogenous Congestion Control Algorithm Interactions](https://datatracker.ietf.org/meeting/127/materials/slides-127-iccrg-improving-the-evaluation-of-heterogenous-congestion-control-algorithm-interactions-00)
- [Measuring Service Congestion, Sharing, and Pacing in a Residential Access Network](https://datatracker.ietf.org/meeting/127/materials/slides-127-iccrg-measuring-service-congestion-sharing-and-pacing-in-a-residential-access-network-00)
- [TCP Segmentation Offload Without Microbursts](https://datatracker.ietf.org/meeting/127/materials/slides-127-iccrg-tcp-segmentation-offload-without-microbursts-01)

### Recordings

[Video 1](https://youtu.be/rEm8PiKBISk)

## ICNRG — Information-Centric Networking

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-icnrg-05) · [All materials](https://datatracker.ietf.org/meeting/127/session/icnrg) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/icnrg.html)

ICNRG explored name-based quality of service, multipath transfer, security, and deployment over alternative network architectures. Presentations covered prefix-based QoS, the MARS multipath service, integration of ICN with SCION, and security bootstrapping for Named Data Networking. The agenda also included an update on CCNx versioning.

The post-quantum cryptography discussion addressed a particularly important architectural question for information-centric systems: how to authenticate data efficiently when signatures and public keys become substantially larger. That question connects packet formats and cryptographic agility with approaches such as manifests and trust-domain organization.

Together, the presentations examined how naming, routing, transport, and trust fit together in an operational system. They also offered relevant connections to Net4AI, where data placement, reusable inference state, and naming across distributed infrastructure are emerging research concerns.

### Presentation materials

- [Bootstrapping in Named Data Networks](https://datatracker.ietf.org/meeting/127/materials/slides-127-icnrg-bootstrapping-in-named-data-networks-01)
- [Chairs Slides](https://datatracker.ietf.org/meeting/127/materials/slides-127-icnrg-chairs-slides-01)
- [ICN+SCION](https://datatracker.ietf.org/meeting/127/materials/slides-127-icnrg-icnscion-00)
- [MARS - Multipath Adaptive Reliable Service](https://datatracker.ietf.org/meeting/127/materials/slides-127-icnrg-mars-multipath-adaptive-reliable-service-00)
- [Name-based Quality for Name-based Networks](https://datatracker.ietf.org/meeting/127/materials/slides-127-icnrg-name-based-quality-for-name-based-networks-01)
- [Post-Quantum Cryptography and Information-Centric Networking](https://datatracker.ietf.org/meeting/127/materials/slides-127-icnrg-post-quantum-cryptography-and-information-centric-networking-00)

### Recordings

[Video 1](https://youtu.be/KRpdIMd4lZg)

## MAPRG — Measurement and Analysis for Protocols

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-maprg-09) · [All materials](https://datatracker.ietf.org/meeting/127/session/maprg) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/maprg.html)

MAPRG presented a broad set of measurements connecting protocol design to deployment experience. Email security and provider dependencies featured alongside work on disclosure constraints for sharing network-research data. These contributions highlighted both the concentration of operational dependencies and the practical conditions under which evidence can be collected and reused.

The program included measurements of Starlink Direct-to-Cell on ordinary phones, a performance study of DANE for the Web, and TurboTest's approach to ending speed tests earlier while retaining useful estimates. Satellite networking also appeared in an evaluation of SCONE for adaptive video streaming.

The remaining presentations examined website privacy practices through PrivAudit and the interaction between SPF and DMARC through split alignment. Across the session, measurement served as a way to test assumptions about what protocols deliver in practice, including performance, authentication, and privacy.

### Presentation materials

- [Email Security in Practice and Provider Dependencies](https://datatracker.ietf.org/meeting/127/materials/slides-127-maprg-email-security-in-practice-and-provider-dependencies-03)
- [Evaluating SCONE for Adaptive Bitrate Video Streaming over Satellite Networks](https://datatracker.ietf.org/meeting/127/materials/slides-127-maprg-evaluating-scone-for-adaptive-bitrate-video-streaming-over-satellite-networks-01)
- [Intro - Mirja/Dave](https://datatracker.ietf.org/meeting/127/materials/slides-127-maprg-intro-mirjadave-00)
- [Ookla: Measuring Starlink Direct to Cell on ordinary phones in the wild](https://datatracker.ietf.org/meeting/127/materials/slides-127-maprg-ookla-measuring-starlink-direct-to-cell-on-ordinary-phones-in-the-wild-01)
- [PrivAudit: A Dual-Lens Auditing Framework for Website Privacy Practices under the CCPA](https://datatracker.ietf.org/meeting/127/materials/slides-127-maprg-privaudit-a-dual-lens-auditing-framework-for-website-privacy-practices-under-the-ccpa-01)
- [Revisit DANE for the Web: A Performance Perspective](https://datatracker.ietf.org/meeting/127/materials/slides-127-maprg-revisit-dane-for-the-web-a-performance-perspective-00)
- [Specifying and Managing Disclosure Constraints on Network Research Measurements](https://datatracker.ietf.org/meeting/127/materials/slides-127-maprg-specifying-and-managing-disclosure-constraints-on-network-research-measurements-00)
- [Split Alignment: Diffusing SPF Vulnerabilities with DMARC](https://datatracker.ietf.org/meeting/127/materials/slides-127-maprg-split-alignment-diffusing-spf-vulnerabilities-with-dmarc-00)
- [TurboTest: Learning When Less Is Enough Through Early Termination of Internet Speed Tests](https://datatracker.ietf.org/meeting/127/materials/slides-127-maprg-turbotest-learning-when-less-is-enough-through-early-termination-of-internet-speed-tests-03)

### Recordings

[Video 1](https://youtu.be/sFl3Y2CiNB8)

## NMRG — Network Management

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-nmrg-00) · [All materials](https://datatracker.ietf.org/meeting/127/session/nmrg) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/nmrg.html)

NMRG held two sessions on network management, with substantial attention to AI-assisted operation. The first combined updates on intent-based networking with research on prioritizing LLM inference traffic, architectures connecting agents and network digital twins, and the generation and assessment of data for those twins.

The second examined the mechanisms needed to make agent-driven management practical: MCP and A2A interfaces, short-lived capability leases for agents that change network state, mitigation of hallucinations in intent translation, normalization of inputs from multiple vendors, and reconciliation of semantic models. It also included work on agents for closed-loop digital-twin operation.

These contributions make clear that deploying agents in network operations requires more than connecting a language model to a management interface. The surrounding system needs meaningful permissions, interpretable data, validation, and ways to constrain and observe changes. NMRG's work complements Net4AI's examination of the underlying communication architecture.

### Presentation materials

- [1 - Chairs slide](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessb-1-chairs-slide-00)
- [1 - Chairs slides](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessa-1-chairs-slides-00)
- [2 - An Agentic AI Framework for the Management of Networks, Security, and AI Services](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessb-2-an-agentic-ai-framework-for-the-management-of-networks-security-and-ai-services-00)
- [2 - Use Cases and Practices for Intent-Based Networking](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessa-2-use-cases-and-practices-for-intent-based-networking-00)
- [3 - Capability leases: scoped, short-lived permissions for agents that change network state](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessb-3-capability-leases-scoped-short-lived-permissions-for-agents-that-change-network-state-00)
- [3 - Priority-Based Data Transfer Control for LLM Inference Streaming Leveraging Prompt Importance (IEEE NetSoft 2026)](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessa-3-priority-based-data-transfer-control-for-llm-inference-streaming-leveraging-prompt-importance-ieee-netsoft-2026-00)
- [4 - Network Digital Twin and Agentic AI based Architecture for AI-driven Network Operations](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessa-4-network-digital-twin-and-agentic-ai-based-architecture-for-ai-driven-network-operations-01)
- [5 - An Agentic AI Framework for Hallucination Mitigation in Network Intent Translation](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessb-5-an-agentic-ai-framework-for-hallucination-mitigation-in-network-intent-translation-00)
- [5 - Data Generation and Optimization for Network Digital Twin](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessa-5-data-generation-and-optimization-for-network-digital-twin-00)
- [6 - Framework for Normalizing Multi-Vendor Network Inputs for LLM-Assisted Network Management](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessb-6-framework-for-normalizing-multi-vendor-network-inputs-for-llm-assisted-network-management-00)
- [7 - Portable Semantic Models and Ad Hoc Reconciliation by Cognitive Agents in Network Management](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessb-7-portable-semantic-models-and-ad-hoc-reconciliation-by-cognitive-agents-in-network-management-00)
- [8 - AI Agent Architecture for Network Digital Twin](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessb-8-ai-agent-architecture-for-network-digital-twin-00)
- [MCP and A2A for Network Management: Updates](https://datatracker.ietf.org/meeting/127/materials/slides-127-nmrg-sessb-mcp-and-a2a-for-network-management-updates-00)

### Recordings

[Video 1](https://youtu.be/dSNmrhK2460) · [Video 2](https://youtu.be/7UFRdxKkg0g)

## PANRG — Path Aware Networking RG

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-panrg-01) · [All materials](https://datatracker.ietf.org/meeting/127/session/panrg) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/panrg.html)

PANRG's session examined two ways to exploit network paths while retaining useful end-to-end properties. One presentation explored in-network retransmission for encrypted transport protocols, where intermediaries cannot rely on the transport information available in traditional TCP designs.

The second considered how Happy Eyeballs could be adapted to path-aware networks, including SCION. The challenge extends beyond choosing an address family: endpoints may need to discover, race, and select among several paths, while maintaining fallback behavior and avoiding excessive connection attempts.

Both topics ask how applications can benefit from information or assistance within the network without tightly coupling themselves to a single path or deployment model.

### Presentation materials

- [Chair Slides](https://datatracker.ietf.org/meeting/127/materials/slides-127-panrg-chair-slides-00)
- [Happy Eyeballs for Path-Aware Networks](https://datatracker.ietf.org/meeting/127/materials/slides-127-panrg-happy-eyeballs-for-path-aware-networks-00)
- [In-Network Retransmissions for Encrypted Transport Protocols](https://datatracker.ietf.org/meeting/127/materials/slides-127-panrg-in-network-retransmissions-for-encrypted-transport-protocols-01)

### Recordings

[Video 1](https://youtu.be/AOew63xCPR8)

## RASPRG — Research and Analysis of Standard-Setting Processes Research Group

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-rasprg-02) · [All materials](https://datatracker.ietf.org/meeting/127/session/rasprg) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/rasprg.html)

RASPRG examined the production and use of knowledge in Internet standardization. A discussion of LLM-generated text in IETF email addressed its effects on participation, reader workload, and responsibility for contributions. RFSeek presented a complementary use of language models: constructing protocol-state visualizations that experts can inspect against the underlying RFC text, with a call for participants in user studies.

The session also included research on RFC authorship, affiliations, and communities across the history of the series. A separate presentation explored how to trace IRTF research contributions into IETF standards, combining candidate discovery with expert review.

These studies are relevant to the IRTF's own role. Citations and document counts alone do not capture how ideas move between research and engineering communities; people, shared implementations, and sustained technical discussion also matter.

### Presentation materials

- [0_chairs-welcome](https://datatracker.ietf.org/meeting/127/materials/slides-127-rasprg-0-chairs-welcome-03)
- [Beyond ASCII Art: Recruiting Protocol Experts for RFSeek User Studies](https://datatracker.ietf.org/meeting/127/materials/slides-127-rasprg-beyond-ascii-art-recruiting-protocol-experts-for-rfseek-user-studies-00)
- [LLM Text in IETF Discussions](https://datatracker.ietf.org/meeting/127/materials/slides-127-rasprg-llm-text-in-ietf-discussions-00)
- [Tracing Research into Standards: Investigating IRTF Contributions to the IETF](https://datatracker.ietf.org/meeting/127/materials/slides-127-rasprg-tracing-research-into-standards-investigating-irtf-contributions-to-the-ietf-02)
- [Who Wrote the RFCs: Authorship, Affiliation and Community, 1969-2026](https://datatracker.ietf.org/meeting/127/materials/slides-127-rasprg-who-wrote-the-rfcs-authorship-affiliation-and-community-1969-2026-00)

### Recordings

[Video 1](https://youtu.be/uyJCrp0SlI4)

## UFMRG — Usable Formal Methods Research Group

[Agenda](https://datatracker.ietf.org/meeting/127/materials/agenda-127-ufmrg-02) · [All materials](https://datatracker.ietf.org/meeting/127/session/ufmrg) · [Automatic minutes](https://ietfminutes.org/minutes/ietf127/ufmrg.html)

UFMRG concentrated on formal analysis of DNS and DNSSEC, ranging from configuration changes to resolver behavior and client-side handling of resource records. The presentations demonstrated different ways to turn protocol specifications into executable models that can reveal inconsistencies, ambiguous interactions, and implementation errors.

The session also included work on early attestation, linking formal security analysis with the design of confidential-computing protocols. This connected with the related presentation in DINRG.

A recurring theme was that important failures occur at boundaries: between multiple RFCs, between configuration and protocol behavior, or between a model's assumptions and an implementation. Making formal methods usable requires tools and test cases that help protocol designers and implementers inspect those boundaries.

### Presentation materials

- [A Model-Guided Analysis of Client-Side DNS RR Handling](https://datatracker.ietf.org/meeting/127/materials/slides-127-ufmrg-a-model-guided-analysis-of-client-side-dns-rr-handling-00)
- [Chair Slides](https://datatracker.ietf.org/meeting/127/materials/slides-127-ufmrg-chair-slides-00)
- [Detecting DNS(SEC) Misconfigurations with Formal Reasoning](https://datatracker.ietf.org/meeting/127/materials/slides-127-ufmrg-detecting-dnssec-misconfigurations-with-formal-reasoning-01)
- [DNSSECVerif Mind the Gap: Cross-RFC Formal Analysis Exposes DNSSEC’s Hidden Vulnerabilities](https://datatracker.ietf.org/meeting/127/materials/slides-127-ufmrg-dnssecverif-mind-the-gap-cross-rfc-formal-analysis-exposes-dnssecs-hidden-vulnerabilities-00)
- [EarlyAttestationBleed and EarlyAttestationTschüss](https://datatracker.ietf.org/meeting/127/materials/slides-127-ufmrg-earlyattestationbleed-and-earlyattestationtschuss-00)

### Recordings

[Video 1](https://youtu.be/0IGyCGou1tk)
