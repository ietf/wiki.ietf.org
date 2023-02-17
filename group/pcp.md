---
title: PCP WG (Concluded) - Port Control Protocol
description: 
published: true
date: 2023-01-05T00:00:55.443Z
tags: 
editor: markdown
dateCreated: 2022-12-20T20:44:24.314Z
---

## PCP Working Group
# August 2014 Interim Meeting Info

Slides available on proceedings page at http://www.ietf.org/proceedings/interim/2014/08/26/pcp/proceedings.html

Agenda: 

```
Welcome, agenda bashing, and document status
Chairs (10 mins)

Priority 1 (WG Documents, time flexible)
-------------------------
Last Call Results: PCP Port Set
draft-ietf-pcp-port-set
Simon Perreault (10 mins)

PCP Authentication Mechanism
draft-ietf-pcp-authentication
Dacheng (15 mins)

Optimizing NAT and Firewall Keepalives 
draft-ietf-pcp-optimize-keepalives
Tiru Reddy (10 mins)

Priority 2 (Drafts with previous list discussion)
----------------------------------------------------
PCP Tunnel-ID Option
draft-ripke-pcp-tunnel-id-option
Rolf Winter (10 mins)

(U)SIM based PCP authentication
draft-chen-pcp-authentication-sim
Gang Chen (10 mins)

Flow high availability through PCP
draft-vinapamula-flow-ha
Suresh Vinapamula (10 mins)

Priority 3 (Other)
------------------
PCP Extensions for Footprint Discovery
(no draft)
Brent Hirschman (10 mins)
```

Conf Call Info: 

```
Topic: PCP Interim Meeting
Date: Tuesday, August 26, 2014
Time: 7:00 am, Pacific Daylight Time (San Francisco, GMT-07:00)
Meeting Number: 302 037 779
Password: pcp

-------------------------------------------------------
To join the meeting online(Now from mobile devices!)
-------------------------------------------------------
1. Go to https://cisco.webex.com/ciscosales/j.php?MTID=m9fc15f2f5b9b188242469cd572f2b8bd
2. If requested, enter your name and email address.
3. If a password is required, enter the meeting password: pcp
4. Click "Join".
5. If the meeting includes a teleconference, follow the instructions that appear on your screen.

-------------------------------------------------------
To join the audio conference only
-------------------------------------------------------
To receive a call back, provide your phone number when you join the meeting, or call the number below and enter the access code.
Call-in toll-free number (US/Canada): +1-866-432-9903
Call-in toll number (US/Canada): +1-408-525-6800

Access code:302 037 779
Global call-in numbers: https://cisco.webex.com/ciscosales/globalcallin.php?serviceType=MC&ED=210658838&tollFree=1
Toll-free dialing restrictions: http://www.webex.com/pdf/tollfree_restrictions.pdf




CCP:+14085256800x302037779#

IMPORTANT NOTICE: This WebEx service includes a feature that allows audio and any documents and other materials exchanged or viewed during the session to be recorded. By joining this session, you automatically consent to such recordings. If you do not consent to the recording, discuss your concerns with the meeting host prior to the start of the recording or do not join the session. Please note that any such recordings may be subject to discovery in the event of litigation.
```

# July 2013 Interim Meeting Info 

Agenda: 

```
http://tools.ietf.org/html/draft-ietf-pcp-proxy-03 - Dan Wing - 25 minutes

http://tools.ietf.org/html/draft-cheshire-pcp-unsupp-family - Stuart Cheshire - 30 minutes

http://tools.ietf.org/html/draft-penno-pcp-ext-addr - Reinaldo Penno - 25 minutes

http://tools.ietf.org/html/draft-perreault-softwire-lw4over6-pcp-00 - Simon Perreault - 15 minutes

http://tools.ietf.org/html/draft-boucadair-pcp-failure-06 - Christian Jacquenet - 10 minutes

http://tools.ietf.org/html/draft-boucadair-pcp-flow-examples-02 - Christian Jacquenet - 10 minutes

Port Control Protocol Working Group invites you to attend this online meeting. 

Topic: PCP Interim Meeting 
Date: Tuesday, July 2, 2013 
Time: 7:00 am, Pacific Daylight Time (San Francisco, GMT-07:00) 
Meeting Number: 642 233 632 
Meeting Password: 123456 


------------------------------------------------------- 
To join the online meeting (Now from mobile devices!) 
------------------------------------------------------- 
1. Go to https://ietf.webex.com/ietf/j.php?ED=226920422&UID=0&PW=NNmYwMTMxMzI3&RT=MiM0 
2. If requested, enter your name and email address. 
3. If a password is required, enter the meeting password: 123456 
4. Click "Join". 

To view in other time zones or languages, please click the link: 
https://ietf.webex.com/ietf/j.php?ED=226920422&UID=0&PW=NNmYwMTMxMzI3&ORT=MiM0 

------------------------------------------------------- 
To join the audio conference only 
------------------------------------------------------- 
Call-in toll number (US/Canada): 1-650-479-3208 

Access code:642 233 632 

------------------------------------------------------- 
For assistance 
------------------------------------------------------- 
1. Go to https://ietf.webex.com/ietf/mc 
2. On the left navigation bar, click "Support". 

You can contact me at: 
pcp-chairs@tools.ietf.org 


To add this meeting to your calendar program (for example Microsoft Outlook), click this link: 
https://ietf.webex.com/ietf/j.php?ED=226920422&UID=0&ICS=MI&LD=1&RD=2&ST=1&SHA2=AAAAAmmrikLDopD03t79kvRQwsEjPmyufxqd-a0jxJZMP6l2&RT=MiM0 

The playback of UCF (Universal Communications Format) rich media files requires appropriate players. To view this type of rich media files in the meeting, please check whether you have the players installed on your computer by going to https://ietf.webex.com/ietf/systemdiagnosis.php. 

Sign up for a free trial of WebEx 
http://www.webex.com/go/mcemfreetrial 

http://www.webex.com 
```

