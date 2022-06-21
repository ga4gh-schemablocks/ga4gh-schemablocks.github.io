---
title: DUO - DataUseLimitation
sb_status: core
logo: DUO_logo_white_background.png
---

The Data Use Limitation is a component of the GA4GH DUO standard and used
to describe limitations in the ways data items can be re-used.

<!--more-->

#### Link(s)

* [DataUseModifier.json](/schema_files/json/DUO/DataUseLimitation.json) schema
* [source](https://github.com/ga4gh-schemablocks/sb-duo) :fontawesome-brands-github:
* [DUO Ontology](https://github.com/EBISPOT/DUO) :fontawesome-brands-github:
* _data use modifier_ in [OLS](http://purl.obolibrary.org/obo/DUO_0000017)
* _data use permission_ in [OLS](http://purl.obolibrary.org/obo/DUO_0000001)

#### {S}[B] Contributors

* Melanie Courtot ([0000-0002-9551-6370](https://orcid.org/0000-0002-9551-6370)) :ORCID-icon-green:
* Isuru Liyanage ([0000-0002-4839-5158](https://orcid.org/0000-0002-4839-5158)) :ORCID-icon-green:

<!--schema_block_start-->
```yaml
$schema: http://json-schema.org/draft-07/schema#
$id: https://beta.schemablocks.org/schemas/json/DUO/DataUseLimitation.json
title: DataUseLimitation
meta:
description: >-
  The (GA4GH) Data Use Ontology (DUO) includes terms describing data use
  conditions, particularly for research data in the health/clinical/biomedical
  domain.
type: object
properties:
  term:
    $ref: https://beta.schemablocks.org/schemas/json/phenopackets/OntologyClass.json
    description: DUO - ontology term subclass of either DUO_0000001 or DUO_0000017
  modifier:
    $ref: ./DataUseModifier
    description: modifier/restriction applicable for the DUO
  description:
    type: string
    description: |
      free text description mainly to encapsulate those conditions that wouldn't be described by DUO terms or modifiers
required:
  - term
additionalProperties: false
examples:
  - term:
      id: "DUO:0000007"
      label: "disease specific research"
    modifier:
      ontology:
        id: "MONDO:0004992"
        label: "cancer"
  - term:
      id: "DUO:0000022"
      label: "geographical restriction"
    modifier:
      text: "UK"
```
<!--schema_block_end-->
