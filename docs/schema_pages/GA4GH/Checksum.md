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

* [Checksum.json](/schema_files/json/GA4GH/Checksum.json) {S}[B] schema
* [Table of Hash Algorithms](https://github.com/ga4gh-discovery/ga4gh-checksum/tree/master)
* [source](https://github.com/ga4gh-schemablocks/sb-checksum) :fontawesome-brands-github:
* [GA4GH DRS](https://github.com/ga4gh/data-repository-service-schemas/)
* [GA4GH TRS](https://github.com/ga4gh/tool-registry-service-schemas/)

<!--schema_block_start-->

``` yaml title="Schema (YAML version)"
--8<-- "./docs/schema_files/src/GA4GH/Checksum.yaml"
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

#### {S}[B] Contributors

* Sushil Varma [0000-0003-1687-2754](https://orcid.org/0000-0003-1687-2754) :ORCID-icon-green:

