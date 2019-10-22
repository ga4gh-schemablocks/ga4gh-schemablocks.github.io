---
title: Age
layout: default
permalink: "/schemas/ga4gh/Age.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Age

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/age.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/age.rst)  

<!--more-->

* Contributors  

    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
### Source (v0.0.1)

* raw source [[JSON](./current/Age.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Age.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Age

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

</table>


#### age

* type: string

Age as ISO8601 period

##### `age` Value Example  

```
"P12Y"
```


### `Age` Value Example  

```
{
   "age" : "P14Y"
}
```


