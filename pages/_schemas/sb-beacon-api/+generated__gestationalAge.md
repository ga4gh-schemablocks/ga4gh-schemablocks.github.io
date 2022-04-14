---
title: gestationalAge
layout: default
permalink: "/schemas/sb-beacon-api/gestationalAge.html"
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
  <h2><span id="schema-header-title-project">sb-beacon-api</span> GestationalAge <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/gestationalAge.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/beacon-v2-default-model/common/gestationalAge.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Gestational age (or menstrual age) is the time elapsed between the first day of the last normal menstrual period and the day of delivery. The first day of the last menstrual period occurs approximately 2 weeks before ovulation and approximately 3 weeks before implantation of the blastocyst. Because most women know when their last period began but not when ovulation occurred, this definition traditionally has been used when estimating the expected date of delivery. In contrast, chronological age (or postnatal age) is the time elapsed after birth. Provenance: Phenopackets v2
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>days</th><td>integer</td></tr>
<tr><th>weeks</th><td>integer</td></tr>
</table>


#### days

* type: integer

Days beyond the completed weeks, if available.

##### `days` Value Examples  

```
2
```
```
4
```

#### weeks

* type: integer

Completed weeks of gestation according to the above definition.

##### `weeks` Value Examples  

```
4
```
```
33
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


