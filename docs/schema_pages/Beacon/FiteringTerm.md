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

* [FilteringTerm.json](/schema_files/json/Beacon/FilteringTerm.json) {S}[B] schema
* [original source](https://github.com/ga4gh-beacon/beacon-v2/tree/main/framework/src/requests) :fontawesome-brands-github:

<!--schema_block_start-->

``` yaml title="Schema (YAML version)"
--8<-- "./docs/schema_files/src/Beacon/FilteringTerm.yaml"
```
<!--schema_block_end-->


#### {S}[B] & Source Contributors

* Tim Beck [0000-0002-0292-7972](https://orcid.org/0000-0002-0292-7972) :ORCID-icon-green:
* Michael Baudis [0000-0002-9551-6370](https://orcid.org/0000-0002-9551-6370) :ORCID-icon-green:

