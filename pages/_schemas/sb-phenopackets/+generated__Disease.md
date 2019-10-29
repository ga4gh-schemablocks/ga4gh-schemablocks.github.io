---
title: Disease
layout: default
permalink: "/schemas/sb-phenopackets/Disease.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
  - sb-phenopackets
---


## Disease (sb-phenopackets)

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/disease.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/disease.rst)  

<!--more-->

* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  

### Source (v1.0.0)

* raw source [[JSON](./current/Disease.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Disease.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Message to indicate a disease (diagnosis) and its recorded onset.


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>ageOfOnset</td>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Age.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>ageRangeOfOnset</td>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/AgeRange.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>classOfOnset</td>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>term</td>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>tumorStage</td>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### ageOfOnset

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Age.html" target="_BLANK">HTML</a>]

The onset of the disease. The values of this will come from the HPO onset hierarchy
i.e. subclasses of HP:0003674
FHIR mapping: Condition.onset


##### `ageOfOnset` Value Example  

```
{
   "age" : "P35Y"
}
```

#### ageRangeOfOnset

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/AgeRange.html" target="_BLANK">HTML</a>]

The onset of the disease. The values of this will come from the HPO onset hierarchy
i.e. subclasses of HP:0003674
FHIR mapping: Condition.onset


##### `ageRangeOfOnset` Value Example  

```
{
   "start" : {
      "age" : "P35Y"
   }
}
```

#### classOfOnset

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

The onset of the disease. The values of this will come from the HPO onset hierarchy
i.e. subclasses of HP:0003674
FHIR mapping: Condition.onset


##### `classOfOnset` Value Example  

```
{
   "id" : "HP:0003596",
   "label" : "Middle age onset"
}
```

#### term

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

The identifier of this disease
e.g. MONDO:0007043, OMIM:101600, Orphanet:710, DOID:14705 (note these are all equivalent)


##### `term` Value Example  

```
{
   "id" : "MONDO:0007043"
}
```

#### tumorStage

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

Cancer findings in the TNM system that is relevant to the diagnosis of cancer.
See https://www.cancer.gov/about-cancer/diagnosis-staging/staging
e.g. Child terms of NCIT:C48232 (Cancer TNM Finding)


##### `tumorStage` Value Example  

```
[
   {
      "id" : "NCIT:C48706",
      "label" : "N1 Stage Finding"
   }
]
```


### `Disease` Value Example  

```
{
   "classOfOnset" : {
      "id" : "HP:0003596",
      "label" : "Middle age onset"
   },
   "term" : {
      "id" : "MONDO:0007043",
      "label" : "Pfeiffer syndrome"
   }
}
```


