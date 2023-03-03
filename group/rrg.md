---
title: RRG (Concluded) Routing Research Group
description: 
published: true
date: 2023-03-03T23:15:43.612Z
tags: irtf
editor: markdown
dateCreated: 2023-03-03T23:15:43.611Z
---

# Routing Research Group (RRG) (Concluded)

[RRG home page & charter](https://irtf.org/concluded/rrg)
## RRG Program Committee 
The RRG Program Committee is responsible for approving all presentations put before the RRG.  Prospective presenters must get the approval of at least one committee member before an agenda slot will be granted.  The members of the Program Committee are the RRG co-chairs and:

 * Joel Halpern 
 * Jari Arkko 
 * David Conrad 
 * David Oran 
 * Noel Chiappa 

To contact the Program Committee or request a slot on the RRG meeting agenda, please send mail to rrg-pc@lists.cs.ucla.edu.  For agenda requests, please attach a pointer to the document  that you will be presenting.  This document must be publicly accessible before your agenda slot can be granted.


## Next Meeting 
(Proposed) Friday, Mar. 26, 2010
Anaheim, California 
[IETF 77](https://www.ietf.org/proceedings/77/minutes/RRG.txt)

## Past Meetings 

Prague (3/17/07): 
Chicago (7/2/07): 
Vancouver (12/3 & 12/7/07): 
Philadelphia (3/11 & 3/14/08): 
Dublin (8/1/08):  
Minneapolis (11/16/08): 
San Francisco (3/27/09): 
Stockholm (7/31/09): 
Hiroshima, Japan (11/13/2009): 

## December 2009: Proposals Submitted to RRG for Recommendation Consideration 
1. [http://www.ietf.org/mail-archive/web/rrg/current/msg05536.html 2-phased mapping for Internet core/edge split schemes]
Wei Zhang
2. [http://www.ietf.org/mail-archive/web/rrg/current/pdfkyygpVszbl.pdf Aggregation with Increasing Scopes: An Evolutionary Path Towards Global Routing Scalability]
Paul Francis, Dan Jen, Dan Massey, Robert Raszuk, Lan Wang, Xiaohu Xu, Beichuan Zhang, Lixia Zhang
3. [http://www.ietf.org/mail-archive/web/rrg/current/msg05540.html Enhanced Efficiency of Mapping Distribution Protocols in Map-and-Encap Schemes]
K. Sriram, Young-Tak Kim, Doug Montgomery
4. [http://www.ietf.org/mail-archive/web/rrg/current/msg05537.html Global Locator, Local Locator, and Identifier Split (GLI-Split)]
Michael Menth, Matthias Hartmann, Dominik Klein
5. [http://www.ietf.org/mail-archive/web/rrg/current/msg05529.html hIPv4]
Patrick Frejborg
6. [http://www.ietf.org/mail-archive/web/rrg/current/msg05539.html Identifier-Locator Network Protocol (ILNP)]
Ran Atkinson
7. [http://www.ietf.org/mail-archive/web/rrg/current/msg05533.html Ivip][[br]]
Robin Whittle
8. [http://www.ietf.org/mail-archive/web/rrg/current/msg05491.html Layered Mapping System (LMS)] 
Sun Letong, Yin Xia, Wang Zhiliang, Wu Jianping 
9. [http://www.ietf.org/mail-archive/web/rrg/current/msg05503.html LISP]
Vince Fuller, Dino Farrinacci, David Meyer and Darrel Lewis
10. [http://www.ietf.org/mail-archive/web/rrg/current/msg05531.html Mapping system based on Compact Routing]
Hannu Flinck
11. [http://www.ietf.org/mail-archive/web/rrg/current/msg05543.html Name-Based Sockets]
Christian Vogt
12. [http://www.ietf.org/mail-archive/web/rrg/current/msg05532.html Name Overlay(NOL)]
Yangyang Wang
13. [http://www.ietf.org/mail-archive/web/rrg/current/msg05505.html RANGI]
Xiaohu XU
14. [http://www.ietf.org/mail-archive/web/rrg/current/msg05665.html Routing and Addressing in Next-Generation EnteRprises (RANGER)] 
Fred Templin
15. [http://www.ietf.org/mail-archive/web/rrg/current/msg05538.html Tunneled Inter-domain Routing (TIDR)]
Juan Jose Adan

## RRGTerminology Terminology 

**locator:** A locator is a name for a point of attachment within the topology at a given layer.  Objects that change their point of attachment(s) will need to change their associated locator(s).  By default, a locator refers to layer 3.  It is also possible to have locators at other layers. Locators may have other properties, such as their scope (local or global (default)) and their lifetime (ephemeral or permanent (default)).

**identifier:** An identifier is the name of an object at a given layer; identifiers have no topological sensitivity, and do not have to change, even if the object changes its point(s) of attachment within the network topology.  Identifiers may have other properties, such as the scope of their uniqueness (local or global (default)), the probability of their uniqueness (statistical or absolute (default)), and their lifetime (ephemeral or permanent (default)).

**address:** An address is a name that is used as both an interface locator and an endpoint identifier.


-----------------------------------------

## (Old) Proposal Summaries ==
[http://users.piuha.net/chvogt/pub/2008/vogt-2008-six-one-router-design.pdf Six/One Router -- Design and Motivation]
[http://users.piuha.net/chvogt/pub/2008/vogt-2008-design-taxonomy.pdf Design Taxonomy and Analysis for Address-Indirection-Based Routing Scalability Improvements]
[http://www.employees.org/~swb/draft-brim-lisp-analysis-00.txt LISP Analysis]
[http://users.piuha.net/chvogt/pub/2008/vogt-2008-dns-map.pdf DNS Map - A DNS-Based Resolution System for IP Address Mappings]
[http://users.piuha.net/chvogt/pub/2008/eriksson-2008-dyna-v2.pdf A Dynamic Internetworking Architecture (DYNA)]
[http://www.firstpr.com.au/ip/ivip/Ivip-summary.pdf Ivip Conceptual Summary and Analysis]
[http://bill.herrin.us/network/trrp-rrg.html Tunneling Route Reduction Protocol] Conceptual Summary and Analysis ([http://bill.herrin.us/network/trrp-rrg.pdf PDF])
[http://www.cs.ucla.edu/~meisel/apt-rrg.pdf APT: A Practical Tunneling Architecture]
[http://www.ops.ietf.org/lists/rrg/2008/msg00580.html V6DH IPv6 Dual Homing Conceptual Summary and Analysis]
[http://oc-co.org/articles/tamara-summary.pdf TAMARA concept summary]

## Active Proposals 

### AIRA 
[http://www.info.ucl.ac.be/~obo/papers/rrg.pdf Reconsidering the Internet Routing Architecture] 
[http://www.info.ucl.ac.be/~obo/pres/IRTF-Prague.pdf Slides]

### APT 
[http://tools.ietf.org/html/draft-jen-apt APT: A Practical Transit-Mapping Service] (07/11) 
APT is part of 
[http://www.cs.ucla.edu/~lixia/papers/07SIG_IP6WS.pdf eFIT] architecture (07/08) [[br]]
[http://www.cs.ucla.edu/~lixia/0703RRG_eFIT.pdf eFIT Slides] (07/03)

### CRIO 
[http://www.cs.cornell.edu/People/francis/icnp06-crio.pdf Shrinking and Controlling Routing Table Size]
[ftp://ftpeng.cisco.com/tli/RRG-ietf68-crio.ppt Slides]

### LISP 
[https://datatracker.ietf.org/drafts/draft-ietf-lisp/ LISP] 
[https://datatracker.ietf.org/drafts/draft-ietf-lisp-ms/ LISP Map Server] 
[https://datatracker.ietf.org/drafts/draft-ietf-lisp-alt/ LISP Alternative Topology (LISP-ALT)] 
[https://datatracker.ietf.org/drafts/draft-ietf-lisp-interworking/ Interworking LISP with IPv4 and IPv6] 
[https://datatracker.ietf.org/drafts/draft-iannone-lisp-mapping-versioning/ LISP Mapping Versioning] 
[https://datatracker.ietf.org/drafts/draft-meyer-lisp-mn/ LISP Mobility Architecture] 
[https://datatracker.ietf.org/drafts/draft-ietf-lisp-multicast/ LISP for Multicast Environments] 

[http://www.ietf.org/mail-archive/web/lisp/current/pdf1piLVmIlgK.pdf LISP-TREE: A DNS Hierarchy to Support the LISP Mapping System]
[http://inl.info.ucl.ac.be/publications/cost-caching-locatorid-mappings On the Cost of Caching Locator/ID Mappings] 
[http://www.employees.org/~swb/draft-brim-lisp-analysis-00.txt LISP Analysis]
[http://www.cs.ucla.edu/~lixia/rrg-lisp-ID-00.pdf Slides] 
#### LISP (obsolete) 
[http://tools.ietf.org/html/draft-meyer-lisp-cons LISP-CONS: A Content distribution Overlay Network Service for LISP] 
[http://tools.ietf.org/html/draft-lear-lisp-nerd NERD: A Not-so-novel EID to RLOC Database] 
[http://www.info.ucl.ac.be/~iannone/LISP/R+A-LISP-DHT.pdf LISP-DHT: Toward a DHT to map identifiers onto locators (Summary and Analysis)] 
[http://inl.info.ucl.ac.be/publications/lisp-dht-towards-dht-map-identifiers-locators Original LISP-DHT Draft] 
### IPvLX 
[http://ipvlx.com IP with virtual Link eXtension (IPvLX)] 
[http://www.rfc-editor.org/rfc/rfc4214.txt ISATAP] 
[http://www.ietf.org/internet-drafts/draft-templin-rfc4214bis-03.txt ISATAP(bis)] 
[http://ops.ietf.org/lists/v6ops/v6ops.2007/msg00210.html Recommendation to advace RFC4214 to standards-track]

### Ivip 
[http://www.firstpr.com.au/ip/ivip/ Internet vastly improved plumbing]

### Six/One 
[http://users.piuha.net/chvogt/pub/2008/vogt-2008-six-one-router-design.pdf Six/One Router -- Design and Motivation]

[http://users.piuha.net/chvogt/pub/2008/vogt-2008-design-taxonomy.pdf Design Taxonomy and Analysis for Address-Indirection-Based Routing Scalability Improvements]

[http://users.piuha.net/chvogt/pub/2008/vogt-2008-six-one-router.pdf Six/One Router - A Scalable and Backwards-Compatible Solution for Provider-Independent Addressing and IPv4/IPv6 Interworking]

[http://users.piuha.net/chvogt/pub/2008/vogt-2008-six-one-router-spec.pdf Six/One Router Specification] 
''Detailed specification of the [http://users.piuha.net/chvogt/pub/2008/vogt-2008-six-one-router.pdf Six/One Router] protocol''

[http://users.piuha.net/chvogt/pub/2007/draft-vogt-rrg-six-one-01.txt Six/One: A Solution for Routing and Addressing in IPv6]  
''High-level protocol specification of Six/One (!draft-vogt-rrg-six-one)''

[http://users.piuha.net/chvogt/pub/2007/vogt-2007-six-one-slides.pdf Six/One - A combined host/network-based solution for edge network multi-homing]  ''Presentation at the IRTF Routing research group meeting on July 27, 2007, Chicago''

[http://users.piuha.net/chvogt/pub/2007/vogt-2007-six-one-proxy-support-pre.pdf Proxy Support for Six/One]  
''Transition and interworking techniques for flexible, incentives-driven, and backward-compatible Six/One deployment''

[http://users.piuha.net/chvogt/pub/2007/vogt-2007-path-to-sixone-slides.pdf The Path to Six/One - Incentives, Backward-Compatibility and Deployment Flexibility] 
''Presentation at the IRTF Routing research group meeting on December 3, 2007, Vancouver''

### TAMARA 
[http://oc-co.org/articles/topo-article.pdf TAMARA]

### TRRP 
[http://bill.herrin.us/network/trrp.html Tunneling Route Reduction Protocol] 
[http://bill.herrin.us/network/trrp-rrg.html Conceptual Summary and Analysis] ([http://bill.herrin.us/network/trrp-rrg.pdf PDF])

## Design Goals 
[http://tools.ietf.org/html/draft-irtf-rrg-design-goals Internet draft]
[ftp://ftpeng.cisco.com/tli/SIR%20Design%20Goals.ppt Design Goals]

## Background Reading 
[http://www.vaf.net/~vaf/apricot-plenary.pdf Scaling issues w/routing & multihoming] 
[http://tools.ietf.org/html/draft-iab-raws-report RAWS workshop report] 
[http://www.iab.org/about/workshops/routingandaddressing/ RAWS workshop presentations] 
[http://www.rfc-editor.org/rfc/rfc4380.txt Teredo] 
[http://wiki.ist-ring.org RiNG project reading list] 



## Research Papers on Scalable Routing 
### HLP: A Next-generation Interdomain Routing Protocol 
[http://www.cs.ucl.ac.uk/staff/M.Handley/papers/hlpsigcomm.pdf HLP] 

### ROFL: Routing on Flat Labels 
[http://www.sigcomm.org/sigcomm2006/discussion/showpaper.php?paper_id=34 ROFL]



### Related Call for Papers / Workshops 
[http://www.ist-ring.org/workshops/RiNG-Workshop-CFP-Dec2007.pdf Call for Papers - Routing in Next Generation Workshop - 13-14 December 2007 - Madrid (Spain)]
[http://www.ist-ring.org/index.php?page=workshops/ring_2007_workshop Routing in Next Generation Workshop]

### Related Activities
[http://www.nets-find.net/ NSF FIND]
[http://www.ist-ring.org RiNG (Routing in Next Generation) Project] 

