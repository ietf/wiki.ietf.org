---
title: NTPv4 Issues
description: 
published: true
date: 2022-12-19T20:22:51.616Z
tags: 
editor: markdown
dateCreated: 2022-12-19T20:22:47.167Z
---

# NTPv4 Issues

This page is an attempt to list known issues of NTPv4 and their potential solutions. It should help us better understand if a new specification (NTPv5) is needed and what could/should be fixed with an extension field.

## NTP header

1. missing identification/negotiation of non-UTC timescales (TAI, UTC with leap smear, etc.)
  - Solution 1: add a new field to the header (NTPv5)
  - Solution 2: specify a new extension field

2. leap indicator can announce a leap second only on the day of the leap second, which is too short in some cases (RFC 5905 is ambiguous in that it mentions both "last minute of the day" and "last minute of the current month", but it is supposed to be compatible with NTPv3, which has "day")
  - Solution 1: specify the indicator as "last minute of the current month", but prevent a leap second from being repeated in the next month (NTPv5)
  - Solution 2: add a new field to announce the remaining number of days (NTPv5)
  - Solution 3: specify a new extension field

3. modes 6 and 7 allow traffic amplification, which is a major security issue and forces ISPs to block or rate limit (specific) NTP traffic
  - Solution 1: specify only modes 1, 2, 3, 4, 5 (NTPv5)
  - Solution 2: require modes 6 and 7 to not allow amplification (NTPv5)
  - Solution 3: specify an alternative NTP port, which doesn't allow modes 6 and 7

4. root delay and dispersion have a resolution of ~15 microseconds, which is insufficient with modern hardware
  - Solution 1: make the fields wider, e.g. 48 or 64 bits to match the resolution of NTP timestamps (NTPv5)
  - Solution 2: shift the fixed point to improve resolution at a cost of a smaller maximum value, e.g. by 8 bits - max 256 seconds, or 16 bits - max 1 second (NTPv5)
  - Solution 3: specify a new extension field

5. reference ID is based on IP addresses, which doesn't work when the server doesn't know its addresses (e.g. due to address translation)
  - Solution 1: add a new field to the header to announce a (random) ID of the server instead of relying on its address (NTPv5)
  - Solution 2: specify a new extension field

6. reference ID cannot detect loops between more than two nodes
  - Solution 1: specify a new extension field to exchange list of IDs

7. reference ID identifies only the system peer (not other combined sources)
  - Solution 1: specify a new extension field to exchange graph of IDs

8. reference ID is meaningless if it's an RFC 1918/RFC 4193 address
   - Solution 1: Reference ID skips internal hops
   - Solution 2: Alternate loop detection mechanism

8. reference timestamp has no specified purpose (unlike in NTPv3) and is ignored by most NTPv4 clients
  - Solution 1: drop the field (NTPv5)
  - Solution 2: specify that it is intended for debugging, etc

9. timestamps have insufficient range, requiring failure-prone hacks to deal with the 2036 era rollover
  - Solution 1: make the timestamps wider (NTPv5)
  - Solution 2: put an explicit era number into an extension field
  - Solution 3: do nothing, hope the hacks don't break.

10. timestamps have a ~1/4ns resolution, which is worse than in PTP and may be insufficient in some very specific cases
  - Solution 1: make the timestamps wider (NTPv5)
  - Solution 2: specify a new extension field

11. missing timescale-specific information (e.g. TAI-UTC offset, leap smear offset)
  - Solution 1: add a new field to the header (NTPv5)
  - Solution 2: specify a new extension field

12. timestamps are ambiguous around leap second
  - Solution 1: add more leap indicators to the header (for each timestamp) and require them to reset at the beginning of leap second (NTPv5)
  - Solution 2: specify that servers should respond with "unsynchronized" around leap second and client should ignore responses
  - Solution 3: specify a new extension field
  - Solution 4: alternate timescales

13. missing support for delay corrections in network devices between client and server
  - Solution 1: add a new field to the header (NTPv5)
  - Solution 2: specify a new extension field

14. Missing Destination Timestamp (dst) field in the NTP header. As RFC 5905 specifies: "The Destination Timestamp field is not included as a header field". This field can be useful in hardware implementations.
  - Solution 1: add a new field to the header (NTPv5)
  - Solution 2: specify a new extension field (less hardware friendly in this case)

15. White Rabbit/carrier lock links aren't supported

## NTP extension fields

1. packets cannot contain short extension fields to avoid ambiguity with legacy MACs (minimum length specified in RFC 7822)
  - Solution 1: replace legacy MACs with an extension field (NTPv5)
  - Solution 2: specify a new extension field to pack extension fields, which can be of any length

2. extension field length has to be a multiple of four octets
  - Solution 1: have the packet's length field express the length exclusive of padding, and the receiver
    computes the padded length by rounding up to the next multiple of four (NTPv5)
  - Solution 2: continue having every extension field use a bespoke way of indicating where data ends and
    padding begins, such as an internal length field or PKCS7-style padding.

3. the extension registry is a mess
  - There's no range allocated for private&experimental use
  - Everything outside the p&e range should probably at least be "specification required"
  - What's in the registry doesn't reflect what's in use, e.g., the NTF autokey implementation uses
    type codes different from the registered ones
  - Solution 1: a clean start with a brand new registry for NTPv5 extensions
  - Solution 2: clean up the existing registry

## Implementation

1. RFC 5905 doesn't allow "fully-compliant" NTPv4 implementations to use algorithms that have different output
  - Solution 1: don't specify any algorithms, only the protocol (NTPv5)
  - Solution 2: make the requirements on algorithms more general

2. Assumptions about network delay and loss may not be valid in all environments (Datacenters vs open Internet)
  - Solution 1: Measurements and loop tuning.

3. Asymmetric routing common, introducing systemic errors.


&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2020-02-17. It was migrated from the old Trac wiki on 2022-12-19.*
