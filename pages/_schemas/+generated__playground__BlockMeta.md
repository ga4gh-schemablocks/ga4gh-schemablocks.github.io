---
title: 'BlockMeta'
layout: default
permalink: "/schemas/blocks/BlockMeta.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## BlockMeta

### SchemaBlocks Metadata

##### Contributors  

* Michael Baudis (orcid:0000-0002-9903-4248)  

##### Provenance  

* [Original development for SchemaBlocks project](https://schemablocks.org)  

##### Used by  

* [SchemaBlocks](https://schemablocks.org)  

##### {S}[B] Status  

* playground  

### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>contributors</td>
    <td>array of [$ref](https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1)</td>
  </tr>
  <tr>
    <td>provenance</td>
    <td>array of [$ref](https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1)</td>
  </tr>
  <tr>
    <td>sb_status</td>
    <td>string</td>
  </tr>
  <tr>
    <td>use_cases</td>
    <td>array of [$ref](https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1)</td>
  </tr>

</table>

    
#### contributors

* type: array of $ref: [https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1](https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1)

The `contributors` attribute provides a list of one or more contributors
which had been involved in the block's definition or support its format.


##### contributors Examples

```
{
  'description' => 'Michael Baudis',
  'id' => 'orcid:0000-0002-9903-4248'
}
```
    
#### provenance

* type: array of $ref: [https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1](https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1)

The `provenance` attribute provides a list of pointers to e.g. external
schemas, predecessors of the current schema or external documentation
describing the schema's genesis.


##### provenance Examples

```
{
  'description' => 'Original GA4GH schema',
  'id' => 'https://github.com/ga4gh/ga4gh-schemas/blob/master/src/main/proto/ga4gh/bio_metadata.proto#L111'
}
```
    
#### sb_status

* type: string

With `sb_status` the current support level of the schema block inside
the {S}[B] ecosystem has to be demonstrated. A first recommendation of
levels is:

* `playground`
  - early development or import stage, of any quality
  - no recommendation; existence does not mean any current or future
  {S}[B] support
* proposed
  - at least some {S}[B] contributors are in favour of such a block
  - the code may undergo considerable maturation
  - not recommended for integration into products w/o close tracking
  - contributions and discussions are encouraged
* `implementation`
  - mature block which is implemented in one or more {S}[B] aligned
  schemas
  - may be extended from a core block or be too specific for general
  ("core") usability
* `core`
  - a schema block with recommended use
  - stable through minor version changes
  - has to be used in at least 2 approved / under review GA4GH products


##### sb_status Examples

```
"core"
```
```
"implementation"
```
```
"proposed"
```
```
"playground"
```
    
#### use_cases

* type: array of $ref: [https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1](https://schemablocks.org/schemas/ga4gh/ExternalReference/v0.0.1)

With the `use_cases` attribute one can provide links and descriptions
for the use of a given block in an external implementation.
This is not intended to provide a catalogue of all known implementations
of the schema.


##### use_cases Examples

```
{
  'description' => 'Phenopackets',
  'id' => 'https://github.com/phenopackets/phenopacket-schema/blob/master/docs/age.rst'
}
```
```
{
  'description' => 'Progenetix database schema (Beacon+ backend)',
  'id' => 'https://github.com/progenetix/schemas/tree/master/main/yaml'
}
```

### BlockMeta Examples  

```
{
  'contributors' => [
                      {
                        'description' => 'Michael Baudis',
                        'id' => 'orcid:0000-0002-9903-4248'
                      },
                      {
                        'description' => 'Ben Hutton',
                        'id' => 'https://github.com/Relequestual'
                      }
                    ],
  'provenance' => [
                    {
                      'description' => 'Developer branch of original GA4GH schema',
                      'id' => 'https://github.com/ga4gh-metadata/metadata-schemas/blob/master/schemas/shared.proto#L60'
                    }
                  ],
  'sb_status' => 'playground',
  'used_by' => [
                 {
                   'description' => 'Phenopackets',
                   'id' => 'https://github.com/phenopackets/phenopacket-schema/blob/master/docs/geolocation.rst'
                 },
                 {
                   'description' => 'Progenetix database schema (Beacon+ backend)',
                   'id' => 'https://github.com/progenetix/schemas/tree/master/main/yaml'
                 }
               ]
}
```

