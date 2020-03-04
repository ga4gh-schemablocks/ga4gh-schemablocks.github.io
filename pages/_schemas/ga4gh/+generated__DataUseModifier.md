---
title: DataUseModifier
layout: default
permalink: "/schemas/ga4gh/DataUseModifier.html"
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
  <h2>DataUseModifier <span id="schema-header-title-project">ga4gh <a href="https://github.com/ga4gh-schemablocks/sb-duo" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li>DUO group</li>
<li><a href="https://orcid.org/0000-0002-4839-5158">Isuru Liyanage</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v0.0.1)</th>
    <td>
      <ul>
        <li><a href="current/DataUseModifier.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-duo/blob/master/schemas/DataUseModifier.yaml" target="_BLANK">Github</a></li>
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
Modifier specifies the criteria for data use condition.

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>ontology</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/OntologyClass/v1.0.0</td>
  </tr>
  <tr>
    <th>text</th>
    <td>string</td>
  </tr>

</table>


#### ontology

* type: https://schemablocks.org/schemas/sb-phenopackets/OntologyClass/v1.0.0

ontology describing the modifier/restriction

##### `ontology` Value Example  


#### text

* type: string

text description of the modifier eg. date rage, geographic location, user/institute (RI)

##### `text` Value Example  



### `DataUseModifier` Value Examples  

```
{
   "ontology" : {
      "id" : "MONDO:0004992",
      "label" : "cancer"
   }
}
```
```
{
   "text" : "UK"
}
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


