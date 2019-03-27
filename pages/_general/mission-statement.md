---
title: 'Mission Statement'
date: 2019-03-27
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
www_link: # a simple web address related to the post, e.g. https://www.ga4gh.org
www_links_formatted:  # one or multiple complete links
  - '<a href="https://docs.google.com/document/d/11fZpCFv2tO7xSXqJVAXvNDMpUxZ4wCkgvzjsgEI_8Ek/edit?ts=5c9b6c2cg" target="_blank">[Draft doc this page was based on]</a>'
pdf_file_name: # the name of a PDF (no path) somewhere in "assets", which will be auto-linked
permalink: '/about/mission.html'
category: # please adjust
  - about
tags: # please adjust; see tags -n _config.yml (or extend them there, too)
  - FAQ
  - howto
  - issues
  - .featured
---

## SchemaBlocks{S}[B] Mission Statement

SchemaBlocks aims to translate the work of the workstreams into data models that:

* Are usable by other internal GA4GH deliverables, such as the Search API.
* Are usable by Driver Projects as an exchange format.
* Aid in aligning the work streams across GA4GH.
* Do not create a hindrance in development work by other work streams. 

<!--more-->

After discussions with stakeholders from GA4GH work streams and driver projects who create data models (such as Phenopackets, Search API) or who would use SchemaBlocks for the development of their APIs and data exchange formats (Beacon, EGA, GeL), the SchemaBlocks team has come up with the following principles for this initiative:

#### Work Stream Interactions

Work streams will continue to create standards proposals and their own coherent project implementations, but will work with the SchemaBlocks group to write the Blocks that will come from their own work and are considered of overarching use.
Generally, primary work stream and driver project outputs will live in their own spaces outside of SchemaBlocks, with shareable, mature elements - code, documentation, implementation snapshots - being represented in {S}[B].

##### Examples

* The Clin/Pheno group determines the optimal format for representing a phenotype in Phenopackets, using their own environment and code representation. As part of this process, the Clin/Pheno team provides their model to {S}[B] and works together with participants there to create a representation of the phenotype block in the standard {S}[B] implementation format (i.e. JSON Schema).
* The DURI work stream develops a model for consent and data use restrictions, which is aligned with the needs from driver projects (GeL, Beacon) and represented in {S}[B]
* The ELIXIR Beacon DP coordinates with the GKS WS to develop a format for returning variants data as part of a Beacon response to a wildcard or range match 

This process will allow the experts from the various work streams to be in charge of how their models are represented while ensuring alignment with the rest of the Blocks.  

Additionally to provide a place for schema elements, SchemaBlocks also collects input from work streams about standard formats and best practices, e.g. the use of genome coordinates in GA4GH projects.

#### Example Driver Project Use

Driver Projects, including ELIXIR Beacon, GeL, EGA, and HCA have requested several schemas for developing implementations. Common requirements include variant representation and annotation, data use conditions, and “phenopackets”. These request reflect the practical need by projects dealing with applications in such areas as data search and exchange, attribute scoping, etc. More use cases will be gathered during the future development process.

#### General format of a SchemaBlock

On the technical side, SchemaBlocks does not intend to produce a single, complete schema specification for universal use. Representations of schema “blocks” will be implemented using _JSON Schema_ - including inline documentation and examples - as well as tooling for integrity checks and transformations.

A light-weight process (at minimum JSON Schema conformity checks using a [dedicated linter](https://github.com/ga4gh-schemablocks/blocks/issues/10)) will be used to ensure consistent quality across all Blocks. The technical level of schema maturity as well as its adoption in GA4GH ecosystem products and standards and will be documented.

These Blocks can then be used by other work streams to ensure alignment across products.  For example, Beacon or Search API could use the phenotype Blocks to allow searching of phenotypic information; a group wanting to create a storage format for large amounts of phenotypic information could use the same Blocks. Driver Projects may use Blocks to develop data exchange formats, or in other parts of their development processes to ease adoption of GA4GH community standards. Since product teams may rely on different programming languages and schema description formats, we expect that the structure of {S}[B] Blocks may have to be translated between implementations, either manually or - increasingly - using automatic conversions.

This process was designed to be simple while providing a solution to many existing needs within GA4GH and its community.  We welcome your thoughts and feedback. Ideas should preferably lead to issues in one of the “Github Issues” trackers:

* Standards documentation, website and general issues  
    - [schemablocks.github.io](https://github.com/ga4gh-schemablocks/ga4gh-schemablocks.github.io/issues) repository issues
* Code refinements and schema proposals  
    - [blocks](https://github.com/ga4gh-schemablocks/blocks/issues) repository issues  
