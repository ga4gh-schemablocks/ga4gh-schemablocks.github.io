---
title: 'Procedure'
layout: default
permalink: "/schemas/ga4gh/Procedure.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---


## Procedure

### SchemaBlocks Metadata

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__


* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/procedure.rst)  

* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/procedure.rst)  

* Contributors  

    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  
<!--more-->

### Source

* raw source [[YAML](./Procedure.yaml)] [[JSON](./Procedure.json)] 
* [Github](https://github.com/ga4gh-schemablocks/playground/blob/master/sb-meta/Procedure.yaml)

### Attributes

* Type: 
    - object

### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>bodySite</td>
    <td></td>
  </tr>
  <tr>
    <td>code</td>
    <td></td>
  </tr>

</table>

    
#### bodySite

* type: 



##### `bodySite` Value Example  

    
#### code

* type: 



##### `code` Value Example  



### `Procedure` Value Example  

```
{
   "bodySite" : {
      "id" : "UBERON:0003403",
      "label" : "skin of forearm"
   },
   "code" : {
      "id" : "NCIT:C28743",
      "label" : "Funch Biopsy"
   }
}
```

