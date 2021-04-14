---
title: GeoJSONgeometry
layout: default
permalink: "/schemas/playground/GeoJSONgeometry.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
categories:
  - schemas
tags:
  - playground
  - proposed
  - schemas
---

<div id="schema-header-title">
  <h2><span id="schema-header-title-project">playground</span> GeoJSONgeometry <a href="https://github.com/ga4gh-schemablocks/playground" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">proposed</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/ga4gh-metadata/metadata-schemas/blob/master/schemas/shared.proto#L60">Developer branch of original GA4GH schema</a></li>
<li><a href="https://tools.ietf.org/html/rfc7946">IETF GeoJSON pecification</a></li>
<li><a href="https://github.com/progenetix/schemas/">Progenetix</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://github.com/progenetix/schemas/">Progenetix database schema (Beacon+ backend)</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li>GA4GH Metadata Task Team</li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li><a href="https://orcid.org/0000-0002-4839-5158">Isuru Liyanage</a></li>
<li><a href="https://orcid.org/0000-0002-9551-6370">Melanie Courtot</a></li>
</ul></td></tr>
<tr><th>Source (v2021-04-14)</th><td><ul>
<li><a href="current/GeoJSONgeometry.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/playground/blob/master/schemas/GeoJSONgeometry.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ The geographic point object uses the default units from the [DCMI point scheme](http://dublincore.org/documents/dcmi-point/) and avoids optional representation in non-standard units.

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>coordinates</th><td>array of "number"</td></tr>
<tr><th>type</th><td>string</td></tr>
</table>


#### coordinates

* type: array of "number"

An array of 2 (longitude, latitude) or 3 (longitude, latitude, altitude) values.


##### `coordinates` Value Examples  

```
[
   47.37,
   8.55
]
```
```
[
   86.925026,
   27.98785,
   8848.86
]
```

#### type

* type: string
* value: Point  




<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


