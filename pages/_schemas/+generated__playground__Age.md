---
title: 'Age'
layout: default
permalink: "/schemas/blocks/Age.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---

## Age

### SchemaBlocks Metadata

##### Contributors  

* Jules Jacobsen  
* Peter Robinson (orcid:0000-0002-0736-91998)  
* Michael Baudis (orcid:0000-0002-9903-4248)  

##### Provenance  

* [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/age.rst)  

##### Used by  

* [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/age.rst)  

##### {S}[B] Status  

* [implemented](https://schemablocks.org/about/sb-status-levels.html)  

<!--more-->

### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>age</td>
    <td>string</td>
  </tr>
  <tr>
    <td>ageClass</td>
    <td></td>
  </tr>

</table>

    
#### age

* type: string

Age as ISO8601 period

##### `age` Value Example  

```
"P12Y"
```
    
#### ageClass

* type: 

The age of the subject (e.g. individual at the onset of a phenotype),
as OntologyClass. An example ontology here is HsapDv (Human
Developmental Stages).
This does not exactly correspond to the use of "age of onset" in HPO,
since this specifically codes the "onset" of a phenotype, not just any
age as a timepoint. So when coding onset, implementations may choose
to either use an "age of onset" ontology or an "Age" class.


##### `ageClass` Value Example  

```
{
   "id" : "HsapDv:0000083",
   "label" : "infant stage"
}
```

### `Age` Value Examples  

```
{
   "ageClass" : {
      "label" : "adolescent stage",
      "id" : "HsapDv:0000086"
   },
   "age" : "P14Y"
}
```
```
{
   "age" : "P56Y3M"
}
```

