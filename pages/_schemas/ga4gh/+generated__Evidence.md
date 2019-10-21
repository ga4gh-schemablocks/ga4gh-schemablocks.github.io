---
title: Evidence
layout: default
permalink: "/schemas/ga4gh/Evidence.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Evidence

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/evidence.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/evidence.rst)  
* Contributors  

    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  
<!--more-->

### Source (v0.0.1)

* raw source [[JSON](./current/Evidence.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Evidence.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Evidence, FHIR mapping: Condition.evidence (https://www.hl7.org/fhir/condition-definitions.html#Condition.evidence)


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>evidenceCode</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>reference</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/ExternalReference.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/ExternalReference.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/ExternalReference.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### evidenceCode

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

The encoded evidence type using, for example the Evidence & Conclusion Ontology
(ECO - http://purl.obolibrary.org/obo/eco.owl)
FHIR mapping - Condition.evidence.code


##### `evidenceCode` Value Example  

```
{
   "id" : "add example",
   "label" : "add example"
}
```

#### reference

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/ExternalReference.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/ExternalReference.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/ExternalReference.html" target="_BLANK">HTML</a>]

FHIR mapping - Condition.evidence.detail


##### `reference` Value Example  

```
{
   "description" : "COL6A1 mutation leading to Bethlem myopathy with recurrent hematuria: a case report.",
   "id" : "PMID:30808312"
}
```


### `Evidence` Value Example  

```
{
   "evidenceCode" : {
      "id" : "add example",
      "label" : "add example"
   },
   "reference" : {
      "description" : "COL6A1 mutation leading to Bethlem myopathy with recurrent hematuria: a case report.",
      "id" : "PMID:30808312"
   }
}
```


