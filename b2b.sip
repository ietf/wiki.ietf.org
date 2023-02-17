PACKET 2010-10-20 12:19:33.747 IN UDP 192.168.217.24 5060


PACKET 2010-10-20 12:19:47.137 IN TCP 192.168.217.117 56485
INVITE sip:192.168.217.74 SIP/2.0
To: <sip:192.168.217.74>
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
From: "PeterM" <sip:1001@petermac.magor.local.:5060>;tag=DL88360fa5fc;epid=0x34619b0
CSeq: 1 INVITE
Max-Forwards: 70
Via: SIP/2.0/TCP 192.168.217.117:5060;branch=z9hG4bK-1f6be070c4-DL
Contact: "1001" <sip:1001@192.168.217.117:5060>
Allow: INVITE,CANCEL,ACK,OPTIONS,INFO,SUBSCRIBE,NOTIFY,BYE,MESSAGE,UPDATE,REFER
Supported: replaces,norefersub
User-Agent: Dylogic Mirial 7.0.33
Content-Type: application/sdp
Content-Length: 418

v=0
o=1001 1456139204 0 IN IP4 192.168.217.117
s=-
i=Dylogic Mirial 7.0.33
c=IN IP4 192.168.217.117
b=AS:2048
t=0 0
m=audio 13756 RTP/AVP 0 101
a=rtpmap:0 PCMU/8000
a=rtpmap:101 telephone-event/8000
a=fmtp:101 0-16
a=x-mpdp:192.168.217.117:13756
m=video 13758 RTP/AVP 96
a=rtpmap:96 H264/90000
a=fmtp:96 profile-level-id=420015; max-mbps=47520; max-fs=1584; max-dpb=7680
a=x-mpdp:192.168.217.117:13758
PACKET 2010-10-20 12:19:47.151 OUT TCP 192.168.217.117 5060
SIP/2.0 100 Trying
Via: SIP/2.0/TCP 192.168.217.117:5060;branch=z9hG4bK-1f6be070c4-DL;received=192.168.217.117
From: "PeterM" <sip:1001@petermac.magor.local.:5060>;epid=0x34619b0;tag=DL88360fa5fc
To: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
CSeq: 1 INVITE
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Content-Length: 0

PACKET 2010-10-20 12:19:47.165 OUT TCP 192.168.217.74 5070
INVITE sip:SIPVIDEO-6517@192.168.217.74:5070 SIP/2.0
Via: SIP/2.0/TCP 192.168.217.74:5060;branch=z9hG4bK-86l4lgnhiaibl8J1o2E-hkou5y
From: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
To: <sip:SIPVIDEO-6517@192.168.217.74:5070>
Contact: <sip:1001@192.168.217.74;transport=tcp>
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 1 INVITE
Supported: path,sip-stun,outbound,replaces
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE,MESSAGE
Max-Forwards: 69
Content-Type: application/sdp
User-Agent: Dylogic (via MKC B2B)
Content-Length: 418

v=0
o=1001 1456139204 0 IN IP4 192.168.217.117
s=-
i=Dylogic Mirial 7.0.33
c=IN IP4 192.168.217.117
b=AS:2048
t=0 0
m=audio 13756 RTP/AVP 0 101
a=rtpmap:0 PCMU/8000
a=rtpmap:101 telephone-event/8000
a=fmtp:101 0-16
a=x-mpdp:192.168.217.117:13756
m=video 13758 RTP/AVP 96
a=rtpmap:96 H264/90000
a=fmtp:96 profile-level-id=420015; max-mbps=47520; max-fs=1584; max-dpb=7680
a=x-mpdp:192.168.217.117:13758
PACKET 2010-10-20 12:19:47.227 IN TCP 192.168.215.1 42337
SIP/2.0 100 Trying
Via: SIP/2.0/TCP 192.168.217.74:5060;branch=z9hG4bK-86l4lgnhiaibl8J1o2E-hkou5y;received=192.168.217.74
From: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
To: <sip:SIPVIDEO-6517@192.168.217.74:5070>;tag=12875915871732-T--40-58-274a
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 1 INVITE
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Content-Length: 0

PACKET 2010-10-20 12:19:47.240 IN UDP 192.168.215.1 5070
INVITE sip:2000@192.168.215.1 SIP/2.0
Via: SIP/2.0/UDP 192.168.215.1:5070;branch=z9hG4bK19908nb1den8elJ1o2E-hkou5y
From: "VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872323-F--40-58-274a
To: <sip:2000@192.168.215.1>
Contact: <sip:6517@192.168.215.1:5070>
Call-ID: CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR@192.168.217.74
CSeq: 1 INVITE
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Max-Forwards: 70
Content-Length: 0

PACKET 2010-10-20 12:19:47.245 OUT TCP 192.168.217.117 5060
SIP/2.0 183 Session Progress
Via: SIP/2.0/TCP 192.168.217.117:5060;branch=z9hG4bK-1f6be070c4-DL;received=192.168.217.117
From: "PeterM" <sip:1001@petermac.magor.local.:5060>;epid=0x34619b0;tag=DL88360fa5fc
To: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
CSeq: 1 INVITE
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Supported: replaces
Content-Length: 0

