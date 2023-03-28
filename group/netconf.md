---
title: NETCONF WG - Network Configuration
description: 
published: true
date: 2023-03-28T07:43:01.538Z
tags: 
editor: markdown
dateCreated: 2022-12-16T19:44:45.932Z
---

# The NETCONF Wiki


This wiki is for the NETCONF WG. We provide here information related to the NETCONF WG (the page is mostly updated after an IETF meeting listing the higlights of the meeting).

Thanks a lot to Simon Leinen and Randy Bush, who have done an outstanding job hosting the Netconf page on www.ops.ietf.org/ and the NETCONF mailing list!

Please send any suggestions or Netconf related information you would like to see on this Wiki to netconf-chairs@tools.ietf.org, e.g. links to NETCONF implementations, presentations or tutorials.

# Mailing Lists 

General NETCONF Discussion: netconf@ietf.org (moved from ops.ietf.org)
To Subscribe: [netconf-request@ietf.org](mailto:netconf-request@ietf.org?body=subscribe) 
Archive: http://www.ietf.org/mail-archive/web/netconf/current/maillist.html
Old archive (2002- 03/04/2008): http://ops.ietf.org/lists/netconf/

"Netconf Goes On" maillist: NGO@ietf.org: 
Discussion of non-chartered NETCONF-related topics. Closed. 
Archive: http://www1.ietf.org/mail-archive/web/ngo/current/index.html

YANG maillist: YANG@ietf.org 
Closed. The discussion continues on netmod@ietf.org 
Archive: http://www1.ietf.org/mail-archive/web/yang/current/index.html

# Other NETCONF related sites

\"Netconf Central\" provides information and tutorials on the NETCONF protocol, YANG modeling language and different tools (see: <http://www.netconfcentral.org/).> YANG modules can be validated and YANG module database can be searched online.

\"YANG Central\" provides tutorials, tools and examples for YANG development (see <http://www.yang-central.org).>

# Netconf Implementations 

