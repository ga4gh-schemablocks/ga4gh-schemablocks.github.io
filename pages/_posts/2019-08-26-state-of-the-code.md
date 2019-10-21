---
title: 'Current {S}[B] Repository Status'
layout: default
author: ['@mbaudis']
excerpt_separator: <!--more-->
www_link:
categories:
  - news
  - howto
tags:
  - news
  - code
  - FAQ
  - issues
  - phenopackets
---

## {{ page.title }}

Recently, repository structure, schema formats and the amount of schema blocks represented in the repositories have seen some maturation and expansion. The current setup is closing in on moving from an "experimental state" towards production readiness, i.e. a stable format for general document structure, canonical links and also frozen representation of first _core_ schemas.

<!--more-->

#### Schema Document Format

Early on, {S}[B] participants had agreed on the representation of data schemas using the _JSON Schema_ conventions. While the first demonstrator schemas had been implemented in a similar, OpenAPI derived format, recent efforts have moved towards a clean JSON Schema representation, including a [metadata header format specifically geared towards {S}[B]](https://schemablocks.org/schemas/ga4gh/BlockMeta.html). An important element here is the __sb_status__ attribute, which will serve as primary indicator of a given schemas acceptance level and stability.

* `BlockMeta` schema at playground [[➚]](https://github.com/ga4gh-schemablocks/playground/blob/master/schemas/BlockMeta.yaml)
* `sb_status` [documentation](https://schemablocks.org/about/sb-status-levels.html) and [issue](https://github.com/ga4gh-schemablocks/ga4gh-schemablocks.github.io/issues/15)

#### Phenopackets Blocks

As one of the most advanced and complex data schemas in the GA4GH ecosystem, and due to its dynamic alignment with pre-existing and standards emerging from the different work streams, the [Phenopackets](https://github.com/phenopackets) schema constitutes a rich source for reference schema blocks which should find their way into other GA4GH related developments.

Over the last weeks, members of the {S}[B] team (especially Isuru, Jules, Ben and Michael) have worked on converting parts of the Phenopackets specification to JSON Schema blocks, with documentation rendered into the [{S}[B] schema collection](https://schemablocks.org/categories/schemas.html). This process isn't finished yet, but the existing schemas already should serve as the basis for discussions about representation, code maintenance and versioning and adoption of the working procedures for other schemas.

* [working document](https://docs.google.com/document/d/1QWvFh0G0hY6FnyDbDA-E1hqQkQClba35yR2A_oYyyAc/edit#) providing some information about the ongoing conversion process

#### `tools` Repository [[➚]](https://github.com/ga4gh-schemablocks/tools)

Current {S}[B] source code development follows an "integrated document" approach, where the main documentation and data examples for each schema are included inline, as values of JSON Schema attributes (`examples`, `description`). From the main schema document (written in YAML), a dedicated parser then extracts  

* the reference JSON document (rendered into "https://schemablocks.org/schemas/ga4gh/_this-schema_.json")
* a Markdown document containing
    - the formatted source code, documentation and examples
    - links to the corresponding Github pages (for review & editing) and reference source JSON file
    - a YAML header with instructions for the rendering of the document into a web page, auto-generated through github-pages using the Jekyll framework
    
This deparsing of the source code can be performed using the `sbSchemaParser.pl` script, in a local setting containing the current versions of all relevant {S}[B] repositories.
