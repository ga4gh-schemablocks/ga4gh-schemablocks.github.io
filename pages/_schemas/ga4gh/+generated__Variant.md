---
title: Variant
layout: default
permalink: "/schemas/ga4gh/Variant.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Variant

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

* raw source [[JSON](./current/Variant.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Variant.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A variant allele. Alleles can be listed using HGVS, VCF, SPDI or ISCN notation.
SPDI format is the exchange standard used for ClinVar, dbSNP and soon the EVA
Tools for interconversion between SPDI, HGVS and VCF exist at https://api.ncbi.nlm.nih.gov/variation/v0/


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>hgvsAllele</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/HgvsAllele.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/HgvsAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/HgvsAllele.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>iscnAllele</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/IscnAllele.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/IscnAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/IscnAllele.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>spdiAllele</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/SpdiAllele.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/SpdiAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/SpdiAllele.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>vcfAllele</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/VcfAllele.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/VcfAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/VcfAllele.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>zygosity</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### hgvsAllele

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/HgvsAllele.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/HgvsAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/HgvsAllele.html" target="_BLANK">HTML</a>]

add description

##### `hgvsAllele` Value Example  

```
"add example"
```

#### iscnAllele

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/IscnAllele.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/IscnAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/IscnAllele.html" target="_BLANK">HTML</a>]

add description

##### `iscnAllele` Value Example  

```
"add example"
```

#### spdiAllele

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/SpdiAllele.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/SpdiAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/SpdiAllele.html" target="_BLANK">HTML</a>]

add description

##### `spdiAllele` Value Example  

```
{
   "deletedSequence" : "T",
   "id" : "id_abc_123",
   "insertedSequence" : "G",
   "position" : "123256214",
   "seqId" : "NC_000010.10"
}
```

#### vcfAllele

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/VcfAllele.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/VcfAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/VcfAllele.html" target="_BLANK">HTML</a>]

add description

##### `vcfAllele` Value Example  

```
{
   "alt" : "G",
   "chr" : "10",
   "genomeAssembly" : "GRCh37",
   "pos" : "123256215",
   "ref" : "T"
}
```

#### zygosity

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

add description

##### `zygosity` Value Example  

```
{
   "id" : "GENO:0000135",
   "label" : "heterozygous"
}
```


### `Variant` Value Example  

```
{
   "description" : "description of variant",
   "id" : "ID_12345",
   "vcfAllele" : {
      "alt" : "G",
      "chr" : "10",
      "genomeAssembly" : "GRCh37",
      "pos" : "123256215",
      "ref" : "T"
   }
}
```

