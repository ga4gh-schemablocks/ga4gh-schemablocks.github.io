---
title: VcfAllele
layout: default
permalink: "/schemas/sb-phenopackets/VcfAllele.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
  - sb-phenopackets
---


<div id="schema-header-title">
  <h2>VcfAllele <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">implemented</div></td>
  </tr>

  <tr>
    <th>Provenance</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/variant.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/variant.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li><a href="https://orcid.org/0000-0002-3265-15918">Jules Jacobsen</a></li>
<li><a href="https://orcid.org/0000-0002-0736-91998">Peter Robinson</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li><a href="https://orcid.org/0000-0002-9551-6370">Melanie Courtot</a></li>
<li><a href="https://orcid.org/0000-0002-4839-5158">Isuru Liyanage</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v1.0.0)</th>
    <td>
      <ul>
        <li><a href="current/VcfAllele.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/VcfAllele.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ A single VCF allele.
For structural variation the INFO field should contain the relevant information e.g.
END=43500;SVTYPE=DUP;CHR2=1;SVLEN=29000;
See https://samtools.github.io/hts-specs/VCFv4.3.pdf

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>alt</th>
    <td>string</td>
  </tr>
  <tr>
    <th>chr</th>
    <td>string</td>
  </tr>
  <tr>
    <th>genomeAssembly</th>
    <td>string</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>info</th>
    <td>string</td>
  </tr>
  <tr>
    <th>pos</th>
    <td>integer</td>
  </tr>
  <tr>
    <th>ref</th>
    <td>string</td>
  </tr>
  <tr>
    <th>vcfVersion</th>
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
123256215
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
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


