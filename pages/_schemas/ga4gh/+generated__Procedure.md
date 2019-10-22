---
title: Procedure
layout: default
permalink: "/schemas/ga4gh/Procedure.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Procedure

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/procedure.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/procedure.rst)  

<!--more-->

* Contributors  

    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  
### Source (v0.0.1)

* raw source [[JSON](./current/Procedure.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Procedure.yaml)

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
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>code</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### bodySite

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

FHIR mapping - Procedure.bodySite


##### `bodySite` Value Example  

```
{
   "id" : "UBERON:0003403",
   "label" : "skin of forearm"
}
```

#### code

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

FHIR mapping - Procedure.code


##### `code` Value Example  

```
{
   "id" : "NCIT:C28743",
   "label" : "Funch Biopsy"
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
      "label" : "Funch Biopsy"
   }
}
```


