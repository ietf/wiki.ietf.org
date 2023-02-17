---
title: Generic and Common Textual Conventions (TCs)
description: 
published: true
date: 2022-12-20T00:52:37.200Z
tags: 
editor: markdown
dateCreated: 2022-12-20T00:52:32.480Z
---

# Generic and Common Textual Conventions (TCs)

Appendix B in "Guidelines for Authors and Reviewers of MIB Documents [RFC4181, BCP111]", lists an initial set of Commonly used Textual Conventions. This web page is intended to keep that list up-to-date with the most commonly used TCs. If you have any suggestions for changes or additions, pls send an email to the OPS AD maintaining this page, Benoit Claise bclaise@cisco.com. 

```
The following TCs are defined in SNMPv2-TC [RFC2579]: 


   DisplayString               OCTET STRING (SIZE (0..255))
   PhysAddress                 OCTET STRING
   MacAddress                  OCTET STRING (SIZE (6))
   TruthValue                  enumerated INTEGER
   TestAndIncr                 INTEGER (0..2147483647)
   AutonomousType              OBJECT IDENTIFIER
   VariablePointer             OBJECT IDENTIFIER
   RowPointer                  OBJECT IDENTIFIER
   RowStatus                   enumerated INTEGER
   TimeStamp                   TimeTicks
   TimeInterval                INTEGER (0..2147483647)
   DateAndTime                 OCTET STRING (SIZE (8 | 11))
   StorageType                 enumerated INTEGER
   TDomain                     OBJECT IDENTIFIER
   TAddress                    OCTET STRING (SIZE (1..255))

   Note 1.  InstancePointer is obsolete and MUST NOT be used.

   Note 2.  DisplayString does not support internationalized text.
            It MUST NOT be used for objects that are required to
            hold internationalized text (which is always the case
            if the object is intended for use by humans [RFC2277]).
            Designers SHOULD consider using SnmpAdminString,
            Utf8String, or LongUtf8String for such objects.

   Note 3.  TDomain and TAddress SHOULD NOT be used in new MIB
            modules.  The TransportDomain, TransportAddressType, and
            TransportAddress TCs (defined in TRANSPORT-ADDRESS-MIB
            [RFC3419]) SHOULD be used instead.

The following TC is defined in SNMP-FRAMEWORK-MIB [RFC3411]: 


   SnmpAdminString             OCTET STRING (SIZE (0..255))

The following TCs are defined in SYSAPPL-MIB [RFC2287]: 


   Utf8String                  OCTET STRING (SIZE (0..255))
   LongUtf8String              OCTET STRING (SIZE (0..1024))

The following TCs are defined in INET-ADDRESS-MIB [RFC4001]: 


   InetAddressType             enumerated INTEGER
   InetAddress                 OCTET STRING (SIZE (0..255))
   InetAddressPrefixLength     Unsigned32 (0..2040)
   InetPortNumber              Unsigned32 (0..65535)
   InetAutonomousSystemNumber  Unsigned32
   InetScopeType               enumerated INTEGER
   InetZoneIndex               Unsigned32
   InetVersion                 enumerated INTEGER

The following TCs are defined in TRANSPORT-ADDRESS-MIB [RFC3419]: 


   TransportDomain             OBJECT IDENTIFIER
   TransportAddressType        enumerated INTEGER
   TransportAddress            OCTET STRING (SIZE (0..255))

The following TC is defined in RMON2-MIB [RFC2021]: 


   ZeroBasedCounter32          Gauge32

The following TCs are defined in HCNUM-TC [RFC2856]: 


   ZeroBasedCounter64          Counter64
   CounterBasedGauge64         Counter64

The following TCs are defined in IF-MIB [RFC2863]: 


   InterfaceIndex              Integer32 (1..2147483647)
   InterfaceIndexOrZero        Integer32 (0..2147483647)

The followingTCs are defined in ENTITY-MIB [RFC4133]: 


   PhysicalIndex               Integer32 (1..2147483647)
   PhysicalIndexOrZero         Integer32 (0..2147483647)

The following TCs are defined in PerfHist-TC-MIB [RFC3593]: 


   PerfCurrentCount            Gauge32
   PerfIntervalCount           Gauge32
   PerfTotalCount              Gauge32

The following TCs are defined in HC-PerfHist-TC-MIB [RFC3705]: 


   HCPerfValidIntervals        Integer32 (0..96)
   HCPerfInvalidIntervals      Integer32 (0..96)
   HCPerfTimeElapsed           Integer32 (0..86399)
   HCPerfIntervalThreshold     Unsigned32 (0..900)
   HCPerfCurrentCount          Counter64
   HCPerfIntervalCount         Counter64
   HCPerfTotalCount            Counter64

The following TCs are defined in ITU-ALARM-TC-MIB [RFC3877]: 


   ItuPerceivedSeverity        enumerated INTEGER
   ItuTrendIndication          enumerated INTEGER

The following TCs are defined in ENTITY-STATE-TC-MIB [RFC4268] 


   EntityAdminState            enumerated INTEGER
   EntityOperState             enumerated INTEGER
   EntityUsageState            enumerated INTEGER
   EntityAlarmStatus           BITS
   EntityStandbyStatus         enumerated INTEGER

The following TCs are defined in Q-BRIDGE-MIB [RFC4363]: 


   VlanId                      Integer32 (1..4094)
   VlanIdOrAny                 Integer32 (1..4094 | 4095)
   VlanIdOrNone                Integer32 (0 | 1..4094 | 4095)

```

# List of all TCs in IETF MIBs 

Jürgen Schönwälder maintains a TC list in xml2rfc format that can be rendered as .txt or .html. 

http://www.beadg.de/ietf/smiv2-tc-lists/iana-tc-list.html
http://www.beadg.de/ietf/smiv2-tc-lists/iana-tc-list.txt
http://www.beadg.de/ietf/smiv2-tc-lists/ietf-tc-list.html
http://www.beadg.de/ietf/smiv2-tc-lists/ietf-tc-list.txt

The complete build machinery is in a Makefile: http://www.beadg.de/ietf/smiv2-tc-lists/Makefile

--------------------------------------------------------------------------------
Last changed on July 29, 2012 by Benoit Claise bclaise@cisco.com 


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2012-07-29. It was migrated from the old Trac wiki on 2022-12-19.*