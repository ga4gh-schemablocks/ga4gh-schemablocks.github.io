---
title: DataUseLimitation
layout: default
permalink: "/schemas/ga4gh/DataUseLimitation.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
  - ga4gh
---


<div id="schema-header-title">
  <h2>DataUseLimitation <span id="schema-header-title-project">ga4gh <a href="https://github.com/ga4gh-schemablocks/sb-duo" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">implemented</div></td>
  </tr>

  <tr>
    <th>Provenance</th>
    <td>
      <ul>
<li><a href="https://github.com/EBISPOT/DUO">DUO</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li>DUO</li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li><a href="https://orcid.org/0000-0002-9551-6370">Melanie Courtot</a></li>
<li>DUO group</li>
<li><a href="https://orcid.org/0000-0002-4839-5158">Isuru Liyanage</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v0.0.1)</th>
    <td>
      <ul>
        <li><a href="current/DataUseLimitation.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-duo/blob/master/schemas/DataUseLimitation.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ The (GA4GH) Data Use Ontology (DUO) includes terms describing data use conditions,
particularly for research data in the health/clinical/biomedical domain.

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>description</th>
    <td>string</td>
  </tr>
  <tr>
    <th>modifier</th>
    <td>./DataUseModifier</td>
  </tr>
  <tr>
    <th>term</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/OntologyClass/v1.0.0</td>
  </tr>

</table>


#### description

* type: string

free text description mainly to encapsulate those conditions that wouldn't be described by DUO terms or modifiers



#### modifier

* type: ./DataUseModifier

modifier/restriction applicable for the DUO


#### term

* type: https://schemablocks.org/schemas/sb-phenopackets/OntologyClass/

DUO - ontology term subclass of either DUO_0000001 or DUO_0000017



### `DataUseLimitation` Value Examples  

```
{
   "modifier" : {
      "ontology" : {
         "id" : "MONDO:0004992",
         "label" : "cancer"
      }
   },
   "term" : {
      "id" : "DUO:0000007",
      "label" : "disease specific research"
   }
}
```
```
{
   "modifier" : {
      "text" : "UK"
   },
   "term" : {
      "id" : "DUO:0000022",
      "label" : "geographical restriction"
   }
}
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


