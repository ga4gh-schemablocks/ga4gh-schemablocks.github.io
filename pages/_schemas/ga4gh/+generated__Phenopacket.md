---
title: Phenopacket
layout: default
permalink: "/schemas/ga4gh/Phenopacket.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Phenopacket

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/phenopacket.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/phenopacket.rst)  

<!--more-->

* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  

### Source (v0.0.1)

* raw source [[JSON](./current/Phenopacket.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Phenopacket.yaml)

### Attributes
  
__Type:__ object  
__Description:__ An anonymous phenotypic description of an individual or biosample with potential genes of interest and/or diagnoses.
This is a bundle of high-level concepts with no specifically defined relational concepts. It is expected that the
resources sharing the phenopackets will define and enforce their own semantics and level of requirements for included
fields.


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>biosamples</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Biosample.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Biosample.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Biosample.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>diseases</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Disease.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Disease.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Disease.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>genes</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Gene.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Gene.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Gene.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>htsFiles</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/HtsFile.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>metaData</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/MetaData.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/MetaData.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/MetaData.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>phenotypicFeatures</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/PhenotypicFeature.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/PhenotypicFeature.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/PhenotypicFeature.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>subject</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/Individual.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Individual.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Individual.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>variants</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Variant.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Variant.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Variant.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### biosamples

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Biosample.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Biosample.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Biosample.html" target="_BLANK">HTML</a>]

Biosample(s) derived from the patient or a collection of biosamples in isolation


##### `biosamples` Value Example  

```
[
   {
      "description" : "THP-1; 6 hours; DMSO; Replicate 1",
      "id" : "SAMN05324082",
      "individualId" : "SAMN05324082-individual",
      "sampledTissue" : {
         "id" : "UBERON:0000178",
         "label" : "peripheral blood"
      }
   }
]
```

#### diseases

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Disease.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Disease.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Disease.html" target="_BLANK">HTML</a>]

Field for disease identifiers - could be used for listing either diagnosed or suspected conditions. The
resources using these fields should define what this represents in their context.


##### `diseases` Value Example  

```
[
   {
      "classOfOnset" : {
         "id" : "HP:0003596",
         "label" : "Middle age onset"
      },
      "term" : {
         "id" : "MONDO:0007043",
         "label" : "Pfeiffer syndrome"
      }
   }
]
```

#### genes

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Gene.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Gene.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Gene.html" target="_BLANK">HTML</a>]

Field for gene identifiers - could be used for listing either candidate genes or causative genes. The
resources using these fields should define what this represents in their context. This could be used in order to
obfuscate the specific causative/candidate variant.


##### `genes` Value Example  

```
[
   {
      "id" : "HGNC:3477",
      "symbol" : "ETF1"
   }
]
```

#### htsFiles

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/HtsFile.html" target="_BLANK">HTML</a>]

Pointer to the relevant HTS file(s) for the patient


##### `htsFiles` Value Example  

```
[
   {
      "htsFormat" : "GVCF",
      "uri" : "file://data/genomes/file1.vcf.gz"
   }
]
```

#### id

* type: string

An identifier specific for this phenopacket

##### `id` Value Example  

```
"phenopacketid123"
```

#### metaData

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/MetaData.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/MetaData.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/MetaData.html" target="_BLANK">HTML</a>]

Structured definitions of the resources and ontologies used within the phenopacket. REQUIRED


##### `metaData` Value Example  

```
{
   "created" : "2016-06-29T12:03:03.240Z",
   "updates" : [
      {
         "timestamp" : "2007-12-03T10:15:30.00Z"
      }
   ]
}
```

#### phenotypicFeatures

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/PhenotypicFeature.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/PhenotypicFeature.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/PhenotypicFeature.html" target="_BLANK">HTML</a>]

Phenotypic features relating to the subject of the phenopacket


##### `phenotypicFeatures` Value Example  

```
[
   {
      "description" : "add example",
      "type" : {
         "id" : "add example",
         "label" : "add example"
      }
   }
]
```

#### subject

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/Individual.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Individual.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Individual.html" target="_BLANK">HTML</a>]

The individual representing the focus of this packet - e.g. the proband in rare disease cases or cancer patient


##### `subject` Value Example  

```
{
   "id" : "SAMN05324082-individual",
   "sex" : "MALE",
   "taxonomy" : {
      "id" : "NCBITaxon:9606",
      "label" : "Homo sapiens"
   }
}
```

#### variants

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Variant.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Variant.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Variant.html" target="_BLANK">HTML</a>]

Field for genetic variants - could be used for listing either candidate variants or diagnosed causative
variants. The resources using these fields should define what this represents in their context.


##### `variants` Value Example  

```
[
   {
      "description" : "description of variant",
      "id" : "ID_12345",
      "murineAllele" : {
         "alleleSymbol" : "tm1Hcd",
         "gene" : "Fbn1",
         "id" : "MGI:3690325"
      }
   }
]
```


### `Phenopacket` Value Example  

```
{
   "biosamples" : [
      {
         "description" : "THP-1; 6 hours; DMSO; Replicate 1",
         "id" : "SAMN05324082",
         "individualId" : "SAMN05324082-individual",
         "sampledTissue" : {
            "id" : "UBERON:0000178",
            "label" : "peripheral blood"
         }
      }
   ],
   "id" : "phenopacketid-123",
   "metaData" : {
      "created" : "2016-06-29T12:03:03.240Z",
      "updates" : [
         {
            "timestamp" : "2007-12-03T10:15:30.00Z"
         }
      ]
   },
   "subject" : {
      "id" : "SAMN05324082-individual",
      "sex" : "MALE",
      "taxonomy" : {
         "id" : "NCBITaxon:9606",
         "label" : "Homo sapiens"
      }
   }
}
```


