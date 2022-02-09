---
title: treatment
layout: default
permalink: "/schemas/sb-beacon-api/treatment.html"
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
  <h2><span id="schema-header-title-project">sb-beacon-api</span> Treament <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/treatment.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/models/common/treatment.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Treatment(s) prescribed/administered, defined by treatment ID, date and age of onset, dose, schedule and duration.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>ageAtOnset</th><td>./age.json</td></tr>
<tr><th>dose</th><td>number</td></tr>
<tr><th>duration</th><td>string</td></tr>
<tr><th>frequency</th><td>string</td></tr>
<tr><th>route</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]</td></tr>
<tr><th>treatmentCode</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]</td></tr>
<tr><th>units</th><td>./commonDefinitions.json#/definitions/Units</td></tr>
</table>


#### ageAtOnset

* type: ./age.json




#### dose

* type: number

The amount of any substance administered over a specific period of time. [ NCIT:C15682 ] 


#### duration

* type: string

Treatment duration in ISO8601 duration format

##### `duration` Value Example  

```
"P7D"
```

#### frequency

* type: string

The number of times a substance is administered within a specific time period. [ NCIT:C89081 ] 


#### route

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]

Route of treatment. Value from NCIT Route of Administration tree (NCIT:C38114).

##### `route` Value Examples  

```
{
   "id" : "NCIT:C38304",
   "label" : "Topical"
}
```
```
{
   "id" : "NCIT:C78373",
   "label" : "Dietary"
}
```

#### treatmentCode

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]

Code of treatment. Value from NCIT or any relevant ontology.

##### `treatmentCode` Value Examples  

```
{
   "id" : "NCIT:C287",
   "label" : "Aspirin"
}
```
```
{
   "id" : "NCIT:C62078",
   "label" : "Tamoxifen"
}
```

#### units

* type: ./commonDefinitions.json#/definitions/Units

Treatment dose units

<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


