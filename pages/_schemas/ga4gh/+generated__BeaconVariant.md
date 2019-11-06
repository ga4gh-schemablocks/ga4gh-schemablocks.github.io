---
title: BeaconVariant
layout: default
permalink: "/schemas/ga4gh/BeaconVariant.html"
sb_status: "playground"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - playground
  - ga4gh
---


<div id="schema-header-title">
  <h2>BeaconVariant <span id="schema-header-title-project">ga4gh <a href="https://github.com/ga4gh-schemablocks/playground" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">playground</div></td>
  </tr>

  <tr>
    <th>Provenance</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh/ga4gh-schemas/blob/master/src/main/proto/ga4gh/variants.proto#L145">Original GA4GH schema</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh-beacon/specification/blob/master/beacon.yaml">Beacon, in modified form as basis for query model</a></li>
<li><a href="https://github.com/progenetix/schemas/tree/master/main/yaml">Progenetix database schema (Beacon+ backend)</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li>GA4GH Data Working Group</li>
<li>ELIXIR Beacon team</li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v0.0.1)</th>
    <td>
      <ul>
        <li><a href="current/BeaconVariant.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/playground/blob/master/schemas/BeaconVariant.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
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

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>alternate_bases</th>
    <td>array of string</td>
  </tr>
  <tr>
    <th>biosample_id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>callset_id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>digest</th>
    <td>string</td>
  </tr>
  <tr>
    <th>end</th>
    <td>array of int64</td>
  </tr>
  <tr>
    <th>genotype</th>
    <td>array of string</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>info</th>
    <td>object</td>
  </tr>
  <tr>
    <th>mate_name</th>
    <td>string</td>
  </tr>
  <tr>
    <th>reference_bases</th>
    <td>string</td>
  </tr>
  <tr>
    <th>reference_name</th>
    <td>string</td>
  </tr>
  <tr>
    <th>start</th>
    <td>array of int64</td>
  </tr>
  <tr>
    <th>variant_type</th>
    <td>string</td>
  </tr>

</table>


#### alternate_bases

* type: array of string

* one or more single or multi-base sequences, replacing the  the 
`reference_bases` value
* more than one `alternate_bases` values is used for differing 
replacements involving the different alleles
* used for precise variants; not used for structural (e.g. DUP, DEL) 
alterations


##### `alternate_bases` Value Examples  

```
[
   "C"
]
```
```
[
   "TA",
   "TAA"
]
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

* list of strings, using the natural index of the corresponding 
`alternate_bases` values for the (optionally phased) indication of 
observed allelic replacements
* the dot `.` value is used for indicating the reference allele or unknown 
value

The genotype parameter is largely redundant for single-sample variant 
annotations in contrast to VCF, where the `alternat_bases` calls have to 
be indicated for multiple callsets.


##### `genotype` Value Examples  

```
[
   "1",
   "."
]
```
```
[
   "2",
   "1"
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

Mate name (chromosome) for fusion (BND) events; otherwise left empty. 
Accepting values 1-22, X, Y.
Compared to the VCF specification, where a fusion is defined from 2 
BND variants and verbose annotations for describing the fusion partners, 
the use of the `mate_name` attribute allows to treat fusion events as 
single "variant". Conventions: 

* the lower sorted chromosome (e.g. "8") is annotated for `reference_name` 
and the higher (e.g. "14") becomes the `mate_name`
* if a `mate_name` parameter exists, the `end` position refers to this
* for intrachromosomal events, `mate_name` is identical to 
`reference_name` and the higher base values are assigned to `end`


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

```
"DEL"
```


### `BeaconVariant` Value Examples  

```
{
   "alternate_bases" : [
      "AC",
      "ACC"
   ],
   "callset_id" : "DIPG_CS_0290",
   "digest" : "2:203420136:A>AC,ACC",
   "genotype" : [
      "2",
      "1"
   ],
   "id" : "5be1840772798347f0ed9e8b",
   "reference_bases" : "A",
   "reference_name" : "2",
   "start" : [
      "203420136"
   ]
}
```
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
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


