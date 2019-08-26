---
title: 'HtsFile'
layout: default
permalink: "/schemas/ga4gh/HtsFile.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---


## HtsFile

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__


* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/file.rst)  

* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/file.rst)  

* Contributors  

    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
<!--more-->

### Source

* raw source [[JSON](./HtsFile.json)] 
* [Github](https://github.com/ga4gh-schemablocks/playground/blob/master/src/HtsFile.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A file in one of the HTS formats (https://samtools.github.io/hts-specs)


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
  </tr>
  <tr>
    <td>genomeAssembly</td>
    <td>string</td>
  </tr>
  <tr>
    <td>htsFormat</td>
    <td></td>
  </tr>
  <tr>
    <td>individualToSampleIdentifiers</td>
    <td>object</td>
  </tr>
  <tr>
    <td>uri</td>
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