PACKET 2010-10-20 12:19:47.250 OUT UDP 192.168.215.1 5070
SIP/2.0 100 Trying
Via: SIP/2.0/UDP 192.168.215.1:5070;branch=z9hG4bK19908nb1den8elJ1o2E-hkou5y;received=192.168.215.1
From: "VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872323-F--40-58-274a
To: <sip:2000@192.168.215.1>;tag=12875915872413022-T--40-58-274a
Call-ID: CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR@192.168.217.74
CSeq: 1 INVITE
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Content-Length: 0

PACKET 2010-10-20 12:19:47.275 OUT UDP 192.168.215.240 5060
INVITE sip:2000@192.168.215.240;transport=UDP SIP/2.0
Via: SIP/2.0/UDP 192.168.215.1:5060;branch=z9hG4bK6e5g5mk7kd7k70J1o2E-hkou5y
From: "VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872733023-F--40-58-274a
To: <sip:2000@localhost>
Contact: <sip:6517@192.168.215.1:5060;transport=udp>
Call-ID: CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR-292-B2BUA@192.168.217.74
CSeq: 1 INVITE
Supported: path,sip-stun,outbound,replaces
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Max-Forwards: 69
Content-Length: 0

PACKET 2010-10-20 12:19:47.303 IN UDP 192.168.215.240 5060
SIP/2.0 100 Trying
Via: SIP/2.0/UDP 192.168.215.1:5060;branch=z9hG4bK6e5g5mk7kd7k70J1o2E-hkou5y
From:"VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872733023-F--40-58-274a
To:<sip:2000@localhost>;tag=4cbede63-11d-721fff17
CSeq:1 INVITE
User-Agent:Mitel-5340-SIP-Phone 01.04.03.03 08000F3ED043
Call-ID:CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR-292-B2BUA@192.168.217.74
Content-Length:0

PACKET 2010-10-20 12:19:47.307 OUT UDP 192.168.215.1 5070
SIP/2.0 183 Session Progress
Via: SIP/2.0/UDP 192.168.215.1:5070;branch=z9hG4bK19908nb1den8elJ1o2E-hkou5y;received=192.168.215.1
From: "VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872323-F--40-58-274a
To: <sip:2000@192.168.215.1>;tag=12875915872413022-T--40-58-274a
Call-ID: CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR@192.168.217.74
CSeq: 1 INVITE
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
User-Agent: Mitel-5340-SIP-Phone (via MKC B2B)
Supported: replaces
Content-Length: 0

PACKET 2010-10-20 12:19:47.402 IN UDP 192.168.215.240 5060
SIP/2.0 180 Ringing
Via: SIP/2.0/UDP 192.168.215.1:5060;branch=z9hG4bK6e5g5mk7kd7k70J1o2E-hkou5y
From:"VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872733023-F--40-58-274a
To:<sip:2000@localhost>;tag=4cbede63-11d-721fff17
CSeq:1 INVITE
User-Agent:Mitel-5340-SIP-Phone 01.04.03.03 08000F3ED043
Call-ID:CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR-292-B2BUA@192.168.217.74
Allow-Events:talk,hold,conference
Content-Length:0

PACKET 2010-10-20 12:19:49.947 IN TCP 192.168.215.1 42337
SIP/2.0 200 OK
Via: SIP/2.0/TCP 192.168.217.74:5060;branch=z9hG4bK-86l4lgnhiaibl8J1o2E-hkou5y;received=192.168.217.74
From: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
To: <sip:SIPVIDEO-6517@192.168.217.74:5070>;tag=12875915871732-T--40-58-274a
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 1 INVITE
Contact: <sip:6517@192.168.215.1:5070;transport=tcp>
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
User-Agent: CounterPath SIP Server
Content-Type: application/sdp
Content-Length: 338

v=0
o=MKC 5 6 IN IP4 192.168.217.74
s=MKC
c=IN IP4 192.168.217.74
b=AS:2048
t=0 0
a=sendrecv
m=audio 15004 RTP/AVP 0 101
a=rtpmap:0 PCMU/8000
a=ptime:20
a=rtpmap:101 telephone-event/8000
m=video 17900 RTP/AVP 96
a=rtpmap:96 H264/90000
a=fmtp:96 profile-level-id=420015; max-mbps=47520; max-fs=1584; max-dpb=7680
a=sendrecv
PACKET 2010-10-20 12:19:49.958 OUT TCP 192.168.215.1 5070
ACK sip:6517@192.168.215.1:5070;transport=tcp SIP/2.0
Via: SIP/2.0/TCP 192.168.215.1:5060;branch=z9hG4bK8lbndm1eh6hnj6J1o2E-hkou5y
From: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
To: <sip:SIPVIDEO-6517@192.168.217.74:5070>;tag=12875915871732-T--40-58-274a
Contact: <sip:1001@192.168.217.74;transport=tcp>
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 1 ACK
Max-Forwards: 70
Content-Length: 0

PACKET 2010-10-20 12:19:49.959 OUT TCP 192.168.217.117 5060
SIP/2.0 200 OK
Via: SIP/2.0/TCP 192.168.217.117:5060;branch=z9hG4bK-1f6be070c4-DL;received=192.168.217.117
From: "PeterM" <sip:1001@petermac.magor.local.:5060>;epid=0x34619b0;tag=DL88360fa5fc
To: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
CSeq: 1 INVITE
Contact: <sip:6517@192.168.217.74:5060;transport=tcp>
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Content-Type: application/sdp
User-Agent: CounterPath (via MKC B2B)
Supported: replaces
Content-Length: 338

