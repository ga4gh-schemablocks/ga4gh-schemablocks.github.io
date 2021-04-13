---
title: Observation
layout: default
permalink: "/schemas/playground/Observation.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
categories:
  - schemas
tags:
  - playground
  - proposed
  - schemas
  - search
---

<div id="schema-header-title">
  <h2><span id="schema-header-title-project">search</span> Observation <a href="https://github.com/ga4gh-schemablocks/playground" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">proposed</div></td>
</tr>
<tr><th>Used by</th><td><ul>
<li>Super Simple Study Schema</li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li>GA4GH Search Team</li>
<li><a href="https://orcid.org/0000-0001-9135-2164">Jonathan Fuerth</a></li>
</ul></td></tr>
<tr><th>Source (v0.0.1)</th><td><ul>
<li><a href="current/Observation.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/playground/blob/master/schemas/Observation.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Attributes relating to an observation, assessment, or sample collection in any kind of medical study.

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>assessment_type</th><td>string</td></tr>
<tr><th>collected_by</th><td></td></tr>
<tr><th>collection_date</th><td>string</td></tr>
<tr><th>geo_location</th><td>https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json">LINK</a>]</td></tr>
<tr><th>id</th><td>string</td></tr>
<tr><th>imaging_procedure</th><td>string</td></tr>
<tr><th>tissue_type</th><td>string</td></tr>
</table>


#### assessment_type

* type: string

The type of assessment that was performed.


##### `assessment_type` Value Examples  

```
"Physical examination"
```
```
"Structured questionnaire"
```
```
"Interview"
```
```
"Observation"
```

#### collected_by

* type: 

The role of the person who made the observation or collected the sample.


##### `collected_by` Value Examples  

```
{
   "id" : "NCIT:C51863",
   "label" : "Research Clinician"
}
```
```
{
   "id" : "NCIT:C51864",
   "label" : "Research Nurse"
}
```
```
{
   "id" : "NCIT:C51798",
   "label" : "Admitting Physician"
}
```
```
"X-Ray technician"
```
```
"Lab phlebotomist"
```
```
"Self"
```

#### collection_date

* type: string

The date the observation was made or the sample was collected.



#### geo_location

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json">LINK</a>]

The geographical location where the observation, assessment, or sample collection took place.



#### id

* type: string

Uniquely identifies the observation, assessment, or sample collected.


##### `id` Value Examples  

```
"1837603"
```
```
"obs00053"
```
```
"sam55447.6"
```

#### imaging_procedure

* type: string

The type of imaging that was performed. Only makes sense if this observation is an imaging procedure.


##### `imaging_procedure` Value Examples  

```
"X-Ray"
```
```
"CT Scan"
```
```
"Ultrasound"
```

#### tissue_type

* type: string

The type of sample that was collected. Only makes sense if this observation is a sample collection.


<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


