---
title: Phenopackets - OntologyClass
sb_status: core
logos:
  - logo-phenopackets-200x200.png
  - logo-DUO-white-background.png
  - logo-beacon.png
---

OntologyClass is an essential core core elementin GA4GH schemas.
It essentially defines the standard way to terms or classes
by their `id` - which _should_ be a CURIE - and optionally a `label`
for informative purposes.

<!--more-->

The dual term/label use had been defined by the GA4GH Metadata Task Team
in conjunction with Phenopackets developers.

#### Link(s)

* [OntologyClass.json](/schema_files/json/Phenopackets/OntologyClass.json) schema
* [source](https://github.com/phenopackets/phenopacket-schema) :fontawesome-brands-github:
* [Phenopackets documentation](https://phenopacket-schema.readthedocs.io)

#### {S}[B] Contributors

* Christopher Mungall ([0000-0002-6601-2165](https://orcid.org/0000-0002-6601-2165)) :ORCID-icon-green:
* Michael Baudis ([0000-0002-9903-4248](https://orcid.org/0000-0002-9903-4248)) :ORCID-icon-green:
* Melanie Courtot ([0000-0002-9551-6370](https://orcid.org/0000-0002-9551-6370)) :ORCID-icon-green:

#### Schema Overview[^1]

<!--schema_block_start-->
```yaml
title: OntologyClass
description: >-
  This element is used to represent classes (terms) from ontologies, and is used
  in many places throughout the Phenopacket standard. It is a simple, two element
  message that represents the identifier and the label of an ontology class.

  The ID SHALL be a CURIE-style identifier e.g. HP:0100024, MP:0001284,
  UBERON:0001690, i.e., the primary key for the ontology class. The label should
  be the corresponding class name. The Phenopacket standard REQUIRES that the id
  and the label match in the original ontology. We note that occasionally,
  ontology maintainers change the primary label of a term. (source: Phenopackets v2)
type: object
properties:
  id:
    type: string
    description: CURIE of the ontology class
    examples:
      - 'ncit:C8294'
  label:
    type: string
    description: the text label associated with the ontology class
    examples:
      - 'Pancreatic Adenocarcinoma'
required:
  - id
additionalProperties: false
examples:
  - id: 'DUO:0000004'
    label: 'no restriction'
  - id: 'HP:0003621'
    label: 'Juvenile onset'

```
<!--schema_block_end-->

[^1]: Please note that the schema here is provided for illustration purposes,
may represent an approximation and possibly exclude technical components of a
proper JSON Schema format.