---
title: VcfAllele
layout: default
permalink: "/schemas/ga4gh/VcfAllele.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## VcfAllele

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

* raw source [[JSON](./current/VcfAllele.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/VcfAllele.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A single VCF allele.
For structural variation the INFO field should contain the relevant information e.g.
END=43500;SVTYPE=DUP;CHR2=1;SVLEN=29000;
See https://samtools.github.io/hts-specs/VCFv4.3.pdf


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>alt</td>
    <td>string</td>
  </tr>
  <tr>
    <td>chr</td>
    <td>string</td>
  </tr>
  <tr>
    <td>genomeAssembly</td>
    <td>string</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>info</td>
    <td>string</td>
  </tr>
  <tr>
    <td>pos</td>
    <td>integer</td>
  </tr>
  <tr>
    <td>ref</td>
    <td>string</td>
  </tr>
  <tr>
    <td>vcfVersion</td>
    <td>string</td>
  </tr>

</table>


#### alt

* type: string

add description

##### `alt` Value Example  

```
"G"
```

#### chr

* type: string

add description

##### `chr` Value Example  

```
"10"
```

#### genomeAssembly

* type: string

Genome assembly the allele was called against. We recommend using the Genome Reference Consortium
nomenclature


##### `genomeAssembly` Value Examples  

```
"GRCh37"
```
```
"GRCh38"
```

#### id

* type: string

add description

##### `id` Value Example  

```
"add example"
```

#### info

* type: string

add description

##### `info` Value Example  

```
"add example"
```

#### pos

* type: integer

add description

##### `pos` Value Example  

```
"123256215"
```

#### ref

* type: string

add description

##### `ref` Value Example  

```
"T"
```

#### vcfVersion

* type: string

The value of the VCF spec fileformat field


##### `vcfVersion` Value Examples  

```
"VCFv4.1"
```
```
"VCFv4.2"
```


### `VcfAllele` Value Example  

```
{
   "alt" : "G",
   "chr" : "10",
   "genomeAssembly" : "GRCh37",
   "pos" : "123256215",
   "ref" : "T",
   "vcfVersion" : "VCFv4.1"
}
```


