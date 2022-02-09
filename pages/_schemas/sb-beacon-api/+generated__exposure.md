---
title: exposure
layout: default
permalink: "/schemas/sb-beacon-api/exposure.html"
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
  <h2><span id="schema-header-title-project">sb-beacon-api</span> Procedure <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">proposed</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/ga4gh-beacon/">Beacon v2 provisional version</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://ga4gh-approval-service-registry.ega-archive.org">Beacon v2 frontline implementers</a></li>
<li><a href="https://docs.progenetix.org/beaconplus/">Progenetix database schema (Beacon+ backend)</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li><a href="https://beacon-project.io/categories/people.html">ELIXIR Beacon project team</a></li>
</ul></td></tr>
<tr><th>Source (2.0.0-draft.4)</th><td><ul>
<li><a href="current/exposure.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/models/common/exposure.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Exposures (lifestyle, behavioural exposures) occurred to individual,defined by exposure ID, date and age of onset, dose, and duration.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>ageAtExposure</th><td>../common/age.json</td></tr>
<tr><th>date</th><td>string (date)</td></tr>
<tr><th>duration</th><td>string</td></tr>
<tr><th>exposureCode</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]</td></tr>
<tr><th>units</th><td>../common/commonDefinitions.json#/definitions/Units</td></tr>
<tr><th>value</th><td>number</td></tr>
</table>


#### ageAtExposure

* type: ../common/age.json




#### date

* type: string (date)

Date of the exposure in ISO8601 format.


#### duration

* type: string

Exposure duration in ISO8601 format

##### `duration` Value Example  

```
"P32Y6M1D"
```

#### exposureCode

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]

Exposure ID. Value from Environment Exposure Ontology.

##### `exposureCode` Value Examples  

```
{
   "id" : "CHEBI:46661",
   "label" : "asbestos"
}
```
```
{
   "id" : "ENVO:21001217",
   "label" : "X-ray radiation"
}
```

#### units

* type: ../common/commonDefinitions.json#/definitions/Units

Units of the exposure. Recommended from NCIT Unit of Category ontology term (NCIT:C42568) descendants.


#### value

* type: number

Quantification of the exposure.

<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


