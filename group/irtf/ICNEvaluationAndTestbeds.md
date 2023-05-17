---
title: ICN Evaluations and Testbeds
description: 
published: true
date: 2023-02-18T03:30:51.126Z
tags: 
editor: markdown
dateCreated: 2023-01-30T03:11:29.683Z
---

# ICN evaluation tools and testbeds 
The text on this page is an continuously updated version of the text provided in section 4 of the document Information-centric Networking: Evaluation and Security Considerations, [draft-rtf-icnrg-evaluation-methodology](http://tools.ietf.org/html/draft-rtf-icnrg-evaluation-methodology). To resolve references, please refer to the document.

Since ICN is an emerging area, the community is in the process of developing effective evaluation environments, including releasing open-source implementations, simulators, emulators, and testbeds. To date, none of the available evaluation tools can be seen as the one and only community reference evaluation tool. Furthermore, no single environment supports all well-known ICN approaches, as we describe below, hindering the direct comparison of the results obtained for different ICN approaches. The rest of this subsection reviews the publicly available ICN implementations, simulators and experimental facilities currently available to the community.

## Open-source Implementations
The Named Data Networking (NDN) project has open-sourced a software reference implementation of the architecture and protocol called NDN (http://named-data.net). NDN is available for deployment on various operating systems and includes C and Java libraries that can be used to build applications.

CCN-lite (http://www.ccn-lite.net) is a lightweight implementation of the CCN protocol that supports most of the key features of CCNx and is interoperable with CCNx. CCN-lite implements the core CCN logic in about 1000 lines of code, so it is ideal for classroom work and course projects as well as for quickly experimenting with CCN extensions. For example, Baccelli et al. use CCN-lite on top of the RIOT operating system to conduct experiments over an IoT (Internet of Things) testbed [NDNIOT].

PARC is offering CCN source code under various licensing schemes, please see http://www.ccnx.org for details.

The PURSUIT project (http://www.fp7-pursuit.eu) has open-sourced its Blackhawk publish-subscribe (Pub/Sub?) implementation for Linux and Android; more details are available at https://github.com/fp7-pursuit/blackadder. Blackadder uses the Click modular router for ease of development. The code distribution features a set of tools, test applications and scripts. The POINT project (http://www.point-h2020.eu/) is currently maintaining Blackadder.

The 4WARD and SAIL projects have open-sourced software that implements different aspects of [NetInf](/NetInf), e.g., [NetInf](/NetInf) URI format, HTTP and UDP convergence layer, using different programming languages. The Java implementation provides a local caching proxy and client. Further, an OpenNetInf? prototype is available as well as a hybrid host-centric and information-centric network architecture called the Global Information Network (GIN), a browser plug-in and video streaming software. See http://www.netinf.org/open-source for more details.

## Simulators and Emulators
Simulators and emulators should be able to capture faithfully all features and operations of the respective ICN architecture(s) and any limitations should be openly documented. It is essential that these tools and environments come with adequate logging facilities so that one can use them for in-depth analysis as well as debugging. Additional requirements include the ability to support medium- to large-scale experiments, the ability to quickly and correctly set various configurations and parameters, as well as to support the playback of traffic traces captured on a real testbed or network. Obviously, this does not even begin to touch upon the need for strong validation of any evaluated implementations.

### ndnSIM
The Named Data Networking (NDN) project (http://named-data.net/) has developed ndnSIM [ndnSIM][ndnSIM2]; this is a module that can be plugged into the ns-3 simulator (https://www.nsnam.org/) and supports the core features of NDN. One can use ndnSIM to experiment with various NDN applications and services as well as components developed for NDN such as routing protocols, caching and forwarding strategies among others. The code for ns-3 and ndnSIM is openly available to the community and can be used as the basis for implementing ICN protocols or applications. For more details see http://ndnsim.net/2.0/.

### ccnSIM
ccnSim [ccnSim] is CCN-specific simulator that was specially designed to handle forwarding of a large number of CCN-chunks (http://www.infres.enst.fr/~drossi/index.php?n=Software.ccnSim). ccnSim is written in C++ for the OMNeT++ simulation framework (https://omnetpp.org/). Other CCN-specific simulators include CCN Packet Level Simulator [CCNPL] and CCN-Joker [CCNj]. CCN-Joker emulates in user-space all basic aspects of a CCN node (e.g., handling of Interest and Data packets, cache sizing, replacement policies), including both flow and congestion control. The code is open source and is suitable for both emulation-based analyses and real experiments. Finally, Cabral et al. [MiniCCNx] use container-based emulation and resource isolation techniques to develop a prototyping and emulation tool.

### Icarus simulator
The Icarus simulator focuses on caching in ICN and is agnostic with respect to any particular ICN implementation. The simulator is implemented in Python, uses the Fast Network Simulator Setup tool [FNSS], and is available at http://icarus-sim.github.io/. Icarus has several caching strategies implemented, including among others ProbCache? [PROBCACH], node-centrality-based caching [CL4M] and hash-route-based caching [HASHROUT].

ProbCache? [PROBCACH] is taking a resource management view on caching decisions and approximates the available cache capacity along the path from source to destination. Based on this approximation and in order to reduce caching redundancy across the path, it caches content probabilistically. According to [CL4M] the node with the highest betweenness centrality along the path from source to destination is responsible for caching incoming content. Finally, [HASHROUT] calculates the hash-function of a content’s name and assigns contents to caches of a domain according to that. The hash-space is split according to the number of caches of the network. Then upon subsequent requests, and based again on the hash of the name included in the request, edge routers redirect requests to the cache assigned with the corresponding hash-space. [HASHROUT] is an off-path caching strategy, in contrast to [PROBCACH] and [CL4M], which however, requires minimum co-ordination and redirection overhead. In its latest update, Icarus also includes implementation of the “Satisfied Interest Table” (SIT) [SIT]. The SIT table is pointing towards the direction where content has been sent recently. Among other benefits, this enables information resilience in case of network fragmentation (i.e., content can still be found in neighbour caches or in users’ devices) and inherently supports user-assisted caching (i.e., P2P-like content distribution).

The simulator is constantly being updated and more strategies are added in each update. Tortelli et al. [ICNSIMS] provide a comparison of ndnSIM, ccnSim, and Icarus.

## Experimental Facilities
An important consideration in the evaluation of any kind of future Internet mechanism lies in the characteristics of that evaluation itself. Central to the assessment of the features provided by a novel mechanism, lies the consideration of how it improves over already existing technologies, and by "how much." With the disruptive nature of clean-slate approaches generating new and different technological requirements, it is complex to provide meaningful results for a network layer framework, in comparison with what is deployed in the current Internet. Thus, despite the availability of ICN implementations and simulators, the need for large-scale environments supporting experimental evaluation of novel research is of prime importance to the advancement of ICN deployment.

Different experimental facilities have different characteristics and capabilities, e.g. low cost of use, reproducible configuration, easy-to-use tools, sharable, available background traffic.

### Named Data Networking (NDN) Testbed
The Named Data Networking (NDN) testbed (http://named-data.net/) is an open and shared resource created for research purposes, that include software routers at several participating institutions, application host nodes, and other devices. Currently, the testbed includes 31 nodes from 14 countries and its map can be seen at (http://ndnmap.arl.wustl.edu/).

### Open Network Lab [ONL]
An example of an experimental facility that supports CCN is the Open Network Lab [ONL] that currently comprises 18 extensible gigabit routers and over a 100 computers representing clients and is freely available to the public for running CCN experiments. Nodes in ONL are preloaded with CCNx software. ONL provides a graphical user interface for easy configuration and testbed setup as per the experiment requirements, and also serves as a control mechanism, allowing access to various control variables and traffic counters. Further, it is also possible to run and evaluate CCN over popular testbeds [PLANET] [EMULAB] [DETERLAB] [OFELIA] by directly running, for example, the CCNx open-source code [CCNOFELI] [ICNGRID] [CCNPL] [CCNOSN]. Also, the Network Experimentation Programming Interface [NEPI] is a tool developed for controlling and managing large-scale network experiments. NEPI can be used to control and manage large-scale CCNx experiments e.g., on PlanetLab? [NEPIICN].

### POINT testbed
The POINT project is maintaining a testbed with 40 machines across Europe, North America (MIT) and Japan (NICT) interconnected in a topology containing one Topology Manager and one Rendezvous node that handle all publish/subscribe and topology formation requests [IEICE]. All machines run Blackadder. New nodes can join and experiments can be run on request.

### CUTEi: Container-based ICN testbed
NICT has also developed a testbed used for ICN experiments [AFI] comprising multiple servers located in Asia and other locations. Each testbed server (or VM) utilizes a Linux kernel-based container (LXC) for node virtualization. This testbed enables users to run applications and protocols for ICN in two experimentation modes using two different container designs:

1. application-level experimentation using a "common container" and
network-level experimentation using a "user container."
2. A common container is shared by all testbed users, and a user container is assigned to one testbed user. A common container has a global IP address to connect with other containers or external networks, whereas each user container uses a private IP address and a user space providing a closed networking environment. A user can login to his/her user containers using SSH with his/her certificate, or access them from PCs connected to the Internet using SSH tunnelling.

This testbed also implements an "on-filesystem cache" to allocate caching data on a UNIX filesystem. The on-filesystem cache system accommodates two kinds of caches: "individual cache" and "shared cache." Individual cache is accessible for one dedicated router for the individual user, while shared cache is accessible for a set of routers in the same group to avoid duplicated caching in the neighborhood for cooperative caching.

(please contact us if there is something that you think should be listed here)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2016-07-16. It was migrated from the old Trac wiki on 2023-01-29.*