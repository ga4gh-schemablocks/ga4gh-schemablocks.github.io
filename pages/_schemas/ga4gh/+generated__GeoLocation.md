---
title: GeoLocation
layout: default
permalink: "/schemas/ga4gh/GeoLocation.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - proposed
  - ga4gh
---


<div id="schema-header-title">
  <h2>GeoLocation <span id="schema-header-title-project">ga4gh <a href="https://github.com/ga4gh-schemablocks/playground" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">proposed</div></td>
  </tr>

  <tr>
    <th>Provenance</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh-metadata/metadata-schemas/blob/master/schemas/shared.proto#L60">Developer branch of original GA4GH schema</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/progenetix/schemas/tree/master/main/yaml">Progenetix database schema (Beacon+ backend)</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li>GA4GH Metadata Task Team</li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li><a href="https://orcid.org/0000-0002-4839-5158">Isuru Liyanage</a></li>
<li><a href="https://orcid.org/0000-0002-9551-6370">Melanie Courtot</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v0.0.1)</th>
    <td>
      <ul>
        <li><a href="current/GeoLocation.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/playground/blob/master/schemas/GeoLocation.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Geo_location provides information about a geographic position related to 
a record. Examples could be:  

* an address, e.g. of a lab performing an analysis
* provenance of an individual, obfuscated to a larger order 
administrative entity (Suffolk, U.K.)
* a lat/long/alt position where an environmental sample was collected  

The geographic point object uses the default units from the 
[DCMI point scheme](http://dublincore.org/documents/dcmi-point/) 
and avoids optional representation in non-standard units.

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>altitude</th>
    <td>number</td>
  </tr>
  <tr>
    <th>city</th>
    <td>string</td>
  </tr>
  <tr>
    <th>country</th>
    <td>string</td>
  </tr>
  <tr>
    <th>label</th>
    <td>string</td>
  </tr>
  <tr>
    <th>latitude</th>
    <td>number</td>
  </tr>
  <tr>
    <th>longitude</th>
    <td>number</td>
  </tr>
  <tr>
    <th>precision</th>
    <td>string</td>
  </tr>

</table>


#### altitude

* type: number

height in meters above the WGS 84 reference ellipsoid; optional

##### `altitude` Value Example  

```
"8848"
```

#### city

* type: string

The optional name of the city the point location maps to. While this is 
a commonly used attribute and can save as sanity check for interpreting 
the point location, it should be considered secondary to the location 
values in interpreting the geographic location.


##### `city` Value Examples  

```
"Timisoara"
```
```
"Heidelberg"
```
```
"Zurich"
```

#### country

* type: string

The optional name of the country the location maps to, for sanity checks 
and procedural convenience (see notes for "city").


##### `country` Value Examples  

```
"Romania"
```
```
"Albania"
```

#### label

* type: string

A text representation, preferably using standard geographic 
identification elements, of the corresponding latitude, longitude, 
(altitude). This representation serves the purposes to
- capture standard data entry parameters  
- provide a sanity check for latitude,longitude values


##### `label` Value Example  

```
"Str Marasesti 5, 300077 Timisoara, Romania"
```

#### latitude

* type: number

signed decimal degrees (North, relative to Equator)

##### `latitude` Value Example  

```
"47.37"
```

#### longitude

* type: number

signed decimal degrees (East, relative to IERS Reference Meridian)

##### `longitude` Value Example  

```
"8.54"
```

#### precision

* type: string

Used together with coordinate annotation, precision represents an 
optional label describing the precision that can be inferred from the 
coordinates. For a precision level of "city"", coordinates would have to 
be interpreted as representing any possible location within the city's 
administrative boundaries, not necessarily at the exact position of the 
point coordinates.


##### `precision` Value Example  

```
"address"
```


### `GeoLocation` Value Examples  

```
{
   "altitude" : "47",
   "city" : "Timisoara",
   "country" : "Romania",
   "label" : "Str Marasesti 5, 300077 Timisoara, Romania",
   "latitude" : "47.37",
   "longitude" : "8.54"
}
```
```
{
   "label" : "Office at Institute of Molecular Life Sciences, University of Zurich",
   "latitude" : "47.39792",
   "longitude" : "8.54913",
   "precision" : "room"
}
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


