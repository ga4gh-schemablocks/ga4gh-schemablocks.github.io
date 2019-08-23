---
title: 'AgeRange'
layout: default
permalink: "/schemas/ga4gh/AgeRange.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---


## AgeRange

### SchemaBlocks Metadata

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__


* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/agerange.rst)  

* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/agerange.rst)  

* Contributors  

    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  
<!--more-->

### Source

* raw source [[YAML](./AgeRange.yaml)] [[JSON](./AgeRange.json)] 
* [Github](https://github.com/ga4gh-schemablocks/playground/blob/master/sb-meta/AgeRange.yaml)

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
    <td>end</td>
    <td>https://schemablocks.org/schemas/ga4gh/Age.yaml [<a href="https://schemablocks.org/schemas/ga4gh/Age.yaml" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>start</td>
    <td>https://schemablocks.org/schemas/ga4gh/Age.yaml [<a href="https://schemablocks.org/schemas/ga4gh/Age.yaml" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>

    
#### end

* type: https://schemablocks.org/schemas/ga4gh/Age.yaml [<a href="https://schemablocks.org/schemas/ga4gh/Age.yaml" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]

Age as ISO8601 string or OntologyClass

##### `end` Value Examples  

```
{
   "ageClass" : {
      "id" : "HsapDv:0000086",
      "label" : "adolescent stage"
   }
}
```
```
{
   "age" : "P16Y6M"
}
```
    
#### start

* type: https://schemablocks.org/schemas/ga4gh/Age.yaml [<a href="https://schemablocks.org/schemas/ga4gh/Age.yaml" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]

Age as ISO8601 string or OntologyClass

##### `start` Value Example  

```
{
   "age" : "P12Y"
}
```


### `AgeRange` Value Example  

```
{
   "end" : {
      "age" : "P18Y"
   },
   "start" : {
      "age" : "P12Y",
      "ageClass" : {
         "id" : "HsapDv:0000086",
         "label" : "adolescent stage"
      }
   }
}
```

