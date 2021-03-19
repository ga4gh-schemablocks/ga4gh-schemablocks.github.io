---
title: 'sbSchemaParser update'
layout: default
author: "@mbaudis"
excerpt_separator: <!--more-->
pdf_file_name:
www_link: https://github.com/ga4gh-schemablocks/schemablocks-tools
category:
  - news
tags:
  - schemas
  - sb-duo
---

## {{page.title}}

The tools for schema conversion have received a major update, for greater
flexibility and easier extension. Some of the main features:

* renamed annd restructured [`schemablocks-tools`](https://github.com/ga4gh-schemablocks/schemablocks-tools)
repository
* configuration files for processing are now kept in the individual `sb-this-project`
repositories
* updated documentation
  - [sbSchemaParser](https://github.com/ga4gh-schemablocks/schemablocks-tools/blob/master/sbSchemaParser.md)
  - [sbOpenAPIparser](https://github.com/ga4gh-schemablocks/schemablocks-tools/blob/master/sbOpenAPIparser.md)

<!--more-->

While there should now a `config` directory be added to the source repositories,
the [overall structure](https://schemablocks.org/about/repositories.html) of the generated files and paths remains the same.
