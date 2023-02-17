---
title: RefID Changes
description: 
published: true
date: 2022-12-19T20:26:02.666Z
tags: 
editor: markdown
dateCreated: 2022-12-19T20:25:59.061Z
---

# RefID Changes

There are several problems with around `refid`s in the current RFC.

* The decision to use an IPv4 address was convenient and is no longer useful:
  * S2+ `refid`s are being used as IPs for tracing.
  * S2+ IPv6 `refid`s are colliding with valid IPv4 addresses
* The concept of a "time loop" is not well-defined.  From the document, it's clear that the timing loop being detected is one involving (only) 2 machines.
* The specification was written when computers generally only had 1 IP address.

It doesn't help that the stock `ntpq -p` output shows the `refid` as an IPv4 address and does not display the association ID.  That will be changing soon:
* http://bugs.ntp.org/2778
* http://bugs.ntp.org/278

The proposal is comprised of two parts.  One is a change to the `refid` value for IPv6 addresses, and the other goes to a recommended way of selecting a `refid` that will identify the current host.

To select an IP to be used as the basis for a host's `refid`:

* load any list of "do-not-use IPs"
* Scan the list of "up" IPs, ignoring any in the "do-not-use" list

Call the IPs we have found "list A".

If a mechanism exists to identify when there is a change to an interface, upon such a change repeat the above steps, saving the results in "list B".

For each IP in "list A", see if that IP is in "list B".  If it is not, remove the IP from "list A".

For each IP in "list B", see if that IP is in "list A".  If it is not, add the IP to the end of "list A".

Assign the first entry in "list A" to `candidate_IP`.

For each of the remaining IPs in "list A", see if the new IP is "more routable" than the `candidate_IP`.  If it is, remember it as the new `candidate_IP`.

The following list shows how "routable" an IP is.

For IPv4 addresses, the following list goes from least to most routable:
* an address in 127.0.0.0/8
* an address in RFC1918 space
* any other address

For IPv6 addresses, the following list goes from least to most routable:
* a localhost address
* an interface-local address
* …
* Unicast addresses

If the `candidate_IP` is an IPv4 address, use that value for the `refid`.

If the `candidate_IP` is an IPv6 address:
* Generate an `md5` hash of the address
* set the `refid` to (0xF0000000. 0xF0000000, or 0xFF000000)
* get the high-order 32 bits of the hash.
* AND these 32 bits with (0x0FFFFFFF, 0x07FFFFFF, or 0x00FFFFFF)
* OR this result with the `refid`.

The choices in the IPv6 case go to "how many bits do we want to use" and "how do we want the `refid` value to look".

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2015-06-09. It was migrated from the old Trac wiki on 2022-12-19.*