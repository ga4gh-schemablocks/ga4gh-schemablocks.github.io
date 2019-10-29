---
title: PhenotypicFeature
layout: default
permalink: "/schemas/sb-phenopackets/PhenotypicFeature.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
  - sb-phenopackets
---


## PhenotypicFeature (sb-phenopackets)

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/PhenotypicFeature.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/PhenotypicFeature.rst)  

<!--more-->

* Contributors  

    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  

### Source (v1.0.0)

* raw source [[JSON](./current/PhenotypicFeature.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/PhenotypicFeature.yaml)

### Attributes
  
__Type:__ object  
__Description:__ An individual phenotypic feature, observed as either present or absent (negated),
with possible onset, modifiers and frequency.
FHIR mapping: Condition (https://www.hl7.org/fhir/condition.html) or
Observation (https://www.hl7.org/fhir/observation.html)


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
    <td>description</td>
    <td>string</td>
  </tr>
  <tr>
    <td>evidence</td>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Evidence.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Evidence.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Evidence.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>modifiers</td>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>negated</td>
    <td>boolean</td>
  </tr>
  <tr>
    <td>severity</td>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>type</td>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### ageOfOnset

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Age.html" target="_BLANK">HTML</a>]

The age at disease onset.
FHIR mapping: Condition.onset


##### `ageOfOnset` Value Example  

```
{
   "age" : "P35Y"
}
```

#### ageRangeOfOnset

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/AgeRange.html" target="_BLANK">HTML</a>]

the values of this will come from the HPO onset hierarchy i.e. subclasses of HP:0003674
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

The values of this will come from the HPO onset hierarchy i.e. 
subclasses of HP:0003674
FHIR mapping: Condition.onset


##### `classOfOnset` Value Example  

```
{
   "id" : "HP:0003596",
   "label" : "Middle age onset"
}
```

#### description

* type: string

Free-text description of the phenotype. Note this is not a acceptable place to document/describe the
phenotype - the type and onset etc... fields should be used for this purpose.


##### `description` Value Example  

```
"Pancreatic Adenocarcinoma"
```

#### evidence

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Evidence.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Evidence.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Evidence.html" target="_BLANK">HTML</a>]

Evidences for how the phenotype was determined.

##### `evidence` Value Example  

```
{
   "evidenceCode" : {
      "id" : "add example",
      "label" : "add example"
   },
   "reference" : {
      "description" : "add example",
      "id" : "add example"
   }
}
```

#### modifiers

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

subclasses of HP:0012823 ! Clinical modifier apart from Severity HP:0012824 - Severity

##### `modifiers` Value Example  

```
[
   {
      "id" : "HP:0025282",
      "label" : "Dull"
   }
]
```

#### negated

* type: boolean

Flag to indicate whether the phenotype was observed or not. Default is 'false',
in other words the phenotype was observed. Therefore it is only required in cases to indicate that
the phenotype was looked for, but found to be absent. More formally, this modifier indicates
the logical negation of the OntologyClass used in the 'type' field.
*CAUTION* It is imperative to check this field for correct interpretation of the phenotype!


##### `negated` Value Example  

```
"false"
```

#### severity

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

Severity of the condition e.g. subclasses of HP:0012824-Severity or SNOMED:272141005-Severities
FHIR mapping: Condition.severity


##### `severity` Value Example  

```
{
   "id" : "HP:0012825",
   "label" : "Mild"
}
```

#### type

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

The primary ontology class which describes the phenotype.
FHIR mapping: Condition.identifier


##### `type` Value Example  

```
{
   "id" : "add example",
   "label" : "Craniosynostosis"
}
```


### `PhenotypicFeature` Value Example  

```
{
   "ageOfOnset" : {
      "id" : "HP:0003596",
      "label" : "Middle age onset"
   },
   "description" : "add example",
   "evidence" : {
      "evidenceCode" : {
         "id" : "add example",
         "label" : "add example"
      },
      "reference" : {
         "description" : "add example",
         "id" : "add example"
      }
   },
   "modifiers" : [
      {
         "id" : "HP:0025282",
         "label" : "Dull"
      }
   ],
   "negated" : "",
   "severity" : {
      "id" : "HP:0012825",
      "label" : "Mild"
   },
   "type" : {
      "id" : "add example",
      "label" : "add example"
   }
}
```


