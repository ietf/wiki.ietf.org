---
title: IETF 121 Hackathon Thread Projects
description: 
published: true
date: 2024-09-10T19:46:03.732Z
tags: 
editor: markdown
dateCreated: 2024-09-10T19:46:03.732Z
---

# IETF 121 Hackathon Thread Projects

### Low-Power Wireless IPv6 Networking with Thread *
- **Champion**
Stuart Cheshire &lt;cheshire@apple.com&gt;

- **Thread Overview**

  [Thread](https://en.wikipedia.org/wiki/Thread_(network_protocol)) is a specification for how to carry IPv6 datagrams over a mesh of low-power [IEEE 802.15.4](https://en.wikipedia.org/wiki/IEEE_802.15.4) wireless links. [Stuart Cheshire](https://www.threadgroup.org/thread-group#board&officers:~:text=Stuart%20Cheshire) gave a brief presentation about Thread at the [IETF 119 IAB Open meeting in Brisbane](https://www.youtube.com/watch?v=DplqxrH6Xbg&t=2148s). The [Thread specification](https://www.threadgroup.org/support#specifications) is developed and published by the [Thread Group](https://www.threadgroup.org/). There are several independent implementations of Thread, the main one being the [OpenThread open source project](https://openthread.io/).
For this Hackathon event, the goal is to introduce people to Thread and OpenThread programming. This Hackathon event is open to all — Thread Group membership is not required, though of course Thread Group members are also welcome to participate. If you plan to participate in the Thread work at the Hackathon (on-site or remotely), please add your name to the participant list. If you already have a Thread developer board and the OpenThread build environment on your laptop, please bring that. If not, we will have a few extra Thread developer boards available and we can help you get the build environment set up. For people totally new to Thread development, we have some recommendations from [Allie Clifford](/meeting/120/hackathon/Thread-Guide-Allie-Clifford) and [Ann Olivo](/meeting/120/hackathon/Thread-Guide-Ann-Olivo).
Below is a partial list of project ideas. Other ideas are welcome and encouraged. Please feel free to add suggestions to the project list.

- **Participants**
Stuart Cheshire (Apple)
François Michel (Apple)

- **Project Info**

  - **SSH daemon for OpenThread.** Historically the way engineers interact with Thread developer boards has been by physically plugging them into a computer’s USB port and using a serial port console program to access OpenThread’s command-line interface. Now that OpenThread includes TCP support (contributed by [Sam Kumar](https://www.samkumar.org/)) it becomes feasible to access the same command-line interface over the network using ssh. The goal of this project is to identify a compact implementation of ssh suitable for constrained embedded devices, and integrate that into OpenThread. Particularly for testbeds with hundreds of Thread devices, being able to log in and transfer log files using the network is much better than needing hundreds of USB cables to connect all the devices to a computer.

  - **Native Thread Commissioning for Matter.** Current [Matter](https://csa-iot.org/all-solutions/matter/) devices that operate over Thread incur the cost of Bluetooh hardware and firmware, which is only needed for initial commissioning. This adds hardware cost to Matter devices for something that most users only do once in the lifetime of the product. It would be better to perform Matter commissioning for Thread devices via the Thread radio itself, using the Thread MeshCoP (Mesh Commissioning Protocol) mechanism. Some minor work is needed to implement tunnelling the Matter commissioning data (e.g., Device Attestation) over Thread MeshCoP.

  - **Lightweight QUIC for OpenThread.** Both TCP and QUIC are sophisticated transport protocols, suitable for efficiently transporting small and large amounts of data. Zero-round-trip connection setup in both TCP and QUIC allows for small request/response exchanges in a single round-trip. Sliding-window flow control and refined congestion-control algorithms enable TCP and QUIC to transfer large amounts of data, quickly, reliably, and efficiently, without unreasonably disrupting other traffic sharing the network. OpenThread includes TCP, and it would be good to complement that with support for QUIC as well.

  - **General OTA (over-the-air) Firmware Update.** Today firmware is typically installed into the flash memory of a Thread developer board via a USB port. It would be very helpful to have a general way of updating firmware over IP — particularly for people working with hundreds of Thread devices instead of just two or three.

  - **Sensor Data Batched Upload.** Many types of sensors, like temperature sensors, collect data at regular intervals, which should be uploaded to a data collection server in a reasonably timely manner when the Thread mesh is idle enough that such uploads will not disrupt other operations. Now that OpenThread has TCP, it would be useful to have a general mechanism for uploading this kind of sensor data.

  - **Live Thread Diagnostics.** When a large Thread mesh is not behaving as expected, it would be very useful to have a general mechanism for fetching information from nodes on the mesh regarding their connectivity to neighbors and other similar diagnostic data.

  - **Thread Network Optimization Assistant.** Create a Thread network visualizer (or enhance an existing one) to analyze the current network state, identify inefficiencies, and provide prioritized, actionable recommendations for network optimization (e.g., node placement, router selection).

  - **Thread Network Merge Visualization Tool.** Develop a visualization tool to analyze and evaluate the feasibility of merging two or more Thread mesh networks by comparing their topologies, performance metrics, and service landscapes.

  - **Thread Latency Investigations.** One of the main uses of Thread is for home automation, and when you are using an IP network to turn lights on and off, quick response times (under ¼ second) are very desirable. At the same time, an IP network like Thread is ideal for installing firmware updates and similar large data transfers. Because Thread is a low-power low-throughput technology aimed at low-cost devices that can run for years on a single battery, intelligent queue management (including ECN and L4S) is vital so that the network can support large bulk transfers while still maintaining good responsiveness for control operations. The Thread 1.3 specification includes requirements for delay-aware queue management, and there are many research opportunities related to analyzing this behavior and perhaps finding ways to make it even better.

  - **Thread Credential Sharing.** Wi-Fi generally utilizes a user-visible password (when we’re not using 802.1X certificates), but Thread opts instead for strong cryptographic keys, which are arguably more secure, but harder for humans to deal with. When we want to have multiple Thread devices participate in a single Thread mesh, they all need to know the key to the mesh. Work is underway on developing a safe secure way to perform device-to-device key transfer, and this Hackathon will be a good opportunity for the people working on that to get together and do some interop testing and debugging.

----

*To edit the wiki, log in using your IETF Datatracker login credentials. If you don't yet have an IETF Datatracker account, you may get one by going [here and requesting a new account](https://datatracker.ietf.org/accounts/create/).*

