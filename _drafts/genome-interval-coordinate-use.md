---
title: "Genome Interval Use in GA4GH Products"
layout: default
permalink: /formats/genome-interval-coordinate-use.html
date: 2019-01-23
author: 
  - "@andrewyatz"
  - "@mbaudis"
  - "@jmarshall"
  - "@reece"
excerpt_separator: <!--more-->
category:
  - formats
tags:
  - coordinates
---

## {{ page.title }}

### Recommendation (_DRAFT_)

While standards and products in the GA4GH ecosystem use different methods to reference genome coordinates, for future standard definitions GA4GH recommends the adoption of __"0-based, half-open"__ coordinates.

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


### Definition

Two integers that define the start and end positions of a range of residues, possibly with length zero, and specified using interbase coordinates. Coordinates are assumed to be positioned on a non-circular sequence.

### Model

* start (uint64) start position >= 0 (required)
* end (uint64) end position >= start (required)

### Background

When humans refer to a range of residues within a sequence, the most common convention is to use an interval of ordinal residue positions in the sequence i.e. start counting residues from 1. This system is also referred to as "1-start, fully-closed", biological coordinates and "Ensembl style". While natural for humans, this convention has several shortcomings for data modelling and programming.

GA4GH prefers the use of interbase or "0-based, half-open" coordinates (also known as Chado or "UCSC style") and strongly advises that all future products prefer their use for future products unless the product visually displays data to a human.

Interbase coordinates refer to the zero-width points before and after residues. An interval of interbase coordinates permits referring to any span, including an empty span, before, within, or after a sequence.

### The Interbase Coordinate System

* A detailed description of the interbase coordinate system is being [provided on a separate page](/categories/formats/genome-interbase-coordinates.html).

While interbase is numerically equivalent to "0-start, half-open", they are _semantically_ different. Interbase does not refer to residues and therefore can model events occurring between residues, the start and end of a sequence. For non-circular sequences the following holds true.

* Interbase coordinates start at 0
* Start must be >= 0
* End must be >= start 
* The length of an interval is (end - start)
* The reverse start is (sequence length - end)
* The reverse end is (sequence length - (start-1))
* A zero-length interval (start == end) is a point between two residues
* An interval of length 1 is a residue position
* Two intervals are equal if their start and end are equal
* Two intervals intersect if start or end occurs between the start and end of the other
* Two intervals coincide if they intersect or if they are equal

### GA4GH Products and Their Supported Interval Systems

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


### Circular Regions
Circular regions are not considered to be part of GA4GH and not covered here, since human genome data is handled as linear sequence. APIs may choose to support a circular location but must still support interbase coordinates.

### Additional Links

* [Detailed description of the interbase coordinate system](/categories/formats/genome-interbase-coordinates.html)
* [Chado Interbase documentation](http://gmod.org/wiki/Introduction_to_Chado#Interbase_Coordinates)
* [Interbase primer](http://bergmanlab.genetics.uga.edu/?p=36) 
* [Beacon’s support for coordinate systems](https://github.com/ga4gh-beacon/specification/issues/251)
* [Refget’s support for coordinate systems](https://github.com/samtools/hts-specs/pull/327#issuecomment-411458808)
* [UCSC information on “0-start, half-open”](http://genome.ucsc.edu/blog/the-ucsc-genome-browser-coordinate-counting-systems/)
* [Transforming between coordinates in “0-start, half open”](http://genomewiki.ucsc.edu/index.php/Coordinate_Transforms)
* [Cheat sheet](https://www.biostars.org/p/84686/) on the systems by Obi Griffith
* the [documentation](https://ga4gh-schemas.readthedocs.io/en/latest/schemas/variants.proto.html#protobuf.Variant) of the `Variant` object for the original [_GA4GH schema_](https://github.com/ga4gh/ga4gh-schemas)
