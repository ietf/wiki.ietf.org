---
title: Compound TCP
description: 
published: true
date: 2023-01-29T23:23:14.635Z
tags: 
editor: markdown
dateCreated: 2023-01-29T23:23:09.614Z
---

# Compound TCP (CTCP) Resources
http://tools.ietf.org/id/draft-sridharan-tcpm-ctcp-02.txt
[initial internet draft](http://research.microsoft.com/users/dthaler/draft-sridharan-tcpm-ctcp-00.txt)
[IPR Statement](https://datatracker.ietf.org/ipr/878/)
[Presentation slides from IETF 69 ICCRG meeting](http://research.microsoft.com/users/dthaler/IETF%20-%20Compound%20TCP.pdf)
[Infocom 2006 paper](http://research.microsoft.com/users/dthaler/ctcp-infocom06.pdf)
[gamma parameter tuning](http://research.microsoft.com/users/dthaler/ctcp-tube.pdf)
[Microsoft Research webpage](http://research.microsoft.com/wn/ctcp.aspx)
[Abolade Gbadegesin, "The NetIO stack in Windows Vista: functionality and deployment", NANOG presentation](http://www.nanog.org/mtg-0610/presenter-pdfs/gbadegesin.pdf)
[patent?](http://www.freepatentsonline.com/20060227708.html)
[Linux patch](http://lwn.net/Articles/185074/)
[Hideyuki Shimonishi, Medy Sanadidi, Tutomu Murase, "Assessing Interactions among Legacy and High-Speed TCPs", PFLDnet 2007](http://wil.cs.caltech.edu/pfldnet2007/paper/AssessingInteractions.pdf)
[Kashif Munir, Michael Welzl, Dragana Damjanovic, "Linux beats Windows! - or the Worrying Evolution of TCP in Common Operating Systems"](http://wil.cs.caltech.edu/pfldnet2007/paper/LinuxBeatsWindows.pdf)
*Note from Michael: in this paper, where we showed that CTCP is less aggressive towards standard TCP than BIC and CUBIC, we used [this code](http://www.cs.caltech.edu/~weixl/technical/ns2linux/index.html), which had a faulty CUBIC implementation and a CTCP implementation that the CTCP authors weren't even aware about, as we learned at Pfldnet'07. The results for these two protocols are therefore not credible.*

# Status
[Review by Wesley Eddy](http://oakham.cs.ucl.ac.uk/pipermail/iccrg/2007-November/000358.html)
[4-part review by Mark Allman](http://oakham.cs.ucl.ac.uk/pipermail/iccrg/2007-November/thread.html)
Please see the [list archives](http://oakham.cs.ucl.ac.uk/pipermail/iccrg/) for more comments.
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2009-08-18. It was migrated from the old Trac wiki on 2023-01-29.*