---
title: TZDIST WG (Concluded) - Time Zone Data Distribution Service Wiki
description: 
published: true
date: 2023-02-26T22:35:17.547Z
tags: 
editor: markdown
dateCreated: 2023-01-15T22:56:41.437Z
---

# Welcome to the TZDIST Working Group Page 
This page contains some useful information to those involved in developing the specifications or implementations.

## Test Server
Calconnect has developed a test server that you can use against the specifications.

What follows is a note from Cyrus Daboo:

Hi folks, Some of us at CalConnect? have been working on implementations of the current draft and doing interop testing at various CalConnect? events (and we will continue to do so, in particular at the upcoming meeting in September in the UK).

I do have a public demo server available at https://demo.calendarserver.org:8443. Others may also have publicly available test servers (I will let them post details if they desire). Feel free to use my server for exploring how the protocol in the current draft works.

Some examples (using curl on OS X):

1) well-known URI that redirects to the "root" context path for the service:

curl https://demo.calendarserver.org:8443/.well-known/timezone

2) Capabilities action:

curl https://demo.calendarserver.org:8443/stdtimezones?action=capabilities

3) List action:

curl https://demo.calendarserver.org:8443/stdtimezones?action=list

4) Get action:

curl https://demo.calendarserver.org:8443/stdtimezones?action=get\&tzid=America%2FNew_York

or, for jCal:

curl https://demo.calendarserver.org:8443/stdtimezones?action=get\&tzid=America%2FNew_York\&format=application%2Fcalendar%2Bjson

5) Expand action:

curl https://demo.calendarserver.org:8443/stdtimezones?action=expand\&tzid=America%2FNew_York\&start=2013\&end=2015

6) Find action: not implemented yet.

7) Invalid action:

curl https://demo.calendarserver.org:8443/stdtimezones?action=foobar
&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-08-21. It was migrated from the old Trac wiki on 2023-01-15.*