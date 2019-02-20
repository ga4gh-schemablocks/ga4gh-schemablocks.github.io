---
title: 'Age'
layout: default
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## Age

The original schema definitions are provided in the [YAML file](https://github.com/ga4gh-schemablocks/blocks/blob/master/src/yaml/age.yaml).

<!--more-->

<h4>Properties of the <i>Age</i> class</h4>

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
    <td>The age as ISO8601 string.</td>
  </tr>
  <tr>
    <td>age_class</td>
    <td></td>
    <td></td>
    <td>The age of the object (e.g. individual at tome of a biosample collection), as Ontology_class.
Corresponding to the use of "age of onset" in HPO.
</td>
  </tr>

</table>Age of the object


#### Examples

```
{
   "age" : "P56Y",
   "age_class" : {
      "id" : "HP:0003621",
      "label" : "Juvenile onset"
   }
}
```
--------------------------------------------------------------------------------

<h4>Notes and examples on the <i>Age</i> properties</h4>

##### age

* The age as ISO8601 string.  
* example:  

```
'age' : "P56Y"
```

##### age_class

* The age of the object (e.g. individual at tome of a biosample collection), as Ontology_class.
Corresponding to the use of "age of onset" in HPO.
  
* example:  

```
'age_class' : {
  'label' => 'Juvenile onset',
  'id' => 'HP:0003621'
}
```

