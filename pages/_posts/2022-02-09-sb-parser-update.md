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
  - sb-beacon-api
---

## {{page.title}}

After some hiatus the `sbSchemaParser.pl` tool has received another update for
greater flexibility, especially when handling complex/nested schema source
directories:

* multiple and nested `schema dirs`
* meta header definition in config file and/or repository-specific YAML file
* more relaxed regarding parameters and input schema structure
  - `$id` parameter not strictly required; schema anmd version can be provided
  from file name and through the config file, respectively
  - similar for the title which has now a "stemmed file name" fallback
* updated documentation
  - [sbSchemaParser](https://github.com/ga4gh-schemablocks/schemablocks-tools/blob/master/sbSchemaParser.md)

The first runs with the new tool have been for the [Beacon](https://schemablocks.org/tags/Beacon-v2.html) `2.0.0-draft.4` version of the [`sb-beacon-api`](https://github.com/ga4gh-schemablocks/sb-beacon-api).

The [overall structure](https://schemablocks.org/about/repositories.html) of the generated files and paths remains the same.
