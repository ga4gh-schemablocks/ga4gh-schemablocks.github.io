---
title: Gene
layout: default
permalink: "/schemas/ga4gh/Gene.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Gene

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/gene.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/gene.rst)  

<!--more-->

* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  
### Source (v0.0.1)

* raw source [[JSON](./current/Gene.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Gene.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Gene identifier


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>alternateIds</td>
    <td>array of string</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>symbol</td>
    <td>string</td>
  </tr>

</table>


#### alternateIds

* type: array of string

alternate identifiers

##### `alternateIds` Value Example  

```
[
   "HGNC:3477"
]
```

#### id

* type: string

The official gene identifier as designated by the organism gene nomenclature committee e.g. HGNC:3477 or MGI:2385071
Preferentially this should be a CURIE, however it is acceptable to use another equivalent resource identifier
such as ENSG00000120705, uc003ldc.6
refere to - https://www.genenames.org/data/gene-symbol-report/#!/hgnc_id/HGNC:3477


##### `id` Value Example  

```
"HGNC:3477"
```

#### symbol

* type: string

The official gene symbol as designated by the organism gene nomenclature committee e.g. ETF1 or Etf1


##### `symbol` Value Example  

```
"ETF1"
```


### `Gene` Value Examples  

```
{
   "id" : "HGNC:3477",
   "symbol" : "ETF1"
}
```
```
{
   "id" : "HGNC:3689",
   "symbol" : "FGFR2"
}
```


