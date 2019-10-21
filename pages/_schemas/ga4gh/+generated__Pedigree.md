---
title: Pedigree
layout: default
permalink: "/schemas/ga4gh/Pedigree.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Pedigree

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/pedigree.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/pedigree.rst)  
* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  
<!--more-->

### Source (v0.0.1)

* raw source [[JSON](./current/Pedigree.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Pedigree.yaml)

### Attributes
  
__Type:__ object  
__Description:__ https://software.broadinstitute.org/gatk/documentation/article?id=11016


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>person</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Person.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Person.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Person.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### person

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Person.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Person.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Person.html" target="_BLANK">HTML</a>]

add description

##### `person` Value Example  

```
[
   {
      "individualId" : "add example"
   }
]
```


### `Pedigree` Value Example  

```
{
   "person" : [
      {
         "individualId" : "add example"
      }
   ]
}
```


