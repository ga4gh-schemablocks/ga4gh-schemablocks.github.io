---
title: measurement
layout: default
permalink: "/schemas/sb-beacon-api/measurement.html"
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
  <h2><span id="schema-header-title-project">sb-beacon-api</span> Measurement <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/measurement.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/beacon-v2-default-model/common/measurement.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Definition of a measurement class. Provenance: GA4GH Phenopackets v2 `Measurement`
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>assayCode</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json">LINK</a>]</td></tr>
<tr><th>date</th><td>string (date)</td></tr>
<tr><th>measurementValue</th><td></td></tr>
<tr><th>notes</th><td>string</td></tr>
<tr><th>observationMoment</th><td>./timeElement.json</td></tr>
<tr><th>procedure</th><td>./procedure.json</td></tr>
</table>


#### assayCode

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-v2/main/framework/json/common/ontologyTerm.json">LINK</a>]

Class that describes the assay used to produce the measurement. Renamed compared to GA4GH Phenopackets v2 `Measurement.assay`

##### `assayCode` Value Example  

```
{
   "id" : "LOINC:26515-7",
   "label" : "Platelets [#/volume] in Blood"
}
```

#### date

* type: string (date)

Date of measurement. Addition compared to Phenopackets model.


#### measurementValue

* type: 

The result of the measurement


#### notes

* type: string

Unstructured text to describe this measurement. Addition compared to Phenopackets model.

##### `notes` Value Example  

```
"Some free text"
```

#### observationMoment

* type: ./timeElement.json

Moment in time at which measurement was performed. RECOMMENDED. Renamed compared to GA4GH Phenopackets v2 `Measurement.time_observed`

##### `observationMoment` Value Example  

```
{
   "age" : {
      "iso8601duration" : "P53Y8M"
   }
}
```

#### procedure

* type: ./procedure.json

Clinical procedure performed to acquire the sample used for the measurement

##### `procedure` Value Example  

```
{
   "code" : {
      "id" : "NCIT:C5189",
      "label" : "Radical Cystoprostatectomy"
   }
}
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


