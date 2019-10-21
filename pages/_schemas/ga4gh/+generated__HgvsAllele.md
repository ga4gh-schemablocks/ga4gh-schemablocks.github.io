---
title: HgvsAllele
layout: default
permalink: "/schemas/ga4gh/HgvsAllele.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## HgvsAllele

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

* raw source [[JSON](./current/HgvsAllele.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/HgvsAllele.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A single HGVS allele.
It is recommended that the string is validated using the VariantValidator - https://variantvalidator.org/
See http://varnomen.hgvs.org/recommendations/DNA/variant/alleles/


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>hgvs</td>
    <td>string</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>

</table>


#### hgvs

* type: string

add description

##### `hgvs` Value Example  

```
"NM_001848.2:c.877G>A"
```

#### id

* type: string

add description

##### `id` Value Example  

```
"add example"
```


### `HgvsAllele` Value Example  

```
{
   "hgvs" : "NM_001848.2:c.877G>A",
   "id" : "add example"
}
```