v=0
o=MKC 5 6 IN IP4 192.168.217.74
s=MKC
c=IN IP4 192.168.217.74
b=AS:2048
t=0 0
a=sendrecv
m=audio 15004 RTP/AVP 0 101
a=rtpmap:0 PCMU/8000
a=ptime:20
a=rtpmap:101 telephone-event/8000
m=video 17900 RTP/AVP 96
a=rtpmap:96 H264/90000
a=fmtp:96 profile-level-id=420015; max-mbps=47520; max-fs=1584; max-dpb=7680
a=sendrecv
PACKET 2010-10-20 12:19:50.002 IN UDP 192.168.215.240 5060
SIP/2.0 200 OK
Via: SIP/2.0/UDP 192.168.215.1:5060;branch=z9hG4bK6e5g5mk7kd7k70J1o2E-hkou5y
From:"VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872733023-F--40-58-274a
To:<sip:2000@localhost>;tag=4cbede63-11d-721fff17
CSeq:1 INVITE
User-Agent:Mitel-5340-SIP-Phone 01.04.03.03 08000F3ED043
Call-ID:CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR-292-B2BUA@192.168.217.74
Contact:"2000" <sip:2000@192.168.215.240:5060;transport=UDP>
Allow-Events:talk,hold,conference
Allow:INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,PRACK,UPDATE
Supported:timer,100rel,replaces
Content-Type:application/sdp
Content-Length:249

v=0
o=2000 1287578165 1287578164 IN IP4 192.168.215.240
s=SIP Call
c=IN IP4 192.168.215.240
t=0 0
a=sendrecv
m=audio 20004 RTP/AVP 0 8 18 96
a=rtpmap:0 PCMU/8000
a=rtpmap:8 PCMA/8000
a=rtpmap:18 G729/8000
a=rtpmap:96 telephone-event/8000
PACKET 2010-10-20 12:19:50.007 OUT UDP 192.168.215.1 5070
SIP/2.0 200 OK
Via: SIP/2.0/UDP 192.168.215.1:5070;branch=z9hG4bK19908nb1den8elJ1o2E-hkou5y;received=192.168.215.1
From: "VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872323-F--40-58-274a
To: <sip:2000@192.168.215.1>;tag=12875915872413022-T--40-58-274a
Call-ID: CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR@192.168.217.74
CSeq: 1 INVITE
Contact: "2000" <sip:2000@192.168.215.1:5060;transport=udp>
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Content-Type: application/sdp
User-Agent: Mitel-5340-SIP-Phone (via MKC B2B)
Supported: replaces
Content-Length: 249

v=0
o=2000 1287578165 1287578164 IN IP4 192.168.215.240
s=SIP Call
c=IN IP4 192.168.215.240
t=0 0
a=sendrecv
m=audio 20004 RTP/AVP 0 8 18 96
a=rtpmap:0 PCMU/8000
a=rtpmap:8 PCMA/8000
a=rtpmap:18 G729/8000
a=rtpmap:96 telephone-event/8000
PACKET 2010-10-20 12:19:50.127 IN UDP 192.168.215.1 5070
ACK sip:2000@192.168.215.1:5060;transport=udp SIP/2.0
Via: SIP/2.0/UDP 192.168.215.1:5070;branch=z9hG4bK19908nb1den8elJ1o2E-hkou5y
From: "VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872323-F--40-58-274a
To: <sip:2000@192.168.215.1>;tag=12875915872413022-T--40-58-274a
Contact: <sip:6517@192.168.215.1:5070>
Call-ID: CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR@192.168.217.74
CSeq: 1 ACK
Max-Forwards: 70
Content-Type: application/sdp
Content-Length: 171

v=0
o=MKC 7 8 IN IP4 192.168.215.1
s=MKC
c=IN IP4 192.168.215.1
t=0 0
a=sendrecv
m=audio 15006 RTP/AVP 0 96
a=rtpmap:0 PCMU/8000
a=rtpmap:96 telephone-event/8000
PACKET 2010-10-20 12:19:50.131 OUT UDP 192.168.215.240 5060
ACK sip:2000@192.168.215.240:5060;transport=UDP SIP/2.0
Via: SIP/2.0/UDP 192.168.215.1:5060;branch=z9hG4bK694n9j1715ldbhJ1o2E-hkou5y
From: "VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872733023-F--40-58-274a
To: <sip:2000@localhost>;tag=4cbede63-11d-721fff17
Contact: <sip:6517@192.168.215.1:5060;transport=udp>
Call-ID: CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR-292-B2BUA@192.168.217.74
CSeq: 1 ACK
Max-Forwards: 69
Content-Type: application/sdp
Content-Length: 171

