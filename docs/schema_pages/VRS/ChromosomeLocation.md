---
title: VRS - ChromosomeLocation
sb_status: core
logos:
  - logo-ga4gh-circle-420x420.png
---

A `ChromosomeLocation` is a schema used to represent a single or a range of
cytogenetic bands. 

<!--more-->

Please note that several parameters - e.g. `species_id` - are required as part
of the VRS specification but may be deemed unnecessary when used in other
contexts.

#### Link(s)

* [ChromosomeLocation.json](/schema_files/json/VRS/ChromosomeLocation.json) {S}[B] schema
* [source](https://github.com/ga4gh/vrs/tree/main) :fontawesome-brands-github:
* [ChromosomeLocation in VRS](https://vrs.ga4gh.org/en/stable/terms_and_model.html#chromosomelocation)

#### {S}[B] Contributors

* Reece Hart [0000-0003-3463-0775](https://orcid.org/0000-0003-3463-0775) :ORCID-icon-green:
* Alex Wagner [0000-0002-2502-8961](https://orcid.org/0000-0002-2502-8961) :ORCID-icon-green:
* Lawrence Babb [0000-0002-2455-2227](https://orcid.org/0000-0002-2455-2227) :ORCID-icon-green:
* Michael Baudis [0000-0002-9551-6370](https://orcid.org/0000-0002-9551-6370) :ORCID-icon-green:

#### Schema Overview[^1]

<!--schema_block_start-->
```yaml
title: ChromosomeLocation
description: >-
  A Location on a chromosome defined by the chromosome name and cytobands.
  **Implementation Note**: The `type` and `species_id` properties are required
  when used as part of the VRS specification.
type: object
properties:
  _id:
    $ref: './CURIE.yaml'
    description: >-
      Location Id. MUST be unique within document.
  type:
    type: string
    const: ChromosomeLocation
  species_id:
    $ref: '#/definitions/CURIE'
    default: taxonomy:9606
    description: 'CURIE representing a species from the [NCBI species taxonomy](https://registry.identifiers.org/registry/taxonomy).
      Default: "taxonomy:9606" (human)'
  chr:
    type: string
    description: The symbolic chromosome name. For humans, For humans, chromosome
      names MUST be one of 1..22, X, Y (case-sensitive)
  interval:
    $ref: '#/definitions/CytobandInterval'
    description: The chromosome region defined by a CytobandInterval
examples:
  - chr: 8
    interval:
      start: q22
      end: q24.1
required:
  - chr
  - interval
additionalProperties: false

definitions:
  CytobandInterval:
    description: >-
      A contiguous span on a chromosome defined by cytoband features. The
      span includes the constituent regions described by the start and end cytobands,
      as well as any intervening regions.
      **Implementation Note**: The `type` property is required when used as part
      of the VRS specification
    type: object
    properties:
      type:
        type: string
        const: CytobandInterval
      start:
        $ref: '#/definitions/HumanCytoband'
        description: >-
          The start cytoband region. MUST specify a region nearer the terminal
          end (telomere) of the chromosome p-arm than `end`.
      end:
        $ref: '#/definitions/HumanCytoband'
        description: >-
          The end cytoband region. MUST specify a region nearer the terminal
          end (telomere) of the chromosome q-arm than `start`.
    examples:
      - type: CytobandInterval
        start: q22.2
        end: q22.3
    required:
      - start
      - end
    additionalProperties: false
  HumanCytoband:
    description: >-
      A character string representing cytobands derived from the *International
      System for Human Cytogenomic Nomenclature* (ISCN)
      [guidelines](http://doi.org/10.1159/isbn.978-3-318-06861-0).
    type: string
    pattern: ^cen|[pq](ter|([1-9][0-9]*(\.[1-9][0-9]*)?))$
    example: q22.3
    additionalProperties: false
```
<!--schema_block_end-->

[^1]: Please note that the schema here is provided for illustration purposes,
may represent an approximation and possibly excludes technical components of a
proper JSON Schema format.
