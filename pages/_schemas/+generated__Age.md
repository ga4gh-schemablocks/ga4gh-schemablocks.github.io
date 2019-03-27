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
as Ontology_class. An example ontology here is HsapDv (Human 
Developmental Stages).
This does not exactly correspond to the use of "age of onset" in HPO,
since this specifically codes the "onset" of a phenotype, not just any
age as a timepoint. So when coding onset, implementations may choose 
to either use an "age of onset" ontology or an "Age" class.
</td>
  </tr>
  <tr>
    <td>age_range</td>
    <td>array</td>
    <td>string</td>
    <td>The age as an array of 1 or 2 ordered ISO8601 strings. This can be 
used either for a specific age or to express a known age range - e.g.
the minimum and maximum age of patients included in a study.
The format corresponds to the general "Range" type in FHIR.
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
      "age" : "P12Y",
      "age_class" : {
         "id" : "HP:0003621",
         "label" : "Juvenile onset"
      }
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
as Ontology_class. An example ontology here is HsapDv (Human 
Developmental Stages).
This does not exactly correspond to the use of "age of onset" in HPO,
since this specifically codes the "onset" of a phenotype, not just any
age as a timepoint. So when coding onset, implementations may choose 
to either use an "age of onset" ontology or an "Age" class.

* example:

```
'age_class' : {
  'id' => 'HsapDv:0000083',
  'label' => 'infant stage'
}
```

##### age_range

* The age as an array of 1 or 2 ordered ISO8601 strings. This can be 
used either for a specific age or to express a known age range - e.g.
the minimum and maximum age of patients included in a study.
The format corresponds to the general "Range" type in FHIR.

* example:

```
'age_range' : [
  'P13Y',
  'P18Y'
]
```

