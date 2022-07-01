---
title: DUO - DataUseModifier
sb_status: core
logos:
  - logo-DUO-white-background.png
---

The Data Use Modifier is a component of the GA4GH DUO standard and used
as optional refinement of the limitations defined in [DataUseLimitation](/schema_pages/DUO/DataUseLimitation/).

<!--more-->

#### Link(s)

* [DataUseModifier.json](/schema_files/json/DUO/DataUseModifier.json) schema
* [source](https://github.com/ga4gh-schemablocks/sb-duo) :fontawesome-brands-github:
* [DUO Ontology](https://github.com/EBISPOT/DUO) :fontawesome-brands-github:
* _data use modifier_ in [OLS](http://purl.obolibrary.org/obo/DUO_0000017)
* _data use permission_ in [OLS](http://purl.obolibrary.org/obo/DUO_0000001)

#### {S}[B] Contributors

* Melanie Courtot ([ORCID:0000-0002-9551-6370](https://orcid.org/0000-0002-9551-6370)) :ORCID-icon-green:
* Isuru Liyanage ([ORCID:0000-0002-4839-5158](https://orcid.org/0000-0002-4839-5158)) :ORCID-icon-green:

#### Schema Overview[^1]

<!--schema_block_start-->
```yaml
title: DataUseModifier
description: >-
  The (GA4GH) Data Use Ontology (DUO) includes terms describing data use conditions,
  particularly for research data in the health/clinical/biomedical domain.
  Modifier specifies the criteria for data use condition.
type: object
properties:
  text:
    type: string
    description: >-
      text description of the modifier eg. date rage, geographic location, user/institute (RI)
  ontology:
    $ref: https://beta.schemablocks.org/schemas/json/phenopackets/OntologyClass.json
    description: ontology describing the modifier/restriction
oneof:
  - required:
      - text
  - required:
      - ontology
additionalProperties: false
examples:
  - ontology:
      id: MONDO:0004992
      label: cancer
  - text: UK
```
<!--schema_block_end-->

[^1]: Please note that the schema here is provided for illustration purposes,
may represent an approximation and possibly exclude technical components of a
proper JSON Schema format.