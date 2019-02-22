---
title: 'Individual'
layout: default
permalink: "/schemas/blocks/Individual.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## Individual


#### Status: __proposed__

<!--more-->



#### Provenance  


#### Authors

* 

#### Schema source: [YAML file](https://github.com/ga4gh-schemablocks/blocks/blob/master/src/yaml/individual.yaml)    
#### Properties of the _Individual_ class    

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>biocharacteristics</td>
    <td>array</td>
    <td></td>
    <td>list of Phenotype objects with properly prefixed term ids, describing features of the individual which are not specific to the reported biosample(s); typical examples here are sex, species and "systemic" phenotypes and diseases
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
    <td>Data use conditions applying to data from this individual, as ontology object (e.g. DUO).
</td>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
    <td></td>
    <td>A free text description of the individual.</td>
  </tr>
  <tr>
    <td>external_references</td>
    <td>array</td>
    <td></td>
    <td>Different representations of the same record, not different records in relation with this individual
</td>
  </tr>
  <tr>
    <td>geo_provenance</td>
    <td></td>
    <td></td>
    <td>This geo_class attribute ideally describes the geographic location of where this individual originates from.
This value may reflect either the place of birth or residence, but frequently may correspond to the place the study was performed.
</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
    <td></td>
    <td>The local-unique identifier of this individual (referenced as "individual_id").</td>
  </tr>
  <tr>
    <td>info</td>
    <td></td>
    <td></td>
    <td>additional variant information, as defined in the example and accompanying documentation TODO this should be its own class</td>
  </tr>
  <tr>
    <td>name</td>
    <td>string</td>
    <td></td>
    <td>A short descriptive "name" for the individual, which may or may not correspond to a "real name". Unstructured text.
</td>
  </tr>
  <tr>
    <td>organism</td>
    <td></td>
    <td></td>
    <td>An NCBI taxonomy term describing the species of the individual.
For resources where there may be more than one organism being studied it is advisable to indicate the taxonomic identifier of that organism, to it's most specific level
</td>
  </tr>
  <tr>
    <td>sex</td>
    <td></td>
    <td></td>
    <td>A PATO term describing the biological sex of the individual
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
An individual is a single organism (here typically a human).



#### Examples

```
{
   "sex" : {
      "id" : "PATO:0020000",
      "label" : "female genetic sex"
   },
   "biocharacteristics" : [
      {
         "type" : {
            "id" : "HP:0003745",
            "label" : "Genetic anticipation"
         },
         "description" : "Patient with Down syndrome"
      }
   ],
   "organism" : {
      "id" : "NCBITaxon:9606",
      "label" : "Homo sapiens"
   },
   "created" : "2017-10-25T07:06:03Z",
   "description" : "patient with lung cancer, male smoker",
   "updated" : "2017-10-25T07:06:03Z",
   "id" : "AM_BS__NCBISKYCGH-1993",
   "data_use_conditions" : {
      "id" : "DUO:0000004",
      "label" : "no restriction"
   },
   "external_references" : [
      {
         "relation" : "provenance",
         "description" : "Cellosaurus cell line identifier",
         "type" : {
            "id" : "cellosaurus:CVCL_0312",
            "label" : "HOS"
         }
      }
   ],
   "geo_provenance" : {
      "city" : "Timisoara",
      "label" : "Str Marasesti 5, 300077 Timisoara, Romania",
      "longitude" : 21.23,
      "country" : "Romania",
      "altitude" : 94,
      "latitude" : 45.75
   },
   "info" : {
      "last_name" : {
         "value" : "Tichy",
         "type" : "string"
      },
      "first_name" : {
         "value" : "Ion",
         "type" : "string"
      }
   },
   "name" : "Ion Tichy, space explorer"
}
```
--------------------------------------------------------------------------------

<h4>Notes and examples on the <i>Individual</i> properties</h4>

##### biocharacteristics

* list of Phenotype objects with properly prefixed term ids, describing features of the individual which are not specific to the reported biosample(s); typical examples here are sex, species and "systemic" phenotypes and diseases

* example:

```
'biocharacteristics' : [
  {
    'description' => 'Patient with Down syndrome',
    'type' => {
                'id' => 'HP:0003745',
                'label' => 'Genetic anticipation'
              }
  }
]
```

* Queries:  the query will return all individuals who have been properly labeled as human
```
db.individual.find( { "biocharacteristics.type.id" : "NCBITaxon:9606" } )
```
this call to the distinct funcion will return *all* HPO annotated classes
```
db.biosamples.distinct( { "biocharacteristics.type.id", "biocharacteristics.type.id" : { $regex : /HP\:/i } } )
```

##### created

* The creation time of this record, in ISO8601

* example:

```
'created' : "2017-10-25T07:06:03Z"
```

##### data_use_conditions

* Data use conditions applying to data from this individual, as ontology object (e.g. DUO).

* example:

```
'data_use_conditions' : {
  'label' => 'no restriction',
  'id' => 'DUO:0000004'
}
```

##### description

* A free text description of the individual.
* example:

```
'description' : "patient with lung cancer, male smoker"
```

##### external_references

* Different representations of the same record, not different records in relation with this individual

* example:

```
'external_references' : [
  {
    'type' => {
                'label' => 'HOS',
                'id' => 'cellosaurus:CVCL_0312'
              },
    'relation' => 'provenance',
    'description' => 'Cellosaurus cell line identifier'
  }
]
```

* Queries:  The query will return all individuals which have been reported in experiments in this publication.

```
db.individuals.find( { "external_references.type.id" : "pubmed:17440070" } )
```

##### geo_provenance

* This geo_class attribute ideally describes the geographic location of where this individual originates from.
This value may reflect either the place of birth or residence, but frequently may correspond to the place the study was performed.

* example:

```
'geo_provenance' : {
  'city' => 'Timisoara',
  'latitude' => '45.75',
  'altitude' => 94,
  'country' => 'Romania',
  'label' => 'Str Marasesti 5, 300077 Timisoara, Romania',
  'longitude' => '21.23'
}
```

##### id

* The local-unique identifier of this individual (referenced as "individual_id").
* example:

```
'id' : "AM_BS__NCBISKYCGH-1993"
```

##### info

* additional variant information, as defined in the example and accompanying documentation TODO this should be its own class
* example:

```
'info' : {
  'last_name' => {
                   'value' => 'Tichy',
                   'type' => 'string'
                 },
  'first_name' => {
                    'type' => 'string',
                    'value' => 'Ion'
                  }
}
```

##### name

* A short descriptive "name" for the individual, which may or may not correspond to a "real name". Unstructured text.

* example:

```
'name' : "Ion Tichy, space explorer"
```

##### organism

* An NCBI taxonomy term describing the species of the individual.
For resources where there may be more than one organism being studied it is advisable to indicate the taxonomic identifier of that organism, to it's most specific level

* example:

```
'organism' : {
  'id' => 'NCBITaxon:9606',
  'label' => 'Homo sapiens'
}
```

##### sex

* A PATO term describing the biological sex of the individual

* example:

```
'sex' : {
  'id' => 'PATO:0020000',
  'label' => 'female genetic sex'
}
```

##### updated

* The time of the last edit of this record, in ISO8601

* example:

```
'updated' : "2022-11-11T09:45:13Z"
```

