---
title: Use Cases
description: 
published: true
date: 2023-02-26T23:49:10.747Z
tags: 
editor: markdown
dateCreated: 2023-02-26T23:49:10.747Z
---

# The following Use Cases have been proposed so far:
## 1 Additional Information to a Number
### 1.1 Global Service Provider Identifier (g-spid)

 -   Indicates the Communication Service Provider (CSP) responsible for this number AKA the “carrier-of-record” or “ITAD identifier”
 -   Potential uses:
      -  Optimize routing
       - Advising end-users about costs when charging depends on the terminating CSP 
  -  Targeted to public and private Infrastructure ENUM
  -  Internet-Draft under development 

### 1.2 Global Service Provider Name (g-spn)

  -  Targeted to public and private Infrastructure ENUM 

  -  ...needs more text... 

### 1.3 Charging Information

Indication about how much this number will be charged:

  -  In particular useful for premium rate numbers
  -  Targeted to public Infrastructure ENUM
  -  Challenge: The usefulness of such information is often degraded outside the operator or country in question 

  -  ...needs more text... 

### 1.4 Holder Information

  -  e.g. to report abuse of premium rate number
  -  Targeted to (public) Infrastructure ENUM 

 -   ...needs more text... 

## 2 Assisting PSTN origination
### 2.1 Calling Party Name (cnam)

 -   Returns the Calling Name (like directory name) for a given phone number.
 -   Used in cases where this information is not available or lost:
      -  Calls that originate on (or transited via) the Public Switched Telephone Network (PSTN)
       - Calling Name to be displayed on VoIP or other Real-time Clients 
  -  Targeted to public and private, Infrastructure and User ENUM
  -  See: draft-ietf-enum-cnam-08 

## 3 Use Cases for (real) Metadata
### 3.1 Number or Number-range not in use (unused)

  -  Indicates whether an E.164 number (or number range) is allocated or assigned for communications service.
  -  Lets client know that a call will fail without wasting the effort of a session setup E2MD lookup is faster than SIP INVITE
  -  The user can be provided with a correct announcement (or other indication)
  -  Targeted to public and private Infrastructure ENUM
  -  See: draft-ietf-enum-unused-04 

### 3.2 Information about Dial-plan (send-n)

 -   Increases efficiency of overlapped dialing
     -    Reduces DNS lookups and SIP INVITEs
     -   Decreases frequency of timeouts
      -  Could extend SIP "484 address incomplete" handling: no need for a new SIP dialogue for each dialed digit 
 -   Deployed in empty non-terminals (i.e. in the branches)
 -   Indicates the minimum depth of the tree below this record
 -   "You must send N more digits before any leaf-node NAPTRs will be returned"
 -   Designed for private ENUM, but works also in public ENUM
 -   Targeted to public and private Infrastructure ENUM
 -   See: draft-bellis-enum-send-n-02 

## 4 Use Cases for Service Related Information
### 4.1 Service Capabilities

 -   SMS | MMS | video calls | presence | IM | …
 -   ...needs more text... 

### 4.2 Payment Type

 -   Pre-Paid | Post-Paid | ...
 -   ...needs more text... 

### 4.3 Network Type

  -  TDMA | GSM | 3G | …
  -  ...needs more text... 

## 5 Use Cases for Routing Information
### 5.1 Destination Group (dg)

...needs text...
### 5.2 Service Area

...needs text...
### 5.3 Region Code

 -   Numeric value indicating a region within a country
 -   Least cost routing information
 -   e.g. preferred gateway
 -   ...needs more text... 
    
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2010-07-10. It was migrated from the old Trac wiki on 2023-02-26.*    