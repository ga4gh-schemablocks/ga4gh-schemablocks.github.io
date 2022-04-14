---
title: pedigree
layout: default
permalink: "/schemas/sb-beacon-api/pedigree.html"
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
  <h2><span id="schema-header-title-project">sb-beacon-api</span> Pedigree <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/pedigree.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/beacon-v2-default-model/common/pedigree.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Pedigree studies in which the individual is part of.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>disease</th><td>../common/disease.json</td></tr>
<tr><th>id</th><td>string</td></tr>
<tr><th>members</th><td>array of "#/definitions/pedigreeMember"</td></tr>
<tr><th>numSubjects</th><td>integer</td></tr>
</table>


#### disease

* type: ../common/disease.json




#### id

* type: string

Pedigree identifier.

##### `id` Value Example  

```
"Pedigree1001"
```

#### members

* type: array of "#/definitions/pedigreeMember"

List of members of the pedigree. If the current pedigree definition is attached to the proband, it contains the whole list of pedigree members, including the proband. If the definition is attached to an individual different than the proband, it only contains two entries: one that describes that member, e.g. the proband mother or father, and one that points to the proband.


#### numSubjects

* type: integer

Total number of subjects in pedigree.

##### `numSubjects` Value Example  

```
10
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