v=0
o=MKC 7 8 IN IP4 192.168.215.1
s=MKC
c=IN IP4 192.168.215.1
t=0 0
a=sendrecv
m=audio 15006 RTP/AVP 0 96
a=rtpmap:0 PCMU/8000
a=rtpmap:96 telephone-event/8000
PACKET 2010-10-20 12:19:50.470 OUT TCP 192.168.217.117 5060
SIP/2.0 200 OK
Via: SIP/2.0/TCP 192.168.217.117:5060;branch=z9hG4bK-1f6be070c4-DL;received=192.168.217.117
From: "PeterM" <sip:1001@petermac.magor.local.:5060>;epid=0x34619b0;tag=DL88360fa5fc
To: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
CSeq: 1 INVITE
Contact: <sip:6517@192.168.217.74:5060;transport=tcp>
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Content-Type: application/sdp
User-Agent: CounterPath (via MKC B2B)
Supported: replaces
Content-Length: 338

v=0
o=MKC 5 6 IN IP4 192.168.217.74
s=MKC
c=IN IP4 192.168.217.74
b=AS:2048
t=0 0
a=sendrecv
m=audio 15004 RTP/AVP 0 101
a=rtpmap:0 PCMU/8000
a=ptime:20
a=rtpmap:101 telephone-event/8000
m=video 17900 RTP/AVP 96
a=rtpmap:96 H264/90000
a=fmtp:96 profile-level-id=420015; max-mbps=47520; max-fs=1584; max-dpb=7680
a=sendrecv
PACKET 2010-10-20 12:19:50.697 IN TCP 192.168.217.117 56485
ACK sip:6517@192.168.217.74:5060;transport=tcp SIP/2.0
CSeq: 1 ACK
Via: SIP/2.0/TCP 192.168.217.117:5060;branch=z9hG4bK-bed54764a5-DL
To: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
From: "1001" <sip:1001@petermac.magor.local.:5060>;tag=DL88360fa5fc;epid=0x34619b0
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
Max-Forwards: 70
Contact: "1001" <sip:1001@192.168.217.117:5060>
Content-Length: 0

PACKET 2010-10-20 12:19:50.699 IN TCP 192.168.217.117 56485
ACK sip:6517@192.168.217.74:5060;transport=tcp SIP/2.0
CSeq: 1 ACK
Via: SIP/2.0/TCP 192.168.217.117:5060;branch=z9hG4bK-e36f087b06-DL
To: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
From: "1001" <sip:1001@petermac.magor.local.:5060>;tag=DL88360fa5fc;epid=0x34619b0
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
Max-Forwards: 70
Contact: "1001" <sip:1001@192.168.217.117:5060>
Content-Length: 0

PACKET 2010-10-20 12:19:51.181 IN TCP 192.168.215.1 42337
INVITE sip:1001@192.168.217.74;transport=tcp SIP/2.0
Via: SIP/2.0/TCP 192.168.215.1:5070;branch=z9hG4bK3nf2khdadd8n2jJ1o2E-hkou5y
From: <sip:SIPVIDEO-6517@192.168.217.74:5070>;tag=12875915871732-T--40-58-274a
To: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
Contact: <sip:1001@192.168.215.1:5070;transport=tcp>
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 1 INVITE
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Max-Forwards: 70
Content-Type: application/sdp
Content-Length: 338

v=0
o=MKC 5 7 IN IP4 192.168.217.74
s=MKC
c=IN IP4 192.168.217.74
b=AS:2048
t=0 0
a=sendrecv
m=audio 15004 RTP/AVP 0 101
a=rtpmap:0 PCMU/8000
a=ptime:20
a=rtpmap:101 telephone-event/8000
m=video 17900 RTP/AVP 96
a=rtpmap:96 H264/90000
a=fmtp:96 profile-level-id=420015; max-mbps=47520; max-fs=1584; max-dpb=7680
a=recvonly
PACKET 2010-10-20 12:19:51.194 OUT TCP 192.168.217.117 5060
INVITE sip:1001@192.168.217.117:5060 SIP/2.0
Via: SIP/2.0/TCP 192.168.217.74:5060;branch=z9hG4bK8001ii1ffkib2kJ1o2E-hkou5y
From: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
To: "PeterM" <sip:1001@petermac.magor.local.:5060>;epid=0x34619b0;tag=DL88360fa5fc
Contact: <sip:SIPVIDEO-6517@192.168.217.74;transport=tcp>
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
CSeq: 1 INVITE
Supported: path,sip-stun,outbound,replaces
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Max-Forwards: 70
Content-Type: application/sdp
Content-Length: 338

v=0
o=MKC 5 7 IN IP4 192.168.217.74
s=MKC
c=IN IP4 192.168.217.74
b=AS:2048
t=0 0
a=sendrecv
m=audio 15004 RTP/AVP 0 101
a=rtpmap:0 PCMU/8000
a=ptime:20
a=rtpmap:101 telephone-event/8000
m=video 17900 RTP/AVP 96
a=rtpmap:96 H264/90000
a=fmtp:96 profile-level-id=420015; max-mbps=47520; max-fs=1584; max-dpb=7680
a=recvonly
PACKET 2010-10-20 12:19:51.197 OUT TCP 192.168.215.1 5070
SIP/2.0 100 Trying
Via: SIP/2.0/TCP 192.168.215.1:5070;branch=z9hG4bK3nf2khdadd8n2jJ1o2E-hkou5y;received=192.168.215.1
From: <sip:SIPVIDEO-6517@192.168.217.74:5070>;tag=12875915871732-T--40-58-274a
To: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 1 INVITE
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Content-Length: 0

