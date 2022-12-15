---
title: IPv4 - IPv6 Co-Existence Interim
description: 
published: true
date: 2022-12-15T05:38:53.710Z
tags: 
editor: markdown
dateCreated: 2022-12-15T05:38:53.710Z
---

# IPv4 - IPv6 Co-Existence Interim 

An interim meeting will be organized on October 1-2, 2008, in Montreal, Canada to continue discussions about IPv4 and IPv6 co-existence, NAT-PT replacement, and new tunneling or translation solutions to address needs in this space. This is a meeting that affects work happening in a number of WGs (SOFTWIRE, V6OPS, BEHAVE, INTAREA).

## Reading List 

Additional background for this topic can be found in [interim meeting announcement e-mail](http://www.ietf.org/mail-archive/web/int-area/current/msg01607.html), [IETF-72 proceedings]([https://datatracker.ietf.org/meeting/72/materials.html) of the above WGs and the following documents:

Overview documents:
  *  [Scenarios](http://tools.ietf.org/html/draft-arkko-townsley-coexistence)
  * [Comparison of Proposals to Replace NAT-PT](http://tools.ietf.org/html/draft-wing-nat-pt-replacement-comparison)

Documents that apply across several proposals:
  * [Carrier Grade NAT (CGN)](http://tools.ietf.org/html/draft-nishitani-cgn )

Tunnel-based proposals:
-  [Address Plus Port (A+P)](https://mice.cs.columbia.edu/getTechreport.php?techreportID=560)
- [Stateless Address Mapping](http://tools.ietf.org/html/draft-despres-sam) and [Stateless Address Mapping Scenarios](http://tools.ietf.org/html/draft-despres-sam-scenarios) 
-  [Dual-Stack Lite (DS-Lite)](http://www.ietf.org/internet-drafts/draft-durand-softwire-dual-stack-lite-00.txt)

Translation-based proposals:
- IVI: (draft-baker-behave-ivi) IVI Update to SIIT and NAT-PT and (draft-xli-behave-ivi) Prefix-specific and Stateless Address Mapping (IVI) for IPv4/IPv6 Coexistence and Transition]
- draft-jennings-behave-nat6
- draft-bagnulo-behave-nat64
- draft-miyata-v6ops-snatpt and draft-endo-v6ops-dnsproxy 

## Mailing List

You can subscribe to the [v4v6interim mailing list](https://www.ietf.org/mailman/listinfo/v4v6interim) to discuss the proposals and logistics for the meeting.

## Meeting Site and Host 

The meeting will take place near Montreal at the following address: 8400 Décarie Blvd, Town of Mont Royal, Quebec H4P 2N2 Canada ([map](http://maps.google.com/maps?f=q&hl=en&geocode=&q=ericsson+montreal&ie=UTF8&ll=45.535453,-73.662987&spn=0.110624,0.284271&z=12&iwloc=A).)

The meeting is hosted by Ericsson.


## Agenda 


Chairs: Dan Wing and Brian Haberman


**Wednesday, October 1st, 08:30 - 17:00:**

<pre>
08:30-9:00   breakfast                 (0:30)
09:00-9:15   practical arrangements    (0:15, Jari)
09:15-9:25   goals for the meeting     (0:10, Jari)
09:25-9:35   agenda bash               (0:10, chairs)
09:35-11:00  scenarios I               (1:25, Mark)
11:00-11:30  email break               (0:30)
11:30-12:30  lunch                     (1:00)
12:30-13:15  scenarios II              (0:30, Mark)
13:15-13:45  Address Plus Port (A+P)   (0:30, Randy)
13:45-14:30  Stateless Address Mapping (0:45, Remi)
14:30-14:50  break                     (0:10)
14:50-15:20  DS-Lite                   (0:30, Alain)
15:20-15:50  comparison                (0:30, Dan)
15:50-17:00  discussion                (1:00, all)
                  - IPv6 prefix
                  - P-MTU & Fragmentation
                  - End-point discovery
                  - encaps/decaps location?
                  - Tunneling protocol

19:00-        social event at [http://www.gibbys.com/ Gibby's]
</pre>

**Thursday, October 2nd, 08:30 - 17:00:**


<pre>
08:30-09:00  breakfast                (0:30)
09:00-10:00  IVI                      (1:00, Xing)
10:00-11:00  NAT64                    (1:00, Marcelo)
11:00-11:30  email break              (0:30)
11:30-12:30  sNAT-PT                  (1:00, Hiroshi)
12:30-13:15  lunch
13:15-14:00  NAT6                     (0:45, Cullen)
14:00-14:30  comparison               (0:30, Dan)
14:30-15:00  break
15:00-15:30  scenario clarifications  (0:30, Mark)
15:30-16:30  discussion               (1:00, all)
             - chair questions           
16:30-17:00  conclude                 (0:30, ADs)
</pre>

## Slides 

[Practical arrangements and meeting goals](http://www.arkko.com/ietf/v4v6/interim_jari.pdf) (Jari)

[Agenda and Note Well](http://www.cs.jhu.edu/~bkhabs/v4v6/v4v6coexistence_agenda.pdf)  (Chairs)

[Scenarios and high-level design space](http://www.cs.jhu.edu/~bkhabs/v4v6/townsley-64-coexist-00.pdf)  (Mark)

 [NAT-PT Replacement Comparison](http://www.cs.jhu.edu/~bkhabs/v4v6/comparison-wing.pdf) (Dan)

 [Discussion Topics](http://www.cs.jhu.edu/~bkhabs/v4v6/discussion-topics.pdf) (Chairs)

 [DS Lite](http://www.cs.jhu.edu/~bkhabs/v4v6/DS-lite.pdf) (Alain)

 [Stateless Address Mapping](http://www.cs.jhu.edu/~bkhabs/v4v6/SAM-Scenarios-Montreal.pdf) (Remi)

 [A+P Address Hack](http://www.cs.jhu.edu/~bkhabs/v4v6/Bush-A+P.pdf) (Randy)

[SNAT-PT](http://www.cs.jhu.edu/~bkhabs/v4v6/InterimOct2008-snatpt.pdf)  (Hiroshi)

 [IVI](http://www.cs.jhu.edu/~bkhabs/v4v6/xing-ivi-20081002.pdf) (Xing)

 [NAT-PT Improved](http://www.cs.jhu.edu/~bkhabs/v4v6/bagnulo_natpt_improved.pdf) (Marcelo)

 [NAT6](http://www.cs.jhu.edu/~bkhabs/v4v6/Jennings-nat6.pdf) (Cullen)

 [Comparison Document - Day 2](http://www.cs.jhu.edu/~bkhabs/v4v6/comparison-wing_day2.pdf) (Dan)

 [Questions on Scenarios](http://www.cs.jhu.edu/~bkhabs/v4v6/v4v6Interim_Questions.pdf) (Chairs)

[Scenarios Update](http://www.cs.jhu.edu/~bkhabs/v4v6/townsley-64-scenarios-01.pdf) (Mark)

## Minutes 

[Wednesday Minutes](http://www.cs.jhu.edu/~bkhabs/v4v6/minutes-oct-1-wrapped.txt)

[Thursday Minutes](http://www.cs.jhu.edu/~bkhabs/v4v6/minutes-oct-2-wrapped.txt)

## Audio Recordings 

[http://www.cs.jhu.edu/~bkhabs/v4v6/Recordings.bmp Description of audio files]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27428082&rKey=1DEB22836027283E v4v6interim-20081001 1303]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27428092&rKey=F7AE25351BB4502D v4v6interim-20081001 1322]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27428102&rKey=489AA71AB5114B54 v4v6interim-20081001 1327]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27428112&rKey=A85A6F8F961BC452 v4v6interim-20081001 1629]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27428122&rKey=CCF27B7B19292CF2 v4v6interim-20081001 1718]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27428132&rKey=733E628B3DC23C03 v4v6interim-20081001 1753]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27428142&rKey=0D1451151177CBAA v4v6interim-20081001 1847]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27428162&rKey=D8888FBE3D01D2D3 v4v6interim-20081001 2007]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27428152&rKey=F13D3567E93C403A v4v6interim-20081001 1928]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27453882&rKey=C925CC7B2FEE3D26 v4v6interim Day2-20081002 1308]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27453902&rKey=155A84450DF761BE v4v6interim Day2-20081002 1534]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27453922&rKey=13A775CC16C0DDB7 v4v6interim Day2-20081002 1717]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27453912&rKey=7D34355455B889EC v4v6interim Day2-20081002 1536]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27453892&rKey=DE2193BD8476E894 v4v6interim Day2-20081002 1421]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27453942&rKey=76CB9E7FFBA73318 v4v6interim Day2-20081002 1904]

[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27454152&rKey=22CC1CB9C7D979BC v4v6interim Day2-20081002 2040]
 
[https://ciscosales.webex.com/ciscosales/ldr.php?AT=pb&SP=MC&rID=27453932&rKey=EBF5F0648036E076 v4v6interim Day2-20081002 1752]

## Registration 

Please proceed to the [registration page](/groups/int/RegistrationForv4v6interim). Participation in the meeting is free of charge. (Barring the possibility of overflowing the reserved facility -- which we do not think will happen.)

We do ask you to register latest by **Saturday, September 20th**.

## Hotel Recommendations 

We have negotiated a rate of $134 for a really nice deluxe room at Hotel Ruby Foo's. This includes internet access in the rooms and free parking. Use the following link to make a booking

[https://reservations.ihotelier.com/istay.cfm?DateIn=9%2F30%2F2008&hotelid=12479&languageID=1&Length=2&identifier=hrfericsson&x=47&y=20 Ruby Foo's]

The hotel is less than a 10 minute walk from the Ericsson premises.

[http://maps.google.com/maps?f=d&saddr=7655+boulevard+D%C3%A9carie,+Montr%C3%A9al,+QC+H4P+2H2,+Canada+(H%C3%B4tel+Ruby+Foo%27s)&daddr=8400+boul+decarie+montreal+qc&hl=en&geocode=FbI3tgIdWBuc-w%3B&mra=cc&dirflg=w&sll=45.497225,-73.664295&sspn=0.0131,0.033045&ie=UTF8&z=16 Walking Map]

## Invitation letter for visa 


If you would like an invitation letter for obtaining a visa, please send an email to suresh.krishnan AT ericsson.com with the following details.

  * Full Name
  * Passport Number
  * Issuing Country
  * Date of Expiry

## Getting There 

The Ericsson office in Montreal is located close to the Metro station "de la Savanne" and is easily reachable by Metro from various parts of Montreal. It is located on the Orange line of the Metro ([http://www.stm.info/English/metro/a-mapmet.htm map]).

## Remote Participation 

Several people have asked for remote participation facilities. We are planning to arrange a voice stream coming out of the meeting, slide display in real time (via WebEx courtesy of Cisco Systems), jabber scribing, and possibility for questions from the jabber. The voice stream should be accessible either by computer or a phone.

To join the jabber, please use the room "v4v6coexistence" in the IETF jabber.ietf.org server.  You can view the [http://jabber.ietf.org/logs/v4v6coexistence Jabber logs].

To join the online Webex meeting (live slides, bidirectional voice and webcam streaming)

1. Go to [https://ciscosales.webex.com/ciscosales/j.php?ED=108125277&UID=0&PW=6b5fa075cd070156 Day 1] and  [https://ciscosales.webex.com/ciscosales/j.php?ED=108125467&UID=0&PW=b0f033281e Day 2] 
2. Enter your name and email address. 
3. Enter the meeting password: cgn 
4. Click "Join Now". 
5. A 'Join Teleconference' dialogue box will be presented, select your country code, then enter your local number and click OK from the Web Conference to join the Voice Conference portion of the meeting. 

Webex has availability of a bidirectional Global Voice Bridge. Participants have the following options to connect:
1. Call the local access number with a phone (note: select option '3' for the Webex conferencing
2. Have Webex call the participant during the startup of the Webex tool (descrbed above)
3. Use the Integrated Voice option in Webex (I just tested this with MSFT explorer software)

Usage of the voice bridge to speak and to reflect ideas is possible and the system is connected to an inroom speaker system. However due to a feedback loop we must control the 'mute/unmute' button on the Montreal end (we know it is suboptimal however it is the best we can provide with based upon the tools available). Please be aware of this complication when hearing echo on the line and to alert the person driving the phone connection. Also please mute your speaker sets when on the conference bridge through either of the above procedures.

Teleconference and Global access numbers can be found [http://trac.tools.ietf.org/area/int/trac/wiki/TeleconferenceForV4v6interim Here]

## Social Event 

The social event will take place at Gibby's restaurant in montreal [http://www.gibbys.com]

Gibbys is located in the Youville Stables which is part of a series of buildings once belonging to the Sisters of Charity, (or Grey Nuns), founded by Marguerite d’Youville. Part of the original structure was built in 1694, and served as The Grey Nuns’ General Hospital, which cared for the sick and destitute. However, most of the building dates from 1765 to 1850.
Gibbys Gates
	
Youville Stables received its name from the horses’ stalls which were once located in the central courtyard. This part of the structure dates back to 1740 and was renovated in 1967, the first in a series of renovations in Old Montreal. The buildings now house the restaurant and private offices. 

The best way to get to the restaurant is by taking the metro to station Square Victoria and then walking from there for about 10 minutes

[http://maps.google.com/maps?f=d&saddr=C%C3%B4te+Du+Beaver+Hall&daddr=298+D%27Youville+Pl,+Montr%C3%A9al,+QC,+Canada&hl=en&geocode=FWtOtgIdu4Kd-w%3B&mra=cc&dirflg=w&sll=45.502,-73.559535&sspn=0.00655,0.016522&ie=UTF8&z=17 Walking Map]

If you are driving instead (beware of the peak hour traffic and construction delays) You can use this map to get there

[http://maps.google.com/maps?daddr=298+D%27Youville+Pl,+Montr%C3%A9al,+QC,+Canada&geocode=&dirflg=&saddr=8400+Boulevard+D%C3%A9carie,+Montr%C3%A9al,+QC,+Canada&f=d&hl=en&sll=45.501139,-73.555226&sspn=0.013099,0.033045&ie=UTF8&ll=45.494104,-73.557329&spn=0.026202,0.06609&z=15 Driving Map]


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2008-10-15. It was migrated from the old Trac wiki on 2022-12-14.*