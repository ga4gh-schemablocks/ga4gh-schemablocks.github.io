---
title: Interval
layout: default
permalink: "/schemas/sb-vr-spec/Interval.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
  - sb-vr-spec
---


<div id="schema-header-title">
  <h2>Interval <span id="schema-header-title-project">sb-vr-spec <a href="https://github.com/ga4gh-schemablocks/sb-vr-spec" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/ga4gh/vr-spec/blob/1.0/schema/vr.yaml">vr-spec</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh/vr-spec/blob/1.0/schema/vr.yaml">vr-spec</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li><a href="https://orcid.org/0000-0003-3463-0775">Reece Hart</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v1.0)</th>
    <td>
      <ul>
        <li><a href="current/Interval.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-vr-spec/blob/master/schemas/Interval.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Description:__ An Interval represents a span of sequence. Positions are always represented 
by contiguous spans using interbase coordinates.

This definition of Interval is intended to be compatible with that in Sequence
Ontology ([SO:0000001](http://www.sequenceontology.org/browser/current_svn/term/SO:0000001)),
with the exception that the GA4GH VR Interval may be zero-width. The SO 
definition is for an "extent greater than zero".


### `Interval` Value Example  

```
{
   "end" : "22",
   "start" : "11",
   "type" : "SimpleInterval"
}
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