PACKET 2010-10-20 12:19:51.197 IN TCP 192.168.217.117 56485
SIP/2.0 200 OK
From: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a;epid=0x34619b0
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
CSeq: 1 INVITE
Via: SIP/2.0/TCP 192.168.217.74:5060;branch=z9hG4bK8001ii1ffkib2kJ1o2E-hkou5y;received=192.168.217.74
To: "PeterM" <sip:1001@petermac.magor.local.:5060>;epid=0x34619b0;tag=DL88360fa5fc
Allow: INVITE,CANCEL,ACK,OPTIONS,INFO,SUBSCRIBE,NOTIFY,BYE,MESSAGE,UPDATE,REFER
Supported: replaces,norefersub
Contact: "1001" <sip:1001@192.168.217.117:5060>
Content-Type: application/sdp
Content-Length: 457
User-Agent: Dylogic Mirial 7.0.33

v=0
o=1001 1456139204 1 IN IP4 192.168.217.117
s=MKC
i=Dylogic Mirial 7.0.33
c=IN IP4 192.168.217.117
b=AS:2048
a=sendrecv
t=0 0
m=audio 13756 RTP/AVP 0 101
a=rtpmap:0 PCMU/8000
a=rtpmap:101 telephone-event/8000
a=fmtp:101 0-16
a=x-mpdp:192.168.217.117:13756
m=video 13758 RTP/AVP 96
a=sendonly
a=rtpmap:96 H264/90000
a=fmtp:96 profile-level-id=420015; max-mbps=47520; max-fs=1584; max-dpb=7680; max-br=1706
a=x-mpdp:192.168.217.117:13758
PACKET 2010-10-20 12:19:51.210 OUT TCP 192.168.215.1 5070
SIP/2.0 200 OK
Via: SIP/2.0/TCP 192.168.215.1:5070;branch=z9hG4bK3nf2khdadd8n2jJ1o2E-hkou5y;received=192.168.215.1
From: <sip:SIPVIDEO-6517@192.168.217.74:5070>;tag=12875915871732-T--40-58-274a
To: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 1 INVITE
Contact: "1001" <sip:1001@192.168.217.74:5060;transport=tcp>
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE,MESSAGE
Content-Type: application/sdp
User-Agent: Dylogic (via MKC B2B)
Supported: replaces
Content-Length: 457

v=0
o=1001 1456139204 1 IN IP4 192.168.217.117
s=MKC
i=Dylogic Mirial 7.0.33
c=IN IP4 192.168.217.117
b=AS:2048
t=0 0
a=sendrecv
m=audio 13756 RTP/AVP 0 101
a=rtpmap:0 PCMU/8000
a=rtpmap:101 telephone-event/8000
a=fmtp:101 0-16
a=x-mpdp:192.168.217.117:13756
m=video 13758 RTP/AVP 96
a=sendonly
a=rtpmap:96 H264/90000
a=fmtp:96 profile-level-id=420015; max-mbps=47520; max-fs=1584; max-dpb=7680; max-br=1706
a=x-mpdp:192.168.217.117:13758
PACKET 2010-10-20 12:19:51.211 OUT TCP 192.168.217.117 5060
ACK sip:1001@192.168.217.117:5060 SIP/2.0
Via: SIP/2.0/TCP 192.168.217.74:5060;branch=z9hG4bK8001ii1ffkib2kJ1o2E-hkou5y
From: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
To: "PeterM" <sip:1001@petermac.magor.local.:5060>;epid=0x34619b0;tag=DL88360fa5fc
Contact: <sip:SIPVIDEO-6517@192.168.217.74;transport=tcp>
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
CSeq: 1 ACK
Max-Forwards: 70
Content-Length: 0

PACKET 2010-10-20 12:19:51.227 IN TCP 192.168.215.1 42337
ACK sip:1001@192.168.217.74:5060;transport=tcp SIP/2.0
Via: SIP/2.0/TCP 192.168.215.1:5070;branch=z9hG4bK3nf2khdadd8n2jJ1o2E-hkou5y
From: <sip:SIPVIDEO-6517@192.168.217.74:5070>;tag=12875915871732-T--40-58-274a
To: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
Contact: <sip:1001@192.168.215.1:5070;transport=tcp>
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 1 ACK
Max-Forwards: 70
Content-Length: 0

PACKET 2010-10-20 12:20:03.748 IN UDP 192.168.217.24 5060


PACKET 2010-10-20 12:20:04.895 IN TCP 192.168.215.1 42337
INFO sip:1001@192.168.217.74:5060;transport=tcp SIP/2.0
Via: SIP/2.0/TCP 192.168.215.1:5070;branch=z9hG4bK434747ejja3c46J1o2E-hkou5y
From: <sip:SIPVIDEO-6517@192.168.217.74:5070>;tag=12875915871732-T--40-58-274a
To: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
Contact: <sip:SIPVIDEO-6517@192.168.215.1:5070;transport=tcp>
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 2 INFO
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Max-Forwards: 70
Content-Type: application/media_control+xml
Content-Length: 175

<?xml version="1.0" encoding="utf-8" ?>
<media_control>
<vc_primitive>
<to_encoder>
<picture_fast_update>
</picture_fast_update>
</to_encoder>
</vc_primitive>
</media_control>"
! 2010-10-20 12:20:04.895 ....util.sip.util.SDPUtil.contentLengthExceeded(879): Size = 175 length=175
  2010-10-20 12:20:04.896 ...counterpath.util.sip.CallManager.getCallHalf(748): FOUND CallHalf:
