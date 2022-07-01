---
title: VRS - CURIE
sb_status: core
logos:
  - logo-ga4gh-circle-420x420.png
---

A CURIES is a [W3C Compact URI](https://www.w3.org/TR/curie/) formatted string.
It has the structure `prefix`:`reference`, as defined by the W3C syntax.

<!--more-->

CURIEs are the [recommended format](/standards-recommendations/#identifiers-and-curies) for referencing identifiers and external
resources.

#### Link(s)

* [CURIE.json](/schema_files/json/VRS/CURIE.json) schema
* [source](https://github.com/ga4gh/vrs/tree/main) :fontawesome-brands-github:
* [CURIE in VRS](https://vrs.ga4gh.org/en/stable/terms_and_model.html#curie)

#### {S}[B] Contributors

* Reece Hart [0000-0003-3463-0775](https://orcid.org/0000-0003-3463-0775) :ORCID-icon-green:

#### Schema Overview[^1]

<!--schema_block_start-->
```yaml
title: CURIE
properties:
  type: string
  pattern: ^\w[^:]*:.+$
  examples:
    - ensembl:ENSG00000139618
    - NCIT:C9280
additionalProperties: false
```
<!--schema_block_end-->

[^1]: Please note that the schema here is provided for illustration purposes,
may represent an approximation and possibly exclude technical components of a
proper JSON Schema format.
