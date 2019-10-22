---
title: Family
layout: default
permalink: "/schemas/ga4gh/Family.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Family

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/family.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/family.rst)  

<!--more-->

* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  
### Source (v0.0.1)

* raw source [[JSON](./current/Family.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Family.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Phenotype, sample and pedigree data required for a genomic diagnosis.
Equivalent to the Genomics England InterpretationRequestRD
https://github.com/genomicsengland/GelReportModels/blob/master/schemas/IDLs/org.gel.models.report.avro/5.0.0/InterpretationRequestRD.avdl


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
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
    <td>pedigree</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/Pedigree.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Pedigree.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Pedigree.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>proband</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Phenopacket.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>relatives</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Phenopacket.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### htsFiles

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/HtsFile.html" target="_BLANK">HTML</a>]

Pointer to the relevant HTS file(s) for the family. These should be files relating to one or more of the family
members e.g a multi-sample VCF


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

An identifier specific for this family

##### `id` Value Example  

```
"family-id-123"
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

#### pedigree

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/Pedigree.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Pedigree.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Pedigree.html" target="_BLANK">HTML</a>]

The pedigree defining the relations between the proband and their relatives. Pedigree.individual_id should
map to the PhenoPacket.Individual.id


##### `pedigree` Value Example  

```
{
   "person" : [
      {
         "individualId" : "add example"
      }
   ]
}
```

#### proband

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Phenopacket.html" target="_BLANK">HTML</a>]

The individual representing the focus of this packet - e.g. the proband in rare disease cases or cancer patient


##### `proband` Value Example  

```
{
   "id" : "phenopacketid-123",
   "metaData" : {
      "created" : "2016-06-29T12:03:03.240Z",
      "updates" : [
         {
            "timestamp" : "2007-12-03T10:15:30.00Z"
         }
      ]
   }
}
```

#### relatives

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Phenopacket.html" target="_BLANK">HTML</a>]

Individuals related in some way to the patient. For instance, the individuals may be genetically related or may
be members of a cohort. If this field is used, then  it is expected that a pedigree will be included for
genetically related individuals for use cases such as genomic diagnostics. If a phenopacket is being used to
describe one member of a cohort, then in general one phenopacket will be created for each of the individuals in
the cohort.


##### `relatives` Value Example  

```
[
   {
      "id" : "phenopacketid-123",
      "metaData" : {
         "created" : "2016-06-29T12:03:03.240Z",
         "updates" : [
            {
               "timestamp" : "2007-12-03T10:15:30.00Z"
            }
         ]
      }
   }
]
```


### `Family` Value Example  

```
{
   "htsFiles" : [
      {
         "htsFormat" : "GVCF",
         "uri" : "file://data/genomes/file1.vcf.gz"
      }
   ],
   "id" : "family-id-123",
   "metaData" : {
      "created" : "2016-06-29T12:03:03.240Z",
      "updates" : [
         {
            "timestamp" : "2007-12-03T10:15:30.00Z"
         }
      ]
   },
   "proband" : {
      "id" : "phenopacketid-123",
      "metaData" : {
         "created" : "2016-06-29T12:03:03.240Z",
         "updates" : [
            {
               "timestamp" : "2007-12-03T10:15:30.00Z"
            }
         ]
      }
   }
}
```