ID= DL70dff590c1-1079051554-291-B2BUA@192.168.217.74:12875915871493021-F--40-58-274a, TERM]
  2010-10-20 12:20:04.896   com.counterpath.util.sip.CallManager.dispatch(570): DISPATCHING event: 
ID= DL70dff590c1-1079051554-291-B2BUA@192.168.217.74:12875915871493021-F--40-58-274a, TERM, SMEvent = INFO_IN
  2010-10-20 12:20:04.896 com.counterpath.util.sip.CallDispatcher.dispatch(48): CALL-DISPATCHER:
com.counterpath.util.sip.CallDispatcher@238e8fe0 pushing event INFO_IN, ID= 14
  2010-10-20 12:20:04.896     com.counterpath.util.sip.CallDispatcher.run(106): CALL-DISPATCHER:
com.counterpath.util.sip.CallDispatcher@238e8fe0 popped event with ID= 14
i 2010-10-20 12:20:04.896 ...ocess.b2bua.callmodels.TermCallModel.process(432): 
TERM_CALL_MODEL: -------------------------------------------
TERM_CALL_MODEL: Transition:   Current State= CONNECTED, Event= INFO_IN, Next State= CONNECTED
TERM_CALL_MODEL: Call-Half ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74:12875915871493021-F--40-58-274a
i 2010-10-20 12:20:04.896 ...ocess.b2bua.callmodels.TermCallModel.process(474): 
TERM_CALL_MODEL: Executing:    com.counterpath.process.b2bua.callmodels.Actions$HandleInfo
  2010-10-20 12:20:04.897 ...erpath.util.sip.util.SDPUtil.setSdpAnnounce(1547): Can't set SDP announce, sdp requested is null
  2010-10-20 12:20:04.897 ...counterpath.util.sip.CallManager.getCallHalf(748): FOUND CallHalf:
ID= DL70dff590c1-1079051554@petermac.magor.local.:DL88360fa5fc, ORIG]
  2010-10-20 12:20:04.897   com.counterpath.util.sip.CallManager.dispatch(570): DISPATCHING event: 
ID= DL70dff590c1-1079051554@petermac.magor.local.:DL88360fa5fc, ORIG, SMEvent = INFO_OUT
  2010-10-20 12:20:04.897 com.counterpath.util.sip.CallDispatcher.dispatch(48): CALL-DISPATCHER:
com.counterpath.util.sip.CallDispatcher@238e8fe0 pushing event INFO_OUT, ID= 15
i 2010-10-20 12:20:04.897 ...ocess.b2bua.callmodels.TermCallModel.logInfo(540): 
TERM_CALL_MODEL: Action:       com.counterpath.process.b2bua.callmodels.Actions$HandleInfo
TERM_CALL_MODEL: Finished:     Action successful
TERM_CALL_MODEL: Call-half ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74:12875915871493021-F--40-58-274a
  2010-10-20 12:20:04.897     com.counterpath.util.sip.CallDispatcher.run(106): CALL-DISPATCHER:
com.counterpath.util.sip.CallDispatcher@238e8fe0 popped event with ID= 15
i 2010-10-20 12:20:04.898 ...ocess.b2bua.callmodels.OrigCallModel.process(457): 
ORIG_CALL_MODEL: -------------------------------------------
ORIG_CALL_MODEL: Transition:   Current State= CONNECTED, Event= INFO_OUT, Next State= CONNECTED
ORIG_CALL_MODEL: Call-Half ID: DL70dff590c1-1079051554@petermac.magor.local.:DL88360fa5fc
i 2010-10-20 12:20:04.898 ...ocess.b2bua.callmodels.OrigCallModel.process(499): 
ORIG_CALL_MODEL: Executing:    com.counterpath.process.b2bua.callmodels.Actions$SendMessage
  2010-10-20 12:20:04.898 com.counterpath.util.sip.SIPStack.writeMessage(2404): Sending to Dylogic Mirial 7.0.33
  2010-10-20 12:20:04.898 ...erpath.util.sip.util.HeaderUtil.setTransport(867): Updating message to have transport= TCP
  2010-10-20 12:20:04.898 ...h.process.b2bua.LinuxRoutingTable.isInternal(208): 	isInternal: 192.168.217.117
  2010-10-20 12:20:04.898 ...h.process.b2bua.LinuxRoutingTable.isInternal(218):  destination = 192.168.216.0 false
i 2010-10-20 12:20:04.898 com.counterpath.util.sip.SIPStack.writeMessage(2555): Send on public? true
  2010-10-20 12:20:04.898 ...path.util.sip.util.HeaderUtil.updateContact(1268): Setting contact address= /192.168.217.74
