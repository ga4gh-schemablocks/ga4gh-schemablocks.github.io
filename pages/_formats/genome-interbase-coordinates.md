---
title: "Interbase Genome Coordinates"
layout: default
date: 2019-01-08
author: 
  - "@jmarshall"
  - "@andrewyatz"
  - "@mbaudis"
permalink: /categories/formats/genome-interbase-coordinates.html
description: >
  Recommendations to use 0-based positions and 0-based half-open intervals
  when representing genome coordinates and regions in APIs.
excerpt_separator: <!--more-->
category:
  - formats
tags:
  - coordinates
---

## {{ page.title }}

### Recommendation (_DRAFT_)

Represent intervals in APIs using **0-based half-open** coordinates, also referred to as **interbase** representation.
Similarly, represent positions in APIs using 0‑based coordinates.

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


### Summary

Consider a subsequence `GAGTGC` of a larger sequence of bases (which might be a reference chromosome, for example):

<img src="{{ 'assets' | relative_url }}/img/genome-coordinates-img/1-based.svg" alt="Sequence data with 1-based coordinates" />

When a human is working with this subsequence, or it is being discussed amongst humans, we might refer to it as spanning coordinates 5--10 on the larger sequence.
Formally, this is 1-based inclusive/closed-at-both-ends reckoning, and it's natural and convenient for humans as it's what we're used to.

However this is not the best coordinate representation for doing arithmetic with.
Interval arithmetic and the representation of edge cases are more straightforward and unambiguous using a 0-based half-open representation:

<img src="{{ 'assets' | relative_url }}/img/genome-coordinates-img/0-based.svg" alt="Sequence data with 0-based coordinates" />

In this representation we would write the subsequence as spanning the interval \[4,10) --- i.e., starting at (zero-based) position 4, and continuing up to but not including position 10.

An alternative and equivalent way to look at this is to think of the bases as lying _between_ the coordinate positions:

<img src="{{ 'assets' | relative_url }}/img/genome-coordinates-img/interbase.svg" alt="Sequence data with interbase coordinates" />

In these **interbase** coordinates, we would say the subsequence lies between positions 4 and 10.

Similarly, we would describe the `T` within this subsequence as spanning the interval \[7,8) or lying between positions 7 and 8.
When using a single coordinate to refer to positions rather than intervals, using a 0-based coordinate is consistent with this recommended interval representation; thus this `T` is at position 7.

### Details

The length of this `GAGTGC` subsequence can be calculated from the recommended representation as 10 -- 4 = 6.
Starting from the human-readable representation the calculation is slightly more complicated: 10 -- 5 + 1 = 6.
Avoiding the need to add or subtract 1 throughout calculations reduces an entire category of programming error and is the most obvious advantage of the recommended representation.

Further advantages include in particular the unambiguous representation of indels (due to the interbase / half-open coordinates) and simpler conversions between relative coordinate systems (due to the zero-based coordinates).

#### Insertions and deletions

The interbase interpretation is a particularly effective way of thinking about insertions and other events that occur between bases.
Consider again this twenty base reference sequence:

<img src="{{ 'assets' | relative_url }}/img/genome-coordinates-img/indels.svg" alt="Insertions and deletions" />

These insertions are unambiguously at between-bases positions 0, 16, and 20.
By interpreting the position as between the bases, 16 clearly indicates that the `TTT` is inserted between `C` and `A`, and the `AAA` and `GGG` are clearly inserted at the start or end of the sequence.

Similarly deletion of the `GAGTGC` sequence would be recorded as a deletion between 4 and 10, and the `C` to `T` substitution shown would be recorded as a substitution between 12 and 13.

By describing the insertion positions as 0-length intervals --- \[16,16) being the empty interval between the `C` and `A` bases, etc --- this becomes a representation that clearly describes the locations of insertions, deletions, and base changes with the coordinates being interpreted in the same way in all cases:

* replace \[0,0) with `AAA`
* replace \[4,10) with nothing
* replace \[12,13) with `T`
* replace \[16,16) with `TTT`
* replace \[20,20) with `GGG`

and that can also describe complex indels in the same way, e.g., the same `GAGTGC` deletion combined with an insertion in the same place:

* replace \[4,10) with `TCGT`.

Using fully-inclusive human-readable notation leads to inferior representations of these events, as "insert `TTT` at 17" is unclear whether the insertion is between `C-A` or `A-T`, while mentioning both flanking bases as per "insert `TTT` at 16/17" must be interpreted differently from the corresponding deletion notation.

#### Converting between coordinate systems

Consider some feature lying on an exon, whose location is represented as \[fs,fe) relative to the start of the exon.
In turn, the exon is located at coordinates \[es,ee) on a reference chromosome:

<img src="{{ 'assets' | relative_url }}/img/genome-coordinates-img/nested.svg" alt="Feature nested on an exon" />

With 0-based coordinates, calculating the feature's location on the chromosome is simple: \[fs+es,fe+es).

Similarly to finding the length of a subsequence in an inclusive notation, in 1‑based coordinates this calculation would require carefully subtracting 1 as appropriate.
When strandedness comes into play and the feature's exon-coordinates are perhaps reversed, tracking the appropriate places to add and subtract 1 becomes harder.
Thus 1-based coordinates are more susceptible to _off-by-one_ programming errors.

### Conclusion

User interfaces will likely continue to use familiar "human-readable" 1-based positions and inclusive interval notation (perhaps with special notation for indels where applicable).
This is entirely appropriate.

However for internal purposes, where consistent unambiguous notation and ease of arithmetic are paramount, 0-based half-open / interbase notation is the better choice.
GA4GH APIs facilitate the external communication of internal data representations; thus the same advantages are paramount, and they, in general, use the interval and position representations described here.

### Further Reading

* the [documentation](https://ga4gh-schemas.readthedocs.io/en/latest/schemas/variants.proto.html#protobuf.Variant) of the `Variant` object for the original [_GA4GH schema_](https://github.com/ga4gh/ga4gh-schemas)
and the discussions that led to it:
[#49](https://github.com/ga4gh/ga4gh-schemas/pull/49#issuecomment-44503976)
and [#121](https://github.com/ga4gh/ga4gh-schemas/issues/121).
* a [nice explanation of coordinate systems](https://www.biostars.org/p/84686/) at _Biostars.org_ by Obi Griffith
