---
title: ListTablesResponse
layout: default
permalink: "/schemas/sb-discovery-search/ListTablesResponse.html"
sb_status: "playground"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - playground
  - sb-discovery-search
---


<div id="schema-header-title">
  <h2>ListTablesResponse <span id="schema-header-title-project">sb-discovery-search <a href="https://github.com/ga4gh-schemablocks/sb-discovery-search" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">playground</div></td>
  </tr>

  <tr>
    <th>Provenance</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh-discovery/ga4gh-discovery-search">Discovery Search</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh-discovery/ga4gh-discovery-search/tree/develop/spec">Discovery Search</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li>Miro Cupak</li>
<li><a href="https://orcid.org/0000-0002-9769-375X">Marc Fiume</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li>GA4GH Discovery developers...</li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (0.1.0)</th>
    <td>
      <ul>
        <li><a href="current/ListTablesResponse.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-discovery-search/blob/master/schemas/ListTablesResponse.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object
### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>pagination</th>
    <td>#/components/schemas/Pagination</td>
  </tr>
  <tr>
    <th>tables</th>
    <td>array of #/components/schemas/Table</td>
  </tr>

</table>


#### pagination

* type: #/components/schemas/Pagination



##### `pagination` Value Example  


#### tables

* type: array of #/components/schemas/Table



##### `tables` Value Example  



### `ListTablesResponse` Value Example  

<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