i 2010-10-20 12:20:04.899 ...ocess.b2bua.callmodels.OrigCallModel.logInfo(565): 
ORIG_CALL_MODEL: Action:       com.counterpath.process.b2bua.callmodels.Actions$SendMessage
ORIG_CALL_MODEL: Finished:     Action successful
ORIG_CALL_MODEL: Call-half ID: DL70dff590c1-1079051554@petermac.magor.local.:DL88360fa5fc
i 2010-10-20 12:20:04.905   com.counterpath.util.sip.comm.Connector.write(328): TCPComm: Write request to /192.168.217.117/5060, Connection ID= /192.168.217.117_5060
i 2010-10-20 12:20:04.905 ....util.sip.comm.ConnectionsCache.getConnection(78): Comm: Getting from connection cache: /192.168.217.117_5060
i 2010-10-20 12:20:04.905   com.counterpath.util.sip.comm.Connector.write(362): TCPComm: Connection entry found in the cache for reuse
PACKET 2010-10-20 12:20:04.905 OUT TCP 192.168.217.117 5060
INFO sip:1001@192.168.217.117:5060 SIP/2.0
Via: SIP/2.0/TCP 192.168.217.74:5060;branch=z9hG4bK-62kh5h617iaa51J1o2E-hkou5y
From: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
To: "PeterM" <sip:1001@petermac.magor.local.:5060>;epid=0x34619b0;tag=DL88360fa5fc
Contact: <sip:SIPVIDEO-6517@192.168.217.74;transport=tcp>
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
CSeq: 2 INFO
Supported: path,sip-stun,outbound
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Max-Forwards: 70
Content-Type: application/media_control+xml
Content-Length: 175

<?xml version="1.0" encoding="utf-8" ?>
<media_control>
<vc_primitive>
<to_encoder>
<picture_fast_update>
</picture_fast_update>
</to_encoder>
</vc_primitive>
</media_control>"
i 2010-10-20 12:20:04.906     com.counterpath.util.sip.comm.Connector.run(160): TCPComm: Selector fired, Keys= 1
i 2010-10-20 12:20:04.906 ....util.sip.comm.Connector.processSelectedKeys(483): TCPComm: Processing selected keys
i 2010-10-20 12:20:04.906 ....util.sip.comm.Connector.processSelectedKeys(538): TCPComm: Key is READABLE
i 2010-10-20 12:20:04.907 ....util.sip.comm.ConnectionsCache.getConnection(78): Comm: Getting from connection cache: /192.168.217.117_56485
i 2010-10-20 12:20:04.907 ...h.util.sip.comm.Connector.readFromConnection(427): TCPComm: Attempting to read from java.nio.channels.SocketChannel[connected local=/192.168.217.74:5060 remote=/192.168.217.117:56485]
i 2010-10-20 12:20:04.907   com.counterpath.util.sip.comm.Connection.read(271): Comm: Bytes read from buffer= 409
  2010-10-20 12:20:04.907 ...path.util.sip.comm.Connection.readFromBuffer(340): Content length read: 0
PACKET 2010-10-20 12:20:04.907 IN TCP 192.168.217.117 56485
SIP/2.0 200 OK
From: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a;epid=0x34619b0
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
CSeq: 2 INFO
Via: SIP/2.0/TCP 192.168.217.74:5060;branch=z9hG4bK-62kh5h617iaa51J1o2E-hkou5y;received=192.168.217.74
To: "PeterM" <sip:1001@petermac.magor.local.:5060>;epid=0x34619b0;tag=DL88360fa5fc
User-Agent: Dylogic Mirial 7.0.33
Content-Length: 0

PACKET 2010-10-20 12:20:04.921 OUT TCP 192.168.215.1 5070
SIP/2.0 200 OK
Via: SIP/2.0/TCP 192.168.215.1:5070;branch=z9hG4bK434747ejja3c46J1o2E-hkou5y;received=192.168.215.1
From: <sip:SIPVIDEO-6517@192.168.217.74:5070>;tag=12875915871732-T--40-58-274a
To: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 2 INFO
Contact: "1001" <sip:1001@192.168.217.74:5060;transport=tcp>
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
User-Agent: Dylogic (via MKC B2B)
Supported: replaces
Content-Length: 0

PACKET 2010-10-20 12:20:04.977 IN TCP 192.168.217.117 56485
OPTIONS sip:SIPVIDEO-6517@192.168.217.74;transport=tcp SIP/2.0
To: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
From: "1001" <sip:1001@petermac.magor.local.:5060>;tag=DL88360fa5fc;epid=0x34619b0
CSeq: 2 OPTIONS
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
Max-Forwards: 70
Via: SIP/2.0/TCP 192.168.217.117:5060;branch=z9hG4bK-d5af495a28-DL
Contact: "1001" <sip:1001@192.168.217.117:5060>
Content-Length: 0

PACKET 2010-10-20 12:20:04.989 OUT TCP 192.168.217.117 5060
SIP/2.0 200 OK
Via: SIP/2.0/TCP 192.168.217.117:5060;branch=z9hG4bK-d5af495a28-DL;received=192.168.217.117
From: "1001" <sip:1001@petermac.magor.local.:5060>;epid=0x34619b0;tag=DL88360fa5fc
To: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
CSeq: 2 OPTIONS
Supported: path,sip-stun,outbound
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Content-Length: 0

PACKET 2010-10-20 12:20:05.861 IN TCP 192.168.217.117 56485
BYE sip:SIPVIDEO-6517@192.168.217.74;transport=tcp SIP/2.0
To: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
From: "1001" <sip:1001@petermac.magor.local.:5060>;tag=DL88360fa5fc;epid=0x34619b0
CSeq: 3 BYE
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
Max-Forwards: 70
Via: SIP/2.0/TCP 192.168.217.117:5060;branch=z9hG4bK-cd5a1486d0-DL
Contact: "1001" <sip:1001@192.168.217.117:5060>
Content-Length: 0

