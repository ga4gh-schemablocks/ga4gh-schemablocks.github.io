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
##### From Original GA4GH schema & 

#### Status: __proposed__

<!--more-->



#### Provenance  

* [Original GA4GH schema](https://github.com/ga4gh/ga4gh-schemas/blob/master/src/main/proto/ga4gh/common.proto#L152)  
*   

#### Used by  

* [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/ontologyclass.rst)  
* [Progenetix data schema](http://progenetix.org)  

#### Authors

* GA4GH Metadata Task Team, @cmungall, @mcourtot, @mbaudis

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
    <td>properly prefixed CURIE of the ontology term/class
</td>
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
This is a mature core object, where the naming of the object itself still may change (i.e. Phenopackets uses `OntologyClass`).



#### Examples

```
{
   "id" : "DUO:0000004",
   "label" : "no restriction"
}
```
```
{
   "id" : "HP:0003621",
   "label" : "Juvenile onset"
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

* properly prefixed CURIE of the ontology term/class

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

