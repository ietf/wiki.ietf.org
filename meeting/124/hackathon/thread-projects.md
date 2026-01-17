---
title: IETF 124 Hackathon Thread Projects
description: 
published: true
date: 2026-01-17T20:12:13.743Z
tags: 
editor: markdown
dateCreated: 2025-07-31T17:46:51.454Z
---

# IETF 124 Hackathon Thread Projects

IETF 124 Montréal, November 2025.

To avoid taking up too much space on the [main Hackathon page](/meeting/124/hackathon), Thread projects are listed separately here.

### Low-Power Wireless IPv6 Networking with Thread

- **Champion**
François Michel (Apple)

- **Thread Overview**

  [Thread](https://en.wikipedia.org/wiki/Thread_(network_protocol)) is a specification for how to carry IPv6 datagrams over a self-configuring mesh of low-power [IEEE 802.15.4](https://en.wikipedia.org/wiki/IEEE_802.15.4) wireless links. [Stuart Cheshire](https://www.threadgroup.org/thread-group#board&officers:~:text=Stuart%20Cheshire) gave a [brief presentation about Thread](https://www.youtube.com/watch?v=DplqxrH6Xbg&t=2148s) at the [IETF 119 IAB Open meeting in Brisbane](https://datatracker.ietf.org/meeting/119/proceedings#iab). The [Thread specification](https://www.threadgroup.org/support#specifications) is developed and published by the [Thread Group](https://www.threadgroup.org/). There are several independent implementations of Thread, the main one being the [OpenThread open source project](https://openthread.io/).
For this Hackathon event, the goal is to introduce people to Thread and OpenThread programming. This Hackathon event is open to all — Thread Group membership is *not* required, though of course Thread Group members are also welcome to participate. If you plan to participate in the Thread work at the Hackathon (on-site or remotely), please add your name to the participant list. If you already have a Thread developer board and the OpenThread build environment on your laptop, please bring that. If not, we will have a few extra Thread developer boards available and we can help you get the build environment set up. For people totally new to Thread development, we have some recommendations from [Allie Clifford](/meeting/120/hackathon/Thread-Guide-Allie-Clifford) and [Ann Olivo](/meeting/120/hackathon/Thread-Guide-Ann-Olivo).
Below is a partial list of project ideas. Other ideas are welcome and encouraged. Please feel free to add suggestions to the project list.

- **Slack Channel**
For communication among Thread Hackathon participants, particularly remote participants, in the [IETF Slack Workspace](https://join.slack.com/t/ietf/shared_invite/zt-2tp4eenlx-5XWQGCglltuzsxpwsQm_tw) we have the [#team-thread-hackathon](https://ietf.slack.com/archives/C07DE1M657E) channel.

- **Participants**
François Michel (Apple)
Stuart Cheshire (Apple)
Ted Lemon (Apple)
Esko Dijk (IoTconsultancy.nl)

- **Project Info**

  - **Thread Hello World Walkthrough.** This [walkthrough by Josh Cohen](https://github.com/joshco/esp-walkthrough/blob/main/hello_world.md) covers the following steps:
  1 - Setting up your dev environment
  2 - Building the OpenThread CLI example
  3 - Flashing MCU 1 and activating the thread system
  4 - Flashing MCU 2 and activating the thread system
  5 - Running tcpsockserver on MCU 1 and tcpsockclient on MCU 2 and sending Hello_World messages back and forth

  - **Support DNS Multiple QTYPEs in OpenThread.** Currently OpenThread will put two questions in the same DNS message by setting QDCOUNT to 2. This is not ideal for a number of reasons that DNS experts have talked about for years, which is why standard DNS clients and servers do not do this. We need to switch OpenThread (both client side and server side) to use the [IETF-supported](https://datatracker.ietf.org/doc/html/draft-ietf-dnssd-multi-qtypes) way of combining multiple questions into a single DNS query. This would be a great starter project for someone learning OpenThread programming.

  - **SSH daemon for OpenThread.** Historically the way engineers interact with Thread developer boards has been by physically plugging them into a computer’s USB port and using a serial port console program to access OpenThread’s command-line interface. Now that OpenThread includes TCP support (contributed by [Sam Kumar](https://www.samkumar.org/)) it becomes feasible to access the same command-line interface over the network using ssh. The goal of this project is to identify a compact implementation of ssh suitable for constrained embedded devices, and integrate that into OpenThread. Particularly for testbeds with hundreds of Thread devices, being able to log in and transfer log files using the network is much better than needing hundreds of USB cables to connect all the devices to a computer.

  - **Native Thread Commissioning for Matter.** Current [Matter](https://csa-iot.org/all-solutions/matter/) devices that operate over Thread incur the cost of Bluetooh hardware and firmware, which is only needed for initial commissioning. This adds hardware cost to Matter devices for something that most users only do once in the lifetime of the product. It would be better to perform Matter commissioning for Thread devices via the Thread radio itself, using the Thread MeshCoP (Mesh Commissioning Protocol) mechanism. Some minor work is needed to implement tunnelling the Matter commissioning data (e.g., Device Attestation) over Thread MeshCoP.

  - **cBRSKI Device Onboarding.** In the [ANIMA WG](https://datatracker.ietf.org/wg/anima/about/), a lightweight version of the BRSKI device onboarding protocol has been developed: [Constrained BRSKI](https://datatracker.ietf.org/doc/html/draft-ietf-anima-constrained-voucher). This protocol is suitable for professional installation use cases, to onboard a large number of new Thread IoT devices onto a network while checking for mutual authenticity and allowing a vendor to be in the loop during the process. There is ongoing implementation work on a [Registrar + MASA](https://github.com/EskoDijk/ot-registrar) and OpenThread (code public soon) to enable cBRSKI. It re-uses Thread MeshCoP mechanisms, like the above project. This work does not require dev boards: the [OTNS2 simulator](https://github.com/openthread/ot-ns/issues/528) is used to build and test cBRSKI with virtual OpenThread nodes.

  - **Lightweight QUIC for OpenThread.** Both TCP and QUIC are sophisticated transport protocols, suitable for efficiently transporting small and large amounts of data. Zero-round-trip connection setup in both TCP and QUIC allows for small request/response exchanges in a single round-trip. Sliding-window flow control and refined congestion-control algorithms enable TCP and QUIC to transfer large amounts of data, quickly, reliably, and efficiently, without unreasonably disrupting other traffic sharing the network. OpenThread includes TCP, and it would be good to complement that with support for QUIC as well.

  - **General OTA (over-the-air) Firmware Update.** Today firmware is typically installed into the flash memory of a Thread developer board via a USB port. It would be very helpful to have a general way of updating firmware over IP — particularly for people working with hundreds of Thread devices instead of just two or three.

  - **Sensor Data Batched Upload.** Many types of sensors, like temperature sensors, collect data at regular intervals, which should be uploaded to a data collection server in a reasonably timely manner when the Thread mesh is idle enough that such uploads will not disrupt other operations. Now that OpenThread has TCP, it would be useful to have a general mechanism for uploading this kind of sensor data.

  - **Live Thread Diagnostics.** When a large Thread mesh is not behaving as expected, it would be very useful to have a general mechanism for fetching information from nodes on the mesh regarding their connectivity to neighbors and other similar diagnostic data.

  - **Thread Network Optimization Assistant.** Create a Thread network visualizer (or enhance an existing one) to analyze the current network state, identify inefficiencies, and provide prioritized, actionable recommendations for network optimization (e.g., node placement, router selection).

  - **Thread Network Merge Visualization Tool.** Develop a visualization tool to analyze and evaluate the feasibility of merging two or more Thread mesh networks by comparing their topologies, performance metrics, and service landscapes.

  - **Thread Latency Investigations.** One of the main uses of Thread is for home automation, and when you are using an IP network to turn lights on and off, quick response times (under ¼ second) are very desirable. At the same time, an IP network like Thread is ideal for installing firmware updates and similar large data transfers. Because Thread is a low-power low-throughput technology aimed at low-cost devices that can run for years on a single battery, intelligent queue management (including ECN and L4S) is vital so that the network can support large bulk transfers while still maintaining good responsiveness for control operations. The Thread 1.3 specification includes requirements for delay-aware queue management, and there are many research opportunities related to analyzing this behavior and perhaps finding ways to make it even better.

  - **Thread Credential Sharing.** Wi-Fi generally utilizes a user-visible password (when we’re not using 802.1X certificates), but Thread opts instead for strong cryptographic keys, which are arguably more secure, but harder for humans to deal with. When we want to have multiple Thread devices participate in a single Thread mesh, they all need to know the key to the mesh. Work is underway on developing a safe secure way to perform device-to-device key transfer, and this Hackathon will be a good opportunity for the people working on that to get together and do some interop testing and debugging.

  - **Lightweight WebSocket Server.** Providing a browser based user interface can be much simpler than providing native apps for different systems. At the moment, it may be hard to do for hardware with limited resources as it requires not only embedding a HTTP server but also all the resources that will be served to the user including HTML, images etc. (not to mention that any updates of web interface would require a software update). A simple WebSocket server can address such issues as the protocol is supported by all the major browsers. Then, the web application with all resources can be hosted on client's side and all the information could be get or set through WebSocket API. Moreover, such endpoints can be reused by any platform supporting WebSocket client (e.g. native desktop app, phone etc.).

  - **Event logging.** Due to limited resources (device's memory, bandwidth, connectivity issues etc.) it is hard to fetch debug text logs from End Devices set up in the home's network. The idea is to implement an event logger which can store only necessary data that can be fetched in a binary form to be decoded by a simple script/app.

  - **Internet-Connected Clock.** The United States has a [time service radio broadcast](https://en.wikipedia.org/wiki/WWVB) and clocks are available that receive this signal to set their time automatically. However, depending on where you live, the radio signal can be weak and unreliable. In our modern world of Internet connectivity, a compelling product would be a battery-powered clock that gets its time from an Internet time server rather than via radio waves from Fort Collins, Colorado. Using a Thread radio would be ideal for a product like this. The amount of data to be received is small. The hardware cost for a Thread radio is low, and the low power consumption of Thread is ideal for battery-powered device that are expected to run for months or years on a single battery.

  - **TCP Ack Generation Trigger.** The DNS Stateful Operations specification ([RFC 8490](https://datatracker.ietf.org/doc/html/rfc8490#section-9.5)) describes a performance issue when using unidirectional messages: TCP Delayed Acknowledgement and Nagle’s algorithm are both excellent features that protect networks from excessive traffic, and neither should be disabled, but they can interact to introduce delays when a sender generates a stream of unidirectional messages. This is not a protocol flaw in TCP, but an API deficiency in most current networking APIs. Thread uses Service Registration Protocol ([RFC 9665](https://datatracker.ietf.org/doc/html/rfc9665)) which makes use of unidirectional messages. The OpenThread TCP API should be enhanced to allow an SRP client to indicate that it has received a unidirectional message, to tell the TCP implementation it need not wait any longer before sending its delayed acknowledgement. This could be implemnted by having a zero-length “empty” write trigger the sending of a delayed acknowledgement (an “empty” write being the logical response to a unidirectional message) or by adding an explicit SendDelayedAck() API call. An explicit API call might help client code be more understandable — but that explicit API call could be implented simply as a wrapper function that generates a zero-length write operation.

----

*To edit the wiki, log in using your IETF Datatracker login credentials. If you don't yet have an IETF Datatracker account, you may get one [by going here and requesting a new account](https://datatracker.ietf.org/accounts/create/).*