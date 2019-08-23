---
title: 'Evidence'
layout: default
permalink: "/schemas/ga4gh/Evidence.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
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
<!--more-->

### Source

* raw source [[YAML](./Evidence.yaml)] [[JSON](./Evidence.json)] 
* [Github](https://github.com/ga4gh-schemablocks/playground/blob/master/sb-meta/Evidence.yaml)

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
    <td></td>
  </tr>
  <tr>
    <td>reference</td>
    <td></td>
  </tr>

</table>

    
#### evidenceCode

* type: 



##### `evidenceCode` Value Example  

    
#### reference

* type: 



##### `reference` Value Example  



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

