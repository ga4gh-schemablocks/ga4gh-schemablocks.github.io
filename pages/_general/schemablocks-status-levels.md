---
title: 'SchemaBlocks "Status" Levels (proposal)'
date: 2019-07-17
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
www_link: # a simple web address related to the post, e.g. https://www.ga4gh.org
www_links_formatted:  # one or multiple complete links
#  - '<a href="https://www.biorxiv.org" target="_blank">[biorXiv]</a>'
pdf_file_name: # the name of a PDF (no path) somewhere in "assets", which will be auto-linked
permalink: '/about/sb-status-levels.html'
category: # please adjust
  - about
  - howto
tags: # please adjust; see tags -n _config.yml (or extend them there, too)
  - FAQ
  - howto
  - issues
---

## {{ page.title }}

SchemaBlocks schemas ("blocks") provide recommended blueprints for schema parts
to be re-used for the development of code based "products" throughout the GA4GH
ecosystem. We propose a labeling system for those schemas, to provide
transparency about the level of support those schemas have from {S}[B]
participants and observers.

<!--more-->

#### Proposed {S}[B] Status Levels

The current status level of thiose recommendations is "proposed".

* `playground`
	- early development or import stage, of any quality
	- no recommendation; existence does not mean any current or future
	{S}[B] support
* `proposed`
	- at least some {S}[B] contributors are in favour of such a block
	- the code may undergo considerable maturation
	- not recommended for integration into products w/o close tracking
	- contributions and discussions are encouraged
* `implementation`
	- mature block which is implemented in one or more {S}[B] aligned
	schemas
	- may be extended from a core block or be too specific for general
	("core") usability
* `core`
	- a schema block with recommended use
	- stable through minor version changes
	- has to be used in at least 2 GA4GH Steering Committee approved GA4GH standards
