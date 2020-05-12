---
title: Pagination
layout: default
permalink: "/schemas/sb-discovery-search/Pagination.html"
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
  <h2>Pagination <span id="schema-header-title-project">sb-discovery-search <a href="https://github.com/ga4gh-schemablocks/sb-discovery-search" target="_BLANK">&nearr;</a></span> </h2>
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
        <li><a href="current/Pagination.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-discovery-search/blob/master/schemas/Pagination.yaml" target="_BLANK">Github</a></li>
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
    <th>next_page_url</th>
    <td>string (uri)</td>
  </tr>
  <tr>
    <th>previous_page_url</th>
    <td>string (uri)</td>
  </tr>

</table>


#### next_page_url

* type: string (uri)

URL pointing to the next page of the same Table. Null or absent on last page.

##### `next_page_url` Value Example  


#### previous_page_url

* type: string (uri)

URL pointing to the previous page of the same Table. Null or absent on first page.

##### `previous_page_url` Value Example  



### `Pagination` Value Example  

<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


