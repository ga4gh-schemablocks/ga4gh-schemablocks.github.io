---
title: 'Ontology_term'
layout: default
permalink: "/schemas/blocks/Ontology_term.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## Ontology_term
##### From Original GA4GH schema

#### Status: __proposed__

<!--more-->



#### Provenance  

* [Original GA4GH schema](https://github.com/ga4gh-metadata/metadata-schemas/blob/master/schemas/shared.proto#L39)  

#### Used by  

* [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/geolocation.rst)  
* [Progenetix database schema (Beacon+ backend)](https://github.com/progenetix/schemas/tree/master/main/yaml)  

#### Authors

* GA4GH Metadata Task Team, @mbaudis, @cmungall

#### Schema source: [YAML file](https://github.com/ga4gh-schemablocks/blocks/blob/master/src/yaml/ontology_term.yaml)    
#### Properties of the _Ontology_term_ class    

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
    <td>properly prefixed CURIE of the ontology term / class</td>
  </tr>
  <tr>
    <td>label</td>
    <td>string</td>
    <td></td>
    <td>the text label associated with the term</td>
  </tr>

</table>


#### Description 
Ontology_term represents the core object used to reference domain-specific 
entities, as well as to identify their domains through the appropriate
prefix.
CURIES are case sensitive, although for prefixes this practice is 
inconsistently followed.



#### Examples

```
{
   "label" : "no restriction",
   "id" : "DUO:0000004"
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

* properly prefixed CURIE of the ontology term / class
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

