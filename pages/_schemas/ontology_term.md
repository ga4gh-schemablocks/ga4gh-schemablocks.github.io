---
title: 'Ontology_term'
layout: default
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## Ontology_term

The original schema definitions are provided in the [YAML file](https://github.com/ga4gh-schemablocks/blocks/blob/master/src/yaml/ontology_term.yaml).

<!--more-->

<h4>Properties of the <i>Ontology_term</i> class</h4>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
    <td></td>
    <td>properly prefixed CURIE of the ontology term</td>
  </tr>
  <tr>
    <td>label</td>
    <td>string</td>
    <td></td>
    <td>the text label associated with the term</td>
  </tr>

</table>Ontology_term represents the core object used to reference domain-specific 
entities, as well as to identify their domains through the appropriate
prefix.
CURIES are case sensitive, although for prefixes this practice is 
inconsistently followed.



#### Examples

```
{
   "id" : "DUO:0000004",
   "label" : "no restriction"
}
```
```
{
   "label" : "Juvenile onset",
   "id" : "HP:0003621"
}
```
```
{
   "id" : "ncit:C3058",
   "label" : "Glioblastoma"
}
```
--------------------------------------------------------------------------------

<h4>Notes and examples on the <i>Ontology_term</i> properties</h4>

##### id

* properly prefixed CURIE of the ontology term  
* example:  

```
'id' : "ncit:C8294"
```

##### label

* the text label associated with the term  
* example:  

```
'label' : "Pancreatic Adenocarcinoma"
```

