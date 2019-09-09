---
title: AgeRange
layout: default
permalink: "/schemas/ga4gh/AgeRange.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---


## AgeRange

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

### Source (v0.0.1)

* raw source [[JSON](./current/AgeRange.json)]
* [Github](https://github.com/ga4gh-schemablocks/blocks/blob/master/schemas/AgeRange.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Age range

### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>end</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>start</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### end

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]



##### `end` Value Example  


#### start

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]



##### `start` Value Example  



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


