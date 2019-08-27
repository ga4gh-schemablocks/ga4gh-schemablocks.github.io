---
title: "Identifiers and CURIEs"
layout: default
date: 2018-12-24
author:
  - "@mbaudis"
  - "@cmungall"
excerpt_separator: <!--more-->
category:
  - standards
tags:
  - identifiers
---

## {{ page.title }}

#### Status: __DRAFT__

One of the GA4GH conventions is to use CURIEs as (external) identifiers.

<!--more-->

This is a draft recommendation; please see also [a recent discussion](https://github.com/ga4gh-metadata/SchemaBlocks/issues/10) on Github, and the links from there.

#### Contributors

{% if page.author %}
  {%- for this_author in page.author -%}
    {%- if this_author contains "@" -%}
      {% assign this_g_author = this_author | remove: "@" %}
* [{{this_author}}](https://github.com/{{this_g_author}}/)
    {% else %}
* {{this_author}}
    {%- endif -%}
  {% endfor %}
{% endif %}

CURIEs ("[Compact URIs](https://www.w3.org/TR/curie/)") are namespace-scoped identifiers which can be expanded to Internationalized Resource Identifiers ([IRI](https://www.w3.org/International/articles/idn-and-iri/)). A CURIE is comprised of two components, a prefix and a reference, separated by a colon symbol (:). CURIES are case sensitive, although for prefixes this practice is inconsistently being followed.

#### GA4GH Use

In GA4GH schemas, CURIEs constitute the recommended syntax for the referencing ontology classes or external references. Here, usually a CURIE as `id` is combined with a `label` for the text representation of the , such in the `Ontology_term` object prototype:


```
"onset": {
   "label" : "Juvenile onset",
   "id" : "HP:0003621"
},
"external_references": [
  {
    "id" : "cellosaurus:CVCL_0312",
    "label" : "HOS"
  },
]
```

#### Further Information

* [W3C CURIE syntax](https://www.w3.org/TR/curie/) page
* [W3C IRI](https://www.w3.org/International/articles/idn-and-iri/) documentation
* [IETF IRI](https://www.ietf.org/rfc/rfc3987.txt) specification (e.g. allowed characters)
* SchemaBlocks [Ontology_term](http://schemablocks.org/schemas/blocks/Ontology_term.html) class documentation
