---
title: Progenetix - GeoLocation
sb_status: playground
logos:
  - logo-progenetix-white_180x50.png
---

A `GeoLocation` object is a geographic location formatted as a
*GeoJSON feature*. The format is compatible with RFC 7946, while currently
limiting its scope to features of type "Point". Also, the schema defines some
optional parameters compatible with the GeoJSON feature *properties* wrapper
object.

<!--more-->

**Provenance**: [IETF GeoJSON specification](https://tools.ietf.org/html/rfc7946)

Examples could be:  

* an address, e.g. of a lab performing an analysis
* provenance of an individual, obfuscated to a larger order administrative
entity (Suffolk, U.K.)
* a lat/long/alt position where an environmental sample was collected

Geolocation attributes were proposed as part of the original GA4GH Metadata Task
Team schemas. The current `GeoLocation` object is being used by the [Progenetix](http://progenetix.org)
resource and its BeaconPlus implementation of the Beacon v2 protocol.

#### Link(s)

* [GeoLocation.json](/schema_files/json/Progenetix/GeoLocation.json) {S}[B] schema
* [source](https://github.com/progenetix/bycon/tree/main/schemas/src/progenetix-model/common/) :fontawesome-brands-github:
* [Progenetix documentation](http://docs.progenetix.org) :fontawesome-brands-github:

<!--schema_block_start-->

``` yaml title="Schema (YAML version)"
--8<-- "./docs/schema_files/src/Progenetix/GeoLocation.yaml"
```
<!--schema_block_end-->

#### {S}[B] Contributors

* Michael Baudis [0000-0002-9551-6370](https://orcid.org/0000-0002-9551-6370) :ORCID-icon-green:

