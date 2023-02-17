---
title: Checklist for Writing
description: 
published: true
date: 2023-02-14T23:19:35.792Z
tags: 
editor: markdown
dateCreated: 2023-01-28T23:40:51.589Z
---

This is a place to list things that draft writers should keep in mind. Also useful for reviewers.

- Do you propose changes to the decision process? If so, make sure they are very clear.
- Specify what an error is, and how to handle it.
	-"How to handle it" should include what NOTIFICATION error code and subcode and data payload to send, if applicable.
	- For path attribute errors especially, make sure you have consulted RFC 7606.
- Do you introduce a capability? If so, make sure you specify how it is used.
	- The preferred encoding is multiple TLVs within a single capability, not multiple instances, see RFC 5492 section 4.
	- If you intend that multiple instances of your capability is OK, say so and specify how to handle. If you don't intend that, say so.
	- Say what constitutes malformation of your capability (this may be very simple, especially for a zero-data capability, but say so anyway). Say what NOTIFICATION subcode should be used if there's an error.
- If you need a code point from a registry,
	- Do not list a value unless it has been allocated to you by IANA.
	- Seriously, **don't**!
	- Put it in as "TBD".
	- If your code point has a first come, first served (FCFS) registry available, consider using it. The FCFS process (see RFC 5226) is painless and quick. If you're unsure, ask the chairs for help.
	- If you need a code point and there is no FCFS, you may be eligible for early allocation, see RFC 7120. Ask the chairs. (Also, consider whether the registry should be FCFS or have an FCFS range. If so, consider writing a draft to revise the registry policy.)
	- If you need a code point for internal development, if there is an Experimental range available, use it. Don't just squat on a code point from a different range.
	- If you feel none of these options will work for you, consult the chairs or start a discussion on the working group mailing list to explain.
	- Try to write a good IANA considerations section. There is a cheat sheet you can use in [RFC 8126, Section 1.3](https://tools.ietf.org/html/rfc8126#section-1.3). This actually matters, if you don't do this you are likely to have delays when asking for your code point.
- Is your author list more than five people? If so, consider shortening it. See [RFC 7322, Section 4.1.1](https://tools.ietf.org/html/rfc7322#section-4.1.1).
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2018-03-21. It was migrated from the old Trac wiki on 2023-01-28.*