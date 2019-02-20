---
title: 'Geo_location'
layout: default
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## Geo_location

The original schema definitions are provided in the [YAML file](https://github.com/ga4gh-schemablocks/blocks/blob/master/src/yaml/geo_location.yaml).

<!--more-->

<h4>Properties of the <i>Geo_location</i> class</h4>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>altitude</td>
    <td>number</td>
    <td>float</td>
    <td>height in meters above the WGS 84 reference ellipsoid; optional</td>
  </tr>
  <tr>
    <td>city</td>
    <td>string</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>country</td>
    <td>string</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td>label</td>
    <td>string</td>
    <td></td>
    <td>A text representation, preferably using standard geographic identification elements,
of the corresponding latitude, longitude(, altitude). This representation serves the purposes to
  - capture standard data entry parameters
  - provide a sanity check for latitude,longitude values
</td>
  </tr>
  <tr>
    <td>latitude</td>
    <td>number</td>
    <td>float</td>
    <td>signed decimal degrees (North, relative to Equator)</td>
  </tr>
  <tr>
    <td>longitude</td>
    <td>number</td>
    <td>float</td>
    <td>signed decimal degrees (East, relative to IERS Reference Meridian)</td>
  </tr>

</table>Geo_location provides information about a geographic position related to a record. Examples could be:
- an address, e.g. of a lab performing an analysis
- provenance of an individual, obfuscated to a larger order administrative entity (Suffolk, U.K.)
- a lat/long/alt position where an environmental sample was collected
The geographic point object uses the default units from the DCMI point scheme
http://dublincore.org/documents/dcmi-point/
and avoids optional representation in non-standard units.



#### Examples

```
{
   "longitude" : 8.54,
   "country" : "Romania",
   "latitude" : 47.37,
   "altitude" : 8848,
   "label" : "Str Marasesti 5, 300077 Timisoara, Romania",
   "city" : "Timisoara"
}
```
--------------------------------------------------------------------------------

<h4>Notes and examples on the <i>Geo_location</i> properties</h4>

##### altitude

* height in meters above the WGS 84 reference ellipsoid; optional  
* example:  

```
'altitude' : "8848"
```

##### city

*   
* example:  

```
'city' : "Timisoara"
```

##### country

*   
* example:  

```
'country' : "Romania"
```

##### label

* A text representation, preferably using standard geographic identification elements,
of the corresponding latitude, longitude(, altitude). This representation serves the purposes to
  - capture standard data entry parameters
  - provide a sanity check for latitude,longitude values
  
* example:  

```
'label' : "Str Marasesti 5, 300077 Timisoara, Romania"
```

##### latitude

* signed decimal degrees (North, relative to Equator)  
* example:  

```
'latitude' : "47.37"
```

##### longitude

* signed decimal degrees (East, relative to IERS Reference Meridian)  
* example:  

```
'longitude' : "8.54"
```

