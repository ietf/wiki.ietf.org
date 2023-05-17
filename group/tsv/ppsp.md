---
title: PPSP
description: 
published: true
date: 2023-03-13T00:55:15.170Z
tags: 
editor: markdown
dateCreated: 2023-03-13T00:55:09.228Z
---

 This site is intended to promote interest in, and provide information about PPSP.PPSP is the abbreviation of Peer to Peer Streaming Protocol. Its aim is to define a protocol of locating and transmitting real-time data efficiently from multiple sources with different pieces in peer to peer environment.

Mailing list is available [here](https://www.ietf.org/mailman/listinfo/PPSP).

## IETF 76 BOF Request

Proposed Transport Area (TSV) BOF: PPSP (Peer to Peer Streaming Protocol) Proposed for IETF Hiroshima (November 08-13, 2009)

PPSP BOF Description: Streaming traffic is among the fastest growing traffic on the Internet. In a recent white paper, Cisco predicts that by 2012, 90% of all Internet traffic will be video. The IETF P2PSIP, ALTO and LEDBAT working groups are being produced a significant number of P2P protocols (e.g.,RELOAD).The time has come to introduce P2P technologies into streaming in standardization catering for the trend of streaming monopolization on the Internet. See the initial draft list of work items below for details (expansion of this list during the BOF is a definite possibility).

The purpose of PPSP BOF is to determine whether a working group should be formed to develop standard signaling protocols (called PPSP protocols) for multiple types of entities (e.g. intelligent endpoints, caches, content distribution network nodes, and/or other edge devices) to participate in P2P streaming systems in both fixed and mobile Internet.

This work is envisioned to encompass:

 -   Standardization of the P2P streaming signaling protocols between PPSP peers and PPSP tracker, and among PPSP peers.
 -   Evaluate PPSP with and without Mobile IP support when there are a lot of mobile peers in the system.
 -   A complete description of the security/privacy issues that PPSP should address.
 -   Interoperability with current P2P protocols in P2PSIP and ALTO and MMUSIC WG. 

The envisioned work **WILL NOT** include

  -  Transport mechanisms for data transmission among PPSP peers, e.g. using TCP or UDP, unicast or multicast, etc.
 -   Network coding mechanisms in P2P streaming.
 -   Play-out mechanisms including streaming control (e.g., pause, fast-forward, and rewind).
 -   Algorithms that may be different in different deployments (e.g., chunk selection, local storage strategies).
 -   Research type questions related to P2P streaming. 

Initial draft list of work items:

  1.  A “problem statement” document describing the problems, incentives, and scope of developing the PPSP protocols, as well as common terminologies and concepts.
 2.   A “requirements” document listing the requirements on the designed PPSP protocols (e.g., general functionality and performance requirements of PPSP protocols or basic types of information that PPSP protocols should communicate to facilitate P2P streaming).
 3.   An "architectural survey" document explaining the current P2P streaming architectures, in particular tracker-based P2P streaming, and key issues in best practice.
 4.   A proposed standard defining the PPSP peer protocol. This protocol will define how PPSP peers advertise chunk availability. The protocol will also define the requests and responses of chunks among PPSP peers.
 5.   A proposed standard defining the PPSP tracker protocol. This protocol will define how PPSP peers inform and request information from PPSP trackers and how PPSP trackers reply to the requests.
 6.   A “usage document” explaining how the protocols defined above, along with existing IETF protocols, such as RELAOD, ALTO and RTSP, can inter-operate; and how they may be integrated together to produce complete P2P streaming systems.
 7.   Optionally a ”mobile usage document” (PPSP mobile BCP document) to evaluate PPSP with and without Mobile IP support when there are a lot of mobile peers in the system. 

Scheduling Request: While IETF BOFs are scheduled on a time-and-space available basis, there may be conflicting events for the P2PSIP, ALTO, MMUSIC and AVT community on the IETF Hiroshima week. For this reason a meeting slot that is un-conflicting to the above WG meetings is strongly requested (if the WG meeting time slot is decided before the BOF time decision) for this BOF in order to obtain participation of the related communities.

### PROPOSED AGENDA FOR 'PPSP BOF'

IETF 76, Hiroshima, Japan

  1.  Introduction/Agenda? Bashing (5 mins)
  2.  BOF Scope and Goals (10 mins)
  3.  Problem Statement (50 mins)
   3.1 Presentation (30 mins,Yunfei)
   3.2 Discussion (20 mins)
  4.  Requirements of PPSP Protocols (20 mins,Ning)
  5.  Solution Space
    5.1 Presentation (10 mins) 

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  Architecture of current P2P streaming systems (Gonzalo or others)

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   5.2 Presentation (10 mins)

 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Feasibility of DHT based P2P streaming

  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  5.3 Discussion (10 mins)

  6.  Charter Bashing and Open Discussion (15 mins)
  7.  Next Steps (5 mins) 

## Older Material

   Draft
        draft-zhang-ppsp-problem-statement-05
        draft-zong-ppsp-reqs-00
        draft-zhang-ppsp-protocol-comparison-measurement-02
        draft-zhang-ppsp-dsn-introduction-00
        draft-chen-ppsp-dht-chunk-discovery-evaluation-00
        draft-gu-ppsp-survey-01
        draft-hu-ppsp-tracker-dht-performance-comparison
        draft-softgear-ppsp-olive-griddelivery-intro-00
        draft-wu-ppsp-mtn-introduction-00 

 -   IETF-75 PPSP final bar bof agenda
        1. Introduction and Agenda bashing (Chair,5')
        2. Problem Statement (Yunfei Zhang, 40')
            draft-zhang-ppsp-problem-statement-04 
        3. Discussion (All,20'）
        4. Other Drafts (the time length is variable depending on the above discussion time)
          -  Protocol Analysis of PPlive, PPStream and UUSee by Interent Measurement (Yunfei Zhang,5') draft-zhang-ppsp-protocol-comparison-measurement-02
          -  Chunk Discovery for P2P Streaming (Ning Zong, 10’) draft-zong-ppsp-chunk-discovery-00 
        5. Proposed Roadmap and Charter Discussion (All,30')
        6. Decisions and HUMs (All, 5')
        7. Conclusions and Next Steps (Chairs/ADs, 5') 

Charter
   -   The Peer-to-Peer (P2P) Streaming Protocol working group (PPSP WG) is chartered to develop standard signaling protocols (called PPSP protocols) for multiple types of entities (e.g. intelligent endpoints, caches, content distribution network nodes, and/or other edge devices) to participate in P2P streaming systems in both fixed and mobile Internet.
   -   PPSP protocols include the PPSP tracker protocol – a signaling protocol between "PPSP trackers" and "PPSP peers", and the PPSP peer protocol – a signaling protocol among “PPSP peers”. A PPSP tracker maintains lists of participating PPSP peers, each for a specific channel or streaming file, and answers the queries from PPSP peers for candidate PPSP peers. PPSP peers inform their status information to PPSP trackers, exchange their chunk availability with other PPSP peers and/or PPSP trackers, and ask other PPSP peers for wanted data.
   - This WG's primary tasks are to produce:
            1. A "problem statement" document describing the problems, incentives, and scope of developing the PPSP protocols, as well as common terminologies and concepts.
            2. A “requirements” document listing the requirements on the designed PPSP protocols (e.g., general functionality and performance requirements of PPSP protocols or basic types of information that PPSP protocols should communicate to facilitate P2P streaming).
            3. An "architectural survey" document explaining the current P2P streaming architectures, in particular tracker-based P2P streaming, and key issues in best practice.
            4. A proposed standard defining the PPSP peer protocol. This protocol will define how PPSP peers advertise chunk availability. The protocol will also define the requests and responses of chunks among PPSP peers.
            5. A proposed standard defining the PPSP tracker protocol. This protocol will define how PPSP peers inform and request information from PPSP trackers and how PPSP trackers reply to the requests.
            6. A "usage document" explaining how the protocols defined above, along with existing IETF protocols, such as RELAOD, ALTO and RTSP, can inter-operate; and how they may be integrated together to produce complete P2P streaming systems.
            7. Optionally a "mobile usage document" (PPSP mobile BCP document) to evaluate PPSP with and without Mobile IP support when there are a lot of mobile peers in the system. 
   -  The work planned for the PPSP working group is distinct from, but requires close participation with other IETF WGs, particularly P2PSIP,ALTO and MMUSIC. The group cannot modify the baseline P2PSIP,ALTO and MMUSIC behavior. If the group determines that any capabilities requiring an extension to P2PSIP,ALTO or RTSP are needed, the group will seek to define such extensions presented to the respective working groups.
    -    The design of PPSP has to consider security/privacy issues. The protocol document will contain a complete description of the security/privacy issues that PPSP should address.
  -  The following topics are excluded from the Working Group's scope:
            1. Transport mechanisms for data transmission among PPSP peers, e.g. using TCP or UDP, unicast or multicast, etc.
            2. Network coding mechanisms in P2P streaming. Network coding may be used in P2P streaming, but its support is beyond the scope of current charter.
            3. Play-out mechanisms including streaming control (e.g., pause, fast-forward, and rewind).
            4. Algorithms that may be different in different deployments (e.g., chunk selection, local storage strategies).
            5. Research type questions related to P2P streaming. This WG will instead forward such questions to the IRTF P2PRG or other RG as appropriate. Examples include cache management. 
       
       
  Goals and Milestones:
            Apr 2010 Working Group Last Call for problem statement
            Jun 2010 Submit problem statement to IESG as Informational document
            Aug 2010 Working Group Last Call for requirements document
            Aug 2010 Working Group Last Call for requirements
            Oct 2010 Submit architecture survey to IESG as Informational document
            Oct 2010 Submit requirements to IESG as Informational document
            Apr 2011 Working Group Last Call for PPSP peer protocol
            Apr 2011 Working Group Last Call for PPSP tracker protocol
            Aug 2011 Submit PPSP peer protocol to IESG as Proposed Standard
            Aug 2011 Submit PPSP tracker protocol to IESG as Proposed Standard
            Nov 2011 Working Group Last Call of usage docume
            Nov 2011 Working Group Last Call of mobility BCP document
            Jan 2012 Submit usage document to IESG as Informational document
            Jan 2012 Submit mobility BCP document to IESG as Informational document
            Apr 2012 Dissolve or re-charter 

  (in progress, more material to follow...) 
    
    
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-10-30. It was migrated from the old Trac wiki on 2023-03-12.*    