---
title: HtsFile
layout: default
permalink: "/schemas/sb-phenopackets/HtsFile.html"
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
  <h2>HtsFile <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/file.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/file.rst">Phenopackets</a></li>
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
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v1.0.0)</th>
    <td>
      <ul>
        <li><a href="current/HtsFile.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/HtsFile.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ A file in one of the HTS formats (https://samtools.github.io/hts-specs)


### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>description</th>
    <td>string</td>
  </tr>
  <tr>
    <th>genomeAssembly</th>
    <td>string</td>
  </tr>
  <tr>
    <th>htsFormat</th>
    <td></td>
  </tr>
  <tr>
    <th>individualToSampleIdentifiers</th>
    <td>object</td>
  </tr>
  <tr>
    <th>uri</th>
    <td>string</td>
  </tr>

</table>


#### description

* type: string

description of the file contents


##### `description` Value Example  

```
"this is the description for the file"
```

#### genomeAssembly

* type: string

Genome assembly the contents of this file was called against. We recommend using the Genome Reference Consortium
nomenclature e.g. GRCh37, GRCh38


##### `genomeAssembly` Value Example  

```
"GRCh37"
```

#### htsFormat

* type: 

one of UNKNOWN, SAM, BAM, CRAM, VCF, BCF, GVCF


##### `htsFormat` Value Example  

```
"SAM"
```

#### individualToSampleIdentifiers

* type: object

A map of identifiers mapping an individual to a sample in the file. The key values must correspond to the
Individual::id for the individuals in the message, the values must map to the samples in the file.


##### `individualToSampleIdentifiers` Value Example  

```
{
   "individual1" : "add example",
   "individual2" : "add example"
}
```

#### uri

* type: string

URI for the file


##### `uri` Value Examples  

```
"file://data/genomes/file1.vcf.gz"
```
```
"https://opensnp.org/data/60.23andme-exome-vcf.231?1341012444"
```


### `HtsFile` Value Example  

```
{
   "htsFormat" : "GVCF",
   "uri" : "file://data/genomes/file1.vcf.gz"
}
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


