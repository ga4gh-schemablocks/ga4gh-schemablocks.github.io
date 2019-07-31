---
title: 'OntologyClass'
layout: default
permalink: "/schemas/blocks/OntologyClass.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---

## OntologyClass

### SchemaBlocks Metadata

##### Provenance  

* Original GA4GH schema  
* additional discussions with @cmungall and phenopackets developers  
* Phenopackets alignment  

##### Used by  

* Phenopackets  
* Progenetix database schema (Beacon+ backend)  

##### Contributors  

*   
* [Christopher Mungall](https://orcid.org/0000-0002-6601-2165)  
* [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
* [Mélanie Courtot](https://orcid.org/0000-0002-9551-6370)  

##### {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)

* __implemented__  

<!--more-->

### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>label</td>
    <td>string</td>
  </tr>

</table>

    
#### id

* type: string

properly prefixed CURIE of the ontology term

##### `id` Value Example  

```
"ncit:C8294"
```
    
#### label

* type: string

the text label associated with the term

##### `label` Value Example  

```
"Pancreatic Adenocarcinoma"
```

### `OntologyClass` Value Examples  

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

