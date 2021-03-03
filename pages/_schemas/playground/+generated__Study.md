---
title: Study
layout: default
permalink: "/schemas/playground/Study.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - proposed
  - playground
---


<div id="schema-header-title">
  <h2>Study <span id="schema-header-title-project">playground <a href="https://github.com/ga4gh-schemablocks/playground" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">proposed</div></td>
  </tr>

  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li>Super Simple Study Schema</li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li>GA4GH Search Team</li>
<li><a href="https://orcid.org/0000-0001-9135-2164">Jonathan Fuerth</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v0.0.1)</th>
    <td>
      <ul>
        <li><a href="current/Study.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/playground/blob/master/schemas/Study.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Attributes relating to any kind of medical study or data collection effort.

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>data_use</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/OntologyClass/v1.0.0</td>
  </tr>
  <tr>
    <th>design</th>
    <td>string</td>
  </tr>
  <tr>
    <th>disease_area</th>
    <td></td>
  </tr>
  <tr>
    <th>end_date</th>
    <td></td>
  </tr>
  <tr>
    <th>geo_location</th>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/GeoLocation.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>name</th>
    <td>string</td>
  </tr>
  <tr>
    <th>objectives</th>
    <td>string</td>
  </tr>
  <tr>
    <th>start_date</th>
    <td></td>
  </tr>

</table>


#### data_use

* type: https://schemablocks.org/schemas/sb-phenopackets/OntologyClass/v1.0.0

Conditions and restrictions on the use of data associated with this study.


##### `data_use` Value Examples  

```
{
   "id" : "DUO:0000042",
   "label" : "general research use"
}
```
```
{
   "id" : "DUO:0000007; MONDO:0007263",
   "label" : "disease specific research; cardiac rhythm disease"
}
```

#### design

* type: string

Design of the study. Use as an array member in a study with a compound design.


##### `design` Value Examples  

```
"Meta-Analysis"
```
```
"Systematic Review"
```
```
"Randomized Controlled Trial"
```
```
"Prospective Observational"
```
```
"Case-control"
```
```
"Cross-sectional"
```
```
"Case Reports and Series"
```
```
"Ideas, Editorials, Opinions"
```
```
"Animal Research"
```
```
"Test Tube Lab Research"
```

#### disease_area

* type: 

A disease area that is a focus of the study.



#### end_date

* type: 

Date that the study began or is planned to begin.



#### geo_location

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/GeoLocation.html" target="_BLANK">HTML</a>]

The geographic location where the study takes place. Use as an array item type for studies that take
place in multiple discrete locations.



#### id

* type: string

Uniquely identifies a study. Should ideally be a namespaced globally unique identifier such as a URI, but this
is not required.


##### `id` Value Examples  

```
"https://research.example.com/study/4783506"
```
```
"phs045346-2"
```

#### name

* type: string

Brief natural language description of the study.


##### `name` Value Example  

```
"A two month case-control study that evaluates the impact of changes in caffeine consumption on adults with irregular heartbeats."
```

#### objectives

* type: string

Objectives of the study, described in natural language.


##### `objectives` Value Example  

```
"Evaluate the effects of one week reduction of caffeine intake on patients with chronic arrhythmia."
```

#### start_date

* type: 

Date that the study began or is planned to begin.


<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


