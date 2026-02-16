---
title: COIN Wiki
description: 
published: true
date: 2026-01-01T02:26:52.311Z
tags: 
editor: markdown
dateCreated: 2023-01-29T00:06:00.217Z
---

> This page is related to a concluded IRTF Research Group.
{.is-danger}

# Proposed IRTF Research Group: Computing in the Network (COIN) 
## Co-chairs

- Jianfei (Jeffrey) He (Huawei) jeffrey.he@…
- Eve M. Schooler (Intel) eve.m.schooler@…
- Marie-Jose Montpetit (MIT Media Laboratory) mariejo@…
## Mailing list

- Address: coin at irtf.org
- Subscribe at: https://www.ietf.org/mailman/listinfo/Coin
## Github repository (in construction)

https://github.com/irtf-coinrg/prg-materials
## Charter
The COIN research group (COINRG) provides a forum for the presentation, discussion, and analysis of research addressing to what extent, and how, computing and networking technologies can be merged. The scope includes architectures, protocols, and implementations that encompass both of these technology areas. The primary goals are to improve network and application performance, agility, security, and privacy by better integration. COIN will foster research into solutions that measurably improve the internet by blending how routing/forwarding, packet processing, computing, and storage are realized. Work involving both classic “control plane” and “data plane” technologies are in scope.

COIN will address a wide variety of system scales, ranging from large data center networks (DCN) to small edge computing and networking complexes. Of particular interest is work that explores this continuum and addresses how cloud computing languages and tools might evolve (or not) to encompass the full range of scale, deployment, and physical realization.

A major focus will also be on bridging the current divide between the way server computing complexes are programmed and how switches and other smart networking devices such as NICs are programmed. While current state-of-the art in programmability via P4 and other languages/systems has resulted in improved functionality in switches, richer programmability is likely needed to support important workloads, such as edge network analytics, machine learning, and data fusion for cyber-physical systems. Such applications not only need access to more general-purpose languages and underlying operating system facilities, but also need to accommodate local and remote caches, dynamic control points, and various forms of data stewardship. The multiple “touch points” and attendant data transformations raise important research issues in security, privacy and data provenance, as a simple “end-to-end” two party model of communication does not capture the richness of the systems people envision. Research concerning how the existing layering of protocols is affected by these considerations is also in scope. COIN will foster discussion on what should (or should not) be exposed across layers and APIs, including parameters that might affect QoS/QoE, orchestration dynamics, and mobility.

The ability to deploy, manage and evolve a system with both data center and edge components brings new challenges to how complex applications are orchestrated, both individually and in mutual competition for resources. The RG hopes to foster work on orchestration of multi-datacenter and edge resources through both proposals to extend existing approaches (e.g., Kubernetes, Swarm) as well as via novel approaches. Special attention will be paid to use-case-driven requirements gathered from next-generation applications and services (e.g., video streaming, immersive AR/VR, autonomous/connected vehicles, industrial IoT). In doing so, COIN expects to closely follow and coordinate with the evolving research in distributed computing and new network paradigms, for instance, information-centric networking,

## Scope

1. Improvements to the programmability of network devices in order to bring more of the richness of distributed computing technologies to in-network devices.
2. Use case driven requirements analysis: examine cloud computing as a continuum from the data center to edge networks and beyond incorporating the use of programmable switches and NICs. Identify the potential benefits to these networks by employing in-network functionality, including but not limited to compute, cache, manage, control, etc.
3. Novel architectures, data-plane abstractions, and new network protocol designs to efficiently federate decentralized computing resources across the infrastructure regardless of where in the network the compute is placed (the DC, the core, the edge, and even in the end-user devices).
4. Privacy and security mechanisms required or enabled by in-network compute and their effect on various protocol layers.
## Outcomes

COIN wants to build a forum to explore and discuss how the network architectures and protocols will adapt to the introduction of distributed systems and decentralized computing resources. Hence the following outcomes are proposed for discussion:

1. An informational RFC on the challenges of computing in the network
2. An informational RFC on data center COIN
3. A Compute First Networking informational RFC
4. An informational (maybe experimental) RFC on AI/ML and COIN
5. An informational (maybe experimental) RFC on XR and COIN
6. < other specific contributions to be added with the help of the community >
## Documents

