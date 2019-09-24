---
title: BeaconVariant
layout: default
permalink: "/schemas/ga4gh/BeaconVariant.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---


## BeaconVariant

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Original GA4GH schema](https://github.com/ga4gh/ga4gh-schemas/blob/master/src/main/proto/ga4gh/variants.proto#L145)  
* Used by  

    - [Beacon, in modified form as basis for query model](https://github.com/ga4gh-beacon/specification/blob/master/beacon.yaml)  
    - [Progenetix database schema (Beacon+ backend)](https://github.com/progenetix/schemas/tree/master/main/yaml)  
* Contributors  

    - GA4GH Data Working Group  
    - ELIXIR Beacon team  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
<!--more-->

### Source (v0.0.1)

* raw source [[JSON](./current/BeaconVariant.json)]
* [Github](https://github.com/ga4gh-schemablocks/blocks/blob/master/schemas/BeaconVariant.yaml)

### Attributes
  
__Type:__ object  
__Description:__ The document describes attributes of the _variant_ object. In its current 
implementation, _variant_ (and related genomic objects such as _callset_) represent 
extended versions of the original, VCF-derived GA4GH schema.
Compared to the VCF model it was derived from, this schema includes some
changes:

* the definition of an optional `end` position, to support e.g. structural variants 
w/o definition of the sequence
* the use of arrays for `start` and `end` positions, to describe positions with 
uncertain exact location (again, important for structural variants and data derived 
from array based experiments)
    - this corresponds to the use of `CIPOS` and `CIEND` intervals around `pos` and 
    `END` positions ibn VCF, where the begin of e.g. the `pos` interval is given by 
    `pos - CIPOS[0]` and the end of the `pos` estimate by `pos + CIPOS[0]`

This format may be superseeded or augmented based on current developments in the 
GA4GH::GKS work stream.


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>alternate_bases</td>
    <td>string</td>
  </tr>
  <tr>
    <td>biosample_id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>callset_id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>digest</td>
    <td>string</td>
  </tr>
  <tr>
    <td>end</td>
    <td>array of int64</td>
  </tr>
  <tr>
    <td>genotype</td>
    <td>array of string</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>info</td>
    <td>object</td>
  </tr>
  <tr>
    <td>mate_name</td>
    <td>string</td>
  </tr>
  <tr>
    <td>reference_bases</td>
    <td>string</td>
  </tr>
  <tr>
    <td>reference_name</td>
    <td>string</td>
  </tr>
  <tr>
    <td>start</td>
    <td>array of int64</td>
  </tr>
  <tr>
    <td>variant_type</td>
    <td>string</td>
  </tr>

</table>


#### alternate_bases

* type: string

* one or more bases relative to start position of the reference genome, replacing 
the reference_bases value
* for precise variants; not used for structural (e.g. DUP, DEL) alterations


##### `alternate_bases` Value Example  

```
"AC"
```

#### biosample_id

* type: string

The optional identifier ("biosample.id") of the biosample this variant was reported 
from. This is a shortcut to using the variant -> callset -> biosample chaining.


##### `biosample_id` Value Example  

```
"pgx-bs-987647"
```

#### callset_id

* type: string

* the identifier ("callset.id") of the callset (i.e. "VCF column") this variant is 
part of
* optional, if another provenance method is provided (e.g. if variants are nested 
with the parental object as in a Phenopacket)


##### `callset_id` Value Example  

```
"PGX_AM_CS_GSM1690424"
```

#### digest

* type: string

* Concatenated unique specific elements of the variant.
* Optional, convenience element to derive unique variants in "individual variant 
from callset" storage systems


##### `digest` Value Example  

```
"4:12282-46465:DEL"
```

#### end

* type: array of int64

array of 0 (for presise sequence variants), 1 or 2 (for imprecise end position of 
structural variant) integers


##### `end` Value Example  

```
[
   "21977798",
   "21978106"
]
```

#### genotype

* type: array of string

list of strings, which represent the (phased) alleles in which the variant was 
being observed


##### `genotype` Value Example  

```
[
   "1",
   "."
]
```

#### id

* type: string

* The local-unique identifier of this variant (referenced as "variant_id").
* Optional


##### `id` Value Example  

```
"amvar-8754-7751-1119-8539"
```

#### info

* type: object

additional variant information, as defined in the example and accompanying 
documentation


##### `info` Value Example  

```
{
   "cnv_length" : "1205290",
   "cnv_value" : "-0.294"
}
```

#### mate_name

* type: string

Mate name (chromosome) for fusion (BRK) events; otherwise left empty. Accepting 
values 1-22, X, Y.


##### `mate_name` Value Example  

```
"14"
```

#### reference_bases

* type: string

one or more bases at start position in the reference genome, which have been 
replaced by the `alternate_bases` value


##### `reference_bases` Value Example  

```
"G"
```

#### reference_name

* type: string

Reference name (chromosome). Accepting values 1-22, X, Y.


##### `reference_name` Value Example  

```
"8"
```

#### start

* type: array of int64

array of 1 or 2 (for imprecise end position of structural variant) integers


##### `start` Value Example  

```
[
   "20867740"
]
```

#### variant_type

* type: string

the variant type in case of a named (structural) variant (e.g. DUP, DEL, BND ...)


##### `variant_type` Value Example  



### `BeaconVariant` Value Examples  

```
{
   "biosample_id" : "fcl-bs-0099615",
   "callset_id" : "structdb-cs-nhl-0009876",
   "digest" : "8,14:20867740-21977798,21978106:BND",
   "end" : [
      "21977798",
      "21978106"
   ],
   "id" : "structdb-var-123456789",
   "mate_name" : "14",
   "reference_bases" : "N",
   "reference_name" : "8",
   "start" : [
      "20867740"
   ],
   "variant_type" : "BND"
}
```
```
{
   "biosample_id" : "structdb-bs-nhl-0009876",
   "callset_id" : "structdb-cs-nhl-0009876",
   "digest" : "6:63450000,63550000-63450000,63550000:DEL",
   "end" : [
      "63450000",
      "63550000"
   ],
   "id" : "structdb-var-123456790",
   "info" : {
      "cnv_length" : "85500000",
      "cnv_value" : "-0.294"
   },
   "reference_bases" : "N",
   "reference_name" : "6",
   "start" : [
      "63450000",
      "63550000"
   ],
   "variant_type" : "DEL"
}
```
```
{
   "alternate_bases" : "AC",
   "callset_id" : "DIPG_CS_0290",
   "digest" : "2:203420136:A>AC",
   "genotype" : [
      "1",
      "."
   ],
   "id" : "5be1840772798347f0ed9e8b",
   "reference_bases" : "A",
   "reference_name" : "2",
   "start" : [
      "203420136"
   ]
}
```


