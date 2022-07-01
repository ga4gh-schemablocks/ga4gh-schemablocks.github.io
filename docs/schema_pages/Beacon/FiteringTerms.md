---
title: Beacon - FilteringTerm
sb_status: community
logos:
  - logo-beacon.png
---

The `FilteringTerm` is a core concept of the Beacon information exchange concepts.
Since Beacon v2 `FilteringTerm` objects can be a part of Beacon requests and allow
the limitation of Beacon responses through the application of biological or
technical parameters. Additionally, the `/filtering_terms` endpoint allows Beacon
resources to expose parameters of their data entities.

<!--more-->

Please note that the representation here may slightly diverge from the implementation
in the Beacon schema repository (e.g. currently `FilteringTerm` is represented
inside the `filteringTerms` array).

#### Link(s)

* [FilteringTerm.json](/schema_files/json/Beacon/FilteringTerm.json) schema
* [original source](https://github.com/ga4gh-beacon/beacon-v2/tree/main/framework/src/requests) :fontawesome-brands-github:

#### {S}[B] & Source Contributors

* Tim Beck [0000-0002-0292-7972](https://orcid.org/0000-0002-0292-7972) :ORCID-icon-green:
* Michael Baudis [0000-0002-9551-6370](https://orcid.org/0000-0002-9551-6370) :ORCID-icon-green:

#### Schema Overview[^1]

<!--schema_block_start-->
```yaml
title: FilteringTerm
description: >-
  Filtering terms are the main means to select subsets of records from a Beacon
  response. While the name implies the application to a generated response, in
  practice implementations may apply them at the query stage.
  Note: In the processing of Beacon v2.0 requests multiple filters are assumed
  to be chained by the logical AND operator.
type: object
anyOf:
  - $ref: '#/definitions/OntologyFilter'
  - $ref: '#/definitions/AlphanumericFilter'
  - $ref: '#/definitions/CustomFilter'  
definitions:
  OntologyFilter:
    type: object
    description: Filter results to include records that contain a specific ontology
      term.
    required:
      - id
    properties:
      id:
        type: string
        description: Term ID to be queried, using CURIE syntax where possible.
        example: HP:0002664
      includeDescendantTerms:
        type: boolean
        default: true
        description: Define if the Beacon should implement the ontology hierarchy,
          thus query the descendant terms of `id`.
      similarity:
        type: string
        enum:
          - exact
          - high
          - medium
          - low
        default: exact
        description: Allow the Beacon to return results which do not match the filter
          exactly, but do match to a certain degree of similarity. The Beacon defines
          the semantic similarity model implemented and how to apply the thresholds
          of 'high', 'medium' and 'low' similarity.
      scope:
        type: string
        description: The entry type to which the filter applies
        example: biosamples
  AlphanumericFilter:
    description: Filter results based on operators and values applied to alphanumeric
      fields.
    type: object
    required:
      - id
      - operator
      - value
    properties:
      id:
        type: string
        description: Field identfier to be queried.
        example: age
      operator:
        type: string
        enum:
          - '='
          - <
          - '>'
          - '!'
          - '>='
          - <=
        description: Defines how the value relates to the field `id`.
        default: '='
        example: '>'
      value:
        type: string
        description: >-
          Alphanumeric search term to be used within the query which can
          contain wildcard characters (%) to denote any number of unknown
          characters. Values can be assocatied with units if applicable.
        example: P70Y
      scope:
        type: string
        description: The entry type to which the filter applies
        example: biosamples
  CustomFilter:
    type: object
    description: >-
      Filter results to include records that contain a custom term defined by
      this Beacon.
    required:
      - id
    properties:
      id:
        type: string
        description: >-
          Custom filter terms should contain a unique identifier.
        example: demographic.ethnicity:asian
      scope:
        type: string
        description: The entry type to which the filter applies
        example: biosamples
```
<!--schema_block_end-->

[^1]: Please note that the schema here is provided for illustration purposes,
may represent an approximation and possibly exclude technical components of a
proper JSON Schema format.