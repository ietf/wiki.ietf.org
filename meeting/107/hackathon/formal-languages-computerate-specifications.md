---
title: Formal Languages - Computerate Specifications
description: 
published: true
date: 2023-03-16T00:42:33.597Z
tags: 
editor: markdown
dateCreated: 2023-03-16T00:42:28.609Z
---

# Computerate Specifications

A computerate Specification (draft-petithuguenin-computerate-specifying) is a specification (an Internet-Draft or RFC at the IETF) that is enriched with formal specification, programming code, and mathematical proofs.

Such specifications can become very complete (and complex), but we will start by using these techniques to make sure that the examples in an Internet-Draft (I-D) are correct by construction, i.e. that they follow the specification.

So please come with your I-D at the "Formal Languages" table, and we'll help you improving the quality of the examples in your I-D.
## Installing the tools

You will need the following:

  -  A laptop, either running Linux or MacOS. Windows is untested yet.
  -  Docker CE installed and working (​https://docs.docker.com/install/).
  -  A source editor: VIM, GNU Emacs, or Atom are strongly recommended because they can be integrated with Idris. Note that help for anything but VIM will be very limited. 

All the tooling is available as a Docker image, which can be downloaded and installed as explained in Appendix A of draft-petithuguenin-computerate-specifying. USB keys preloaded with the latest version of the tooling will be available on the team table.

The Docker image contains VIM, Idris and the VIM extensions for Idris, but it can only be used in text mode. So it is recommended to also install Idris on your laptop (https://www.idris-lang.org/download/), a source editor, as well as the matching source editor extensions for Idris:

 -   VIM: https://github.com/idris-hackers/idris-vim
 -   Emacs: https://github.com/idris-hackers/idris-mode
 -   Atom: https://github.com/idris-hackers/atom-language-idris
 -   Sublime: https://github.com/idris-hackers/idris-sublime 

Examples of computerate specifications can be retrieved as explained in Appendix B of draft-petithuguenin-computerate-specifying. These will also be made available, as will be the latest version of the draft-petithuguenin-computerate-specifying draft, on the USB keys.
## The development cycle

For now we focus on syntax examples that have a direct text representation.

Converting examples in an existing I-D follow this life cycle:

  1.  Develop a set of Idris datatypes that specifies the format of an example.
 2.   Add an implementation of the Show interface to convert these datatypes into a text representation.
 3.   Develop a function for each example in the I-D that is using an instance of the datatype. 

Because of current limitations in the editor extensions, it is simpler to develop and debug these 3 steps directly as an Idris program.

When everything is working, the next step is to integrate the code inside the I-D.

  1.  Convert the I-D into an AsciiRFC document (draft-ribose-asciirfc, https://www.metanorma.com/author/ietf/).
 2.   Copy the Idris code in the AsciiRFC document, prefixing each line with > .
 3.   Convert each example into a call to the matching function, between {` and `} delimiters.
  4.  Generate the txt output by running the "computerate" command, as explained in Appendix A of draft-petithuguenin-computerate-specifying. 

## Bring Your Own I-D

Add your name and draft below if you plan to join us:

 -  ` <name> <email> <draft> `

## Learning AsciiRFC and AsciiDoc

  -  https://asciidoctor.org/
  -  https://asciidoctor.org/docs/user-manual
  -  draft-ribose-asciirfc
  -  https://www.metanorma.com/author/ietf 

## Learning Idris

 -   https://www.idris-lang.org/documentation/
 -   http://docs.idris-lang.org/en/latest/
 -   https://www.manning.com/books/type-driven-development-with-idris
 -   https://www.youtube.com/watch?v=X36ye-1x_HQ
 -   https://www.youtube.com/watch?v=IQO9N0Y8tcM 