---
title: Capacity Sharing Arch
description: 
published: true
date: 2023-01-30T00:15:45.843Z
tags: 
editor: markdown
dateCreated: 2023-01-30T00:15:41.180Z
---

# Internet Capacity Sharing Architecture 
## A Design Team of the Internet Congestion Control Research Group (ICCRG)
### Goal
This Design Team was set up at the [ICCRG meeting](http://www.ietf.org/proceedings/08nov/iccrg.html) in Nov 2008 after consultation with working groups in the IETF Transport Area.

Its given goal is to produce an informational IRTF RFC proposing a target capacity sharing architecture for the Internet. The process of writing it will foster discussion in the community and record the consensus reached. It could then be used as input to subsequent Internet Architecture Board (IAB) and Internet Engineering Steering Group (IESG) activity.

The new principle to build on is that the capacity sharing function belongs primarily to the network.

### Discussion
Discussion on this topic is encouraged on the [main ICCRG mailing list](http://oakham.cs.ucl.ac.uk/mailman/listinfo/iccrg).

### Drafts
#### Candidate Capacity Sharing Architecture/Vision Statements
- [Rethinking TCP Friendly, M.Mathis](http://staff.psc.edu/mathis/unfriendly/drafts/index.html) (Individual pre-Draft)
#### Problem Statements
- [Problem Statement: Transport Protocols Don't Do Fairness](http://bobbriscoe.net/projects/refb/#relax-fairness), B.Briscoe, T.Moncaster and L.Burness (Individual Draft)
- [Comments on the Usefulness of Simple Best-Effort Traffic](http://www.ietf.org/rfc/rfc5290.txt), S.Floyd and M.Allman (Independent Submission to RFC Editor)
### Activity
- Summary of re-launch meeting presented to ICCRG, Mar'11 at IETF-80, Prague [slides](http://www.bobbriscoe.net/present.html#1103iccrg)
### History
Since at least the mid-1970s, one recurrent goal of capacity allocation in packet networks has been for competing flows to use equal bottleneck capacity [Raubold76].

In contrast, in 1985, Fair Queing (FQ [RFC970](http://www.ietf.org/rfc/rfc970.txt)) provided a mechanism for network operators to divide access capacity equally between active source hosts. However, Nagle was careful to point out that this only solved the problem of fairness at one switch, not network-wide, and then only if hosts could be trusted not to spoof multiple source addresses.

In 1987 Van Jacobson's TCP algorithms provided a distributed solution to the network-wide problem of congestion avoidance and control. The congestion avoidance phase aimed for a capacity allocation that is now termed 'window fairness', where competing flows through a bottleneck have equal windows of packets in flight. Thus the unit of capacity allocation became the flow and flows with smaller RTT or with larger packets were expected to take a proportionately greater share of bottleneck link capacity.

The success and prevalence of TCP gradually led to 'window fairness' becoming the 'gold standard' for capacity sharing, both in the IETF and in the data networking research community. In Jan 1997 the term TCP-friendliness was coined for this idea [Madhavi97]. Subsequently, a number of informational and best current practice RFCs put forward TCP-friendliness as a desirable goal of good congestion controls (e.g. [RFC2309](http://www.ietf.org/rfc/rfc2309.txt), [RFC2357](http://www.ietf.org/rfc/rfc2357.txt), [RFC2914](http://www.ietf.org/rfc/rfc2914.txt) [RFC5033](http://www.ietf.org/rfc/rfc5033.txt) and [RFC5405](http://www.ietf.org/rfc/rfc5405.txt)). But the IETF has always been careful not to state TCP-friendliness as an absolute requirement.

Later in 1997, Kelly [Kelly97] proved that weighted congestion controls would be necessary to optimise the value everyone derives from the Internet. And in 2006, Briscoe spelled out for the IETF why Kelly's work implied equal rates were likely to be extremely unfair [Briscoe07]. It was pointed out that TCP-friendliness doesn't take account of how long flows run for (or how many flows per user). Therefore it leads to such undesirable allocations of capacity that ISPs are increasingly overriding TCP to reach an allocation that their customers, on the whole, prefer.

By Nov 2008 RFC5405 was published still recommending TCP-Friendliness for UDP application designers. But at the same time, with broad support across the IETF transport area, the ICCRG was asked to create a design team to work on a way forward for capacity sharing and congestion control. TCP-Friendliness was seen as a useful stop-gap, but no longer useful as a future direction. Indeed, in a non-binding straw poll during the IETF's Transport Area plenary in March 2009, no-one at all supported TCP-Friendliness as a way forward for the IETF.

In May 2009, the ICCRG further proposed to recognise a distinction between present guidelines and possible future guidelines by forming two complementary strands of work on congestion controls:

1. to continue the ICCRG's role in providing expert [evaluation of proposed](http://trac.tools.ietf.org/group/irtf/trac/wiki/ICCRG#EvaluationofProposedExperimentalCongestionControlSchemes) experimental congestion controls using existing IETF guidelines;
2. in parallel to research new congestion controls that do not aim to share bottleneck capacity equally with TCP, instead presuming some other mechanism controls 'fair' shares.

In Jun 2010, the IETF created the congestion exposure (ConEx) working group to define an experimental change to IP that will give network traffic management nodes sufficient information to share capacity between traffic from different user sites without depending on flow or host identifiers. Outputs from this w-g are progressing [here](http://tools.ietf.org/wg/conex/).

### Related Resources
#### Literature Surveys
- Congestion Control in the RFC Series [RFC5783](http://tools.ietf.org/html/rfc5783)
#### Congestion Controls for which TCP-Friendliness Doesn't Apply
- IETF activities
	- [Congestion Exposure (ConEx)](http://tools.ietf.org/wg/conex/)
	- [Low extra delay background transport (LEDBAT)](http://tools.ietf.org/wg/ledbat/)
	- [Pre-congestion notification (PCN)](http://tools.ietf.org/wg/pcn/)
	- [Pseudowire Congestion Control Framework](http://tools.ietf.org/wg/pwe3/draft-ietf-pwe3-congestion-frmwk/)
	- [multipath TCP (MPTCP)](http://trac.tools.ietf.org/bof/trac/wiki#Transport) (a re-definition of TCP-Friendly for multiple paths)
- Research implementations & proposals
	- [Relentless Congestion Control](http://staff.psc.edu/mathis/relentless/)
	- [Weighted Window-based Congestion Control](http://tracer.ucnet.uoc.gr/wtp/) [Siris02]
	- mulTFRC [Damjan09]
	- mulTCP [Crowcroft98]
### Network Enforced Capacity Sharing
- Deployed approaches
	- Fair Queuing [RFC970](http://www.ietf.org/rfc/rfc970.txt)
	- Weighted Fair Queuing [Demers89] (deployed implementations may vary)
	- Link layer Media Access Controls; all the MACs of technologies designed for shared consumer access networks control capacity sharing (cable [DOCSIS3.0MAC; S.7], passive optical network (PON) [Zheng05], cellular, etc.)
	- Volume capping--a common ISP practice
	- Deep Packet Inspection--another common ISP practice
	- Diffserv traffic isolation & policing [RFC2475](http://www.ietf.org/rfc/rfc2475.txt)
- Research proposals
	- Bulk Internetwork Congestion Policing [Jacquet08]
	- TCP-friendliness policed per bottleneck and per flow, e.g:
		- Approx. Fair Dropping (AFD [Pan03])
		- Stabilized RED [Ott99]),
		- XCHOKe [Chhabra02]),
		- Least Recently Used RED (LRU-RED [Smitha01]),
		- RED with Preference Dropping (RED-PD [Mahajan01]),
		- Floyd & Fall’s penalty box [Floyd99].
#### Congestion Transparency / Exposure
- Explicit congestion notification (ECN [RFC3168](http://www.ietf.org/rfc/rfc3168.txt))
- Congestion Exposure ([ConEx charter](http://datatracker.ietf.org/wg/conex/charter/) & [document outputs](http://tools.ietf.org/wg/conex/))
- Re-inserted ECN using re-feedback ([re-ECN](http://bobbriscoe.net/projects/refb/))
#### Fairness
- IETF/IRTF activity
	- [RFC6077](http://www.ietf.org/rfc/rfc6077.txt) Open Research Issues in Internet Congestion Control
- Research
	- Flow Fairness Tutorial [LeBoudec05]
	- Weighted Proportional Fairness [Kelly98]
	- Flow-Rate Fairness: Dismantling a Religion [Briscoe07]
	- Transport Protocols Don't Do Fairness [Briscoe08]
	- Usefulness of Simple Best-Effort Traffic [Floyd08]
	- TCP-Friendliness [here](http://www.icir.org/floyd/tcp_friendly.html) or [here](http://www.psc.edu/networking/projects/tcpfriendly/)
#### Industry Roadmapping of Capacity Sharing Approaches
- Stuttgart [Capacity Sharing Workshop](http://www.ikr.uni-stuttgart.de/CapacitySharingWS), 13 Oct 2011
- GIIC Fair Access Sharing workshop - an assessment on commercial, public policy and technical grounds of the ConEx approach being proposed to the IETF [GIIC09, GIIC10]
- IETF P2P Infrastructure workshop [Peterson09]
#### Related Research Projects on Capacity Sharing Architecture
- [Trilogy](http://www.trilogy-project.org/)
- [Matt Mathis's TCP unfriendly page](http://staff.psc.edu/mathis/unfriendly/)
- ...
#### References
E.Raubold and J.Haenle, "A Method of Deadlock-free Resource Allocation and Flow Control in Packet Networks" Proc. 3rd Int. Conf. Comput. Commun. (1976)
J. Mahdavi, S. Floyd, "[TCP-friendly unicast rate-based flow control](http://www.psc.edu/networking/papers/tcp_friendly.html)", Note sent to end2end-interest mailing list, Jan, 1997
Frank Kelly, "Charging and Rate Control for Elastic Traffic]" European Transactions on Telecommunications 8 33--37 (1997) [corrected version](http://www.statslab.cam.ac.uk/~frank/elastic.html)
Bob Briscoe, "[Flow Rate Fairness: Dismantling a Religion](http://doi.acm.org/10.1145/1232919.1232926)", ACM CCR 37(2) 63--74 (2007)
Vasilios A. Siris, Costas Courcoubetis, and George Margetis, "[Service differentiation in ECN networks using weighted window-based congestion control for various packet marking algorithms,](http://www.ics.forth.gr/netgroup/publications/weighted_window_control.html)" Computer Communications 26(4)314--326 (2002)
Damjanovic, D. and M. Welzl, "MulTFRC: Providing Weighted Fairness for Multimedia Applications (and others too!)", ACM CCR, (2009) (to appear)
Jon Crowcroft and Philippe Oechslin, "[Differentiated End to End Internet Services using a Weighted Proportional Fair Sharing TCP](ftp://cs.ucl.ac.uk/darpa/multcp.ps.gz)," ACM CCR 28(3)53--69 (1998)
A. Demers and S. Keshav and S. Shenker, "Analysis and Simulation of a Fair-Queueing Algorithm" Proc SIGCOMM'89 ACM CCR 19(4)1--12 (1989)
CableLabs, "[MAC and Upper Layer Protocols Interface Specification,](http://www.cablelabs.com/specifications/CM-SP-MULPIv3_0-I10-090529.pdf)" Data-Over-Cable Service Interface Specifications DOCSIS 3.0 CM-SP-MULPIv3.0-I10-090529 (2009)
Jun Zheng and Hussein T. Mouftah, "[Media access control for Ethernet passive optical networks: an overview," IEEE Communications Magazine](http://ieeexplore.ieee.org/xpls/abs_all.jsp?arnumber=1391515), 43(2)145-150 (2005)
Arnaud Jacquet, Bob Briscoe & Toby Moncaster, "[Policing Freedom to Use the Internet Resource Pool](http://bobbriscoe.net/projects/refb/#polfree)", Workshop on Re-Architecting the Internet (ReArch'08) (Dec 2008)
Rong Pan, Lee Breslau, Balaji Prabhaker, and Scott Shenker, "Approximate fairness through differential dropping," ACM SIGCOMM CCR 33(2):23--40 (2003)
Teunis J. Ott, T. V. Lakshman, and Larry H.Wong. SRED: Stabilized RED. In Proc. IEEE Conference on Computer Communications (Infocom’99), 1346--1355 (1999)
Parminder Chhabra, Shobhit Chuig, Anurag Goel, Ajita John, Abhishek Kumar, Huzur Saran, and Rajeev Shorey, "XCHOKe: Malicious source control for congestion avoidance at Internet gateways," In Proc. IEEE International Conference on Network Protocols (ICNP’02). (2002)
Smitha A. L. Narasimha Reddy, "LRU-RED: An active queue management scheme to contain high bandwidth flows at congested routers," In Proc Globecomm’01, (2001)
Ratul Mahajan, Sally Floyd and David Wetheral, "Controlling high-bandwidth flows at the congested router," In Proc. IEEE International Conference on Network Protocols (ICNP’01) (2001)
Sally Floyd and Kevin Fall, "Promoting the use of end-to-end congestion control in the Internet," IEEE/ACM Transactions on Networking, 7(4):458--472 (1999)
Jean-Yves Le Boudec, "[Rate Adaptation, Congestion Control and Fairness: A Tutorial](http://ica1www.epfl.ch/PS_files/LEB3132.pdf)," (2005)
Frank P. Kelly, Aman K. Maulloo and David K. H. Tan, "[Rate control for communication networks: shadow prices, proportional fairness and stability](http://www.statslab.cam.ac.uk/~frank/rate.html)," Journal of the Operational Research Society 49(3)237--252 (1998)
B.Briscoe, T.Moncaster and L.Burness, "[Problem Statement: Transport Protocols Don't Do Fairness](http://bobbriscoe.net/projects/refb/#relax-fairness)," Individual Internet-Draft (2008)
S.Floyd and M.Allman "[Comments on the Usefulness of Simple Best-Effort Traffic](http://www.ietf.org/rfc/rfc5290.txt)," RFC5290 Independent Submission to RFC Editor (2008)
J. Peterson and A. Cooper, "Report from the IETF workshop on P2P Infrastructure, May 28, 2008" [draft-p2pi-cooper-workshop-report](http://tools.ietf.org/html/draft-p2pi-cooper-workshop-report) (in IETF RFC-Editor queue) (2009)
"[GIIC Convenes London Workshop to Examine Fair and Viable Solution to Internet Capacity Sharing Issue](http://giic.org/)," GIIC Home Page (Sep 2009)
Global Information Infrastructure Commission, "[Finding a Fair Internet Capacity Sharing Solution](http://giic.org/pdf/LondonWorkshopReportFinal.pdf)," GIIC Workshop Report (2010)
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2012-01-05. It was migrated from the old Trac wiki on 2023-01-29.*