PACKET 2010-10-20 12:20:05.873 OUT TCP 192.168.217.117 5060
SIP/2.0 200 OK
Via: SIP/2.0/TCP 192.168.217.117:5060;branch=z9hG4bK-cd5a1486d0-DL;received=192.168.217.117
From: "1001" <sip:1001@petermac.magor.local.:5060>;epid=0x34619b0;tag=DL88360fa5fc
To: <sip:192.168.217.74>;tag=12875915871383020-T--40-58-274a
Call-ID: DL70dff590c1-1079051554@petermac.magor.local.
CSeq: 3 BYE
Contact: <sip:1001@192.168.217.74;transport=tcp>
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Content-Length: 0

PACKET 2010-10-20 12:20:05.874 OUT TCP 192.168.215.1 5070
BYE sip:6517@192.168.215.1:5070;transport=tcp SIP/2.0
Via: SIP/2.0/TCP 192.168.215.1:5060;branch=z9hG4bK927cdj66dm61nbJ1o2E-hkou5y
From: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
To: <sip:SIPVIDEO-6517@192.168.217.74:5070>;tag=12875915871732-T--40-58-274a
Contact: <sip:SIPVIDEO-6517@192.168.217.74;transport=tcp>
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 2 BYE
Max-Forwards: 70
Supported: replaces
Content-Length: 0

PACKET 2010-10-20 12:20:05.895 IN TCP 192.168.215.1 42337
SIP/2.0 200 OK
Via: SIP/2.0/TCP 192.168.215.1:5060;branch=z9hG4bK927cdj66dm61nbJ1o2E-hkou5y;received=192.168.215.1
From: "PeterM" <sip:1001@petermac.magor.local.>;tag=12875915871493021-F--40-58-274a
To: <sip:SIPVIDEO-6517@192.168.217.74:5070>;tag=12875915871732-T--40-58-274a
Call-ID: DL70dff590c1-1079051554-291-B2BUA@192.168.217.74
CSeq: 2 BYE
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Content-Length: 0

PACKET 2010-10-20 12:20:05.995 IN UDP 192.168.215.1 5070
BYE sip:2000@192.168.215.1:5060;transport=udp SIP/2.0
Via: SIP/2.0/UDP 192.168.215.1:5070;branch=z9hG4bK-19l73dd7k4c9a3J1o2E-hkou5y
From: "VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872323-F--40-58-274a
To: <sip:2000@192.168.215.1>;tag=12875915872413022-T--40-58-274a
Contact: <sip:2000@192.168.215.1:5070>
Call-ID: CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR@192.168.217.74
CSeq: 2 BYE
Max-Forwards: 70
Content-Length: 0

PACKET 2010-10-20 12:20:06.019 OUT UDP 192.168.215.1 5070
SIP/2.0 200 OK
Via: SIP/2.0/UDP 192.168.215.1:5070;branch=z9hG4bK-19l73dd7k4c9a3J1o2E-hkou5y;received=192.168.215.1
From: "VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872323-F--40-58-274a
To: <sip:2000@192.168.215.1>;tag=12875915872413022-T--40-58-274a
Call-ID: CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR@192.168.217.74
CSeq: 2 BYE
Contact: <sip:6517@192.168.215.1;transport=udp>
Allow: INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,UPDATE
Content-Length: 0

PACKET 2010-10-20 12:20:06.022 OUT UDP 192.168.215.240 5060
BYE sip:2000@192.168.215.240:5060;transport=UDP SIP/2.0
Via: SIP/2.0/UDP 192.168.215.1:5060;branch=z9hG4bK-1l774l8a190nbmJ1o2E-hkou5y
From: "VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872733023-F--40-58-274a
To: <sip:2000@localhost>;tag=4cbede63-11d-721fff17
Contact: <sip:2000@192.168.215.1;transport=udp>
Call-ID: CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR-292-B2BUA@192.168.217.74
CSeq: 2 BYE
Max-Forwards: 70
Supported: replaces
Content-Length: 0

PACKET 2010-10-20 12:20:06.053 IN UDP 192.168.215.240 5060
SIP/2.0 200 OK
Via: SIP/2.0/UDP 192.168.215.1:5060;branch=z9hG4bK-1l774l8a190nbmJ1o2E-hkou5y
From:"VWALL-6517" <sip:6517@192.168.217.74:5070>;tag=12875915872733023-F--40-58-274a
To:<sip:2000@localhost>;tag=4cbede63-11d-721fff17
CSeq:2 BYE
User-Agent:Mitel-5340-SIP-Phone 01.04.03.03 08000F3ED043
Call-ID:CONTROLPHONECONF-12bca706d9e-4-SERVICEMGR-292-B2BUA@192.168.217.74
Contact:"2000" <sip:2000@192.168.215.240:5060;transport=UDP>
Allow:INVITE,ACK,CANCEL,BYE,OPTIONS,REFER,NOTIFY,PRACK,UPDATE
Supported:timer,100rel,replaces
Content-Length:0

