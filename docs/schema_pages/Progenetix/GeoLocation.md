---
title: Progenetix - GeoLocation
sb_status: playground
logos:
  - logo-progenetix-white_180x50.png
---

A GeoLocation object represents a geographic location formatted as a
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

* [GeoLocation.json](/schema_files/json/Progenetix/GeoLocation.json) schema
* [source](https://github.com/progenetix/bycon/tree/main/schemas/src/progenetix-model/common/) :fontawesome-brands-github:
* [Progenetix documentation](http://docs.progenetix.org) :fontawesome-brands-github:

#### {S}[B] Contributors

* Michael Baudis [0000-0002-9551-6370](https://orcid.org/0000-0002-9551-6370) :ORCID-icon-green:

<!--schema_block_start-->
```yaml
"$schema": https://json-schema.org/draft/2020-12/schema
"$id": https://progenetix.org/services/schemas/GeoLocation/v2022-06-28
title: GeoLocation
type: object
properties:
  type:
    type: string
    value: "Feature"
  geometry:
    $ref: '#/definitions/GeoJSONgeometry'
  properties:
    $ref: '#/definitions/GeoLabels'
definitions:
  GeoJSONgeometry:
    description: >-
      The geographic point object uses the default units from the
      [DCMI point scheme](http://dublincore.org/documents/dcmi-point/)and avoids
      optional representation in non-standard units.
    type: object
    properties:
      type:
        type: string
        value: "Point"
      coordinates:
        description: >-
          An array of 2 (longitude, latitude) or 3 (longitude, latitude, altitude)
          ordered values.
        type: array
        items:
          type: number
          format: float
        minItems: 2
        maxItems: 3
        examples:
          - - 47.37
            - 8.55
          - - 86.925026
            - 27.987850
            - 8848.86
  GeoLabels:
    description: >-
      The `geoLabels` object represent an instance of the GeoJSON `properties`
      object. The parameters provide additional information for the interpretation
      of the location parameters, and also serve for optional "sanity checks" off
      the corresponding latitude, longitude (, altitude).
      type: object
    properties:
      label:
        type: string
        examples:
          - Heidelberg, Germany
          - Gainesville, United States of America
          - Zurich, Switzerland
          - 'Str Marasesti 5, 300077 Timisoara, Romania'
      city:
        type: string
        description: >-
          The optional name of the city the point location maps to. It should be
          considered secondary to the location values in interpreting the geographic
          location.
      country:
        type: string
        description: >-
          The optional name of the country the location maps to, for sanity checks
          and procedural convenience (see notes for "city").
        examples:
          - Switzerland
      ISO3166alpha3:
        type: string
        examples:
          - USA
          - CHE
      latitude:
        type: number
        format: float
        description: >-
          Latitude in signed decimal degrees (North, relative to Equator). This is
          an optional, named re-write of the primary `geometry` parameter.
        examples:
          - 47.37
      longitude:
        type: number
        format: float
        description: >-
          Longitude signed decimal degrees (East, relative to IERS Reference
          Meridian). This is an optional, named re-write of the primary `geometry`
          parameter.
        examples:
          - 8.55
      precision:
        type: string
        description: >-
          Used together with coordinate annotation, precision represents an optional
          label describing the precision that can be inferred from the coordinates.
          For a precision level of "city"", coordinates would have to be interpreted
          as representing any possible location within the city's administrative
          boundaries, not necessarily at the exact position of the point
          coordinates. The `precision` parameter can be used to indicate an
          obfuscation of the coordinates, e.g. for privacy protection.
        examples:
          - city
```
<!--schema_block_end-->
