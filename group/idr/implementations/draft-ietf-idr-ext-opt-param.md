---
title: draft-ietf-idr-ext-opt-param implementations
description: 
published: true
date: 2023-03-13T06:42:14.433Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:42:09.098Z
---

# Requirements from draft-ietf-idr-ext-opt-param-09
## Section 2

**R-2.1:** "In the event that the length of Optional Parameters in the BGP OPEN message does not exceed 255, the encodings of the base BGP specification [RFC4271] MUST be used without alteration."

**R-2.2:** "However, an implementation MUST be prepared to accept an OPEN message that uses the encoding of this specification for Optional Parameters of any length."

(Commentary on R-2.2 by Jeff Haas: This means that receiving an OPEN message with the non-extended Optional Parameters Length of 255, the first Optional Parameter Type of 255, and the Extended Optional Parameter Length < 255 MUST be supported.)

**R-2.3:** "If the length of Optional Parameters is greater than 255, the extended encoding defined here MUST be used. The (non-extended) length field MUST be set to 255. The subsequent octet (which would be the first Optional Parameter Type in the non-extended format) MUST be set to 255 as well."

**R-2.4:** "When receiving an OPEN, a BGP speaker determines the extended encoding is in use if the first Optional Parameter Type field is 255. In this case, the BGP speaker MUST use the Extended Optional Parameters Length field in lieu of the [RFC4271] encoding to determine the length of Optional Parameters contained in the message."

**R-2.5.1:** "The non-extended Optional Parameters Length field MUST be set to 255 on transmission, [...]"

**R-2.5.2:** "[...], and MUST be ignored on receipt once the use of the extended format is determined positively by inspection of the (non-extended) Optional Parameters Type field."

**R-2.6:** "In parsing an OPEN message, if the one-octet "Optional Parameters Length" field is non-zero, a BGP speaker MUST use the value of the octet following the one-octet "Optional Parameters Length" field to determine both the encoding of the Optional Parameters length and the size of the "Parameter Length" field of individual Optional Parameters. If the value of this field is 255, then the encoding described above is used for the Optional Parameters length. Otherwise the encoding defined in [RFC4271] is used."

**R-2.7:** "When the extended encoding is in use, the value 0 MUST NOT be used in [ the Optional Parameters Length ] field since the presence of that value could have the effect of causing a message parser to never inspect the following octet."
## Section 3

**R-3.1:** "Although the Optional Parameter Type code 255 is used in this specification as the indication that the extended encoding is in use, it is not a bonafide Optional Parameter Type in the usual sense, and MUST NOT be used other than as described above. If encountered as an actual Optional Parameter Type code, it MUST be treated as an unrecognized Optional Parameter and handled according to [RFC4271] Section 6.2."

(Commentary on R-3.1 by Jeff Haas: The requirement here is that if, inside the extended encoding, Optional Parameter Type 255 is encountered, it MUST be treated as an unrecognized Optional Parameter.)

**R-3.2:** "It is not considered an error to receive an OPEN message whose Extended Optional Parameters Length value is less than or equal to 255, any value SHOULD be silently accepted."

**R-3.3:** "It is not considered a fatal error to receive an OPEN message whose (non-extended) Optional Parameters Length value is not 255, and whose first Optional Parameter type code is 255 -- in this case the encoding of this specification MUST be used for decoding the message."

(Commentary on R-3.3 by Jeff Haas: This means that an OPEN message with an non-extended Optional Parameters Length of 1..254, the first Optional Parameter Type of 255 means that the Optional Parameters should be interpreted in extended mode, and the Length is encoded in the Extended Optional Parameter Length. A value of 0 for the non-extended Optional Parameters Length is forbidden by R-2.7.)

**R-3.4:** "... A warning MAY be logged." 

## Implementation report matrix for draft-ietf-idr-ext-opt-param

|     Vendor      |         Version        |  Interoperates With  |                        Notes                         |
|:---------------:|:----------------------:|:--------------------:|:----------------------------------------------------:|
|  Juniper        |  Junos 15.2R1          |  Nokia               |  Mail from Jeffrey Haas                              |
|  Nokia          |                        |  Junos 17.2R1.13     |  Mail from Jeffrey Haas                              |
|  Nokia          |  Nokia SROS16.0        |                      |  Updated 3-Nov-2020 by Gunter Van de Velde (Nokia)   |
|  CZ.NIC         |  BIRD 2.0.6            |                      |  Mail from Ondrej Zajicek                            |
|  OpenDaylight?  |  OpenDaylight? Sodium  |                      |  OpenDaylight tracker issue                          |

## Vendor Implementation Report of Requirements
### Juniper

| Requirement  |  Conformant  |     Notes     |
|:------------:|:------------:|:-------------:|
|  R-2.1       |  Yes         |               |
|  R-2.2       |  Yes         |               |
|  R-2.3       |  Yes         |               |
|  R-2.4       |  Partial     |  PR 1554639   |
|  R-2.5.1     |  Yes         |               |
|  R-2.5.2     |  No          |  PR 1554639   |
|  R-2.6       |  Yes         |               |
|  R-2.7       |  Yes         |               |
|  R-3.1       |  Yes         |               |
|  R-3.2       |  Yes         |               |
|  R-3.3       |  No          |  PR 1554639   |
|  R-3.4       |  No          |               |

 Notes:

**PR 1554639** Juniper BGP does not use extended optional parameter length procedures when the Optional Parameter Length is not 255. This issue is intended to be addressed in an upcoming release. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2020-11-10. It was migrated from the old Trac wiki on 2023-03-12.*