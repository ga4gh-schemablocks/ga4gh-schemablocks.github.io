---
title: "Data Models"
layout: default
date: 2019-10-15
author:
  - "GA4GH Data Working Group"
  - "@mcourtot"
  - "@mbaudis"
permalink: /standards/ga4gh-data-model.html
description: |
  A general object model recommendation, based on the GA4GH schema and describing relationships between variants - callsets - biosamples - individuals
excerpt_separator: <!--more-->
category:
  - standards
tags:
  - model
  - objects
---

## {{ page.title }}

Different projects and products from the GA4GH ecosystem are assumed to develop 
or adopt domain specific data models. 

<!--more-->

### Legacy GA4GH Object Model

The original GA4GH data model - developed by GA4GH Data Working Group (DWG) - 
used a general object model which combined elements of the VCF structure 
(variants and callsets) with a commonly used representation of "biological 
objects" (_individual_, _biosample_) for provenance tracking and representation 
of "meta information" related to the individual genotyping results.

This hierarchical object model is well suited for the representation of data 
from individuals and their genotyping information. It had __not__ been developed 
to document e.g. recurring evidence documentation or equivalence modeling of 
their physiologic and phenotypic associations. 

This general object model is used in various implementations, with some 
variations regarding requirements for the individual components (e.g. 
_Phenopackets_ may not make use of the `biosample` component in a germline/rare 
disease setting; _Beacon_ resources may not link up to `individual`s or even 
`biosample`s in their aggregate backend version).

<a href="/assets/img/ga4gh-DWG-Phenopackets-object-models.png" target="_BLANK">
<img src="/assets/img/ga4gh-DWG-Phenopackets-object-models.png" style="width: 100%; margin-top: 20px; margin-bottom: 5px;" alt="GA4GH core object model" />
</a>
  
<div style="display: block; width: 100%; text-align: justify; font-size: 0.8em; color: #03c; background-color: #eee; padding: 5px; margin-bottom: 20px;">
A graph showing recommended basic objects and their relationships in the GA4GH 
Data Working Group model and their approximate representation in the 
<i>Phenopackets</i> data exchange standard. The names and attributes are examples 
and may diverge in count and specific wording (e.g. "subject" instead of 
"individual") in specific implementations.
</div>

#### Components

The GA4GH data model for genomics recommends the use of a principle object hierarchy, consisting of

* `variant`
    - a single molecular observation, e.g. a genomic variant observed in the 
    analysis of the DNA from a `biosample`
    - similar to the _variant_ concept (i.e. line) in VCF, though it would be 
    recommended to use separate annotations for multiple variant alleles, which 
    are then logically connected through their _idem_ callset_id_
* `callset` (also `analysis` or several technical objects)
    - the entirety of all variants, observed in a single experiment on a single `biosample`
    - a `callset` can be compared to a data column in a __VCF__ variant annotation file
    - `callset` has an optional position in the object hierarchy, since `variant`s describe biological observations in a `biosample` and can be seen as the entity describing the technologies and analysis procedures leading from the sample to the set of all variants
* `biosample`
    - a reference to a physical biological specimen on which analyses are performed
* `individual` (also `subject`)
    - in a typical use a human subject from which the biosample(s) was/were extracted

Additional concepts (e.g. _dataset_, _study_ ...) may be added in the future.

#### Notes

In the design of genomics APIs, file formats and storage protocols, it is of 
relevance to adhere to a logical object structure which reflects physical 
reality and common data handling procedures.

At the core of many (human health related and other) databases and procedural 
systems is the concept of a "_biosample_", representing the source of 
biological material on which some (molecular or other) analyses are being 
performed, leading to a set of observations (e.g. the genomic variants measured 
by Whole Genome Sequencing and called against a reference genome, in the DNA 
extracted from a tissue biopsy).

For a consistant API design, it is important to relate observations and 
measurement to the correct object in the data model's hierarchy. A typical 
example human genomic data analysis is the association of phenotypic information 
to the type of biosample being analysed. For the association of genomic variants 
with a cancer diagnosis, it is of paramount importance to know if - for an 
individual with a cancer diagnosis - the observed variants were called from a 
_germline_ biosample (i.e. analysis of cancer predisposition) or from a 
_cancer tissue_ biosample (i.e. somatic mutation analysis).

#### Further Reading

* [Beacon v2 Models](http://docs.genomebeacons.org/models/)
    - **NEW in April 2022**
* [GA4GH schema documentation](https://ga4gh-schemas.readthedocs.io/en/latest/api/metadata.html)
    - deprecated but informative
* original [GA4GH schema](https://github.com/ga4gh/ga4gh-schemas/) code repository

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


