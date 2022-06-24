---
title: Phenopackets - Age
sb_status: community
logos:
  - logo-phenopackets-200x200.png
  - logo-beacon.png
---

The age of a subject (e.g. of a patient at the time of diagnosis) can be described using the
ISO8601 ["duration"](/standards-recommendations/#durations) concept.

<!--more-->

Other formats can be used to anotate "age groups" or ranges, e.g. through the use
of start and end age values or through the use of an ontology class.

#### Link(s)

* [Age.json](/schema_files/json/Phenopackets/Age.json) schema
* [source](https://github.com/Phenopackets/phenopacket-schema) :fontawesome-brands-github:
* [Phenopackets documentation](https://phenopacket-schema.readthedocs.io)

#### {S}[B] Contributors

* Michael Baudis ([0000-0002-9551-6370](https://orcid.org/0000-0002-9903-4248)) :ORCID-icon-green:

<!--schema_block_start-->
```yaml
hema: https://json-schema.org/draft/2020-12/schema
title: Age
description: 'Age value definition'
type: object
properties:
  iso8601duration:
    description: Represents age as a ISO8601 duration (e.g., P40Y10M05D).
    type: string
    examples:
      - P32Y6M1D
      - P12DT6H24M
```
<!--schema_block_end-->
