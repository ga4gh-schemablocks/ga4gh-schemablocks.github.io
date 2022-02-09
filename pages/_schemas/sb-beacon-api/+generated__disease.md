---
title: disease
layout: default
permalink: "/schemas/sb-beacon-api/disease.html"
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
  <h2><span id="schema-header-title-project">sb-beacon-api</span> Disease <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/disease.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/models/common/disease.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Diseases diagnosed e.g. to an individual, defined by diseaseID, age of onset, stage, level of severity, outcome and the presence of family history.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>ageOfOnset</th><td>./age.json</td></tr>
<tr><th>diseaseCode</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]</td></tr>
<tr><th>familyHistory</th><td>boolean</td></tr>
<tr><th>notes</th><td>string</td></tr>
<tr><th>severityLevel</th><td>./commonDefinitions.json#/definitions/SeverityLevel</td></tr>
<tr><th>stage</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]</td></tr>
</table>


#### ageOfOnset

* type: ./age.json




#### diseaseCode

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]

Disease identifier. Value from disease ontologies such as HPO, OMIM, Orphanet, MONDO, e.g. lactose intolerance (HP:0004789, ICD10CM:E73).

##### `diseaseCode` Value Examples  

```
{
   "id" : "HP:0004789",
   "label" : "lactose intolerance"
}
```
```
{
   "id" : "ICD10CM:E73",
   "label" : "lactose intolerance"
}
```
```
{
   "id" : "OMIM:164400",
   "label" : "Spinocerebellar ataxia 1"
}
```

#### familyHistory

* type: boolean

Boolean indicating determined or self-reported presence of family history of the disease.

##### `familyHistory` Value Example  

```
"1"
```

#### notes

* type: string

Unstructured text to describe additional properties of this disease instance.

##### `notes` Value Example  

```
"Some free text"
```

#### severityLevel

* type: ./commonDefinitions.json#/definitions/SeverityLevel




#### stage

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]

Ontology term from Ontology for General Medical Science (OGMS), e.g. acute onset (OGMS:0000119).

##### `stage` Value Examples  

```
{
   "id" : "OGMS:0000119",
   "label" : "acute onset"
}
```
```
{
   "id" : "OGMS:0000117",
   "label" : "asymptomatic"
}
```
```
{
   "id" : "OGMS:0000106",
   "label" : "remission"
}
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