-   [YumaPro](http://www.yumaworks.com) is a YANG-based Unified Modular Automation Toolkit for NETCONF, HTTP/REST, and CLI. It includes a NETCONF-over-SSH client and server, YANG compiler, and other development tools.

-   Netconf4Android (Library) is an API that implements the Netconf protocol (RFC 4741) for building client applications (http://code.google.com/p/netconf4android/).

    -   Uses SSH-2 as the transport protocol (ganymed-ssh2);

    -   Compatible with Android API level 8 and above;

    -   Compatible with Java 1.5 and above.

-   [NuDesign](http://www.ndt-inc.com) provides a Windows based, [NetConf Agent](http://www.ndt-inc.com/Secure/RegToolYang.html?Product=YangDemoAgent) for the developers community to try out. The download includes a simple NetConf client, SSH client & server components, SSH NetConf subsystem and the core Demo Agent with NetConf, SNMPv3 and CLI access.

-   [ncclient](http://cnds.eecs.jacobs-university.de/software/ncclient) provides a Python API for client-side scripting and application development. Currently implements SSH transport, all RFC 4741 operations and capabilities as well as supports RFC 6241.

-   [libnetconf2](https://github.com/CESNET/libnetconf2) is a NETCONF library in C intended for building NETCONF clients and servers. It provides functions to connect NETCONF client and server to each other via SSH/TLS and including support for Call Home as well as to send/ receive NETCONF messages (Contact: Radek Krejci, CESNET https://github.com/CESNET/libnetconf2).

-   [Netopeer2](https://github.com/CESNET/Netopeer2) is a remote configuration system, which implements generic NETCONF server and client, both based on [libnetconf2](https://github.com/CESNET/libnetconf2). The client side includes a command-line interface so that simple requests can be generated manually, which is useful for debugging (Contact: Radek Krejci, CESNET https://github.com/CESNET/Netopeer2)

-   YencaP, a Netconf agent for Linux implemented in Python, distributed under LGPL as part of the [EnSuite (Extended Netconf Suite)](http://ensuite.sf.net/) collection [(download).](http://ensuite.sourceforge.net/download.html)

-   [YENCA](http://sourceforge.net/projects/yenca/), a Netconf agent for Linux implemented in C, available under GPL on SourceForge.

-   [Tail-f Systems](http://www.tail-f.com/) has a [NETCONF server](http://www.tail-f.com/on-device-configuration-management/) as well as command line and web interfaces, SNMP agent, REST interface and integrated configuration store. Tail-f also maintains an open source implementation of a [NETCONF client library](https://github.com/tail-f-systems/JNC) that can be integrated with network automation software.

-   [GoAhead embeddedMIND™](http://goahead.com/products/embeddedmind/default.aspx) is an extensible Netconf agent with integrated configuration store and CLI, SNMP and Web interfaces.

-   [XML Based Device Management](http://www.wipro.com/webpages/prodesign/reusableframeworks/ip/xml.htm) by Wipro, including an agent written in C and a manager in Java

-   An implementation written in C from [NEC Europe Ltd](http://www.netlab.nec.de/Projects/GMM.htm) in Germany

-   Another implementation written in C by http://www.postech.ac.kr/Postech in Korea

-   [XMS (eXtensible Management System)](http://www.6wind.com/Network.html), written in C, by 6WIND

-   Applied Informatics\' C++-based [NetConf implementation](http://www.appinf.com/en/products/netconf.html) based on the POCO framework.

-   [Netconf4j](http://code.google.com/p/netconf4j/). Standalone Java netconf implementation used in http://www.opennaas.org.

-   [NETCONF Browser](http://www.mg-soft.com/mgNetConfBrowser.html), a user friendly NETCONF GUI client/manager from MG-SOFT, based on MG-SOFT\'s own NETCONF V1 and V1.1 protocols. Application is implemented in Java.

-   [Visual YANG Designer](http://www.mg-soft.com/mgYangDesigner.html), a user friendly YANG file designer (creator, editor, modeler, builder) from MG-SOFT, based on MG-SOFT\'s own YANG compiler. Application is implemented in Java.

-   [NetconfX](http://www.centeredlogic.com/netconfx_main.html), an open-source Java NETCONF client implementation provided by [CenteredLogic](http://www.centeredlogic.com/) as part of its Element/Network Management platform.

-   [MasterYANG](http://www.seguesoft.com): a lightweight NETCONF YANG data model designer, editor and visualizer.

-   [NETCONFc](http://www.seguesoft.com/): a lightweight NETCONF GUI client and Python API.

# Paper, Presentations and Tutorials on Netconf 

(please provide information on other paper, presentation or tutorials to netconf-chairs@tools.ietf.org)

-   [NETCONF Interoperability Lab](http://vaibhavbajpai.com/documents/papers/proceedings/netconf-interop-noms-2014.pdf) by Vaibhav Bajpai, Jürgen Schönwälder, NOMS 2014, Krakow, May 2014

-   [Managing SamKnows Probes using NETCONF](http://vaibhavbajpai.com/documents/papers/proceedings/netconf-samknows-noms-2014.pdf) by Vaibhav Bajpai, Radek Krejčí, NOMS 2014, Krakow, May 2014

-   [Learn about NETCONF](http://www.netconfcentral.org/netconf_docs) by Andy Bierman

-   [Network configuration management using NETCONF and YANG](http://ieeexplore.ieee.org/xpls/abs_all.jsp?arnumber=5560601&tag=1) by Jürgen Schönwälder, Martin Björklund, Phil Shafer

-   [Configuring network devices with NETCONF and YANG](http://archive.xmlprague.cz/2011/files/xmlprague-2011-proceedings.pdf) by Ladislav Lhotka, in Proc. \'\'XML Prague 2011\'\', p. 99--123.

-   [NCClient: A Python Library for NETCONF Client Applications](http://www.springerlink.com/content/yu6h182717207038/) by Shikhar Bhushan, Ha Manh Tran and Jürgen Schönwälder

-   [An IDE for NETCONF management applications](http://ieeexplore.ieee.org/xpls/abs_all.jsp?arnumber=6102269) by Tavares, P.; Goncalves, P. ; Oliveira, J.L.

-   [NETCONF Interoperability Testing](http://www.springerlink.com/content/383035w7h824r277/) by Ha Manh Tran, Iyad Tumar and Jürgen Schönwälder

-   [Development of NETCONF-Based Network Management Systems in Web Services Framework](http://search.ieice.org/bin/summary.php?id=e92-b_4_1104) by Tomoyuki IIJIMA Hiroyasu KIMURA Makoto KITANI Yoshifumi ATARASHI

-   [Design of the Next Generation Military Network Management System Based on NETCONF](http://ieeexplore.ieee.org/xpls/abs_all.jsp?arnumber=4492668) by Zhu Wei; Liu Ningning ; Shan Weifeng ; Fu Guobin

-   [Using Netconf for Configuring Monitoring Probes](http://ieeexplore.ieee.org/xpls/abs_all.jsp?arnumber=1687626) by Munz, G.; Antony, A. ; Dressler, F. ; Carle, G.

-   [The Design of the Network Configuration Management Based on NETCONF Protocol](http://www.springerlink.com/content/h7231vgt12077247/) by Jianqun Cui, Keming Jia, Libing Wu, Chuanhe Chen and Mincai Lai

-   [An Empirical Study of the NETCONF Protocol](http://ieeexplore.ieee.org/xpl/articleDetails.jsp?tp=&arnumber=5460639&contentType=Conference+Publications&searchField%3DSearch_All%26queryText%3DAn+Empirical+Study+of+the+NETCONF+Protocol) by Yu, J.; Al Ajarmeh, I.

-   [Implementation of the management of SNMP/NETCONF network devices for the next generation NMS](http://ieeexplore.ieee.org/xpl/articleDetails.jsp?tp=&arnumber=6057664&contentType=Conference+Publications&searchField%3DSearch_All%26queryText%3DImplementation+of+the+management+of+SNMP%2FNETCONF+network+devices+for+the+next+generation+NMS) by Limin Liu; Debao Xiao; Bo Dong; Qing Shen

-   [Improving Network Services Configuration Management](http://ieeexplore.ieee.org/xpl/articleDetails.jsp?tp=&arnumber=6006050&contentType=Conference+Publications&searchField%3DSearch_All%26queryText%3DImproving+Network+Services+Configuration+Management) by Elbadawi, K.; Yu, J.

-   [Protocol Efficiencies of NETCONF versus SNMP for Configuration Management Functions NETCONF vs SNMP](http://morse.colorado.edu/~tlen5710/11s/11NETCONFvsSNMP.pdf) by Brian Hedstrom, Akshay Watwe, Siddharth Sakthidharan

-   [Development of Management Interface to Configure Network Equipment](http://ieeexplore.ieee.org/xpl/freeabs_all.jsp?arnumber=4090097) by Tomoyuki Iijima, et.al.

-   [Distributed Network Analysis Using TOPAS and Wireshark](http://ieeexplore.ieee.org/Xplore/login.jsp?url=/iel5/4509915/4509916/04509943.pdf?arnumber=4509943) by Gerhard Muenz, Georg Carle

-   [NETCONF access control profile for XACML](ftp://ftp.sics.se/pub/SICS-reports/Reports/SICS-T--2008-06--SE.pdf) by Ludwig Seitz, Erik Rissanen

-   [On the Performance of COPS-PR and NETCONF in an Integrated Management Environment for DiffServ-enabled Networks](http://ieeexplore.ieee.org/xpl/freeabs_all.jsp?arnumber=4652667) by Rafael Corezola Pereira, Lisandro Zambenedetti Granville

-   S.-M. Yoo, H. T. Ju, J. W. Hong: [Performance Improvement Methods for NETCONF-Based Configuration Management](http://dx.doi.org/10.1007/11876601_25)

-   V. Cridlig, H. J. Abdelnur, J. Bourdellon, R. State: [A NetConf Network Management Suite: ENSUITE](http://dx.doi.org/10.1007/11567486_16)

-   Search on [NETCONF in IEEEXplore](http://ieeexplore.ieee.org/search/freesearchresult.jsp?reload=true&newsearch=true&queryText=netconf&x=0&y=0&tag=1)

-   Search on [NETCONF in DBLP](http://www.dblp.org/search/#query=NETCONF)

-   Performance evaluation of SNMP, NETCONF and CWMP management protocols in wireless network by M. Słabicki and K. Grochla, Electronics, Communications and Networks IV. Jun 2015 , 377 -382 http://www.crcnetbase.com/doi/abs/10.1201/b18592-71

# Tools 

-   [PYANG and YANG module development workflow](https://github.com/mbj4668/pyang/wiki/Tutorial)

-   [YANGlint](https://github.com/CESNET/libyang#yanglint) - YANG schema and data validator

-   [YANGKit](https://github.com/yang-central/yangkit) - YANG schema parser and APIs

-   [YANGCompiler](https://github.com/yang-central/yang-compiler) - a YANG compiler support resolve dependencies automatically and provide plug-in mechanism to extend customized features.

# Miscellaneous 

-   [Old 4741bis issue tracker](/group/netconf/Issues_4741bis)

-   [Draft Charter Proposal](/group/netconf/DraftCharter)


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-03-25. It was migrated from the old Trac wiki on 2022-12-16.*