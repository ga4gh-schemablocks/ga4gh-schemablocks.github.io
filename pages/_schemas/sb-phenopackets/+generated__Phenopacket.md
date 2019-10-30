---
title: Phenopacket
layout: default
permalink: "/schemas/sb-phenopackets/Phenopacket.html"
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
  <h2>Phenopacket <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/phenopacket.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/phenopacket.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li>GA4GH Data Working Group</li>
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
        <li><a href="current/Phenopacket.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Phenopacket.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ An anonymous phenotypic description of an individual or biosample with potential genes of interest and/or diagnoses.
This is a bundle of high-level concepts with no specifically defined relational concepts. It is expected that the
resources sharing the phenopackets will define and enforce their own semantics and level of requirements for included
fields.


### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>biosamples</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Biosample.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Biosample.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Biosample.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>diseases</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Disease.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Disease.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Disease.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>genes</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Gene.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Gene.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Gene.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>htsFiles</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/HtsFile.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>metaData</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/MetaData.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/MetaData.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/MetaData.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>phenotypicFeatures</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/PhenotypicFeature.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/PhenotypicFeature.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/PhenotypicFeature.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>subject</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Individual.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Individual.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Individual.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>variants</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Variant.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Variant.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Variant.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### biosamples

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Biosample.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Biosample.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Biosample.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Disease.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Disease.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Disease.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Gene.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Gene.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Gene.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/HtsFile.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/MetaData.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/MetaData.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/MetaData.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/PhenotypicFeature.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/PhenotypicFeature.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/PhenotypicFeature.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Individual.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Individual.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Individual.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Variant.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Variant.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Variant.html" target="_BLANK">HTML</a>]

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
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


