---
title: GA4GH - Checksum
sb_status: core
logo: logo-ga4gh-circle-420x420.png
---

The `Checksum` standard provides a simple schema for defining a checksum value
together with a default type.

<!--more-->

#### Link(s)

* [Checksum.json](/schema_files/json/GA4GH/Checksum.json) schema
* [Table of Hash Algorithms](https://github.com/ga4gh-discovery/ga4gh-checksum/tree/master)
* [source](https://github.com/ga4gh-schemablocks/sb-checksum) :fontawesome-brands-github:
* [GA4GH DRS](https://github.com/ga4gh/data-repository-service-schemas/)
* [GA4GH TRS](https://github.com/ga4gh/tool-registry-service-schemas/)

#### {S}[B] Contributors

* Sushil Varma [0000-0003-1687-2754](https://orcid.org/0000-0003-1687-2754) :ORCID-icon-green:

<!--schema_block_start-->
```yaml
$schema: http://json-schema.org/draft-07/schema#
$id: https://schemablocks.org/schemas/sb-checksum/Checksum/v0.0.1
title: Checksum
description: Checksum
type: object
required:
  - checksum
  - type
properties:
  checksum:
    type: string
    description: >-
      The hexadecimal encoded ([Base16](https://tools.ietf.org/html/rfc4648#section-8)) checksum for the data
    examples:
      - 77af4d6b9913e693e8d0b4b294fa62ade6054e6b2f1ffb617ac955dd63fb0182
  type:
    type: string
    description: >-
      The digest method used to create the checksum.
      The value (e.g. `sha-256`) SHOULD be listed as `Hash Name String` in the 
      [GA4GH Hash Algorithm Registry](https://github.com/ga4gh-discovery/ga4gh-checksum/blob/master/hash-alg.csv).
      Other values MAY be used, as long as implementors are aware of the issues
      discussed in [RFC6920](https://tools.ietf.org/html/rfc6920#section-9.4).
      
      GA4GH may provide more explicit guidance for use of non-IANA-registered
      algorithms in the future.
    examples:
      - 'sha-256'
```
<!--schema_block_end-->
