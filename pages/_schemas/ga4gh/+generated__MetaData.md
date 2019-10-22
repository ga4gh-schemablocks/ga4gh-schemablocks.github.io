---
title: MetaData
layout: default
permalink: "/schemas/ga4gh/MetaData.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Metadata

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/metadata.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/metadata.rst)  

<!--more-->

* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  

### Source (v0.0.1)

* raw source [[JSON](./current/MetaData.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/MetaData.yaml)

### Attributes
  
__Type:__ object  
__Description:__ metadata


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>created</td>
    <td>string</td>
  </tr>
  <tr>
    <td>createdBy</td>
    <td>string</td>
  </tr>
  <tr>
    <td>externalReferences</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/ExternalReference.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/ExternalReference.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/ExternalReference.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>phenopacketSchemaVersion</td>
    <td>string</td>
  </tr>
  <tr>
    <td>resources</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Resource.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Resource.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Resource.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>submittedBy</td>
    <td>string</td>
  </tr>
  <tr>
    <td>updates</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Update.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Update.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Update.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### created

* type: string

ISO8601 UTC timestamp for when this phenopacket was created in ISO "2018-03-01T00:00:00Z"

##### `created` Value Example  

```
"2018-03-01T00:00:00Z"
```

#### createdBy

* type: string

some kind of identifier for the contributor/ program

##### `createdBy` Value Example  

```
"samuel_jackson"
```

#### externalReferences

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/ExternalReference.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/ExternalReference.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/ExternalReference.html" target="_BLANK">HTML</a>]

External identifiers for this message. These are considered different representation of the same record, not
records which are in some other relation with the record at hand. For example this might be a PubMed reference
to a study in which the individuals are reported.


##### `externalReferences` Value Example  

```
[
   {
      "description" : "Cellosaurus cell line identifier",
      "id" : "cellosaurus:CVCL_0312"
   }
]
```

#### phenopacketSchemaVersion

* type: string

Used to create this phenopacket

##### `phenopacketSchemaVersion` Value Example  

```
"1.0.2"
```

#### resources

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Resource.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Resource.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Resource.html" target="_BLANK">HTML</a>]

A listing of the ontologies/resources referenced in the phenopacket


##### `resources` Value Example  

```
[
   {
      "id" : "12345",
      "name" : "The Human Phenotype Ontology",
      "url" : "http://purl.obolibrary.org/obo/hp.owl"
   },
   {
      "id" : "12345",
      "name" : "The Human Phenotype Ontology",
      "url" : "http://purl.obolibrary.org/obo/hp.owl"
   }
]
```

#### submittedBy

* type: string

Information about the person/organisation/network that has submitted this phenopacket


##### `submittedBy` Value Example  

```
"add example"
```

#### updates

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Update.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Update.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Update.html" target="_BLANK">HTML</a>]

ISO8601 UTC timestamps at which this record was updated,
in the format YYYY-MM-DDTHH:MM:SS.SSSZ e.g. 2007-12-03T10:15:30.00Z


##### `updates` Value Example  

```
[
   {
      "timestamp" : "2007-12-03T10:15:30.00Z"
   }
]
```


### `Metadata` Value Examples  

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
```
{
   "created" : "2016-06-29T12:03:03.240Z",
   "createdBy" : "samuel_jackson",
   "resources" : [
      {
         "id" : "geno",
         "iriPrefix" : "http://purl.obolibrary.org/obo/GENO_",
         "name" : "Genotype Ontology",
         "namespacePrefix" : "GENO",
         "url" : "http://purl.obolibrary.org/obo/geno.owl",
         "version" : "19-03-2018"
      }
   ],
   "updates" : [
      {
         "timestamp" : "2007-12-03T10:15:30.00Z"
      }
   ]
}
```


