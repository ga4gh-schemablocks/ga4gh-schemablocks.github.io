---
title: Biosample
layout: default
permalink: "/schemas/ga4gh/Biosample.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---


## Biosample

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Original GA4GH schema](https://github.com/ga4gh/ga4gh-schemas/blob/master/src/main/proto/ga4gh/bio_metadata.proto#L65)  
* Used by  

    - Phenopackets  
    - [Progenetix database schema (Beacon+ backend)](https://github.com/progenetix/schemas/tree/master/main/yaml)  
* Contributors  

    - GA4GH Data Working Group  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
<!--more-->

### Source (v0.0.1)

* raw source [[JSON](./current/Biosample.json)]
* [Github](https://github.com/ga4gh-schemablocks/blocks/blob/master/schemas/Biosample.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A Biosample refers to a unit of biological material from which the substrate 
molecules (e.g. genomic DNA, RNA, proteins) for molecular analyses (e.g. 
sequencing, array hybridisation, mass-spectrometry) are extracted.

Examples would be a tissue biopsy, a single cell from a culture for single 
cell genome sequencing or a protein fraction from a gradient centrifugation. 

Several instances (e.g. technical replicates) or types of experiments (e.g. 
genomic array as well as RNA-seq experiments) may refer to the same Biosample.

FHIR mapping: [Specimen](http://www.hl7.org/fhir/specimen.html).


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>age_at_collection</td>
    <td>https://schemablocks.org/schemas/ga4gh/Age.json [<a href="https://schemablocks.org/schemas/ga4gh/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>biocharacteristics</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/PhenotypicFeature.json [<a href="https://schemablocks.org/schemas/ga4gh/PhenotypicFeature.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/PhenotypicFeature.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>created</td>
    <td>string</td>
  </tr>
  <tr>
    <td>data_use_conditions</td>
    <td>https://schemablocks.org/schemas/ga4gh/DataUseConditions.json [<a href="https://schemablocks.org/schemas/ga4gh/DataUseConditions.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/DataUseConditions.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
  </tr>
  <tr>
    <td>external_references</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/ExternalReference.json [<a href="https://schemablocks.org/schemas/ga4gh/ExternalReference.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/ExternalReference.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>geo_provenance</td>
    <td>https://schemablocks.org/schemas/ga4gh/GeoLocation.json [<a href="https://schemablocks.org/schemas/ga4gh/GeoLocation.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/GeoLocation.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>individual_id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>info</td>
    <td>https://schemablocks.org/schemas/ga4gh/Info.json [<a href="https://schemablocks.org/schemas/ga4gh/Info.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Info.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>name</td>
    <td>string</td>
  </tr>
  <tr>
    <td>project_id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>updated</td>
    <td>string</td>
  </tr>

</table>


#### age_at_collection

* type: https://schemablocks.org/schemas/ga4gh/Age.json [<a href="https://schemablocks.org/schemas/ga4gh/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]

The age of the individual at time of biosample collection, as Age object.


##### `age_at_collection` Value Example  


#### biocharacteristics

* type: array of https://schemablocks.org/schemas/ga4gh/PhenotypicFeature.json [<a href="https://schemablocks.org/schemas/ga4gh/PhenotypicFeature.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/PhenotypicFeature.html" target="_BLANK">HTML</a>]

The _Biocharacteristics_ object represents a wrapper list of "Phenotype" 
objects with properly prefixed term ids, describing features of the 
biosample.  
Examples would be phenotypes, disease codes or other ontology classes 
*specific to this biosample*, i.e. not general features of the individual 
it was derived from.  
In a complete data model (variants->[callsets]->biosamples->individuals), 
characteristics applying to the _individual_ (e.g. sex, most phenotypes) 
should be annotated with the individual.


##### `biocharacteristics` Value Examples  

```
{
   "description" : "Adenocarcinoma of the pancreas",
   "type" : {
      "id" : "pgx:81403",
      "label" : "Adenocarcinoma, NOS"
   }
}
```
```
{
   "description" : "Pancreatic Adenocarcinoma",
   "type" : {
      "id" : "ncit:C8294",
      "label" : "Pancreatic Adenocarcinoma"
   }
}
```

#### created

* type: string

The creation time of this record, in ISO8601


##### `created` Value Example  


#### data_use_conditions

* type: https://schemablocks.org/schemas/ga4gh/DataUseConditions.json [<a href="https://schemablocks.org/schemas/ga4gh/DataUseConditions.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/DataUseConditions.html" target="_BLANK">HTML</a>]

Data use conditions applying to data from this biosample, as data use 
condition object (e.g. DUO).


##### `data_use_conditions` Value Example  

```
{
   "id" : "DUO:0000004",
   "label" : "no restriction"
}
```

#### description

* type: string

A free text description of the biosample. This should not contain any 
structured data.


##### `description` Value Example  


#### external_references

* type: array of https://schemablocks.org/schemas/ga4gh/ExternalReference.json [<a href="https://schemablocks.org/schemas/ga4gh/ExternalReference.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/ExternalReference.html" target="_BLANK">HTML</a>]

A list of reference_class objects with properly (e.g. identifiers.org) 
prefixed external identifiers and a term describing the relationship.


##### `external_references` Value Example  


#### geo_provenance

* type: https://schemablocks.org/schemas/ga4gh/GeoLocation.json [<a href="https://schemablocks.org/schemas/ga4gh/GeoLocation.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/GeoLocation.html" target="_BLANK">HTML</a>]

This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently, this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.


##### `geo_provenance` Value Example  


#### id

* type: string

The local-unique identifier of this biosample (referenced as 
"biosample_id"). This is unique in the context of the local (e.g. 
server, resource) instance.


##### `id` Value Example  

```
"AM_BS__NCBISKYCGH-1993"
```

#### individual_id

* type: string

In a complete data model "individual_id" points to the "id" of the 
individual ("donor", "subjerct"...) this _Biosample_ was derived from.

In a local context this could be the _id_ attribute in a corresponding 
"individuals" collection.


##### `individual_id` Value Example  

```
"ind-cnhl-1293347-004"
```

#### info

* type: https://schemablocks.org/schemas/ga4gh/Info.json [<a href="https://schemablocks.org/schemas/ga4gh/Info.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Info.html" target="_BLANK">HTML</a>]

This is a wrapper for objects without further specification in the schema.


##### `info` Value Example  


#### name

* type: string

A short descriptive name for sample which should be sufficient to 
distinguish it from other samples in the project or collection. 
This is a label or symbolic identifier for the biosample.


##### `name` Value Example  

```
"Sample BRCA-00429, 2nd replicate"
```

#### project_id

* type: string

The id attribute of the project that this biosample was collected in.


##### `project_id` Value Example  

```
"ind-cnhl-1293347-004"
```

#### updated

* type: string

The time of the last edit of this record, in ISO8601


##### `updated` Value Example  



### `Biosample` Value Example  

```
{
   "age_at_collection" : {
      "age" : "P56Y",
      "age_class" : {
         "id" : "HP:0003621",
         "label" : "Juvenile onset"
      }
   },
   "biocharacteristics" : [
      {
         "description" : "Lobular Breast Carcinoma In Situ, study sample",
         "type" : {
            "id" : "ncit:C4018",
            "label" : "Lobular Breast Carcinoma In Situ"
         }
      }
   ],
   "created" : "2017-10-25T07:06:03Z",
   "data_use_conditions" : {
      "id" : "DUO:0000004",
      "label" : "no restriction"
   },
   "description" : "Burkitt lymphoma, cell line Namalwa",
   "external_references" : [
      {
         "description" : "Cellosaurus cell line identifier",
         "relation" : "provenance",
         "type" : {
            "id" : "cellosaurus:CVCL_0312",
            "label" : "HOS"
         }
      }
   ],
   "geo_provenance" : {
      "altitude" : "94",
      "city" : "Timisoara",
      "country" : "Romania",
      "label" : "Str Marasesti 5, 300077 Timisoara, Romania",
      "latitude" : "45.75",
      "longitude" : "21.23"
   },
   "id" : "AM_BS__NCBISKYCGH-1993",
   "individual_id" : "ind-cnhl-1293347-004",
   "info" : {
      "death" : "1",
      "followup_time" : "P14M"
   },
   "name" : "Sample BRCA-00429, 2nd replicate",
   "project_id" : "ind-cnhl-1293347-004",
   "updated" : "2017-10-25T07:06:03Z"
}
```


