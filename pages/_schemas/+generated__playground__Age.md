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

* {S}[B] Status [[i]](https://schemablocks.org/about/sb-status-levels.html)

    - __implemented__   

* Provenance
    - Phenopackets]()
* Used by
    - Phenopackets]()
* Contributors
    - Jules Jacobsen]()
    - Peter Robinson]()
    - Michael Baudis]()<!--more-->

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
* Age as ISO8601 period

##### `age` Value Example  

```
"P12Y"
```
    
#### ageClass

* type: 
* The age of the subject (e.g. individual at the onset of a phenotype),
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
   "age" : "P14Y",
   "ageClass" : {
      "id" : "HsapDv:0000086",
      "label" : "adolescent stage"
   }
}
```
```
{
   "age" : "P56Y3M"
}
```

