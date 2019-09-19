---
title: 'Variant'
layout: default
permalink: "/schemas/blocks/Variant.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## Variant
##### From Original GA4GH schema

#### Status: __proposed__

<!--more-->



#### Provenance

* [Original GA4GH schema](https://github.com/ga4gh/ga4gh-schemas/blob/master/src/main/proto/ga4gh/variants.proto#L145)

#### Used by

* [Beacon, in modified form as basis for query model](https://github.com/ga4gh-beacon/specification/blob/master/beacon.yaml#L345)

#### Authors

* GA4GH Metadata Task Team, GA4GH Variant Task Team, @mbaudis

#### Schema source: [YAML file](https://github.com/ga4gh-schemablocks/blocks/blob/master/working/variant.yaml)
#### Properties of the _Variant_ class

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>alternate_bases</td>
    <td>string</td>
    <td></td>
    <td>* one or more bases relative to start position of the reference genome, replacing the reference_bases value
* for precise variants; normally not used for structural (e.g. DUP, DEL) alterations
</td>
  </tr>
  <tr>
    <td>biosample_id</td>
    <td></td>
    <td></td>
    <td>The optional identifier ("biosample.id") of the biosample this variant was reported from. This is a shortcut to using the variant -> callset -> biosample chaining.</td>
  </tr>
  <tr>
    <td>callset_id</td>
    <td>string</td>
    <td></td>
    <td>* The identifier ("callset.id") of the callset this variant is part of.
* Optional, if another provenance method is provided (e.g. if variants are nested with the parental object as in a Phenopacket)
</td>
  </tr>
  <tr>
    <td>created</td>
    <td>timestamp</td>
    <td></td>
    <td>The creation time of this record, in ISO8601
</td>
  </tr>
  <tr>
    <td>digest</td>
    <td>string</td>
    <td></td>
    <td>* Concatenated unique specific elements of the variant.
* Optional, convenience element to derive unique variants in "individual variant from callset" storage systems
</td>
  </tr>
  <tr>
    <td>end</td>
    <td>array</td>
    <td>int64</td>
    <td>array of 0 (for presise sequence variants), 1 or 2 (for imprecise end position of structural variant) integers</td>
  </tr>
  <tr>
    <td>genotype</td>
    <td>array</td>
    <td></td>
    <td>list of strings, which represent the (phased) alleles in which the variant was being observed</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
    <td></td>
    <td>* The local-unique identifier of this variant (referenced as "variant_id").
* Optional
</td>
  </tr>
  <tr>
    <td>info</td>
    <td>:&nbsp;<a href="./Info.html">./Info</a></td>
    <td></td>
    <td>additional variant information, as defined in the example and accompanying documentation</td>
  </tr>
  <tr>
    <td>mate_name</td>
    <td>string</td>
    <td></td>
    <td>Mate name (chromosome) for fusion (BRK) events; otherwise left empty. Accepting values 1-22, X, Y.
</td>
  </tr>
  <tr>
    <td>reference_bases</td>
    <td>string</td>
    <td></td>
    <td>one or more bases at start position in the reference genome, which have been replaced by the `alternate_bases` value
</td>
  </tr>
  <tr>
    <td>reference_name</td>
    <td>string</td>
    <td></td>
    <td>Reference name (chromosome). Accepting values 1-22, X, Y.</td>
  </tr>
  <tr>
    <td>start</td>
    <td>array</td>
    <td>int64</td>
    <td>array of 1 or 2 (for imprecise end position of structural variant) integers</td>
  </tr>
  <tr>
    <td>updated</td>
    <td>timestamp</td>
    <td></td>
    <td>The time of the last edit of this record, in ISO8601
</td>
  </tr>
  <tr>
    <td>variant_type</td>
    <td>string</td>
    <td></td>
    <td>the variant type in case of a named (structural) variant (e.g. DUP, DEL, BND ...)</td>
  </tr>

</table>


#### Description
The document describes attributes of the _variant_ object. In its current implementation, _variant_ (and related genomic objects such as _callset_) represent extended versions of the original, VCF-derived GA4GH schema.
Compared to the VCF model it was derived from, this schema includes some
changes:
  * the definition of an optional `end` position, to support e.g.
    structural variants w/o definition of the sequence
  * the use of arrays for `start` and `end` positions, to describe
    positions with uncertain exact location (again, important for
    structural variants and data derived from array based experiments)
      - this corresponds to the use of `CIPOS` and `CIEND` intervals
        around `pos` and `END` positions ibn VCF, where the begin of
        e.g. the `pos` interval is given by `pos - CIPOS[0]` and the
        end of the `pos` estimate by `pos + CIPOS[0]`
This format may be superseeded or augmented based on current developments in the GA4GH::GKS work stream.



#### Examples

```
{
   "biosample_id" : "fcl-bs-0099615",
   "callset_id" : "structdb-cs-nhl-0009876",
   "created" : "2017-10-25T07:06:03Z",
   "digest" : "8,14:20867740-21977798,21978106:BND",
   "end" : [
      "21977798",
      "21978106"
   ],
   "id" : "structdb-var-123456789",
   "mate_name" : 14,
   "reference_bases" : "N",
   "reference_name" : 8,
   "start" : [
      "20867740"
   ],
   "updated" : "2017-10-25T07:06:03Z",
   "variant_type" : "BND"
}
```
```
{
   "biosample_id" : "structdb-bs-nhl-0009876",
   "callset_id" : "structdb-cs-nhl-0009876",
   "created" : "2019-01-22T03:06:45Z",
   "digest" : "6:63450000,63550000-63450000,63550000:DEL",
   "end" : [
      "63450000",
      "63550000"
   ],
   "id" : "structdb-var-123456790",
   "info" : {
      "cnv_length" : 85500000,
      "cnv_value" : "-0.294"
   },
   "reference_bases" : "N",
   "reference_name" : 6,
   "start" : [
      "63450000",
      "63550000"
   ],
   "updated" : "2019-02-01T12:40:21Z",
   "variant_type" : "DEL"
}
```
```
{
   "alternate_bases" : "AC",
   "callset_id" : "DIPG_CS_0290",
   "created" : "2018-11-06T11:46:30.028Z",
   "digest" : "2:203420136:A>AC",
   "genotype" : [
      "1",
      "."
   ],
   "id" : "5be1840772798347f0ed9e8b",
   "reference_bases" : "A",
   "reference_name" : 2,
   "start" : [
      "203420136"
   ],
   "updated" : "2018-11-06T11:46:30.028Z"
}
```
--------------------------------------------------------------------------------

<h4>Notes and examples on the <i>Variant</i> properties</h4>

##### alternate_bases

* * one or more bases relative to start position of the reference genome, replacing the reference_bases value
* for precise variants; normally not used for structural (e.g. DUP, DEL) alterations

* example:

```
'alternate_bases' : "AC"
```

##### biosample_id

* The optional identifier ("biosample.id") of the biosample this variant was reported from. This is a shortcut to using the variant -> callset -> biosample chaining.
* example:

```
'biosample_id' : "pgx-bs-987647"
```

##### callset_id

* * The identifier ("callset.id") of the callset this variant is part of.
* Optional, if another provenance method is provided (e.g. if variants are nested with the parental object as in a Phenopacket)

* example:

```
'callset_id' : "PGX_AM_CS_GSM1690424"
```

##### created

* The creation time of this record, in ISO8601

* example:

```
'created' : "2017-10-25T07:06:03Z"
```

##### digest

* * Concatenated unique specific elements of the variant.
* Optional, convenience element to derive unique variants in "individual variant from callset" storage systems

* example:

```
'digest' : "4:12282-46465:DEL"
```

##### end

* array of 0 (for presise sequence variants), 1 or 2 (for imprecise end position of structural variant) integers
* example:

```
'end' : [
  21977798,
  21978106
]
```

* Queries:  This example query will return all deletion variants with any overlap of the CDKN2A CDR (GRCh38 positions).

```
db.variants.find( { "reference_name" : "9",  "variant_type" : "DEL", "start" : { $lteq : 21975098 }, "end" : { $gteq : 21967753 } } )
```

##### genotype

* list of strings, which represent the (phased) alleles in which the variant was being observed
* example:

```
'genotype' : [
  '1',
  '.'
]
```

##### id

* * The local-unique identifier of this variant (referenced as "variant_id").
* Optional

* example:

```
'id' : "amvar-8754-7751-1119-8539"
```

##### info

* additional variant information, as defined in the example and accompanying documentation
* example:

```
'info' : {
  'cnv_length' => 1205290,
  'cnv_value' => '-0.294'
}
```

##### mate_name

* Mate name (chromosome) for fusion (BRK) events; otherwise left empty. Accepting values 1-22, X, Y.

* example:

```
'mate_name' : "14"
```

##### reference_bases

* one or more bases at start position in the reference genome, which have been replaced by the `alternate_bases` value

* example:

```
'reference_bases' : "G"
```

##### reference_name

* Reference name (chromosome). Accepting values 1-22, X, Y.
* example:

```
'reference_name' : "8"
```

##### start

* array of 1 or 2 (for imprecise end position of structural variant) integers
* example:

```
'start' : [
  20867740
]
```

##### updated

* The time of the last edit of this record, in ISO8601

* example:

```
'updated' : "2022-11-11T09:45:13Z"
```

##### variant_type

* the variant type in case of a named (structural) variant (e.g. DUP, DEL, BND ...)
* example:

```
'variant_type' : "DEL"
```

