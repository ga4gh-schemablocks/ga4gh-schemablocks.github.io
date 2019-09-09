---
title: "sbSchemaParser::sbSchemaParser.pl Perl Code Documentation"
layout: default
www_link: 
excerpt_separator: <!--more-->
date: 2019-09-09
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
  |           |-- config.yaml       # in- and output path definitions
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
  |-- (webdocs.repo)                # web repository (Jekyll based)
        |
        |-- (webdocs.jekylldir)
        |     |-- Schema.md
        |     |-- ...
        |
        |-- (webdocs.schemadir)
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

#### Usage

The `sbSchemaParser.pl` script has to be run in a _local_ version of the 
repository structure. In principle, any relative directory locations should be 
possible if specified in the `config.yaml` defaults file, though a reasonable 
approach is to use a "organization -> projects" structure as above.

The script is executed with

```
perl sbSchemaParser.pl
```

The only current option is to provide a "-filter" argument against the schema 
file names; e.g. `perl sbSchemaParser.pl -filter Age` will only process schemas 
with "Age" in their file name.

#### Processing Schema Source Directories


The class name is derived from the file's "$id" value, assuming a canonical 
path structure with the class name post-pended with a version:

```
"$id": https://schemablocks.org/schemas/ga4gh/Phenopacket/v0.0.1
```
Processing is skipped if the class name does not consist of word character, or
if a filter had been provided and the class name doesn't match.

The documentation is extracted from the YAML schema file and formatted into
markdown content, both for a plain `.md` file in the output directories of 
the original repository (`out_dirnames.markdown`) and for the file for the Jekyll webpage generator.

The script performs a CURIE to URL expansion for prefixes defined in the
configuration file and links e.g. the ORCID id to its web address.



Paths for the output files are created based on the values (e.g. out_dirnames` 
provided in the configuration file.

The web files for the Jekyll / GH-pages processing receive a prefix, to ensure 
that auto-generated and normal pages can co-exist. The `permalink` parameter 
provided in the YAML header of the Jekyll file provides a "nice" and stable 
name for the generated HTML page (independent of the original file name).

The property overview is followed by the listing of the properties, including
descriptions and examples.


#### Jekyll File Header

A version of the Markdown inline documentation is added to the Github (or 
alternative), Jekyll based website source tree.

The page will only be generated into an HTML page if it contains a specific 
header written in YAML.

The `_create_jekyll_header` function will pre-pend such a header to the Markdown 
page, including some file specific parameters such as the `permalink` address of 
the page.


### Helper Subroutines

#### `_expand_CURIEs`

This function expands prefixes in identifiers, based on the parameters provided 
in `config.yml`. This is thought as a helper for some script/website specific 
linking, not as a general CURIE expansion utility.

