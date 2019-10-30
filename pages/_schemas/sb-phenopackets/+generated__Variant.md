---
title: Variant
layout: default
permalink: "/schemas/sb-phenopackets/Variant.html"
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
  <h2>Variant <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
        <li><a href="current/Variant.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Variant.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ A variant allele. Alleles can be listed using HGVS, VCF, SPDI or ISCN notation.
SPDI format is the exchange standard used for ClinVar, dbSNP and soon the EVA
Tools for interconversion between SPDI, HGVS and VCF exist at https://api.ncbi.nlm.nih.gov/variation/v0/


### Properties

<table id="schema-property-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>hgvsAllele</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HgvsAllele.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HgvsAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/HgvsAllele.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>iscnAllele</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/IscnAllele.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/IscnAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/IscnAllele.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>spdiAllele</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/SpdiAllele.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/SpdiAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/SpdiAllele.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>vcfAllele</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/VcfAllele.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/VcfAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/VcfAllele.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>zygosity</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### hgvsAllele

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HgvsAllele.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HgvsAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/HgvsAllele.html" target="_BLANK">HTML</a>]

HGVS version of describing a sequence variation

##### `hgvsAllele` Value Example  

```
"add example"
```

#### iscnAllele

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/IscnAllele.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/IscnAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/IscnAllele.html" target="_BLANK">HTML</a>]

Cytogenetic variation in ISCN format

##### `iscnAllele` Value Example  

```
"t(8;14)(q24;q32)"
```

#### spdiAllele

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/SpdiAllele.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/SpdiAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/SpdiAllele.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/VcfAllele.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/VcfAllele.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/VcfAllele.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

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


