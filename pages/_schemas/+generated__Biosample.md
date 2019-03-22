---
title: 'Biosample'
layout: default
permalink: "/schemas/blocks/Biosample.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## Biosample
##### From Original GA4GH schema

#### Status: __proposed__

<!--more-->



#### Provenance  

* [Original GA4GH schema](https://github.com/ga4gh/ga4gh-schemas/blob/master/src/main/proto/ga4gh/bio_metadata.proto#L65)  

#### Used by  

* [Progenetix database schema (Beacon+ backend)](https://github.com/progenetix/schemas/tree/master/main/yaml)  

#### Authors

* GA4GH Metadata Task Team, @mbaudis, @mcourtot, @theisuru

#### Schema source: [YAML file](https://github.com/ga4gh-schemablocks/blocks/blob/master/src/yaml/biosample.yaml)    
#### Properties of the _Biosample_ class    

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>age_at_collection</td>
    <td></td>
    <td></td>
    <td>The age of the individual at time of biosample collection, as Age object.
</td>
  </tr>
  <tr>
    <td>biocharacteristics</td>
    <td>array</td>
    <td></td>
    <td>biocharacteristics represents a wrapper list of "Phenotype" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.
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
    <td>data_use_conditions</td>
    <td></td>
    <td></td>
    <td>Data use conditions applying to data from this biosample, as ontology object (e.g. DUO).
</td>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
    <td></td>
    <td>A free text description of the biosample. This should not contain any structured data.
</td>
  </tr>
  <tr>
    <td>external_references</td>
    <td>array</td>
    <td></td>
    <td>list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship
</td>
  </tr>
  <tr>
    <td>geo_provenance</td>
    <td></td>
    <td></td>
    <td>This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently, this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.
</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
    <td></td>
    <td>The local-unique identifier of this biosample (referenced as "biosample_id"). This is unique in the context of the local (e.g. server, resource) instance.</td>
  </tr>
  <tr>
    <td>individual_id</td>
    <td>string</td>
    <td></td>
    <td>In a complete data model "individual_id" points to the "id" of the individual ("donor", "subjerct"...) this <i>biosample</i> was derived from.
In a local context this could be the <code>id</code> attribute in a corresponding "individuals" collection.
</td>
  </tr>
  <tr>
    <td>info</td>
    <td></td>
    <td></td>
    <td>This is a wrapper for objects without further specification in the schema.
</td>
  </tr>
  <tr>
    <td>name</td>
    <td>string</td>
    <td></td>
    <td>A short descriptive name for sample which should be sufficient to distinguish it from other samples in the project or collection. This is a label or symbolic identifier for the biosample.
</td>
  </tr>
  <tr>
    <td>project_id</td>
    <td>string</td>
    <td></td>
    <td>The id attribute of the project that this biosample was collected in.
</td>
  </tr>
  <tr>
    <td>updated</td>
    <td>timestamp</td>
    <td></td>
    <td>The time of the last edit of this record, in ISO8601
</td>
  </tr>

</table>


#### Description 
A Biosample refers to a unit of biological material from which the substrate molecules (e.g. genomic DNA, RNA, proteins) for molecular analyses (e.g. sequencing, array hybridisation, mass-spectrometry) are extracted.
Examples would be a tissue biopsy, a single cell from a culture for single cell genome sequencing or a protein fraction from a gradient centrifugation. Several instances (e.g. technical replicates) or types of experiments (e.g. genomic array as well as RNA-seq experiments) may refer to the same Biosample. FHIR mapping: Specimen (http://www.hl7.org/fhir/specimen.html).



#### Examples

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
         "description" : "Pancreatic Adenocarcinoma",
         "type" : {
            "id" : "icdot:C25.9",
            "label" : "Pancreas, NOS"
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
      "altitude" : 94,
      "city" : "Timisoara",
      "country" : "Romania",
      "label" : "Str Marasesti 5, 300077 Timisoara, Romania",
      "latitude" : 45.75,
      "longitude" : 21.23
   },
   "id" : "AM_BS__NCBISKYCGH-1993",
   "individual_id" : "ind-cnhl-1293347-004",
   "info" : {
      "death" : 1,
      "followup_time" : "P14M"
   },
   "name" : "Sample BRCA-00429, 2nd replicate",
   "project_id" : "ind-cnhl-1293347-004",
   "updated" : "2017-10-25T07:06:03Z"
}
```
--------------------------------------------------------------------------------

<h4>Notes and examples on the <i>Biosample</i> properties</h4>

##### age_at_collection

* The age of the individual at time of biosample collection, as Age object.

* example:

```
'age_at_collection' : {
  'age' => 'P56Y',
  'age_class' => {
                   'id' => 'HP:0003621',
                   'label' => 'Juvenile onset'
                 }
}
```

##### biocharacteristics

* biocharacteristics represents a wrapper list of "Phenotype" objects with properly prefixed term ids, describing features of the biosample.
Examples would be phenotypes, disease codes or other ontology classes specific to this biosample. In a complete data model (variants - (callsets) - biosamples - individuals), characteristics applying to the individual (e.g. sex, most phenotypes) should be annotated there.

* example:

```
'biocharacteristics' : [
  {
    'description' => 'Pancreatic Adenocarcinoma',
    'type' => {
                'id' => 'pgx:81403',
                'label' => 'Adenocarcinoma, NOS'
              }
  },
  {
    'description' => 'Pancreatic Adenocarcinoma',
    'type' => {
                'id' => 'ncit:C8294',
                'label' => 'Pancreatic Adenocarcinoma'
              }
  }
]
```

* Queries:  The query will return all biosamples with an (exact) class.id of "ncit:C8294" in their "biocharacteristics" object list.

```
db.biosamples.find( { "biocharacteristics.type.id" : "ncit:C8294" } )
```
This call to the distinct funcion will return *all* bioterms ids for samples having some ncit id; to retrive only the ncit ids, this has to be followed by a regex filter (/^ncit/).

```
db.biosamples.distinct( "biocharacteristics.type.id", { "biocharacteristics.type.id" : { $regex : /ncit/ } } )
```

##### created

* The creation time of this record, in ISO8601

* example:

```
'created' : "2017-10-25T07:06:03Z"
```

##### data_use_conditions

* Data use conditions applying to data from this biosample, as ontology object (e.g. DUO).

* example:

```
'data_use_conditions' : {
  'id' => 'DUO:0000004',
  'label' => 'no restriction'
}
```

##### description

* A free text description of the biosample. This should not contain any structured data.

* example:

```
'description' : "Burkitt lymphoma, cell line Namalwa"
```

##### external_references

* list of reference_class objects with properly (e.g. identifiers.org) prefixed external identifiers and a term describing the relationship

* example:

```
'external_references' : [
  {
    'description' => 'Cellosaurus cell line identifier',
    'relation' => 'provenance',
    'type' => {
                'id' => 'cellosaurus:CVCL_0312',
                'label' => 'HOS'
              }
  },
  {
    'description' => 'PubMed reference',
    'relation' => 'report',
    'type' => {
                'id' => 'pubmed:2823272',
                'label' => 'Rearrangement of the p53 gene in human osteogenic sarcomas.'
              }
  }
]
```

* Queries:  The query will return all biosamples reported in this publication

```
db.biosamples.find( { "external_references.type.id" : "pubmed:17440070" } )
```

##### geo_provenance

* This geo_class attribute ideally describes the geographic location of where the sample was extracted.
Frequently, this value may reflect either the place of the laboratory where the analysis was performed, or correspond to the corresponding author's institution.

* example:

```
'geo_provenance' : {
  'altitude' => 94,
  'city' => 'Timisoara',
  'country' => 'Romania',
  'label' => 'Str Marasesti 5, 300077 Timisoara, Romania',
  'latitude' => '45.75',
  'longitude' => '21.23',
  'precision' => 'address'
}
```

##### id

* The local-unique identifier of this biosample (referenced as "biosample_id"). This is unique in the context of the local (e.g. server, resource) instance.
* example:

```
'id' : "AM_BS__NCBISKYCGH-1993"
```

##### individual_id

* In a complete data model "individual_id" points to the "id" of the individual ("donor", "subjerct"...) this <i>biosample</i> was derived from.
In a local context this could be the <code>id</code> attribute in a corresponding "individuals" collection.

* example:

```
'individual_id' : "ind-cnhl-1293347-004"
```

##### info

* This is a wrapper for objects without further specification in the schema.

* example:

```
'info' : {
  'death' => 1,
  'followup_time' => 'P14M'
}
```

* Queries:  This query retrieves biosamples with an ISO8601 period value for "followup_time" and a boolean "true" for death.

```
db.biosamples.find( {"info" : { $elemMatch: { "followup_time.value" : { $regex : /\P/ }, "death.value" : true } } } )
```

##### name

* A short descriptive name for sample which should be sufficient to distinguish it from other samples in the project or collection. This is a label or symbolic identifier for the biosample.

* example:

```
'name' : "Sample BRCA-00429, 2nd replicate"
```

##### project_id

* The id attribute of the project that this biosample was collected in.

* example:

```
'project_id' : "ind-cnhl-1293347-004"
```

##### updated

* The time of the last edit of this record, in ISO8601

* example:

```
'updated' : "2022-11-11T09:45:13Z"
```

