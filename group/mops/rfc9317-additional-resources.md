# Introduction

This document contains links and references to resources that the IETF Media Operations community deemed potentially useful to operators of streaming media services or network operators for networks that carry traffic from such services.

This document is a companion to [RFC 9317](https://www.rfc-editor.org/rfc/rfc9317.html), please read that document for a more complete explanation.

## Document Maintenance

This living document is actively maintained by participants in the
Media Operations Working Group of the Internet Engineering Task
Force (IETF).  New resources may be added and old resources may be
removed from the sections below with consensus of the working group,
and URLs may be updated or removed by the document editors if the
resources they refer to move locations or get removed by their
publishers.

An archive with the history of changes to this document can be found at:
 <https://github.com/ietf/wiki.ietf.org/commits/main/group/mops/rfc9317-additional-resources.md>

## Status of This Memo

This living document is submitted in full conformance with the
provisions of BCP 78 and BCP 79.

## Copyright Notice

Copyright (c) 2022 IETF Trust and the persons identified as the
document authors.  All rights reserved.

This document is subject to BCP 78 and the IETF Trust's Legal
Provisions Relating to IETF Documents (https://trustee.ietf.org/license-info) in effect on the date of publication of this document.
Please review these documents carefully, as they describe your rights
and restrictions with respect to this document.  Code Components
extracted from this document must include Revised BSD License text as
described in Section 4.e of the Trust Legal Provisions and are
provided without warranty as described in the Revised BSD License.

# Industry Terminology

- SVA Glossary: <https://glossary.streamingvideoalliance.org/>
- Datazoom Video Player Data Dictionary: <https://help.datazoom.io/hc/en-us/articles/360031323311>
- Datazoom Video Metrics Encyclopedia: <https://help.datazoom.io/hc/en-us/articles/360046177191>

# Surveys and Tutorials

## Encoding

The following papers describe how video is encoded, different video encoding standards and tradeoffs in selecting encoding parameters.

- Overview of the Versatile Video Coding (VVC) Standard and its Applications (<https://ieeexplore.ieee.org/document/9503377>)
- Video Compression - From Concepts to the H.264/AVC Standard (<https://ieeexplore.ieee.org/document/1369695>)
- Developments in International Video Coding Standardization After AVC, With an Overview of Versatile Video Coding (VVC) (<https://ieeexplore.ieee.org/document/9328514>)
- A Technical Overview of AV1 (<https://ieeexplore.ieee.org/document/9363937>)
- CTU Depth Decision Algorithms for HEVC: A Survey (<https://arxiv.org/abs/2104.08328>)

## Packaging

The following papers summarize the methods for selecting packaging configurations such as the resolution-bitrate pairs, segment durations, use of constant vs. variable-duration segments, etc.

- Deep Reinforced Bitrate Ladders for Adaptive Video Streaming (<https://dl.acm.org/doi/10.1145/3458306.3458873>)
- Comparing Fixed and Variable Segment Durations for Adaptive Video Streaming: a Holistic Analysis (<https://dl.acm.org/doi/10.1145/3339825.3391858>)

## Content Delivery

The following links describe some of the issues and solutions regarding the interconnecting of the content delivery networks.

- Open Caching: Open standards for Caching in ISP Networks: <https://www.streamingvideoalliance.org/working-group/open-caching/>
- Netflix Open Connect: <https://openconnect.netflix.com>

## ABR Algorithms

The two surveys describe and compare different rate-adaptation algorithms in terms of different metrics like achieved bitrate/quality, stall rate/duration, bitrate switching frequency, fairness, network utilization, etc.

- A Survey on Bitrate Adaptation Schemes for Streaming Media Over HTTP (<https://ieeexplore.ieee.org/document/8424813>)
- A Survey of Rate Adaptation Techniques for Dynamic Adaptive Streaming Over HTTP (<https://ieeexplore.ieee.org/document/7884970>)

## Low-Latency Live Adaptive Streaming

The following papers describe the peculiarities of adaptive streaming in low-latency live streaming scenarios.

- Catching the Moment with LoL+ in Twitch-like Low-latency Live Streaming Platforms (<https://ieeexplore.ieee.org/document/9429986>)
- Data-driven Bandwidth Prediction Models and Automated Model Selection for Low Latency (<https://ieeexplore.ieee.org/document/9154522>)
- Performance Analysis of ACTE: A Bandwidth Prediction Method for Low-latency Chunked Streaming (<https://dl.acm.org/doi/10.1145/3387921>)
- Online Learning for Low-latency Adaptive Streaming (<https://dl.acm.org/doi/10.1145/3339825.3397042>)
- Tightrope Walking in Low-latency Live Streaming: Optimal Joint Adaptation of Video Rate and Playback Speed (<https://dl.acm.org/doi/10.1145/3458305.3463382>)
- Content-aware Playback Speed Control for Low-latency Live Streaming of Sports (<https://dl.acm.org/doi/10.1145/3458305.3478437>)

## Server/Client/Network Collaboration

The following papers explain the benefits of server and network assistance in client-driven streaming systems. There is also a good reference about how congestion affects video quality and how rate control works in streaming applications.

- Manus Manum Lavat: Media Clients and Servers Cooperating with Common Media Client/Server Data (<https://dl.acm.org/doi/10.1145/3472305.3472886>)
- Common media client data (CMCD): initial findings (<https://dl.acm.org/doi/10.1145/3458306.3461444>)
- SDNDASH: Improving QoE of HTTP Adaptive Streaming Using Software Defined Networking (<https://dl.acm.org/doi/10.1145/2964284.2964332>)
- Caching in HTTP Adaptive Streaming: Friend or Foe? (<https://dl.acm.org/doi/10.1145/2578260.2578270>)
- A Survey on Multi-Access Edge Computing Applied to Video Streaming: Some Research Issues and Challenges
(<https://ieeexplore.ieee.org/document/9374553>)
- The Ultimate Guide to Internet Congestion Control (<https://www.compiralabs.com/ultimate-guide-congestion-control>)

## QoE Metrics

The following papers describe various QoE metrics one can use in streaming applications.

- QoE Management of Multimedia Streaming Services in Future Networks: a Tutorial and Survey (<https://ieeexplore.ieee.org/document/8930519>)
- A Survey on Quality of Experience of HTTP Adaptive Streaming (<https://ieeexplore.ieee.org/document/6913491>)
- QoE Modeling for HTTP Adaptive Video Streaming–A Survey and Open Challenges (<https://ieeexplore.ieee.org/document/8666971>)

## Point Clouds and Immersive Media

The following papers explain the latest developments in the immersive media domain (for video and audio) and the developing standards for such media.

- A Survey on Adaptive 360° Video Streaming: Solutions, Challenges and Opportunities (<https://ieeexplore.ieee.org/document/9133103>)
- MPEG Immersive Video Coding Standard (<https://ieeexplore.ieee.org/document/9374648>)
- Emerging MPEG Standards for Point Cloud Compression (<https://ieeexplore.ieee.org/document/8571288>)
- Compression of Sparse and Dense Dynamic Point Clouds—Methods and Standards (<https://ieeexplore.ieee.org/document/9457097>)
- MPEG Standards for Compressed Representation of Immersive Audio (<https://ieeexplore.ieee.org/document/9444109>)
- An Overview of Omnidirectional MediA Format (OMAF) (<https://ieeexplore.ieee.org/document/9380215>)
- From Capturing to Rendering: Volumetric Media Delivery with Six Degrees of Freedom (<https://ieeexplore.ieee.org/document/9247522>)

# Open-Source Tools

- 5G-MA: <https://www.5g-mag.com/reference-tools>
- dash.js: <https://reference.dashif.org/dash.js/latest/samples/>
- DASH-IF Conformance: <https://conformance.dashif.org>
- ExoPlayer: <https://github.com/google/ExoPlayer>
- FFmpeg: <https://www.ffmpeg.org/>
- GPAC: <https://gpac.wp.imt.fr/>
- hls.js: <https://github.com/video-dev/hls.js>
- OBS Studio: <https://obsproject.com/>
- Shaka Player: <https://github.com/google/shaka-player>
- Shaka Packager: <https://github.com/google/shaka-packager>
- Traffic Control CDN: <https://trafficcontrol.apache.org/>
- VideoLAN: <https://www.videolan.org/projects/>
- video.js: <https://github.com/videojs/video.js>

# Technical Events

- ACM Mile-High Video (MHV): <https://mile-high.video/>
- ACM Multimedia Systems (MMSys): <https://acmmmsys.org>
- ACM Multimedia (MM): <https://acmmm.org>
- ACM NOSSDAV: <https://www.nossdav.org/>
- ACM Packet Video: <https://packet.video/>
- Demuxed and meetups: <https://demuxed.com/> and https://demuxed.com/events/
- DVB World: <https://www.dvbworld.org>
- EBU BroadThinking: <https://tech.ebu.ch/events/broadthinking2021>
- IBC Conference: <https://show.ibc.org/conference/ibc-conference>
- IEEE Int. Conf. on Multimedia and Expo (ICME)
- Media Web Symposium: <https://www.fokus.fraunhofer.de/de/go/mws>
- Live Video Stack: <https://sh2021.livevideostack.com>
- Picture Coding Symp. (PCS)
- SCTE Expo: <https://expo.scte.org/>

# List of Organizations Working on Streaming Media

- 3GPP SA4: <https://www.3gpp.org/specifications-groups/sa-plenary/sa4-codec>
- 5G-MAG: <https://www.5g-mag.com/>
- AOM: <https://aomedia.org/>
- ATSC: <https://www.atsc.org/>
- CTA WAVE: <https://cta.tech/Resources/Standards/WAVE-Project>
- DASH Industry Forum: <https://dashif.org/>
- DVB: <https://dvb.org/>
- HbbTV: <https://www.hbbtv.org/>
- HESP Alliance: <https://www.hespalliance.org/>
- IAB: <https://www.iab.com/>
- MPEG: <https://www.mpegstandards.org/>
- Streaming Video Alliance: <https://www.streamingvideoalliance.org/>
- SCTE: <https://www.scte.org/>
- SMPTE: <https://www.smpte.org/>
- SRT Alliance: <https://www.srtalliance.org/>
- Video Services Forum: <https://vsf.tv/>
- VQEG: <https://www.its.bldrdoc.gov/vqeg/vqeg-home.aspx>
- W3C: <https://www.w3.org/>

# Topics to Keep an Eye on

## 5G and Media

5G new radio and systems technologies provide new functionalities for video distribution. 5G targets not only smartphones, but also new devices such as augmented reality glasses or automotive receivers. Higher bandwidth, lower latencies, edge and cloud computing functionalities, service-based architectures, low power consumption, broadcast/multicast functionalities and other network functions come hand in hand with new media formats and processing capabilities promising better and more consistent quality for traditional video streaming services as well as enabling new experiences such as immersive media and augmented realities.

- 5G Multimedia Standardization (<https://www.riverpublishers.com/journal_read_html_article.php?j=JICTS/6/1/8>)

## Ad Insertion

Ads can be inserted at different stages in the streaming workflow, on the server side or client side. The DASH-IF guidelines detail server-side ad-insertion with period replacements based on manipulating the manifest. HLS interstitials provide a similar approach. The idea is that the manifest can be changed and point to a sub-playlist of segments, possibly located on a different location. This approach results in efficient resource usage in the network, as duplicate caching is avoided, but some intelligence at the player is needed to deal with content transitions (e.g., codec changes, timeline gaps, etc.). Player support for such content is gradually maturing. Other important technologies for ad insertion include signalling of ads and breaks that is still typically based on SCTE-35 for HLS and SCTE-214 for DASH. Such signals provide useful information for scheduling the ads and contacting ad servers. The usage of SCTE-35 for ad insertion is popular in the broadcast industry, while the exact usage in the OTT space is still being discussed in SCTE. Another important technology is identification of ads, such as based on ad-id or other commercial entities that provide such services. The identification of the ad in a manifest or stream is usually standardized by SMPTE. Other key technologies for ad insertion include tracking of viewer impressions, usually based on Video Ad Serving Template (VAST) defined by IAB.

- DASH-IF Ad Insertion Guidelines: <https://dashif.org/docs/CR-Ad-Insertion-r7.pdf>
- SCTE-214-1: <https://www.scte.org/standards/library/catalog/scte-214-1-mpeg-dash-for-ip-based-cable-services-part1-mpd-constraints-and-extensions/>
- RP 2092-1:2015 - SMPTE Recommended Practice - Advertising Digital Identifier (Ad-ID) Representations: <https://ieeexplore.ieee.org/document/7291518>
- IAB Tech Lab Digital Video Studio: <https://iabtechlab.com/audio-video/tech-lab-digital-video-suite/>

## Contribution and Ingest

There are different contribution and ingest specifications dealing with different use cases. A common case is contribution that previously happened over satellite to a broadcast or streaming headend. RIST and SRT are examples of such contribution protocols. Within a streaming headend the encoder and packager/CDN may have an ingest/contribution interface as well. This is specified by the DASH-IF Ingest.

- DASH-IF Ingest: <https://github.com/Dash-Industry-Forum/Ingest>
- RIST: <https://www.rist.tv/>
- SRT: <https://github.com/Haivision/srt>

## Synchronized Encoding and Packaging

Practical streaming headends need redundant encoders and packagers to operate without glitches and blackouts. The redundant operation requires synchronization between two or more encoders and also between two or more packagers that possibly handle different inputs and outputs, generating compatible inter-changeable output representations. This problem is important for anyone developing a streaming headend at scale, and the synchronization problem is currently under discussion in the wider community. Follow the developments at: <https://sites.google.com/view/encodersyncworkshop/home>

## WebRTC-Based Streaming

WebRTC is increasingly being used for streaming of time-sensitive content such as live sporting events. Innovations in cloud computing allow implementers to efficiently scale delivery of content using WebRTC. Support for WebRTC communication is available on all modern web browsers and is available on native clients for all major platforms.

- DASH-IF WebRTC Discussions: <https://dashif.org/webRTC/>
- Overview of WebRTC: <https://webrtc.org/>

