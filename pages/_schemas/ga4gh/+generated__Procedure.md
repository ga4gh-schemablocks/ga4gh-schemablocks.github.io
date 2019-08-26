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

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__


* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/procedure.rst)  

* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/procedure.rst)  

* Contributors  

    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
<!--more-->

### Source

* raw source [[JSON](./Procedure.json)] 
* [Github](https://github.com/ga4gh-schemablocks/playground/blob/master/src/Procedure.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A clinical procedure performed on a subject. By preference a single concept to indicate both the procedure and the
body site should be used. In cases where this is not possible, the body site should be indicated using a separate
ontology class.


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>bodySite</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>code</td>
    <td>https://schemablocks.org/schemas/ga4gh/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>

    
#### bodySite

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

FHIR mapping - Procedure.bodySite


##### `bodySite` Value Example  

```
{
   "id" : "UBERON:0003403",
   "label" : "skin of forearm"
}
```
    
#### code

* type: https://schemablocks.org/schemas/ga4gh/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

FHIR mapping - Procedure.code


##### `code` Value Example  

```
{
   "id" : "NCIT:C28743",
   "label" : "Punch Biopsy"
}
```


### `Procedure` Value Example  

```
{
   "bodySite" : {
      "id" : "UBERON:0003403",
      "label" : "skin of forearm"
   },
   "code" : {
      "id" : "NCIT:C28743",
      "label" : "Punch Biopsy"
   }
}
```

