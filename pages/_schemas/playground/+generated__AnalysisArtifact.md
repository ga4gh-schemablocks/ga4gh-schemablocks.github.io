---
title: AnalysisArtifact
layout: default
permalink: "/schemas/playground/AnalysisArtifact.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - proposed
  - search
---


<div id="schema-header-title">
  <h2>Observation <span id="schema-header-title-project">search <a href="https://github.com/ga4gh-schemablocks/playground" target="_BLANK">&nearr;</a></span> </h2>
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
        <li><a href="current/AnalysisArtifact.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/playground/blob/master/schemas/AnalysisArtifact.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Attributes relating to an artifact of sample analysis or data analysis. Typically identifies a data file.

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>batch_id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>created_date</th>
    <td>string</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>

</table>


#### batch_id

* type: string

Uniquely identifies (within the study) the analysis batch that produced this artifact.


##### `batch_id` Value Examples  

```
"scn20210103.4"
```
```
"run0004"
```

#### created_date

* type: string

The date the artifact was created.



#### id

* type: string

Uniquely identifies a file that was the result of an analysis. Ideally should be a namespaced globally unique
identifier such as a URI, but could be any identifier that is unique within the bounds of the study.


##### `id` Value Examples  

```
"drs://example.com/a5b2387fabb4"
```
```
"https://example.com/data/studies/s12353/s000005.bam"
```
```
"s000005.bam"
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


