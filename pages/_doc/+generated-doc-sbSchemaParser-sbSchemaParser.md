---
title: "sbSchemaParser::sbSchemaParser.pl Perl Code Documentation"
layout: default
www_link: 
excerpt_separator: <!--more-->
date: 2019-09-07
category:
  - howto
tags:
  - Perl
  - sbSchemaParser
  - code
  - documentation
  - tools
---

## {{ page.title }}

<!--more-->

* [Source Link](https://github.com/ga4gh-schemablocks/tools/tree/master/sbSchemaParser/sbSchemaParser.pl) 

The `sbSchemaParser.pl` Perl script parses YAML schema definition scripts 
written in JSON Schema and using GA4GH SchemaBlocks {S}[B] attributes and 
structure, into 

* JSON versions of the schemas (unprocessed), to serve as the reference
schema versions
* Markdown documentation, both in plain Markdown and as sources for "Jekyll" 
based Markdown => HTML generation by Github Pages (or a local installation)
* example `.json` data files, from the inline `examples`

The output files are generated relative to the script path. This assumes a
directory structure, in which the different repositories are contained in the
same root (i.e. organization) directory, and the script itself is inside a
first order directory in one of the repositories. The specific names of all of 
the directories can be modified in `config.yaml`:

```
this-organization
  |
  |-- tools
  |     |
  |     |-- sbSchemaParser
  |           |-- sbSchemaParser.pl # this file
  |           |-- config.yaml				# in- and output path definitions
  |
  |-- blocks                        # example for (1 or 1+) schema repositories
  |     |
  |     |-- schemas
  |     |     |-- Schema.yaml
  |     |     |-- OtherSchema.yaml
  |     |     |-- ...
  |     |
  |     |-- working
  |     |     |-- SomethingNew.yaml     
  |     |     |-- ...
  |     |     
  |     |-- generated               # config.yaml -> "out_dirnames"
  |           |
  |           |-- doc
  |           |     |-- Schema.md
  |           |     |-- OtherSchema.md
  |           |     |-- ...
  |           |
  |           |-- json
  |           |     |    
  |           |     |-- current
  |           |     |     |-- Schema.json
  |           |     |     |-- ...
  |           |     |    
  |           |     |-- v0.0.1
  |           |     |     |-- Schema.json
  |           |     |     |-- ...
  |           |     |    
  |           |     |-- v... 
  |           |
  |           |-- examples
  |   
  |-- this-organization.github.io   # web repository (Jekyll based)
        |
        |-- (out_web.dirs.jekyll)
        |     |-- Schema.md
        |     |-- ...
        |
        |-- (out_web.dirs.schemas)
              |-- current
              |     |-- Schema.json
              |     |-- ...
              |    
              |-- v0.0.1
              |     |-- Schema.json
              |     |-- ...
              |    
              |-- v...
```

The class name is derived from the file's "$id" value, assuming a canonical 
path structure with the class name post-pended with a version:

```
"$id": https://schemablocks.org/schemas/ga4gh/Phenopacket/v0.0.1
```
Processing is skipped if the class name does not consist of word character, or
if a filter had been provided and the class name doesn't match.

The documentation is extracted from the $data object and formatted into a
markdown document.

The script performs a CURIE to URL expansion for prefixes defined in the
configuration file and links e.g. the ORCID id to its web address.



Paths for the output files are created from the pre-generated directory paths
and variables (class, parent directory name) which are extracted from the full
path of the input file.

The web files for the Jekyll / GH-pages processing gets a prefix, to ensure that
auto-generated and normal pages can be separated.

The property overview is followed by the listing of the properties, including
descriptions and examples.

