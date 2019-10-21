---
title: Cohort
layout: default
permalink: "/schemas/ga4gh/Cohort.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Cohort

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/cohort.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/cohort.rst)  
* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  
<!--more-->

### Source (v0.0.1)

* raw source [[JSON](./current/Cohort.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Cohort.yaml)

### Attributes
  
__Type:__ object  
__Description:__ A group of individuals related in some phenotypic or genotypic aspect


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
    <td>htsFiles</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/HtsFile.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>members</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Phenopacket.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>metaData</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/MetaData.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/MetaData.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/MetaData.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### description

* type: string

description about the cohort

##### `description` Value Example  

```
"this is a description about the cohort"
```

#### htsFiles

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/HtsFile.html" target="_BLANK">HTML</a>]

Pointer to the relevant HTS file(s) for the cohort


##### `htsFiles` Value Example  

```
{
   "htsFormat" : "GVCF",
   "uri" : "file://data/genomes/file1.vcf.gz"
}
```

#### id

* type: string

An identifier specific to the cohort

##### `id` Value Example  

```
"cohort-id-123"
```

#### members

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Phenopacket.html" target="_BLANK">HTML</a>]

add description

##### `members` Value Example  

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


### `Cohort` Value Example  

```
{
   "id" : "cohort-id-123",
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


