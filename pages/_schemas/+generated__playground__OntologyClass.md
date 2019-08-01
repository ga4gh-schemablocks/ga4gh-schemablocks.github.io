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

* {S}[B] Status [[i]](https://schemablocks.org/about/sb-status-levels.html)

    - __implemented__   

* Provenance
    - [Original GA4GH schema](https://github.com/ga4gh/ga4gh-schemas/blob/master/src/main/proto/ga4gh/common.proto)  
* Used by
    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/ontologyclass.rst)  
    - [Progenetix database schema (Beacon+ backend)](https://github.com/progenetix/schemas/tree/master/main/yaml)  
* Contributors
    - [Christopher Mungall](https://orcid.org/0000-0002-6601-2165)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
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
* CURIE of the ontology class

##### `id` Value Example  

```
"ncit:C8294"
```
    
#### label

* type: string
* the text label associated with the ontology class

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

