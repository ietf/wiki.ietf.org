---
title: TMRG (Concluded) Transport Modeling Research Group
description: 
published: true
date: 2023-03-03T22:52:21.832Z
tags: irtf
editor: markdown
dateCreated: 2023-03-03T22:52:21.832Z
---

# Transport Modeling Research Group (TMRG) (Concluded)
The Transport Modeling Research Group (TMRG) has been chartered to produce
a series of documents on Models for the Evaluation of Transport
Protocols.  The documents will include a survey of models used in
simulations, analysis, and experiments for the evaluation of transport
protocols.  The output of the research group will also include a
broad set of simulation test suites, and a set of recommendations
for test suites for experiments in test beds.  The goal of the work
is to improve our methodologies for evaluating transport protocols.
<p>

<ul>
<li>
The 
<a href="https://irtf.org/concluded/tmrg">charter</a>.
<p>

<li>
The 
<a href="https://www.irtf.org/mailman/listinfo/tmrg">
tmrg mailing list</a>, with 
<a href="http://www.irtf.org/mail-archive/web/tmrg/">archives</a>.
<br>
- Requests to subscribe to tmrg have to be approved, and
I do this at most once a day.  So the response to your request
to subscribe won't come back right away...
<br>
- When sending email, please use a helpful subject heading (e.g., not
"Tmrg digest").
<p>

<li>Documents:
<ul>

<li>

<b>
<a href="http://www.ietf.org/rfc/rfc5166.txt">
RFC 5166: Metrics for the Evaluation of Congestion Control Mechanisms</a></b>.
<br>
S. Floyd, editor.
<br>
RFC 5166, Informational, March 2008.
<p>

<li>

<b>
<a href="http://tools.ietf.org/html/draft-irtf-tmrg-tools">
Tools for the Evaluation of Simulation and Testbed Scenarios</a> </b>.
<br>
S. Floyd and E. Kohler, editors.
<br>
Internet-draft draft-irtf-tmrg-tools-05, work in progress, February
2008.
<br>
Status:  This has received some feedback from members of the RG,
but no complete reviews.
Feedback and contributions are welcome.

<p>

<li>
<b>
<a href="http://tools.ietf.org/html/draft-irtf-tmrg-tests">
Common TCP Evaluation Suite</a></b>,
<br>
L. Andrew and S. Floyd, Editors,
<br>
Internet-draft draft-irtf-tmrg-tests-00.txt, work in progress,
July 2008.
<br>
Based on:
<br>
<li>
<b>
<a href="http://www.icir.org/tmrg/pfldnet2008.pdf">
Towards a Common TCP Evaluation Suite</a></b>,
<br>
L. Andrew, C. Marcondes, S. Floyd, L. Dunn, R. Guillier, W. Gang,
L. Eggert, S. Ha, and I. Rhee,
<br>
<a href="http://www.hep.man.ac.uk/PFLDnet2008/">
PFLDnet</a>, March 2008.
<p>

<li>
<b>
<a href="http://tools.ietf.org/html/draft-irtf-tmrg-ns2-tcp-tool">
An NS2 TCP Evaluation Tool Suite</a></b>,
<br>
G. Wang, Y. Xia, and D. Harrison,
<br>
Internet-draft draft-irtf-tmrg-ns2-tcp-tool-00, work in progress,
April 2007.
<br>
The <a href="http://sourceforge.net/projects/tcpeval">

NS2 TCP Evaluation Tool</a>.
<p>

<li>
<b>
Metrics for the Evaluation on Admission Control Systems</b>.  
<br>
Suggested by
Sean Moore and Dah Ming Chiu.
<p>

</ul>

<li>Related Web Sites:
<ul>
<li>
<b>
<a href="http://www.icir.org/models/">
Internet Research Needs Better Models</a></b>,
including pointers to 

<a href="http://www.icir.org/models/simulators.html">Network Simulators</a>,
<a href="http://www.icir.org/models/topologies.html">Topology Modeling</a>,
and
<a href="http://www.icir.org/floyd/tmrg/trafficgenerators.html">Traffic Generation</a>.
<p>

<li>
UCLA's
<a href="http://netlab.cs.ucla.edu/tcpsuite/index.html">
TCP Evaluation Suite</a> for NS2.
<br>
For "evaluating new congestion control schemes and its impact on
standard TCP NewReno".  Based on 
<a
href="http://www.cs.caltech.edu/~weixl/technical/ns2linux/index.html">a 
Linux TCP implementation for NS2</a>,
for running Linux TCP congestion control algorithms on NS2.

<br>
Presentation
(<a href="http://www3.ietf.org/proceedings/07jul/slides/iccrg-3.ppt">powerpoint</a>) 
at the July 2007 IETF.
</ul>
<p>

