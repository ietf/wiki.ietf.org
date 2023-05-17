---
title: WebRTC 1.0 Improvements and testing
description: 
published: true
date: 2023-03-15T00:27:02.968Z
tags: 
editor: markdown
dateCreated: 2023-03-15T00:24:24.363Z
---

# WebRTC 1.0 Improvements and testing
## Overview

 - Goals
      -  Improve browsers support for Simulcast 1.0,
           - evaluated by the number of passing compliance tests, 
      - interoperate better with other browser,
      - and for simulcast 1.0 specifically with SFUs
           - evaluated by the number of passing KITE tests. 

 -  Champion(s)
      -  Harald Alvestrand <harald at alvestrand.no>,
       - "Dr Alex" Gouaillard <alex.gouaillard at cosmosoftware.io> 

 -   Browser vendors with Staff on site to fix on-the-fly
     -   Google (Harald, Steve Anton)
     -   Apple (Youenn F.) TBC
     -   Mozilla (Nils O., ...) TBC
     -   Microsoft (Bernard A., ...) TBC 

  -  SFU Vendors with staff on site to fix on-the-fly
     -   Janus (lorenzo) TBC
     -   Jitsi (emil, boris, or saul) TBC
     -   meedoze (Sergio) TBC
     -   others ? 

  -  Project(s)
     -   Add more tests to the Web Platform Tests suite for webrtc 1.0 Simulcast API Compliance
     -   Add more tests to the KITE webrtc 1.0 simulcast interop test suite
      -  Specifically Test browser interoperability with SFUs and MCUs in Simulcast Mode
      -  FIx browsers, rince, repeat
      -  fix SFUs, rince repeat 

We plan to extend and complete [this document](https://docs.google.com/spreadsheets/d/1g55c_fzwifXdEXDTi2gOiM6GMOyWYvW1wi5YU_ndlmg/edit?usp=sharing) over the duration of the hackathon with each and every new tests the SFU vendors will propose, or modified browsers the browsers vendor will provide.

Moreover, [those slides represents goals and results](https://docs.google.com/presentation/d/1qvcYdHYq_8trXspekPcYJlkyvqLUImDZ51SsOa3bCGU/edit?usp=sharing) of the Hackathon:

  ## KITE Test Bed for all

Specifically for this event, we created a gitHub repository with two automated kite interoperability tests. https://github.com/ManuCosmo/KITE-Hackathon

One test is a "typical" SFU test: KITE-Janus-Test is provided, which can be easily adapted to test any SFU, and should be the starting point for SFU developers wanting to automatically test against all the browser configuration CoSMo will provide for testing that week end.
  
## SFU Tests
### CoSMo's Meedoze - The reference implementation to test Simulcast Again

https://github.com/ManuCosmo/KITE-Hackathon

One test, "KITE-Simulcast-Test", was specifically developed to test browser compliance. An app which sends simulcast to a special SFU based on meedoze, and receives back a given stream back depending on interaction with the UI is provided. It allows to test in loopback mode with a single browser (since simulcast is only sender side anyway), and all stream selection logic is made through UI button which makes it easily instrumented through KITE. The different simulcast features are not tested directly but indirectly (if I can select and receive a stream at a specific configuration it means the SFU receives them well and can differentiate them). The medooze simulcast loopback page, used by e.g. Apple for testing is hosted here: https://playground.cosmosoftware.io/index.html

  ### Meetecho's Janus

There are a couple of demo pages available:

   https://d10.conf.meetecho.com/ietf105/echotest.html (Echo Test)
    https://d10.conf.meetecho.com/ietf105/videoroomtest.html (SFU) 

By default, no simulcast is used. To use simulcast, you need to add a query string attribute to those urls:

 -   `simulcast=true` enables simulcast via SDP munging
 -   `simulcast2=true` enables rid-based simulcast (Chrome only)
  -  `vcodec=h264` tries to force H.264 instead of the default (vp8) 

For Firefox, always use the first one (will use rid but using the legacy API).

Lorenzo will be in the room and host a local Janus instance for testing as well: easier to tweak and update when doing interoperability testing.

  ### Mediasoup

Even if not attending, Inaki, tech lead of media soup, prepared some test for us.

To test Mediasoup, one can use https://v3demo.mediasoup.org

Some global variables in the browser console for debugging:

 -   PC1: the Peer Connection that sends mic/webcam.
 -   PC2: the Peer Connection that receives remote audio/video tracks using BUNDLE.
 -   CLIENT._micProducer and CLIENT._webcamProducer: mediasoup Producers, useful to check their rtpParameteres that have been signaled to the SFU.
 -   sendSdps(): prints the local and remote SDP of the sending Peer Connection (PC1).
 -   recvSdps(): prints the local and remote SDP of the sending Peer Connection (PC2). 

## Interesting links and prerequisite reading

  -  KITE: https://github.com/webrtc/KITE
  -  Web Platform Tests: https://github.com/web-platform-tests/wpt
        WebRTC test results: [latest and greatest](https://wpt.fyi/results/webrtc?label=master&product=chrome%5Bexperimental%5D&product=edge&product=firefox%5Bexperimental%5D&product=safari%5Bexperimental%5D&aligned) 