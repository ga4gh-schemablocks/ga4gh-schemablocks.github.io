---
title: procedure
layout: default
permalink: "/schemas/sb-beacon-api/procedure.html"
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
<li><a href="current/procedure.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/models/common/procedure.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Class describing a clinical procedure or intervention.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>ageAtProcedure</th><td>./timeElement.json</td></tr>
<tr><th>bodySite</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]</td></tr>
<tr><th>dateOfProcedure</th><td>string (date)</td></tr>
<tr><th>procedureCode</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]</td></tr>
</table>


#### ageAtProcedure

* type: ./timeElement.json




#### bodySite

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]

Specific body site where the procedure was performed. Recommended valuee from Uber-anatomy ontology (UBERON)

##### `bodySite` Value Examples  

```
{
   "id" : "UBERON:0003403",
   "label" : "Skin of forearm"
}
```
```
{
   "id" : "UBERON:0003214",
   "label" : "mammary gland alveolus"
}
```

#### dateOfProcedure

* type: string (date)

Date of procedure, in ISO8601 format

##### `dateOfProcedure` Value Example  

```
"2010-07-10"
```

#### procedureCode

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]

Clinical procedure performed with recommended values from Medical Action Ontology (MAXO) 'Medical action' term tree (MAXO:0000001)

##### `procedureCode` Value Examples  

```
{
   "id" : "MAXO:0001175",
   "label" : "liver transplantation"
}
```
```
{
   "id" : "MAXO:0000136",
   "label" : "high-resolution microendoscopy"
}
```
```
{
   "id" : "OBI:0002654",
   "label" : "needle biopsy"
}
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


