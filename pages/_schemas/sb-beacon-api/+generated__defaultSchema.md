---
title: defaultSchema
layout: default
permalink: "/schemas/sb-beacon-api/defaultSchema.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
categories:
  - specification
tags:
  - Beacon-v2
  - beacon
  - proposed
  - sb-beacon-api
  - schemas
---

<div id="schema-header-title">
  <h2><span id="schema-header-title-project">sb-beacon-api</span> Experimental run <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">proposed</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/ga4gh-beacon/beacon-v2">Beacon v2</a></li>
<li><a href="http://docs.genomebeacons.org">Beacon v2 documentation</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://ga4gh-approval-service-registry.ega-archive.org">Beacon v2 frontline implementers</a></li>
<li><a href="https://docs.progenetix.org/beaconplus/">Progenetix database schema (Beacon+ backend)</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li><a href="https://beacon-project.io/categories/people.html">ELIXIR Beacon project team</a></li>
</ul></td></tr>
<tr><th>Source (2.0.0)</th><td><ul>
<li><a href="current/defaultSchema.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/beacon-v2-default-model/runs/defaultSchema.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Schema for the experimental run (e.g. sequencing run, array processing...) leading to the raw data for the (computational) analysis.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>biosampleId</th><td>string</td></tr>
<tr><th>id</th><td>string</td></tr>
<tr><th>individualId</th><td>string</td></tr>
<tr><th>info</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/beaconCommonComponents.json#/definitions/Info [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/beaconCommonComponents.json">LINK</a>]</td></tr>
<tr><th>libraryLayout</th><td>string</td></tr>
<tr><th>librarySelection</th><td>string</td></tr>
<tr><th>librarySource</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json">LINK</a>]</td></tr>
<tr><th>libraryStrategy</th><td>string</td></tr>
<tr><th>platform</th><td>string</td></tr>
<tr><th>platformModel</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json">LINK</a>]</td></tr>
<tr><th>runDate</th><td>string (date)</td></tr>
</table>


#### biosampleId

* type: string

Reference to the biosample ID.

##### `biosampleId` Value Example  

```
"008dafdd-a3d1-4801-8c0a-8714e2b58e48"
```

#### id

* type: string

Run ID.

##### `id` Value Example  

```
"SRR10903401"
```

#### individualId

* type: string

Reference to the individual ID.

##### `individualId` Value Example  

```
"TCGA-AO-A0JJ"
```

#### info

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/beaconCommonComponents.json#/definitions/Info [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/beaconCommonComponents.json">LINK</a>]




#### libraryLayout

* type: string

Ontology value for the library layout e.g "PAIRED", "SINGLE" #todo add Ontology name?


#### librarySelection

* type: string

Selection method for library preparation, e.g "RANDOM", "RT-PCR"

##### `librarySelection` Value Examples  

```
"RANDOM"
```
```
"RT-PCR"
```

#### librarySource

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json">LINK</a>]

Ontology value for the source of the sequencing or hybridization library, e.g "genomic source", "transcriptomic source"

##### `librarySource` Value Examples  

```
{
   "id" : "GENEPIO:0001966",
   "label" : "genomic source"
}
```
```
{
   "id" : "GENEPIO:0001965",
   "label" : "metagenomic source"
}
```

#### libraryStrategy

* type: string

Library strategy, e.g. "WGS"

##### `libraryStrategy` Value Example  

```
"WGS"
```

#### platform

* type: string

General platform technology label. It SHOULD be a subset of the platformModel and used only for query convenience, e.g. "return everything sequenced with Illimuna", where the specific model is not relevant

##### `platform` Value Examples  

```
"Illumina"
```
```
"Oxford Nanopore"
```
```
"Affymetrix"
```

#### platformModel

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json">LINK</a>]

Ontology value for experimental platform or methodology used. For sequencing platforms the use of "OBI:0400103 - DNA sequencer" is suggested.

##### `platformModel` Value Examples  

```
{
   "id" : "OBI:0002048",
   "label" : "Illumina HiSeq 3000"
}
```
```
{
   "id" : "OBI:0002750",
   "label" : "Oxford Nanopore MinION"
}
```
```
{
   "id" : "EFO:0010938",
   "label" : "large-insert clone DNA microarray"
}
```

#### runDate

* type: string (date)

Date at which the experiment was performed.

##### `runDate` Value Example  

```
"2021-10-18"
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


