---
title: MLM Manipulations
description: 
published: true
date: 2023-02-27T03:35:22.707Z
tags: 
editor: markdown
dateCreated: 2023-02-27T03:33:41.868Z
---

 This page is intended to collect known ways that mailing list managers (MLM) manipulate messages they process. While not complete, it will provide a helpful reference for the kinds of things DMARC must try to address in handling indirect mail flows.

1. Altering RFC5322 message headers
   -   Adding headers - This could include a wide range of headers...
       -  Authentication-Results
         -  DKIM signatures
         -    Archived-At
         -    Errors-To
         -    Precedence
         -    List-*
         -    Sender
         -    Thread-*
         -    X-Been-There
         -    X-Seen* 
  -  Modifying existing headers - The most common example would be adding a tag or prefix to the RFC5322.Subject header.
    -    From - from cleaning the display name, to changing the author; some of these changes discriminate against domains having a strict DMARC policy
          -   Change display name
          -   Replace address with list address
          -   Replace address with replyable address at list domain (ex. temporary forwarding) 
    -     Reply-To - directing replies to the list or to the owners of the list
   -    Subject - prefixing with a list-specific tag, sequence number, etc 
   c.     Removing headers - Lists may be configured to strip out various headers.
    -   Authentication-Results
    -  DKIM signatures
    -    Received
    -    Reply-To
      -    Disposition-Notification-To
      -    Return-Receipt-To
      -     List-* headers for other lists 

 2.   Altering the message body
     -   Removing text from the message body
        -    Removing email addresses - certain anonymous lists and/or remailers
        -    Stripping out URLs - A common security precaution
        -    Stripping multipli-included footers 
   -   Inserting text in a simple message body - For a message without MIME parts, inserting text somewhere in the message body
        -    Disclaimer
        -    List details
         -   "Note Well" or similar legal/governance 
   -    Altering a MIME part - For a message with one or more MIME parts, inserting text into the first part, or a particular part e.g. the first "Content-Type: text/plain"
         -   Disclaimer
         -   List details
         -   "Note Well" or similar legal/governance 
   -   Adding MIME parts - Some lists may add parts to messages already using MIME encoding, or may introduce MIME encoding to support such additions.
         -   Disclaimer
         -   List details
         -   "Note Well" or similar legal/governance 
   -   Removing MIME parts - Various lists may disallow all MIME encoding, or certain MIME types.
        -    Archives - ZIP, tar
          -  Executable files - typically by file type or name extension, e.g. ".EXE"
         -   Multimedia MIME types - images, sound, video
         -   Remote content types
         -   strip html from multipart/alternative 
   -  Altering a message body
            Some lists allow moderators to edit the message body for list specific reasons 

3.    Merge multiple messages into a digest - As a service to readers who select it, some lists will collect a series of messages and merge them into digests. 

&nbsp;
&nbsp;
&nbsp;

---

*The content of this page was last updated on 2014-09-23. It was migrated from the old Trac wiki on 2023-02-26.*