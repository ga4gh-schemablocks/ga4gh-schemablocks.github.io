# General Standards and Recommendations

This documentation collects some standards and recommendations with "broad overall agreement[^1]"
among GA4GH contributors. This is by no means exhaustive;additions and corrections are welcome!

<!--more-->

## Genome Coordinates

!!! info "GA4GH Recommendation"

    * We recommends the use of __"0-start, half-open"__ (interbase) coordinate system in all systems
    * This is not a retrospective recommendation for existing standards and products
    * __"1-start, fully-closed"__ should be used when displaying coordinates through a GUI or report

##### Last content edit: 2019-02-20

#### Contributors

* Andrew Yates ([@andrewyatz](https://github.com/@andrewyatz/) :fontawesome-brands-github:)
* GA4GH GKS workstream discussions & beyond

#### Definition

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

#### How "0-start, half-open" works

```
         G A G T G C
 G G T G G A G T G C G C C G C C A T G G
                    1 1 1 1 1 1 1 1 1 1 2
0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0
```

"0-start, half-open" breaks down into two integer positions. The first, "0-start", refers to the start coordinate and uses an indexing scheme starting at 0 to refer to bases within a sequence, similar to array indexes in most C based programming languages. The second, "half-open", refers to the end coordinate and is one higher than the start (effectively using an indexing system starting at 1).

This scheme makes sub-sequences very easy to define. In the above example we have highlighted the subsequence `GAGTGC`, which starts at position 4 and ends at position 10. Calculating the length of this subsequence is easily done by subtracting start from end e.g. (10-4) = 6. Other transformations are less prone to programming errors than the alternative system "1-start, fully-closed".

This same coordinate system can be used to flag insertions and deletions as a start and an end which equal each other refers to a space between two residues e.g. 4,4 would flag an event occurring between `GGTG` and `GAGTGC`.

#### What is "1-start, fully-closed"?

```
    GAGTGC
GGTGGAGTGCGCCGCCATGG
         11111111112
12345678901234567890
```

"1-start, fully-closed" is the human readable coordinate system used in all genomic data displays and reports. It indexes sequences starting at 1. This system should be used when displaying genomic data to a human because it is the correct way to refer to positions. The subsequence `GAGTGC` in "1-start, fully-closed" starts at position 5 and ends at position 10. Length is calculated by subtracting start from end plus one e.g. ((10+1)-5) = 6.

#### GA4GH Products and their coordinate systems

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

#### Further Reading

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


---

## Identifiers and CURIEs

!!! info "GA4GH Recommendation"

    GA4GH recommends to use CURIEs as (external) identifiers. 
    
#### Contributors

* Chris Mungall ([@cmungall](https://github.com/cmungall/)) :fontawesome-brands-github:
* Julie McMurry ([@jmcmurry](https://github.com/jmcmurry/)) :fontawesome-brands-github:
* Melissa Haendel ([@mellybelly](https://github.com/mellybelly/)) :fontawesome-brands-github:
* Michael Baudis ([@mbaudis](https://github.com/mbaudis/)) :fontawesome-brands-github:
* Reece Hart ([@reece](https://github.com/reece/)) :fontawesome-brands-github:
* cross GA4GH alignment discussions

Please see also [a previous discussion](https://github.com/ga4gh-metadata/SchemaBlocks/issues/10) on Github, and the links from there.

#### CURIEs

CURIEs ("[Compact URIs](https://www.w3.org/TR/curie/)") are namespace-scoped identifiers which can be expanded to Internationalized Resource Identifiers ([IRI](https://www.w3.org/International/articles/idn-and-iri/)). A CURIE is comprised of two components, a prefix and a reference, separated by a colon symbol `:`. CURIES are case sensitive, although for prefixes this practice is inconsistently being followed.

The GA4GH recommendations are:

* use only a single prefix
* for newly generated identifiers, and specifically applying to the new `ga4gh` namespace, one should avoid the use of the underscore `_` character in the private part of an identifier
    - reason is the sometimes replacement of the colon `:` separator by `_`, in computing environments where `:` may be problematic
    - exceptions are underscore characters in _computed_ identifiers
* a reasonable separation character for structural elements of the private identifier part ("internal prefix") is the dot `.` character

#### `ga4gh` Prefix

In a "GA4GH Namespace Discussion" telecon on 2019-08-22, initiated by GKS and with the participation of different work stream and project leads, it was agreed that newly generated identifiers created and maintained in the "GA4GH ecosystem" should use a general `ga4gh` prefix, and __not__ create scoped prefixes. Details and implementation of this general concept are currently being evaluated.

#### GA4GH CURIE Use

In GA4GH schemas, CURIEs constitute the recommended syntax for the referencing ontology classes or external references. Here, usually a CURIE as `id` is combined with a `label` for the text representation of the , such in the [`OntologyClass`](/schema_pages/phenopackets/OntologyClass/) object prototype:


```json
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

The underscore in the Cellosaurus id `cellosaurus:CVCL_0312` should usually not be problematic if it is properly prefixed; however, _de novo_ identifier designs may avoid such a syntax.

#### Further Information

* [W3C CURIE syntax](https://www.w3.org/TR/curie/) page
* [W3C IRI](https://www.w3.org/International/articles/idn-and-iri/) documentation
* [IETF IRI](https://www.ietf.org/rfc/rfc3987.txt) specification (e.g. allowed characters)
* SchemaBlocks [OntologyClass](http://schemablocks.org/schemas/ga4gh/OntologyClass.html) class documentation
* SchemaBlocks [Curie](http://schemablocks.org/schemas/ga4gh/Curie.html) class documentation
* N2T resolver [documentation](https://n2t.net/e/n2t_apidoc.html)

---

## Dates & Times

!!! info "GA4GH Recommendation"

    Date and time formats are specified as [ISO8601](https://www.w3.org/TR/NOTE-datetime)
    strings, both for time points as well as for intervals and durations. An
    optionally required granularity may be specified as part of the respective attributes'
    documentations or parameter definition (e.g. a time class).

### Units of time

<a href="https://xkcd.com/1179/" target="_blank"><img src="https://imgs.xkcd.com/comics/iso_8601.png"  align="right" style="margin 20px 0px 30px 20px; width: 200px; clear:none;" /></a>

* *Y* = year
* *M* = month
* *D* = day
* *H* = hour
* *M* = minute
* *S* = second
* *.S* = decimal fraction of a second

### Time points

The specification of a time point is given through the concatenation of

* a date in YYYY-MM-DD
* the designator "T" indicating a following time description
* the time of day in HH:MM:SS.SSS form, where "SSS" represents a decimal
  fraction of a second
* a time zone offset in relation to UTC

**Examples**

* year (YYYY)
    - *2015*
    - Time points with *year* granularity are both common for obfuscated personal data as well as technical metadata (e.g. year of publication of an analysis).

* date (e.g. date of birth) in YYYY-MM-DD
    - *2015-02-10*
    - This represents the standard way of representing a specific day, e.g. a date of birth.

* time stamp in milliseconds in YYYY-MM-DDTHH:MM:SS.SSS
    - *2015-02-10T00:03:42.123Z*
    - Timepoints with millisecond granularity are typical use cases for timing computer generated entries, e.g. the time of a record's update ("updateTime").

**Implementations**

* updated (ubiquitous object time stamp)
* created (ubiquitous object time stamp)


### Durations

Durations are the most common form of time intervals. They do not refer to
(e.g. start or end) time points.
They are indicated with a leading "P", followed by unit delimited
quantifiers. A leading "T" is required before the start of the time components.
Durations do not have to be normalized; "PT50H" is equally valid as "P2T2H".
A frequent use of durations in biomedical data resources are *age* values,
e.g. "age at diagnosis"; but also "progression free survival", "followup" or "time to recurrence" (these are descriptive labels, which do not necessarily represent GA4GH schema use).

**Examples**

* age in years in PnY
    - *P44Y*
    - This would be the standard annotation for the commonly used age in years, without relation to a date of birth.

* age in years and months in PnYnM
    - *P43Y08M*
    - This represents an age with added months specification.

* short time interval (e.g. 30min in experimental time series) in PTnM
    - *PT30M*
    - A common use for durations is the recording of time points in time series,
      e.g. experimental interventions and observations (collections of cells from
      an in vitro treatment experiment; recurring drug doses in a chemotherapy
      treatment).

### Time intervals

Time intervals consist of a combination of two time designators. These can be
either two time points for start and end, or one time point and a leading
(time point indicates end) or trailing (time point indicates start) duration.
The time elements are separated by a forward slash "/".

While such anchored time intervals represent an option to capture different time features in a single value and to avoid disconnected references, in the context of the data schema, *anchored intervals* will presumably be used less frequently, with a qualitative anchor ("date of diagnosis", "time of sampling") representing the point of reference.

**Examples**

* age with date of birth in YYYY-MM-DD/PnYnMnD
    - 1967-11-21/P40Y10M05D
    - This value captures both the date of birth (here November 21, 1967)and the age (here 40ys, 10 months and 5 days) at a given time point, e.g. at the date of a medical diagnosis.

* anchored 3 month interval, e.g. a therapy cycle in YYYY-MM-DD/YYYY-MM-DD
    - 2015-04-18/2015-07-17
    - This example demonstrates use of an calendar anchored interval, with given start and end date. A typical example would be the use in medical records, e.g. for a treatment cycle; however, use for data exchange and mining purposes would be less common and usually served with a "duration" (see above).

* experimental intervention of 30min in YYYY-MM-DDTHH:MM/PTnM
    - 2014-12-31T23H45M/PT30M
    - Here is an example for a short term intervention of a 30 minutes duration, e.g. the celebratory exposure to a diluted sample of EtOH with various organic trace compounds, to celebrate the arrival of the new year.


[^1]: YMMW
