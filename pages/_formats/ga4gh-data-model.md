---
title: "GA4GH Data Model"
layout: default
date: 2019-02-19
author: 
  - "@mcourtot"
  - "@mbaudis"
permalink: /categories/formats/ga4gh-data-model.html
description: |
  A general object model recommendation, based on the GA4GH schema and describing relationships between variants - callsets - biosamples - individuals
excerpt_separator: <!--more-->
category:
  - formats
tags:
  - model
  - objects
---

## {{ page.title }}

### Recommendation (_DRAFT_)

The GA4GH data model recommends the use of a default object hierarchy in standard and product design processes. While it reflects concepts from the original [GA4GH schema](https://github.com/ga4gh/ga4gh-schemas/), it provides mostly a structural guideline for API and data store design, but is not thought to provide a set of absolute implementation requirements.

<!--more-->


<div style="display: block; float: right; width: 300px; margin: 0px 0px 15px 15px; ">
  
  
  <a href="/assets/img/ga4gh-core-object-model.png" target="_BLANK"><img src="/assets/img/ga4gh-core-object-model.png" style="width: 300px;" alt="GA4GH core object model" /></a>
  <div style="display: block; width: 300px; text-align: justify; font-size: 0.8em; color: #03c; background-color: #eee; padding: 5px;">
A graph showing recommended basic objects and their relationships. The names and attributes are examples and may diverge in count and specific wording (e.g. "subject" instead of "individual") in specific implementations.
  </div>
</div>

### Contributors

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


### Summary

The GA4GH data model for genomics recommends the use of a principle object hierarchy, consisting of

* __variant__
    - a single molecular observation, e.g. a genomic variant observed in the analysis of the DNA from a biosample
* __callset__
    - the entirety of all variants, observed in a single experiment on a single sample
    - a _callset_ can be compared to a data column in a __VCF__ variant annotation file 
    - _callset_ has an optional position in the object hierarchy, since _variants_ describe biological observations in a biosample
* __biosample__
    - a reference to a physical biological specimen on which analyses are performed
* __individual__
    - in a typical use a human subject from which the biosample(s) was/were extracted

These basic definitions will be detailed further on.

Additional concepts (e.g. _dataset_, _study_ ...) may be added in the future.

### Details

In the design of genomics APIs, file formats and storage protocols, it is of relevance to adhere to a logical object structure which reflects physical reality and common data handling procedures.

At the core of many (human health related and other) databases and procedural systems is the concept of a "_biosample_", representing the source of biological material on which some (molecular or other) analyses are being performed, leading to a set of observations (e.g. the genomic variants measured by Whole Genome Sequencing and called against a reference genome, in the DNA extracted from a tissue biopsy).

For a consistant API design, it is important to relate observations and measurement to the correct object in the data model's hierarchy. A typical example human genomic data analysis is the association of phenotypic information to the type of biosample being analysed. For the association of genomic variants with a cancer diagnosis, it is of paramount importance to know if - for an individual with a cancer diagnosis - the observed variants were called from a _germline_ biosample (i.e. analysis of cancer predisposition) or from a _cancer tissue_ biosample (i.e. somatic mutation analysis).

### Further Reading

* [GA4GH schema documentation](https://ga4gh-schemas.readthedocs.io/en/latest/api/metadata.html)
    - deprecated but informative
* original [GA4GH schema](https://github.com/ga4gh/ga4gh-schemas/) code repository
