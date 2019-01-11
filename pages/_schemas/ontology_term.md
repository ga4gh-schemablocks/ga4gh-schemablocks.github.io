---
title: 'ontology_term'
layout: default
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## GA4GH SchemaBlocks - Ontology_term


Prototype objects definitions.


The original schema definitions are provided in the [YAML file](http://ga4gh-schemablocks.github.io/blocks/blob/master/ontology_term.yaml).

<!--more-->
### Ontology_term

<h4>Properties of the <i>Ontology_term</i> class</h4>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>
Ontology_term represents the core object used to reference domain-specific 
entities, as well as to identify their domains through the appropriate
prefix.
CURIES are case sensitive, although for prefixes this practice is 
inconsistently followed.

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
</table>


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
   "label" : "Glioblastoma",
   "id" : "ncit:C3058"
}
```
--------------------------------------------------------------------------------

<h4>Extended notes and examples on the <i>Ontology_term</i> properties</h4>

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

