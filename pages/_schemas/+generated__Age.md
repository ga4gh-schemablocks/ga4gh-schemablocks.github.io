---
title: 'Age'
layout: default
permalink: "/schemas/blocks/Age.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## Age
##### From Original GA4GH schema

#### Status: __proposed__

<!--more-->



#### Provenance  

* [Original GA4GH schema](https://github.com/ga4gh/ga4gh-schemas/blob/master/src/main/proto/ga4gh/bio_metadata.proto#L111)  

#### Used by  

* [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/age.rst)  
* [Progenetix database schema (Beacon+ backend)](https://github.com/progenetix/schemas/tree/master/main/yaml)  

#### Authors

* GA4GH Metadata Task Team, @mbaudis, @theisuru

#### Schema source: [YAML file](https://github.com/ga4gh-schemablocks/blocks/blob/master/src/yaml/age.yaml)    
#### Properties of the _Age_ class    

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>age</td>
    <td>string</td>
    <td></td>
    <td>The age as ISO8601 string.
</td>
  </tr>
  <tr>
    <td>age_class</td>
    <td></td>
    <td></td>
    <td>The age of the subject (e.g. individual at the onset of a phenotype), 
as Ontology_class.
Corresponding to the use of "age of onset" in HPO.
</td>
  </tr>

</table>


#### Description 
Age of the individual/subject at a specified time point or event.
Use cases her could be e.g. the use for "onset" of a disease or phenotype, 
or the age of the individual at the collection of a biosample.



#### Examples

```
{
   "onset" : {
      "age_class" : {
         "label" : "Juvenile onset",
         "id" : "HP:0003621"
      },
      "age" : "P12Y"
   }
}
```
```
{
   "age_at_collection" : {
      "age" : "P56Y3M"
   }
}
```
--------------------------------------------------------------------------------

<h4>Notes and examples on the <i>Age</i> properties</h4>

##### age

* The age as ISO8601 string.

* example:

```
'age' : "P12Y"
```

##### age_class

* The age of the subject (e.g. individual at the onset of a phenotype), 
as Ontology_class.
Corresponding to the use of "age of onset" in HPO.

* example:

```
'age_class' : {
  'label' => 'Juvenile onset',
  'id' => 'HP:0003621'
}
```

