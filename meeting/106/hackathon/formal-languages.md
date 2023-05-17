---
title: Formal Languages
description: 
published: true
date: 2023-03-15T22:27:02.607Z
tags: 
editor: markdown
dateCreated: 2023-03-15T22:26:55.374Z
---

# Formal Languages

The Formal Languages table includes two projects -- Augmented Packet Header Diagrams and Computerate Specifications -- that both make use of formal and structured languages to enable the use of tooling around specifications (i.e., Internet-Drafts and RFCs).

Please join us at the Formal Languages table: bring along your own drafts, and we'll help you to use formal and structured languages to improve the quality of the examples and packet diagrams they contain.

## Augmented Packet Header Diagrams

The Augmented Packet Header Diagram format (draft-mcquistin-augmented-ascii-diagrams) is a consistent packet header diagram format and accompanying structured text constructs that allow for the parsing process of protocol headers to be fully specified. This provides support for the automatic generation of parser code, and for other benefits that follow from being able to use tooling to process packet header diagrams.
## Getting the source code

Tooling that supports the Augmented Packet Header Diagram format can be found at https://github.com/lumisota/improving-protocol-standards. The tooling is at an early stage: there will be bugs.

The source code (in the `/src` directory of the repository) is broadly split into three categories:

  -  input parsers (`/parsers`), that take a protocol described in a given format, and generate the intermediate representation; 

  -  a helper class (`protocol.py`), that is used to construct and inspect the intermediate representation; and 

  -  output formatters (`/formatters`), that take the intermediate representation, and produce output in a given format. 

Additionally, there is a directory of examples (/examples), containing a number of protocol definitions in each of the input parsers, and a helper script (parse-ietf-doc.py) that performs the end-to-end process of taking a protocol description, and generating output in a specified format.
## Getting started

The project uses Pipenv for dependency management. To begin, run:

`pipenv install --dev`

to create a Python virtual environment with appropriate packages install. Then, run:

`pipenv shell`

to start the virtual environment, within which you can run the scripts.

To run the project's test suite, run:

`pipenv run tests`

## Generating a protocol description

The `parse-ietf-doc.py` script takes a protocol standards document, generates the intermediary representation, and produces output.

*Command usage* `python parse-ietf-doc.py --docname <input document name> --output-format <output format name> --output-file <output filename>`

In generating the output, the script performs a depth-first search of the intermediate representation, to determine the order in which the necessary functions of the specified formatter are called.

The available output formats are:

 -   simple_formatter (txt)
 -   rust_formatter (rs) 

If `output-format` is not specified, the output format will be inferred from the file type specified as output-file. The file extensions that map to each output formatter are specified above.

For example, to parse the Augmented Packet Header Diagram I-D, and generate a simple, pretty-print output, run `python parse-ietf-doc.py --docname ../ids/draft-mcquistin-augmented-ascii-diagrams.xml --output-file example.txt` from within the `src` directory.
## Hackathon goals

Broadly, our goal at the Hackathon is to improve both the Augmented Packet Header Diagram format itself, by attempting to rewrite existing I-Ds and RFCs using its syntax, and to improve the tooling, and in particular, its Rust parser generator.

Please join us: we are particularly interested in examples of packet header diagrams that might be challenging to write in the format our draft describes, and in how our tooling might fit into existing workflows.
## Computerate Specifications

A computerate Specification (draft-petithuguenin-computerate-specifying) is a specification (an Internet-Draft or RFC at the IETF) that is enriched with formal specification, programming code, and mathematical proofs.

Such specifications can become very complete (and complex), but we will start by using these techniques to make sure that the examples in an Internet-Draft (I-D) are correct by construction, i.e. that they follow the specification.

So please come with your I-D at the "Formal Languages" table, and we'll help you improving the quality of the examples in your I-D.
### Installing the tools

You will need the following:

  -  A laptop, either running Linux or MacOS. Windows is untested yet.
  -  Docker CE installed and working (https://docs.docker.com/install/).
  -  A source editor: VIM, GNU Emacs, or Atom are strongly recommended because they can be integrated with Idris. Note that help for anything but VIM will be very limited. 

All the tooling is available as a Docker image, which can be downloaded and installed as explained in Appendix A of draft-petithuguenin-computerate-specifying. USB keys preloaded with the latest version of the tooling will be available on the team table.

The Docker image contains VIM, Idris and the VIM extensions for Idris, but it can only be used in text mode. So it is recommended to also install Idris on your laptop (https://www.idris-lang.org/download/), a source editor, as well as the matching source editor extensions for Idris:

 -   VIM: https://github.com/idris-hackers/idris-vim
 -   Emacs: https://github.com/idris-hackers/idris-mode
 -   Atom: https://github.com/idris-hackers/atom-language-idris
 -   Sublime: https://github.com/idris-hackers/idris-sublime 

Examples of computerate specifications can be retrieved as explained in Appendix B of draft-petithuguenin-computerate-specifying. These will also be made available, as will be the latest version of the draft-petithuguenin-computerate-specifying draft, on the USB keys.
### The development cycle

For now we focus on syntax examples that have a direct text representation.

Converting examples in an existing I-D follow this life cycle:

 1.   Develop a set of Idris datatypes that specifies the format of an example.
 2.   Add an implementation of the Show interface to convert these datatypes into a text representation.
 3.   Develop a function for each example in the I-D that is using an instance of the datatype. 

Because of current limitations in the editor extensions, it is simpler to develop and debug these 3 steps directly as an Idris program.

When everything is working, the next step is to integrate the code inside the I-D.

  1.  Convert the I-D into an AsciiRFC document (draft-ribose-asciirfc, https://www.metanorma.com/author/ietf/).
  2.  Copy the Idris code in the AsciiRFC document, prefixing each line with > .
  3.  Convert each example into a call to the matching function, between {` and `} delimiters.
  4.  Generate the txt output by running the "computerate" command, as explained in Appendix A of draft-petithuguenin-computerate-specifying. 

### Bring Your Own I-D

Add your name and draft below if you plan to join us:

    `<name> <email> <draft>` 

### Learning AsciiRFC and AsciiDoc

   - https://asciidoctor.org/
   - https://asciidoctor.org/docs/user-manual
   - draft-ribose-asciirfc
   - https://www.metanorma.com/author/ietf 

### Learning Idris

 -   https://www.idris-lang.org/documentation/
 -   http://docs.idris-lang.org/en/latest/
 -   https://www.manning.com/books/type-driven-development-with-idris
 -   https://www.youtube.com/watch?v=X36ye-1x_HQ
 -   https://www.youtube.com/watch?v=IQO9N0Y8tcM 
 