- In-Network Data-Center Computing - [draft-he-draft-he-coin-datacenter-00](http://tools.ietf.org/html/draft-he-draft-he-coin-datacenter-00) available at https://datatracker.ietf.org/doc/draft-he-coin-datacenter/
- In Network Computing Enablers for Extended Reality - [draft-montpetit-coin-XR-01](http://tools.ietf.org/html/draft-montpetit-coin-) available at https://datatracker.ietf.org/doc/draft-montpetit-coin-xr/ (errata on v00).
- Edge Data Discovery Overview - [draft-mcbride-edge-data-discovery-overview-01](http://tools.ietf.org/html/draft-mcbride-edge-data-discovery-overview-01) available at https://datatracker.ietf.org/doc/draft-mcbride-edge-data-discovery-overview
## Next meeting
- Where: IETF 104 in Prague, March 24-29, 2019
- Room: Congress Hall 1 (Lower Lobby)
- When: Thursday, March 28th
- Time: 10:50am-12:20pm (Thursday Morning Session II)
## References
- Agrawal, Divy. " Data on the Edge: Leveraging the Network Edge for Internet Applications.", https://www.cse.ust.hk/pg/seminars/S18/agrawal.html
- Bastug, Ejder, Bennis, Mehdi, Médard, Muriel and Debbah Mérouane, "Towards Interconnected Virtual Reality:Opportunities, Challenges and Enablers.", March 2017 /https://arxiv.org/pdf/1611.05356.pdf
- Chang, Michael Alan, Panda, Aurojit , Bottini, Domenic, Jian, Lisa, Kumar, Pranay and Shenker, Scott, “Network Evolution for DNN”, SysML, Feb 2018, Palo Alto, California https://www.sysml.cc/doc/182.pdf
- Dang Huynh Tu, Sciascia, Daniele, Canini, Marco, Pedone Fernando and Soulé, Robert, NetPaxos?: Consensus at Network Speed SOSR15 https://mcanini.github.io/papers/netpaxos.sosr15.pdf
- Dang, Huynh, Canini, Marco, Pedone, Fernando and Soulé, Robert, "Paxos Made Switch-y", Sigcomm CCR 2016, /https://www.sigcomm.org/sites/default/files/ccr/papers/2016/April/0000000-0000002.pdf
- Fan, Bin, Lim, Hyeontaek, David G. Andersen, David G. and Kaminsky, Michael, “Small Cache, Big Effect: Provable Load Balancing for Randomly Partitioned Cluster Services.” 2011.ACM SOCC www.istc-cc.cmu.edu/publications/papers/2011/loadbal-socc2011.pdf
- Forster, Nate, < to come >
- Graham, Richard L, et al. (16 authors) “Scalable Hierarchical Aggregation Protocol (SHArP): A Hardware Architecture for Efficient Data Reduction.” In COM-HPC, 2016. https://ieeexplore.ieee.org/document/7830486
- Hadoop Distributed File System, http://hadoop.apache.org/
- Jin, Xin, Li, Xiaozhou, Zhang, Haoyu, Robert Soulé, Robert, Lee, Jeongkeun, Foster, Nate, Kim, Changhoon and Stoica, Ion, “NetCache?: Balancing Key-Value Stores with Fast In-Network Caching", SOSP2017, https://www.cs.jhu.edu/~xinjin/files/SOSP17_NetCache.pdf
- Li, Jialin, Michal, Ellis and Ports, Dan R.K. “Eris: Coordination-Free Consistent Transactions Using In-Network Concurrency Control”, (University of Washington) SOSP 2017 https://syslab.cs.washington.edu/papers/eris-sosp17.pdf
- Li , Xiaozhou, Sethi, Raghav, Kaminsky, Michael, Andersen, David G and Freedman, Michael J." Be fast, cheap and in control with SwitchKV", NSDI'2016, https://dl.acm.org/citation.cfm?id=2930614
- Madhavapeddy, Anil et al., "Unikernels: Library Operating Systems for the Cloud", ASPLOS 2013, /http://anil.recoil.org/papers/2013-asplos-mirage.pdf
- Madhavapeddy, Anil et al., "Jitsu: Just-In-Time Summoning of Unikernels.", NSDI15, https://www.usenix.org/system/files/conference/nsdi15/nsdi15-paper-madhavapeddy.pdf
- NetCompute? 2018: In-Network Computing Workshop, Sigcomm2018, https://conferences.sigcomm.org/sigcomm/2018/workshop-netcompute.html
- P4, p4.org
- Ports, Dan R.K., Li, Jialin, Liu, Vincent, Sharma, ViNaveen? Kr. and Krishnamurthy, Arvind, "Designing Distributed Systems Using Approximate Synchrony in Data Center Networks”, (University of Washington) NSDI 2015. https://www.usenix.org/node/188949
- Rexford, Jennifer, Sigcomm 2018 Keynote Address, https://youtu.be/t_5__v6CNYE?t=4652
- Sapio, Amadeo, Abdelaziz Ibrahim, Aldilaijan, Abdulla, Canini, Mario and Kalnis Panos, " In net computing is a dumb idea whose time has come ", Hotnets 2017 https://dl.acm.org/citation.cfm?id=3152461
- Schooler, Eve, Srikanteswara, Srikathyayani, Foerster, Jeff, "ICN-WEN Information Centric-Networking in Wireless Edge Networks", Presentation at ICNRG@IETF-98, March 2017 https://www.ietf.org/proceedings/98/slides/slides-98-icnrg-information-centric-networking-in-wireless-edge-networks-eve-schooler-00.pdf
- Soh, Lemuel, Burke, Jeff and Zhang, Lixia. "Supporting Augmented Reality (AR): Looking Beyond Performance" ACM SIGCOMM 2018 Workshop on Virtual Reality and Augmented Reality (VR/AR Network 2018).
- Soulé, Robert, Netcompute Workshop Keynote Address, Sigcomm 2018, http://conferences.sigcomm.org/sigcomm/2018/files/slides/netcompute/2018-08-20-sigcomm.pdf
- Subedi, Tara Nath, Nguyen, Kim Khoa and Chériet, Mohamed, “OpenFlow?-based in-network Layer-2 adaptive multipath aggregation in data centers”, Computer Communications, Volume 61, May 2015, https://www.sciencedirect.com/science/article/pii/S0140366414003715
- Zsolt, István, Sidler, David, Alonso, Gustavo and Vukolić, Marko, “Consensus in a Box", NSDI 2016, https://dl.acm.org/citation.cfm?id=2930639
## Other related SDO Activities
SIGBDIN IEEE SIG

https://github.com/IEEETCBDIN/Home/blob/master/index.md

## Initial Meeting: IETF 103 Bangkok (10am-12pm room Boromphimarn 3)
**Meeting Chairs** Jeffrey He, Huawei and Marie-José Montpetit, consultant

- Minutes: https://trac.ietf.org/trac/irtf/attachment/wiki/coin/COIN%20Notes.pdf
- Attendees: https://trac.ietf.org/trac/irtf/attachment/wiki/coin/COIN%20Side%20Meeting%20Attendance.pdf
- Meeting link: https://ietf.webex.com/ietf/j.php?MTID=m4d74e60aecea8c08e8532decfa823a4a Meeting number: 642 054 101; Meeting password: y7evFtMt

### Final Agenda

*Welcome and agenda*

- Review of the agenda (Chairs - 5 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/coin_ietf103_chair_slides%20-%20Finalv3.pptx
- Presentation of the motivation and draft charter (Jeffrey He, Huawei - 10 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/ietf103-COIN%20charter%20v0.2.pptx

Computing in the Network

- In-Network Computing is a Dumb Idea Whose Time Has Come (Marco Canini - 10 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/coin-mcanini.pdf
- In-Network Data-Center Computing - draft-he-coin-datacenter-00 (Jeffrey He - 10 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/draft-he-coin-datacenter-00-v2.pptx
- Compute-First Networking: Rethinking Network Programmability (Dirk Kutscher - 10 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/ietf-103-kutscher-coin.pdf
- Design Challenges for Combining Compute and Networking (Dave Oran - 10-minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/Design%20Challenges%20for%20Combining%20Compute%20and%20Networking.pdf
- A Few Musings on Elastic Network Edges and In-Network Computing (Diego Lopez - 5 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/COINmusings-DRL.pdf
- How edge intelligence is accelerating the convergence of networking and computing (Liang Geng - 10 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/NCC.pptx
- Edge Computing APIs (Hannu Flinck – 5 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/MEC_APIs_coin2018.pdf

Applications Enabled by COIN

- Ubiquitous Witness/reverse CDN (Eve Schooler - 10 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/COIN%20-%20Use%20Case%20discussion%20-%202018-11-08.pdf
- Edge Date Discovery (Michael McBride? - 10 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/edge%20data%20discovery.ppt
- Machine Learning (Rachel Chen - 10 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/Net%20for%20ML%20-COIN-%20IETF103v1.pdf
- In Network Computing Enablers for Extended Reality - draft-montpetit-coin-XR-01 (MJM - 10 minutes) https://trac.ietf.org/trac/irtf/attachment/wiki/coin/draft-montpetit-coin-xr-01%20v1%20for%20icnrg%20interim.pptx

Next steps (Chairs - 5 minutes)
Attachments:
[coin_ietf103_chair_slides_-_finalv3.pptx](/coin_ietf103_chair_slides_-_finalv3.pptx)
[ietf103-coin_charter_v0.2.pptx](/ietf103-coin_charter_v0.2.pptx)
[draft-he-coin-datacenter-00-v2.pptx](/draft-he-coin-datacenter-00-v2.pptx)
[coinmusings-drl.pdf](/coinmusings-drl.pdf)
[ncc.pptx](/ncc.pptx)
[design_challenges_for_combining_compute_and_networking.pdf](/design_challenges_for_combining_compute_and_networking.pdf)
[net_for_ml_-coin-_ietf103v1.pdf](/net_for_ml_-coin-_ietf103v1.pdf)
[mec_apis_coin2018.pdf](/mec_apis_coin2018.pdf)
[coin-mcanini.pdf](/coin-mcanini.pdf)
[ietf-103-kutscher-coin-cfn-02-wiki.pdf](/ietf-103-kutscher-coin-cfn-02-wiki.pdf)
[coin_notes.pdf](/coin_notes.pdf)
[coin_side_meeting_attendance.pdf](/coin_side_meeting_attendance.pdf)
[draft-montpetit-coin-xr-01_v1_for_icnrg_interim.pptx](/draft-montpetit-coin-xr-01_v1_for_icnrg_interim.pptx)
[edge_data_discovery.ppt](/edge_data_discovery.ppt)
[ietf-103-kutscher-coin.pdf](/ietf-103-kutscher-coin.pdf)
[coin_-_use_case_discussion_-_2018-11-08.pdf](/coin_-_use_case_discussion_-_2018-11-08.pdf)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2019-04-13. It was migrated from the old Trac wiki on 2023-01-23.*