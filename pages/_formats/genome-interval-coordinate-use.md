---
title: "Genome Coordinate Use in GA4GH"
layout: default
permalink: /categories/formats/genome-coordinate-use.html
date: 2019-02-20
author: 
  - "@mbaudis"
  - "@andrewyatz"
  - "@jmarshall"
excerpt_separator: <!--more-->
category:
  - formats
tags:
  - coordinates
---

## {{ page.title }}

For product and standard development, GA4GH recommends to represent genome intervals in APIs using **0-based half-open** coordinates, also referred to as **interbase** representation. Similarly, positions in APIs should be represented using **0‑based** coordinates.

The details of the format are found in the [__GA4GH Genome Coordinates__](/categories/formats/recommendation-genome-coordinates.html) document.

<!--more-->

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

### GA4GH Products and Their Supported Interval Systems

Due to the adoption of pre-established community standards and projects, throughout the GA4GH ecosystem a variety of genome coordinate systems are still being used.

The SAM/BAM/CRAM sequencing data formats and VCF/BCF variant call formats primarily store positions and various lengths, so don't represent intervals directly.
SAM and VCF are human-readable text formats and use 1-based positions, while BAM, CRAM, and BCF are binary machine-orientated formats using 0-based positions.

The htsget, refget, and Beacon protocols all use 0-based half-open or interbase intervals.
The Variation Modelling Collaboration recommends the interbase approach.

The table below provides an overview.

| Product | Interbase | 0-start, half-open | 1-start, fully-closed |
| --- | :---: | :---: | :---: |
| BAM/CRAM |  | X |  | 
| SAM |  |  | X | 
| VCF |  |  | X | 
| BCF |  | X |  | 
| htsget |  | X |  | 
| refget | X |  |  | 
| Beacon | X |  |  | 
| VMC | X |  |  | 


### Additional Links

* [Detailed description of the interbase coordinate system](/categories/formats/recommendation-genome-coordinates.html)
    - This is the document describing the recommended format for GA4GH products and standards development.
* [Chado Interbase documentation](http://gmod.org/wiki/Introduction_to_Chado#Interbase_Coordinates)
* [Interbase primer](http://bergmanlab.genetics.uga.edu/?p=36) 
* [Beacon’s support for coordinate systems](https://github.com/ga4gh-beacon/specification/issues/251)
* [Refget’s support for coordinate systems](https://github.com/samtools/hts-specs/pull/327#issuecomment-411458808)
* [UCSC information on “0-start, half-open”](http://genome.ucsc.edu/blog/the-ucsc-genome-browser-coordinate-counting-systems/)
* [Transforming between coordinates in “0-start, half open”](http://genomewiki.ucsc.edu/index.php/Coordinate_Transforms)
* [Cheat sheet](https://www.biostars.org/p/84686/) on the systems by Obi Griffith
* the [documentation](https://ga4gh-schemas.readthedocs.io/en/latest/schemas/variants.proto.html#protobuf.Variant) of the `Variant` object for the original [_GA4GH schema_](https://github.com/ga4gh/ga4gh-schemas)
