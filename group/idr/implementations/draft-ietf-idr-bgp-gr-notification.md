---
title: draft-ietf-idr-bgp-gr-notification Implementations
description: 
published: true
date: 2023-03-13T06:12:36.546Z
tags: 
editor: markdown
dateCreated: 2023-03-13T06:12:31.174Z
---

## draft-ietf-idr-bgp-gr-notification Implementations
## Implementations
|  Implementation  |   Version   |   Reported by                    |
|------------------|:-----------:|----------------------------------|
|  Cisco IOS       |    16.6.1   |  Keyur Patel  & Mohammed Mirza   |
|  JUNOS           |   15.1      |  Jeff Haas                       |

## Feature Support

| #   |  Protocol Feature                                                                                                                                                       |  Cisco IOS  |  JUNOS   |
|-----|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|----------|
|  1  |  Sending and receiving of NOTIFICATION Cease message with Hard Reset Subcode                                                                                            | Yes         |  Yes     |
|  2  |  Advertise the BGP Graceful Notification "N" bit using the Graceful Restart Capability                                                                                  | Yes         |  Yes     |
|  3  |  SHOULD NOT send a Hard reset to peer it has not received the "N" bit from                                                                                              | Yes         |  Yes     |
|  4  |  When receive or send NOTIFICATION message  other than Hard Reset, MUST follow the modified rules for Receiving  Speaker in section 4.1                                 | Yes         |  Yes     |
|  5  |  When reset a  session due to HOLDTIME expiry, SHOULD generate relevant NOTIFICATION  message, and MUST follow the modified rules for Receiving Speaker in  section 4.1 | Yes         |  Yes     |
|  6  |  Once the session is re-established, SHOULD set the "Forwarding State" bit to 1                                                                                         | Yes         |  Yes     |
{.dense}

implementers should fill in features supported here. 
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2017-06-19. It was migrated from the old Trac wiki on 2023-03-12.*