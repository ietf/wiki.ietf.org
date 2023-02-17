---
title: PRECIS WG Stringprep Review Template
description: 
published: true
date: 2022-12-02T16:47:32.133Z
tags: 
editor: markdown
dateCreated: 2022-12-02T16:47:27.516Z
---

## Specification

In what specification is this stringprep profile defined?

## Brief Description

Provide a one or two sentence description of the identifier.

## How It's Used

Are these strings used to identify particular entities?
How else are these strings used?

## Who Generates It

What entities create these identifiers?
 a. Human users
 b. Automated systems
 c. Servers
 d. Backend databases
 e. Other

## User Input Methods

How is the string input in the system:
 a. Do users input the strings directly?
 b. If so, how? (keyboard, stylus, voice, copy-paste, etc.)
 c. Where do we place the dividing line between user interface and protocol? (see RFC 5895)

## Enforcement

What entities enforce the rules?
Do they play a role similar to DNS registrars?

## Comparison Methods

Comparison typically happens in one of the following four ways:
 a. compare byte-by-byte
 b. compare by a common algorithm that everyone agrees on (e.g., normalize and then compare the result byte-by-byte)
 c. No single common comparison algorithm for everyone, but within one or more constrained subsets of users/uses there may be an agreed on comparison algorithm. E.g., US-ASCII users might agree on a comparison algorithm but US-ASCII vs Turkish users may not, for a given type of identifier.
 d. No single common comparison algorithm for everyone (specifically, everyone might want the comparison to be tailored for their locale, for some definition of locale)

## Case Folding, Sensitivity, Preservation

Are you using:
 a. case folding? for all code blocks or only specific blocks (e.g, Latin1)? 
 b. is the system case sensitive?
 c. does the system preserve case?

## Impact of Comparison

 a. What is the impact if the comparison results in a false positive?
 b. What is the impact if the comparison results in a false negative?
 c. Especially, what are the security impacts? (authentication, authorization, etc.)

## Normalization

Are you using:
 a. No normalization
 b. NFKC
 c. NFC

## Mapping

Are certain characters mapped to nothing, mapped to spaces, etc.?

## Disallowed Characters

Are certain characters disallowed? Examples:
 a. Control characters
 b. Special characters like @ or /

## String Classes 

 a. Which other strings or identifiers are these most similar to?
 b. Are these strings or identifiers sometimes the same as strings or identifiers from other protocols (e.g., does an IM system sometimes use the same credentials database for authentication as an email system)?

## Internal Structure

Does the identifier have internal structure that needs to be respected? Internal structure might use certain "special" characters as delimiters, such as:
 a. . (dot)
 b. @ (at-sign)
 c. - (hyphen)
 d. / (slash)
 e. _ (underscore)

## User Output

Exactly how are users exposed to these strings? How are they published? Examples:
 a. vCard
 b. web directory
 c. business card
 d. "side of the bus"

## Operations

Is the string / identifier used as input to other operations? Examples:
 a. cryptographic hash function
 b. concatenated with other strings to create unique identifer

## Community Considerations

 a. how much tolerance for change from existing stringprep approach?
 b. how strong a desire for change (e.g., for Unicode agility)?
