---
title: GeoLabels
layout: default
permalink: "/schemas/playground/GeoLabels.html"
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
  <h2><span id="schema-header-title-project">playground</span> GeoLabels <a href="https://github.com/ga4gh-schemablocks/playground" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">proposed</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://tools.ietf.org/html/rfc7946">IETF GeoJSON pecification</a></li>
<li><a href="https://github.com/progenetix/bycon/">Progenetix `bycon` project</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://github.com/progenetix/schemas/">Progenetix database schema (Beacon+ backend)</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
</ul></td></tr>
<tr><th>Source (v2021-04-14)</th><td><ul>
<li><a href="current/GeoLabels.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/playground/blob/master/schemas/GeoLabels.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ GeoLabels represent an instance of the GeoJSON `properties` object. The parameters provide additional information for the interpretation of the location parameters, and also serve for optional "sanity checks" off the corresponding latitude, longitude (, altitude).

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>ISO3166alpha3</th><td>string</td></tr>
<tr><th>city</th><td>string</td></tr>
<tr><th>country</th><td>string</td></tr>
<tr><th>label</th><td>string</td></tr>
<tr><th>latitude</th><td>number (float)</td></tr>
<tr><th>longitude</th><td>number (float)</td></tr>
<tr><th>precision</th><td>string</td></tr>
</table>


#### ISO3166alpha3

* type: string



##### `ISO3166alpha3` Value Examples  

```
"USA"
```
```
"CHE"
```

#### city

* type: string

The optional name of the city the point location maps to. While this is a commonly used the point location, it should be considered secondary to the location values in interpreting the geographic location.



#### country

* type: string

The optional name of the country the location maps to, for sanity checks and procedural convenience (see notes for "city").


##### `country` Value Example  

```
"Switzerland"
```

#### label

* type: string



##### `label` Value Examples  

```
"Heidelberg, Germany"
```
```
"Gainesville, United States of America"
```
```
"Zurich, Switzerland"
```
```
"Str Marasesti 5, 300077 Timisoara, Romania"
```

#### latitude

* type: number (float)

signed decimal degrees (North, relative to Equator)

##### `latitude` Value Example  

```
47.37
```

#### longitude

* type: number (float)

signed decimal degrees (East, relative to IERS Reference Meridian)

##### `longitude` Value Example  

```
8.55
```

#### precision

* type: string

Used together with coordinate annotation, precision represents an optional label describing the precision that can be inferred from the coordinates. For a precision level of "city"", coordinates would have to be interpreted as representing any possible location within the city's administrative boundaries, not necessarily at the exact position of the point coordinates. The `precision` parameter can be used to indicate an obfuscation of the coordinates, e.g. for privacy protection.


##### `precision` Value Example  

```
"city"
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


