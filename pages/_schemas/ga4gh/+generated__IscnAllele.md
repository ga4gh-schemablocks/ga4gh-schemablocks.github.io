---
title: IscnAllele
layout: default
permalink: "/schemas/ga4gh/IscnAllele.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## IscnAllele

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/variant.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/variant.rst)  
* Contributors  

    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  
<!--more-->

### Source (v0.0.1)

* raw source [[JSON](./current/IscnAllele.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/IscnAllele.yaml)

### Attributes
  
__Type:__ object  
__Description:__ See https://www.humpath.com/spip.php?article13862


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>iscn</td>
    <td>string</td>
  </tr>

</table>


#### id

* type: string

add description

##### `id` Value Example  

```
"add example"
```

#### iscn

* type: string

An ICSN code such as del(6)(q23q24), t(8;9;11)(q12;p24;p12), +15

##### `iscn` Value Example  

```
"del(6)(q23q24)"
```


### `IscnAllele` Value Example  

```
{
   "id" : "add example",
   "iscn" : "del(6)(q23q24)"
}
```


