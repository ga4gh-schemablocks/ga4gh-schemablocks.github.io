---
title: "Genome Coordinates"
layout: default
date: 2019-02-20
author:
  - "@andrewyatz"
permalink: /standards/genome-coordinates.html
description: >
  Use "0-start, half-open" intervals when representing coordinates in all systems bar when data is displayed to a human.
excerpt_separator: <!--more-->
category:
  - standards
tags:
  - coordinates
  - recommendation
---

## {{ page.title }}

### GA4GH Recommendation

* We recommends the use of __"0-start, half-open"__ (interbase) coordinate system in all systems
* This is not a retrospective recommendation for existing standards and products
* __"1-start, fully-closed"__ should be used when displaying coordinates through a GUI or report

<!--more-->

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

### Definition

Two integers that define the start and end positions of a range of residues, possibly with length zero, and specified using "0-start, half-open" coordinates.

The following also applies to coordinates:

* Coordinates start at 0 and finish at the length of the sequence
* Start must be greater than 0
* End must be greater than the start
* The length of an interval is (end - start)
* The reverse start is (sequence length - end)
* The reverse end is (sequence length - (start-1))
* A zero-length interval (start == end) is a point between two residues
* An interval of length 1 is a residue position
* Two intervals are equal if their start and end are equal
* Two intervals intersect if start or end occurs between the start and end of the other
* Two intervals coincide if they intersect or if they are equal

#### Model

* start (int): start position >= 0 (required)
* end (int): end position >= start (required)

#### Circular coordinates

Circular regions are not considered to be part of GA4GH and not covered here, since human genome data is handled as linear sequence. APIs may choose to support a circular location but must still support "0-start, half-open" coordinates.

#### Alternative names

The "0-start, half-open" scheme is also know by the following names:

* "0-based, half-open"
* Interbase
* UCSC style
* Chado style

All of these names refer to identical representations of coordinates. Interbase has a different interpretation of the representation useful when considering insertion events. Care should be taken when using these alterative names as they combine representation and interpretation.

### How "0-start, half-open" works

```
         G A G T G C
 G G T G G A G T G C G C C G C C A T G G
                    1 1 1 1 1 1 1 1 1 1 2
0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0
```

"0-start, half-open" breaks down into two integer positions. The first, "0-start", refers to the start coordinate and uses an indexing scheme starting at 0 to refer to bases within a sequence, similar to array indexes in most C based programming languages. The second, "half-open", refers to the end coordinate and is one higher than the start (effectively using an indexing system starting at 1).

This scheme makes sub-sequences very easy to define. In the above example we have highlighted the subsequence `GAGTGC`, which starts at position 4 and ends at position 10. Calculating the length of this subsequence is easily done by subtracting start from end e.g. (10-4) = 6. Other transformations are less prone to programming errors than the alternative system "1-start, fully-closed".

This same coordinate system can be used to flag insertions and deletions as a start and an end which equal each other refers to a space between two residues e.g. 4,4 would flag an event occurring between `GGTG` and `GAGTGC`.

### What is "1-start, fully-closed"?

```
    GAGTGC
GGTGGAGTGCGCCGCCATGG
         11111111112
12345678901234567890
```

"1-start, fully-closed" is the human readable coordinate system used in all genomic data displays and reports. It indexes sequences starting at 1. This system should be used when displaying genomic data to a human because it is the correct way to refer to positions. The subsequence `GAGTGC` in "1-start, fully-closed" starts at position 5 and ends at position 10. Length is calculated by subtracting start from end plus one e.g. ((10+1)-5) = 6.

### GA4GH Products and their coordinate systems

Not all GA4GH related products, specifications and APIs use the same system for their coordinates. Refer to the table below for full details.

| Product | "0-start, half-open" | "1-start, fully-closed" | Interbase |
| --- | :---: | :---: | :---: |
| BAM/CRAM | X |  |  |
| SAM |  | X |  |
| VCF |  | X |  |
| BCF | X |  |  |
| htsget | X |  |  |
| refget | X |  |  |
| Beacon | X |  |  |
| VMC |  |  | X |

### Further Reading

* the [documentation](https://ga4gh-schemas.readthedocs.io/en/latest/schemas/variants.proto.html#protobuf.Variant) of the `Variant` object for the original [_GA4GH schema_](https://github.com/ga4gh/ga4gh-schemas)
and the discussions that led to it:
[#49](https://github.com/ga4gh/ga4gh-schemas/pull/49#issuecomment-44503976)
and [#121](https://github.com/ga4gh/ga4gh-schemas/issues/121).
* a [nice explanation of coordinate systems](https://www.biostars.org/p/84686/) at _Biostars.org_ by Obi Griffith
* [Chado Interbase documentation](http://gmod.org/wiki/Introduction_to_Chado#Interbase_Coordinates)
* [Interbase primer](http://bergmanlab.genetics.uga.edu/?p=36)
* [Beacon’s support for coordinate systems](https://github.com/ga4gh-beacon/specification/issues/251)
* [Refget’s support for coordinate systems](https://github.com/samtools/hts-specs/pull/327#issuecomment-411458808)
* [UCSC information on “0-start, half-open”](http://genome.ucsc.edu/blog/the-ucsc-genome-browser-coordinate-counting-systems/)
* [Transforming between coordinates in “0-start, half open”](http://genomewiki.ucsc.edu/index.php/Coordinate_Transforms)
