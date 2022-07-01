---
title: Phenopackets - KaryotypicSex
sb_status: community
logos:
  - logo-phenopackets-200x200.png
  - logo-beacon.png
---

The karyotypic sex is a widely used concept in medical genetics, referring to
the composition of the sex chromosomes in the germline of an individual, irrespective
of their phenotypic sex or gender.

<!--more-->

#### Link(s)

* [KaryotypicSex.json](/schema_files/json/Phenopackets/KaryotypicSex.json) schema
* [source](https://github.com/phenopackets/phenopacket-schema) :fontawesome-brands-github:
* [Phenopackets documentation](https://phenopacket-schema.readthedocs.io)

#### {S}[B] Contributors

* Peter Robinson [0000-0002-0736-91998](https://orcid.org/0000-0002-0736-91998) :ORCID-icon-green:
* Jules Jacobsen [0000-0002-3265-15918](https://orcid.org/0000-0002-3265-15918) :ORCID-icon-green:
* Michael Baudis [0000-0002-9903-4248](https://orcid.org/0000-0002-9903-4248) :ORCID-icon-green:

#### Schema Overview[^1]

<!--schema_block_start-->
```yaml
title: KaryotypicSex
description: >-
  The chromosomal sex of an individual represented from a selection
  of options.
$comments: Compares to https://github.com/phenopackets/phenopacket-schema/blob/master/docs/karyotypicsex.rst
type: string
enum:
  - UNKNOWN_KARYOTYPE
  - XX
  - XY
  - XO
  - XXY
  - XXX
  - XXYY
  - XXXY
  - XXXX
  - XYY
  - OTHER_KARYOTYPE
default: UNKNOWN_KARYOTYPE
```
<!--schema_block_end-->

The values correspond to the ordinal values in the Phenopackets schema where:

* 0 - UNKNOWN_KARYOTYPE (Untyped or inconclusive karyotyping)
* 1 - XX (Female)
* 2 - XY (Male)
* 3 - XO (Single X chromosome only)
* 4 - XXY (Two X and one Y chromosome)
* 5 - XXX (Three X chromosomes)
* 6 - XXYY (Two X chromosomes and two Y chromosomes)
* 7 - XXXY (Three X chromosomes and one Y chromosome)
* 8 - XXXX (Four X chromosomes)
* 9 - XYY (One X and two Y chromosomes)
* 10 - OTHER_KARYOTYPE (None of the above types)



[^1]: Please note that the schema here is provided for illustration purposes,
may represent an approximation and possibly exclude technical components of a
proper JSON Schema format.

