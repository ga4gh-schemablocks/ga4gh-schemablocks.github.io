---
title: 'SchemaBlocks Repositories'
date: 2019-08-26
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
www_link: # a simple web address related to the post, e.g. https://www.ga4gh.org
www_links_formatted:  # one or multiple complete links
#  - '<a href="https://www.biorxiv.org" target="_blank">[biorXiv]</a>'
pdf_file_name: # the name of a PDF (no path) somewhere in "assets", which will be auto-linked
permalink: '/about/repositories.html'
category: # please adjust
  - about
  - howto
tags: # please adjust; see tags -n _config.yml (or extend them there, too)
  - FAQ
  - howto
  - issues
---

## {{ page.title }}

The SchemaBlocks Github organisation contains several specifically scoped 
repositories. Please use the relevant _Github Issues_ to and/or GH pull requests comment and contribute there.

<!--more-->

### {S}[B] Tool & Web Repositories

#### [schemablocks.github.io](https://github.com/ga4gh-schemablocks/ga4gh-schemablocks.github.io)

* website repository
* contains
    - documentation pages (formats, general)
    - representation of schemas ("blocks"), rendered from the code repositories, in [/pages/_schemas](https://github.com/ga4gh-schemablocks/ga4gh-schemablocks.github.io/edit/master/pages/_schemas/) (website source files for Github Pages rendering) and [/schemas/ga4gh](https://github.com/ga4gh-schemablocks/ga4gh-schemablocks.github.io/edit/master/schemas/ga4gh) (schema source code in JSON Schema format)
* [Github issues](https://github.com/ga4gh-schemablocks/ga4gh-schemablocks.github.io/issues) here should address general SchemaBlocks topics and governance, as well as formats documentation

#### [tools](https://github.com/ga4gh-schemablocks/tools)

* scripts for processing the source code in the blocks (and possibly other) repository and rendering the reference schema files and documentation pages into this website project

### {S}[B] Code Repositories

{S}[B] code repositories adhere a consistent structure & naming:

```
sb-code       # each of the code repositories, e.g. "blocks"
  |
  |- source   # original code
  |- working  # for editing, temporary...
  |- schemas  # JSON Schema files as YAML; read to produce the output files
  |- json     # .json version of the schema, generated from YAML file
  |- examples # .json example data, generated from inline examples in schema
  |- doc      # .md documentation, generated from inline documentation in schema
```

The structure of the code repositories is a pre-requisite for the parsing of the
schema files. Please refer to the [documentation in the `tools` repository](https://github.com/ga4gh-schemablocks/tools).

#### [blocks](https://github.com/ga4gh-schemablocks/blocks)

* schema repository
* contains the [source code](https://github.com/ga4gh-schemablocks/blocks/tree/master/schemas) as well as rendered representations and example data
* main repository to create code specific pull requests and issues

#### [playground](https://github.com/ga4gh-schemablocks/playground)

* repository for suggeting & testing possible additions to the {S}[B] environment
* items there should be considered "experimental", with no reliable endorsement by the {S}[B] community


#### TODO: "implementations"

* example implementations repository
* expected to provide representations and examples of SchemaBlocks use in different projects
