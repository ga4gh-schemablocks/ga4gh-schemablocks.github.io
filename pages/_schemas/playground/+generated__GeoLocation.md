---
title: GeoLocation
layout: default
permalink: "/schemas/playground/GeoLocation.html"
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
  <h2><span id="schema-header-title-project">playground</span> GeoLocation <a href="https://github.com/ga4gh-schemablocks/playground" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">proposed</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://tools.ietf.org/html/rfc7946">IETF GeoJSON pecification</a></li>
<li><a href="https://github.com/ga4gh-metadata/metadata-schemas/blob/master/schemas/shared.proto#L60">Developer branch of original GA4GH schema</a></li>
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
<li><a href="current/GeoLocation.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/playground/blob/master/schemas/GeoLocation.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ A GeoLocation object represents a geographic location formatted as a *GeoJSON feature*. The format is compatible with RFC 7946, while currently limiting its scope to features of type "Point". Also, the schema defines some optional parameters compatible with the GeoJSON feature *properties* wrapper object. Examples could be:   * an address, e.g. of a lab performing an analysis * provenance of an individual, obfuscated to a larger order  administrative entity (Suffolk, U.K.) * a lat/long/alt position where an environmental sample was collected  

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>geometry</th><td>GeoJSONgeometry.yaml#/properties [<a href="./GeoJSONgeometry.html">HTML</a>]</td></tr>
<tr><th>properties</th><td>GeoLabels.yaml#/properties [<a href="./GeoLabels.html">HTML</a>]</td></tr>
<tr><th>type</th><td>string</td></tr>
</table>


#### geometry

* type: GeoJSONgeometry.yaml#/properties [<a href="./GeoJSONgeometry.html">HTML</a>]




#### properties

* type: GeoLabels.yaml#/properties [<a href="./GeoLabels.html">HTML</a>]




#### type

* type: string
* value: Feature  




<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


