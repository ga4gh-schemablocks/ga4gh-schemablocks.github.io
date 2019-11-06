---
title: MetaData
layout: default
permalink: "/schemas/sb-phenopackets/MetaData.html"
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
  <h2>Metadata <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/metadata.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/metadata.rst">Phenopackets</a></li>
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
        <li><a href="current/MetaData.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/MetaData.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ metadata

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>created</th>
    <td>string</td>
  </tr>
  <tr>
    <th>createdBy</th>
    <td>string</td>
  </tr>
  <tr>
    <th>externalReferences</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/ExternalReference.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/ExternalReference.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/ExternalReference.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>phenopacketSchemaVersion</th>
    <td>string</td>
  </tr>
  <tr>
    <th>resources</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Resource.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Resource.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Resource.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>submittedBy</th>
    <td>string</td>
  </tr>
  <tr>
    <th>updates</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Update.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Update.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Update.html" target="_BLANK">HTML</a>]</td>
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

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/ExternalReference.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/ExternalReference.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/ExternalReference.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Resource.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Resource.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Resource.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Update.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Update.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Update.html" target="_BLANK">HTML</a>]

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
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


