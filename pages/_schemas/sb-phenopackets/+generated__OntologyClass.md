---
title: OntologyClass
layout: default
permalink: "/schemas/sb-phenopackets/OntologyClass.html"
sb_status: "core"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - core
  - sb-phenopackets
---


## OntologyClass (sb-phenopackets)

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __core__

* Provenance  

    - Original GA4GH schema  
    - additional discussions with @cmungall and phenopackets developers  
    - Phenopackets alignment  
* Used by  

    - Phenopackets  
    - Progenetix database schema (Beacon+ backend)  

<!--more-->

* Contributors  

    - GA4GH Metadata Task Team  
    - [Christopher Mungall](https://orcid.org/0000-0002-6601-2165)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  

### Source (v1.0.0)

* raw source [[JSON](./current/OntologyClass.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/OntologyClass.yaml)

### Attributes
  
__Type:__ object  
__Description:__ OntologyClass represents the core object used to reference domain-specific
entities, as well as to identify their domains through the appropriate
prefix.
CURIES are case sensitive, although for prefixes this practice is
inconsistently followed.


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

CURIE of the ontology class

##### `id` Value Example  

```
"ncit:C8294"
```

#### label

* type: string

the text label associated with the ontology class

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


