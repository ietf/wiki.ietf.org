---
title: WebRTC
description: 
published: true
date: 2026-02-05T18:47:57.092Z
tags: da
editor: markdown
dateCreated: 2023-03-15T23:52:38.339Z
---

> # WebRTC Interop (KITE) and Compliance (WPT) testing
{.is-success}ha

## Overview
1. 
1. -    Goals
     - Fix browsers to support Simulcast 1.0 better,
      -  thus passing more compliance tests,
      -  and interoperate better with other browser, and here specifically with SFUs 

  -  Champion(s)
     -   Harald Alvestrand <harald at alvestrand.no>,
     -   "Dr Alex" Gouaillard <alex.gouaillard at cosmosoftware.io> 

 -   Browser vendors with Staff on site to fix on-the-fly
     -   Google (Harald, Henrik, Marina ...)
     -   Apple (Youenn F.)
     -   Mozilla (Nils O., ...)
     -   Microsoft (Nikita) 

 -   SFU Vendors with staff on site to fix on-the-fly
     -   Janus (lorenzo)
     -   Jitsi (emil, boris, or saul)
     -   meedoze (Sergio)
     -   others ? 

 -   Project(s)
      -  Add more tests to the Web Platform Tests suite for webrtc 1.0 Simulcast API Compliance
      -  Add more tests to the KITE webrtc 1.0 simulcast interop test suite
      -  Specifically Test browser interoperability with SFUs and MCUs in Simulcast Mode
      -  FIx browsers, rince, repeat
     -   fix SFUs, rince repeat 

We plan to extend and complete this document (below) over the hackathon with each and every new tests the SFU vendors will propose, or modified browsers the browsers vendor will provide: https://docs.google.com/spreadsheets/d/1F5iJ1Qs8AgVTlgdC1ZRhSVHRvTM46AW3r1_9oQhZiMc/edit#gid=0

Moreover, those slides represents goals and results of the Hackathon: https://docs.google.com/presentation/d/1Soi_fN0CdnH3wlPRtGvgY0HdOO-wrfHTv7Fb-zU8Y8Q/edit?usp=sharing
  
## KITE Test Bed for all

Specifically for this event, we created a gitHub repository with two automated kite interoperability tests. https://github.com/ManuCosmo/KITE-Hackathon

One test is a "typical" SFU test: KITE-Janus-Test is provided, which can be easily adapted to test any SFU, and should be the starting point for SFU developers wanting to automatically test against all the browser configuration CoSMo will provide for testing that week end.

CoSMo's Manu, KITE tech lead, is at disposal to help people install KITE on their laptop, and run the first local tests.

  ## SFU Tests
### CoSMo's Meedoze - The reference implementation to test Simulcast Again

https://github.com/ManuCosmo/KITE-Hackathon

One test, "KITE-Simulcast-Test", was specifically developed to test browser compliance. An app which sends simulcast to a special SFU based on meedoze, and receives back a given stream back depending on interaction with the UI is provided. It allows to test in loopback mode with a single browser (since simulcast is only sender side anyway), and all stream selection logic is made through UI button which makes it easily instrumented through KITE. The different simulcast features are not tested directly but indirectly (if I can select and receive a stream at a specific configuration it means the SFU receives them well and can differentiate them). The medooze simulcast loopback page, used by e.g. Apple for testing is hosted here: https://playground.cosmosoftware.io/index.html

  ### Meetecho's Janus

To test Janus, a test server is available:

   https://d10.conf.meetecho.com/ietf104/ (deployed locally in the IETF NOC) 

The easier way to test simulcasting is to use the "EchoTest?" plugin, which will allow you to choose which layers to send back. A couple of query strings are available to enable simulcast and force a specific codec:

  -  simulcast=true will enable old-style simulcasting (SDP munging for Chrome and Safari, rid-based for Firefox),
  -  simulcast2=true will enable the new rid-based simulcasting on Chrome M74 and M75;
  -  vcodec=X forces a specific codec (e.g., vcodec=h264). 

Here's a couple more examples:

   - https://d10.conf.meetecho.com/ietf104/echotest.html?simulcast=true
   - https://d10.conf.meetecho.com/ietf104/echotest.html?simulcast2=true
   - https://d10.conf.meetecho.com/ietf104/echotest.html?simulcast2=true&vcodec=h264 

The videoconferencing demo can be used as well: visit the videoroomtest.html page instead. The same query strings to enable simulcast than before apply, with the exception to the video codec selection. There's no changing the video codec, which defaults to VP8. If need be, a new room can be added to support for other codecs.

##  MediaSoup

Even if not attending, Inaki, tech lead of media soup, prepared some test for us.

To test Mediasoup, one can use https://v3demo.mediasoup.org

Some global variables in the browser console for debugging:

  -  PC1: the PeerConnection that sends mic/webcam.
  -  PC2: the PeerConnection that receives remote audio/video tracks using BUNDLE.
  -  CLIENT._micProducer and CLIENT._webcamProducer: mediasoup Producers, useful to check their rtpParameteres that have been signaled to the SFU.
  -  sendSdps(): prints the local and remote SDP of the sending PeerConnection? (PC1).
  -  recvSdps(): prints the local and remote SDP of the sending PeerConnection? (PC2). 

### Interesting links and prerequisite reading

  -  KITE: https://github.com/webrtc/KITE
  -  Web Platform Tests: https://github.com/web-platform-tests/wpt
     -   WebRTC test results: [latest and greatest](https://wpt.fyi/results/webrtc?label=master&product=chrome%5Bexperimental%5D&product=edge&product=firefox%5Bexperimental%5D&product=safari%5Bexperimental%5D&aligned) 