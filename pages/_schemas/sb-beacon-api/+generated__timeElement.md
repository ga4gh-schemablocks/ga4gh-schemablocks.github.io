---
title: timeElement
layout: default
permalink: "/schemas/sb-beacon-api/timeElement.html"
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
  <h2><span id="schema-header-title-project">sb-beacon-api</span> TimeElement <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/timeElement.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master//timeElement.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Definition of a wrapper for various time descriptors.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>age</th><td>./age.json</td></tr>
<tr><th>ageGroup</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]</td></tr>
<tr><th>ageRange</th><td>./ageRange.json</td></tr>
</table>


#### age

* type: ./age.json

Represents age as a ISO8601 duration (e.g., P40Y10M05D).

##### `age` Value Example  

```
"P32Y6M1D"
```

#### ageGroup

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]

Indicates the age of the individual as an ontology class. Recommended from NCIT Age Group ontology term (NCIT:C20587) descendants.

##### `ageGroup` Value Examples  

```
{
   "id" : "NCIT:C27954",
   "label" : "Adolescent"
}
```
```
{
   "id" : "NCIT:C49685",
   "label" : "Adult 18-65 Years Old"
}
```

#### ageRange

* type: ./ageRange.json

Represents age as a ISO8601 duration (e.g., P40Y10M05D).

##### `ageRange` Value Example  

```
{
   "end" : "P59Y",
   "start" : "P18Y"
}
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