<li>Related Documents:
<ul>
<li>
H. Cai, D. Eun, S. Ha, I. Rhee and L. Xu, 
<a href="http://netsrv.csc.ncsu.edu/convex-ordering/">
Stochastic Ordering for
Internet Congestion Control and its Applications</a>, 
INFOCOM 2007.
<br>
This paper compares the window growth functions of different congestion
control mechanisms,
concentrating on the second or higher-order stochastic behaviors.
The paper uses a convex ordering of the window growth functions; this
convex ordering applies to all convex functions.
<p>

<li>
<a href="http://www.hpcc.jp/pfldnet2006/technical.html">
A Step
toward Realistic Performance Evaluation of High-Speed TCP Variants</a>, 
Sangtae Ha, Yusung Kim, Long Le, Injong Rhee and Lisong Xu, 
PFLDnet2006.  A revised version will appear in Computer Networks, 2007.
<br>
"We show how protocols could behave differently
under the presence or absence of background traffic."
<p>

<li>
<a href="http://www.hpcc.jp/pfldnet2006/technical.html">
The Effect of Reverse Traffic on the Performance of New TCP
Congestion Control Algorithms for Gigabit Networks</a>,
Saverio Mascolo and Francesco Vacirca,
PFLDnet2006.
<br>
"A TCP flow can be
heavily affected by the presence of reverse traffic provoking
congestion along its ack path."
<p>

<li>

<b>
<a
href="http://www.cs.caltech.edu/~weixl/research/technicals/benchmark/summary.ps">
Time for a TCP Benchmark Suite?</a></b>,
D. Wei, P. Cao, and S. Low,
2005.  
<a
href="http://mailman.icsi.berkeley.edu/pipermail/tmrg-interest/2005-September/000101.html">
Related papers</a>.
<br>"This paper proposed that the networking community establish a TCP
benchmark suite."
<p>

<li>
<b>
<a href="http://www.hamilton.ie/net/eval/results_HI2005.pdf">
Experimental Evaluation of TCP Protocols for
High-Speed Networks</a></b>,
Y. Li, D. Leith and R. N. Shorten, 2005.  (IEEE/ACM Transactions on
Networking, October 2007;  also, 
<a href="http://www.hpcc.jp/pfldnet2006/paper/s3_02.pdf">
Evaluating the Performance of TCP
Stacks for High-Speed Networks</a>, PFLDnet 2006.).

<br>
This paper gives a set of benchmark tests for the experimental
valuation of HighSpeed TCP, Scalable TCP, FAST TCP, BIC TCP, and H-TCP,
comparing performance with that of standard TCP.  The tests restrict
attention to scenarios with only long-lived flows, with 
one-way traffic, drop-tail queues, and a single bottleneck link.
There are tests for fairness within the transport protocol
(including fairness between flows with different RTTs),
fairness with standard TCP, throughput, loss rates, response
functions, and convergence times.
The different protocols are implemented with a common network stack.
<a href="http://www.hamilton.ie/net/eval/tcptesting.zip">
NS scripts</a>.
<p>

<li>
<a href="http://www.springerlink.com/index/V7463765348771G6.pdf"> 
Evaluation of Advanced TCP Stacks on Fast Long-Distance Production Networks</a>, 
H. Bullot, R. Les Cottrell, and R. Hughes-Jones, 
PFLDnet
2004.
<br>
"We compared the New Reno TCP with the following stacks: HS-TCP, Fast
TCP, S-TCP, HSTCP-LP, H-TCP and Bic-TCP. The analysis will compare and
report on the stacks in terms of achievable throughput, impact on RTT,
intra- and inter-protocol fairness, stability, as well as the impact of
reverse traffic."
<p>

<li>
<b>

<a href="http://blizzard.cs.uwaterloo.ca/keshav/home/Papers/data/92/comparison_att.pdf">
A Comparison of Reactive
Host-based Flow Control Schemes in Reservationless Networks</a></b>. 
<br>
H. Kanakia, S. Keshav, and P. P. Mishra. 
<br>
Technical
Memorandum http://simon.cs.cornell.edu/Info/People/skeshav/92/3-12.ps,
AT&T Bell Laboratories, July 1992.
<br>
This paper uses the metrics of file transfer time and packet delay,
and proposes the following scenarios:
slow changes in cross traffic; sudden changes in cross traffic;
transfer times for short files; fairness; migrating bottlenecks;
two-way traffic; non-compliant cross-traffic; small buffers;
a low bandwidth-delay network; and a torture test for rate-based
schemes (with two flows with very different round-trip times).
</ul>

</ul>
<hr>
Suggestions for additions to this web page can be sent to 
Lachlan Andrew.  
<br>
Email: lachlan dot andrew at gmail dot com<br>
<!--Email: floyd at acm dot org-->
}}}