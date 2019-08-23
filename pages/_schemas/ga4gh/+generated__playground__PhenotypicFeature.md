---
title: 'PhenotypicFeature'
layout: default
permalink: "/schemas/ga4gh/PhenotypicFeature.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---


## PhenotypicFeature

### SchemaBlocks Metadata

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__


* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/phenopacket.rst)  

* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/phenopacket.rst)  

* Contributors  

    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
<!--more-->

### Source

* raw source [[YAML](./PhenotypicFeature.yaml)] [[JSON](./PhenotypicFeature.json)] 
* [Github](https://github.com/ga4gh-schemablocks/playground/blob/master/sb-meta/PhenotypicFeature.yaml)

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
    <td>ageOfOnset</td>
    <td></td>
  </tr>
  <tr>
    <td>ageRangeOfOnset</td>
    <td></td>
  </tr>
  <tr>
    <td>classOfOnset</td>
    <td></td>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
  </tr>
  <tr>
    <td>evidence</td>
    <td></td>
  </tr>
  <tr>
    <td>modifiers</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/OntologyClass.yaml [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.yaml" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>negated</td>
    <td>boolean</td>
  </tr>
  <tr>
    <td>severity</td>
    <td></td>
  </tr>
  <tr>
    <td>type</td>
    <td></td>
  </tr>

</table>

    
#### ageOfOnset

* type: 



##### `ageOfOnset` Value Example  

    
#### ageRangeOfOnset

* type: 



##### `ageRangeOfOnset` Value Example  

    
#### classOfOnset

* type: 



##### `classOfOnset` Value Example  

    
#### description

* type: string

Free-text description of the phenotype. Note this is not a acceptable place to document/describe the
phenotype - the type and onset etc... fields should be used for this purpose.


##### `description` Value Example  

```
"Pancreatic Adenocarcinoma"
```
    
#### evidence

* type: 



##### `evidence` Value Example  

    
#### modifiers

* type: array of https://schemablocks.org/schemas/ga4gh/OntologyClass.yaml [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.yaml" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

subclasses of HP:0012823 ! Clinical modifier apart from Severity HP:0012824 - Severity


##### `modifiers` Value Example  

```
{
   "id" : "HP:0025282",
   "label" : "Dull"
}
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

* type: 



##### `severity` Value Example  

    
#### type

* type: 



##### `type` Value Example  



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

