---
title: Family
layout: default
permalink: "/schemas/sb-phenopackets/Family.html"
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
  <h2>Family <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/family.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/family.rst">Phenopackets</a></li>
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
        <li><a href="current/Family.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Family.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Phenotype, sample and pedigree data required for a genomic diagnosis.
Equivalent to the Genomics England InterpretationRequestRD
https://github.com/genomicsengland/GelReportModels/blob/master/schemas/IDLs/org.gel.models.report.avro/5.0.0/InterpretationRequestRD.avdl


### Properties

<table id="schema-property-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
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
    <th>pedigree</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Pedigree.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Pedigree.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Pedigree.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>proband</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Phenopacket.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>relatives</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Phenopacket.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### htsFiles

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/HtsFile.html" target="_BLANK">HTML</a>]

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

#### pedigree

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Pedigree.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Pedigree.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Pedigree.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Phenopacket.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Phenopacket.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Phenopacket.html" target="_BLANK">HTML</a>]

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


