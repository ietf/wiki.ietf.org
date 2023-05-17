---
title: Formal Languages - Augmented Packet Header Diagrams
description: 
published: true
date: 2023-03-16T00:40:05.336Z
tags: 
editor: markdown
dateCreated: 2023-03-16T00:40:01.081Z
---

# Augmented Packet Header Diagrams

 The Augmented Packet Header Diagram format (draft-mcquistin-augmented-ascii-diagrams) is a consistent packet header diagram format and accompanying structured text constructs that allow for the parsing process of protocol headers to be fully specified. This provides support for the automatic generation of parser code, and for other benefits that follow from being able to use tooling to process packet header diagrams.

## Getting the source code

Tooling that supports the Augmented Packet Header Diagram format can be found at https://github.com/glasgow-ipl/ips-protodesc-code. The tooling is at an early stage: there will be bugs.

The source code is broadly split into three categories:

 -   input parsers (`/parsers`), that take a protocol described in a given format, and generate the intermediate representation; 

 -   a helper class (`protocol.py`), that is used to construct and inspect the intermediate representation; and 

 -   output formatters (`/formatters`), that take the intermediate representation, and produce output in a given format. 

Additionally, there is a directory of examples (`/examples`), containing a number of protocol definitions in each of the input parsers, and a helper script (parse-ietf-doc.py) that performs the end-to-end process of taking a protocol description, and generating output in a specified format.

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

Command usage `python parse-ietf-doc.py --docname <input document name> --output-format <output format name> --output-file <output filename>`

In generating the output, the script performs a depth-first search of the intermediate representation, to determine the order in which the necessary functions of the specified formatter are called.

The available output formats are:

  -  simple_formatter (txt)
  -  rust_formatter (rs) 

If `output-format` is not specified, the output format will be inferred from the file type specified as output-file. The file extensions that map to each output formatter are specified above.

For example, to parse the Augmented Packet Header Diagram I-D, and generate a simple, pretty-print output, run `python parse-ietf-doc.py --docname ../ids/draft-mcquistin-augmented-ascii-diagrams.xml --output-file example.txt` from within the src directory.
## Hackathon goals

Broadly, our goal at the Hackathon is to improve both the Augmented Packet Header Diagram format itself, by attempting to rewrite existing I-Ds and RFCs using its syntax, and to improve the tooling, and in particular, its Rust parser generator.

Please join us: we are particularly interested in examples of packet header diagrams that might be challenging to write in the format our draft describes, and in how our tooling might fit into existing workflows. 