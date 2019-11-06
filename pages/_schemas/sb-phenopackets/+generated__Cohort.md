---
title: Cohort
layout: default
permalink: "/schemas/sb-phenopackets/Cohort.html"
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
  <h2>Cohort <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/cohort.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/cohort.rst">Phenopackets</a></li>
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
        <li><a href="current/Cohort.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Cohort.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ A group of individuals related in some phenotypic or genotypic aspect

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
    <th>htsFiles</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/HtsFile.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>members</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Phenopacket.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>metaData</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/MetaData.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/MetaData.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/MetaData.html" target="_BLANK">HTML</a>]</td>
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

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/HtsFile.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Phenopacket.html" target="_BLANK">HTML</a>]

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
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