# April 2013 Interim Meeting Info

Agenda: 

```
draft-reddy-pcp-auth-req-02 - 60 minutes

draft-chen-pcp-mobile-deployment-02 - Gang Chen, 10 minutes
```

Connection Details:

```
-------------------------------------------------------
Meeting information
-------------------------------------------------------
Topic: PCP Interim Meeting
Date: Tuesday, April 23, 2013
Time: 7:00 am, Pacific Daylight Time (San Francisco, GMT-07:00)
Meeting Number: 641 408 531
Meeting Password: 12345

-------------------------------------------------------
To start or join the online meeting
-------------------------------------------------------
Go to https://ietf.webex.com/ietf/j.php?ED=178241512&UID=492766217&PW=NODM3MzYxNjMx&RT=MiM0

-------------------------------------------------------
Audio conference information
-------------------------------------------------------
Call-in toll number (US/Canada): 1-650-479-3208

Access code:641 408 531
```

# Design Philosophy
PCP design philosophy is best captured in [Stuart Cheshire's slides](http://www.ietf.org/proceedings/79/slides/pcp-5.pdf) from IETF79 (Beijing).

# Why isn't existing protocol "X" already suitable for PCP's use case?

(Note: Some materials that may be useful in answering this question are as follows. A 2007 analysis and comparison of NAT control protocols is [Survey of Middlebox Control Protocols](http://tools.ietf.org/html/draft-eggert-middlebox-control-survey-01) and its presentation in [slides 8-20](http://www.ietf.org/proceedings/70/slides/safe-0.pdf). Also see the 2009 [Review of NAT Control Protocols](http://tools.ietf.org/html/draft-brockners-nat-control-protocols-review-00) and [slide 5](http://www.ietf.org/proceedings/74/slides/behave-3.pdf).)

1. UPnP IGD:1 (http://www.upnp.org/specs/gw/UPnP-gw-WANIPConnection-v1-Service.pdf)
- no support for IPv6
- no support for managing lifetimes of implicit dynamic mappings (PCP "PEER" opcode)
- no mechanism for detecting NAT state loss (PCP "Epoch" time)
- data model assumes host has complete control of the NAT (e.g., client dictates external port number and mapping duration)
- discovery uses multicast, which makes it vulnerable to discovering the wrong NAT gateway (though the same protocol could also be used with a different discovery mechanism)
- XML over TCP is heavy (requesting external IP address takes 42 packets, requesting a port mapping is typically a 14-packet exchange, for a total of 56 packets, compared to 2 packets using PCP) 

2. UPnP IGD:2 (http://upnp.org/specs/gw/UPnP-gw-WANIPConnection-v2-Service.pdf)
- no support for NAT64, NAT46, or NAT66
- no support for managing lifetimes of implicit dynamic mappings (PCP "PEER" opcode)
- no mechanism for detecting NAT state loss (PCP "Epoch" time)(fixed in UPnP Device Architecture 1.1 but which is optional for IGD v2)
- data model assumes host has complete control of the NAT (e.g., client dictates mapping duration)
- To remedy the deficiency of IGD 1, IGD 2 adds the new AddAnyPortMapping operation. Unfortunately the IGD 2 specification also cautions client writers not to depend on it actually working: "AddAnyPortMapping NOTE: Not all NAT implementations will support InternalPort values that are different from ExternalPort." So in principle IGD 2 has this capability, but in reality it's optional whether it actually works on any given device, making it infeasible to make a client that depends on it. (this seems to be a questionable interpretation of the specs: a compliant v2 device is REQUIRED to not restrict port mappings to ExternalPort and InternalPort values being the same, the corresponding error code is defined only for AddPortMapping with a MUST NOT)
- discovery uses multicast, which makes it vulnerable to discovering the wrong NAT gateway (though the same protocol could also be used with a different discovery mechanism)
- XML over TCP is heavy 

3. NAT-PMP (draft-cheshire-nat-pmp)
- no IPv6 support
- no support for managing lifetimes of implicit dynamic mappings (PCP "PEER" opcode)
- assumes the default gateway is the NAT-PMP device
- doesn't provide a lifetime for the public IP address 

4. Diameter NAT Control Application (draft-ietf-dime-nat-control)

5. NSIS NSLP (RFC5973)
- complex 

6. MIDCOM (RFC3304)
- uses SNMP, which requires a library
- intended for service providers to control NATs, not subscribers to control NATs 
    
7.    SOCKS, TCP only, IPv4 only
8.    SOCKSv5 (RFC1928), forces re-writing of packet headers (bad for firewalling), reverse SOCKSv5 proxy not fully specified
9.    ETSI Ia (ETSI ES 283 018)
10.    ETSI Gq' (ETSI TS 183017)
11.    ITU Rs (ITU-T Q.3321)
12.    ITU Rw (ITU-T Q.3303.3, RFC5431)
13.    Diameter Rx+
14.    Diameter Gx+
15.    STUN (RFC5389)
16.    RSIP (RFC3103)
17.    ALD (draft-woodyatt-ald)
18.    NLS (draft-shore-nls-tl)
19.    AFWC (draft-shore-afwc) 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-08-26. It was migrated from the old Trac wiki on 2022-12-20.*
