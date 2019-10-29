---
title: Callset
layout: default
permalink: "/schemas/ga4gh/Callset.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - proposed
  - ga4gh
---


## Callset (ga4gh)

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __proposed__

* Provenance  

    - [Original GA4GH schema](https://github.com/ga4gh/ga4gh-schemas/blob/master/src/main/proto/ga4gh/variants.proto#L65)  
* Used by  

    - [Progenetix database schema (Beacon+ backend)](https://github.com/progenetix/schemas/tree/master/main/yaml)  

<!--more-->

* Contributors  

    - GA4GH Data Working Group  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  

### Source (v0.0.1)

* raw source [[JSON](./current/Callset.json)]
* [Github](https://github.com/ga4gh-schemablocks/blocks/blob/master/schemas/Callset.yaml)

### Attributes
  
__Type:__ object  
__Description:__ The callset object contains information about an experiment performed on 
material from a single biosample and provides a shared identifier for all 
variants detected in this experiment, attributed to the referenced biosample.


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>biosample_id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>created</td>
    <td>string</td>
  </tr>
  <tr>
    <td>data_use_conditions</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
  </tr>
  <tr>
    <td>geo_provenance</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/GeoLocation.html" target="_BLANK">HTML</a>]</td>
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
    <td>updated</td>
    <td>string</td>
  </tr>

</table>


#### biosample_id

* type: string

The identifier ("biosample.id") of the biosample this variant was 
reported from. This attribute provides an alternative to an implicit 
variant -> callset -> biosample chaining.


##### `biosample_id` Value Example  

```
"pgx-bs-987647"
```

#### created

* type: string

The creation time of this record, as ISO8601 string. System-specific 
implementations may transfer this to a date object.


##### `created` Value Example  


#### data_use_conditions

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

Data use conditions applying to data from this callset, as ontology class 
(e.g. DUO).


##### `data_use_conditions` Value Example  

```
{
   "id" : "DUO:0000004",
   "label" : "no restriction"
}
```

#### description

* type: string

A free text description about the callset.


##### `description` Value Example  

```
"SNP6 array of cancer sample BRCA-0893"
```

#### geo_provenance

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/GeoLocation.html" target="_BLANK">HTML</a>]

This geo_class attribute ideally describes the geographic location of 
where this callset was analysed.


##### `geo_provenance` Value Example  

```
{
   "city" : "Timisoara",
   "country" : "Romania",
   "label" : "Str Marasesti 5, 300077 Timisoara, Romania",
   "latitude" : "45.75",
   "longitude" : "21.23"
}
```

#### id

* type: string

The local-unique identifier of this callset (referenced as "callset_id").


##### `id` Value Example  

```
"GSM264198"
```

#### info

* type: object

Additional information object, in a format defined in examples and 
accompanying documentation of the specific implementation.


##### `info` Value Example  

```
{
   "statusmaps" : {
      "binning" : "1000000",
      "description" : "The cnv_maps object is a wrapper for genomic interval mapped status \ninformation. In Progenetix and arrayMap, this is used to indictate \nfor fixed 1MB genome intervals - the status\n- dupmap => \"DUP\" or \"\"\n- delmap => \"DEL\" or \"\"  \nor the maximum / minimum positive / negative value encountered in \nthe segment, as far as it has been called to contain DUP or DEL.\n",
      "dupmap" : [
         "",
         "",
         "DUP",
         "DUP",
         "DUP",
         "",
         "",
         "",
         "",
         "",
         ""
      ]
   }
}
```

#### updated

* type: string

The update time of this record's content, as ISO8601 string.
System-specific implementations may transfer this to a date object.


##### `updated` Value Example  



### `Callset` Value Example  

```
{
   "biosample_id" : "SAMEA1234",
   "created" : "2017-10-25T07:06:03Z",
   "data_use_conditions" : {
      "id" : "DUO:0000004",
      "label" : "no restriction"
   },
   "description" : "SNP6 array of cancer sample BRCA-0893",
   "geo_provenance" : {
      "city" : "Timisoara",
      "country" : "Romania",
      "label" : "Str Marasesti 5, 300077 Timisoara, Romania",
      "latitude" : "45.75",
      "longitude" : "21.23"
   },
   "id" : "GSM264198",
   "info" : {
      "statusmaps" : {
         "binning" : "1000000",
         "dupmap" : [
            "",
            "",
            "DUP",
            "DUP",
            "DUP",
            "",
            "",
            "",
            "",
            "",
            ""
         ]
      },
      "technology" : "Affymetrix SNP6 genotyping array"
   },
   "updated" : "2017-10-25T07:06:03Z"
}
```


