---
title: GA4GH - Checksum
sb_status: core
logos:
  - logo-ga4gh-circle-420x420.png
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
      Other values MAY be used |  as long as implementors are aware of the issues
      discussed in [RFC6920](https://tools.ietf.org/html/rfc6920#section-9.4).
      
      GA4GH may provide more explicit guidance for use of non-IANA-registered
      algorithms in the future.
    examples:
      - 'sha-256'
```
<!--schema_block_end-->

## Specification - Table of Hash Algorithms

ID | Hash Name String | Value Length | Reference | Status
---|------------------|--------------|-----------|-------
0 | Reserved |  | [RFC6920](http://www.iana.org/go/rfc6920) | 
1 | sha-256 | 256 bits | [RFC6920](http://www.iana.org/go/rfc6920) | current
2 | sha-256-128 | 128 bits | [RFC6920](http://www.iana.org/go/rfc6920) | current
3 | sha-256-120 | 120 bits | [RFC6920](http://www.iana.org/go/rfc6920) | current
4 | sha-256-96 | 96 bits | [RFC6920](http://www.iana.org/go/rfc6920) | current
5 | sha-256-64 | 64 bits | [RFC6920](http://www.iana.org/go/rfc6920) | current
6 | sha-256-32 | 32 bits | [RFC6920](http://www.iana.org/go/rfc6920) | current
7 | sha-384 | 384 bits | [FIPS 180-4](https://dx.doi.org/10.6028/NIST.FIPS.180-4) | current
8 | sha-512 | 512 bits | [FIPS 180-4](https://dx.doi.org/10.6028/NIST.FIPS.180-4) | current
9 | sha3-224 | 224 bits | [FIPS 202](https://dx.doi.org/10.6028/NIST.FIPS.202) | current
10 | sha3-256 | 256 bits | [FIPS 202](https://dx.doi.org/10.6028/NIST.FIPS.202) | current
11 | sha3-384 | 384 bits | [FIPS 202](https://dx.doi.org/10.6028/NIST.FIPS.202) | current
12 | sha3-512 | 512 bits | [FIPS 202](https://dx.doi.org/10.6028/NIST.FIPS.202) | current
13 | md5 | 128 bits | [RFC1321](https://www.ietf.org/rfc/rfc1321.txt) | current
14 | etag | 128 + variable bits | [RFC7232](https://tools.ietf.org/html/rfc7232#section-2.3) | current
15 | crc32c | 32 bits | [RFC4960](https://tools.ietf.org/html/rfc4960#appendix-B) | current
16 | trunc512 | 192 bits | [GA4GH Refget](https://samtools.github.io/hts-specs/refget.html#trunc512-algorithm-details) | current
17 | sha1 | 160 bits | [FIPS 180-4](https://dx.doi.org/10.6028/NIST.FIPS.180-4) | current
18 | blake2b-512 | 512 bits | [RFC7693](https://tools.ietf.org/html/rfc7693) | current
19-31 | Unassigned |  |  | 
32 | Reserved |  | [RFC6920](http://www.iana.org/go/rfc6920) | 
33-63 | Unassigned |  |  | 
