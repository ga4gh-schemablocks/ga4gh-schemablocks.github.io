---
title: 'Geo_location'
layout: default
permalink: "/schemas/blocks/Geo_location.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## Geo_location
##### From Developer branch of original GA4GH schema

#### Status: __proposed__

<!--more-->



#### Provenance  

* [Developer branch of original GA4GH schema](https://github.com/ga4gh-metadata/metadata-schemas/blob/master/schemas/shared.proto#L60)  

#### Used by  

* [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/geolocation.rst)  
* [Progenetix database schema (Beacon+ backend)](https://github.com/progenetix/schemas/tree/master/main/yaml)  

#### Authors

* GA4GH Metadata Task Team, @mbaudis, @theisuru

#### Schema source: [YAML file](https://github.com/ga4gh-schemablocks/blocks/blob/master/src/yaml/geo_location.yaml)    
#### Properties of the _Geo_location_ class    

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
    <td>The optional name of the city the point location maps to. While this is a commonly used attribute and can save as sanity check for interpreting the point location, it should be considered secondary to the location values in interpreting the geographic location.
</td>
  </tr>
  <tr>
    <td>country</td>
    <td>string</td>
    <td></td>
    <td>The optional name of the country the location maps to, for sanity checks and procedural convenience (see notes for "city").
</td>
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
  <tr>
    <td>precision</td>
    <td>string</td>
    <td></td>
    <td>Used together with coordinate annotation, precision represents an optional label describing the precision that can be inferred from the coordinates. For a precision level of "city"", coordinates would have to be interpreted as representing any possible location within the city's administrative boundaries, not necessarily at the exact position of the point coordinates.
</td>
  </tr>

</table>


#### Description 
Geo_location provides information about a geographic position related to a record. Examples could be:

- an address, e.g. of a lab performing an analysis
- provenance of an individual, obfuscated to a larger order administrative entity (Suffolk, U.K.)
- a lat/long/alt position where an environmental sample was collected  

The geographic point object uses the default units from the [DCMI point scheme](http://dublincore.org/documents/dcmi-point/) and avoids optional representation in non-standard units.



#### Examples

```
{
   "longitude" : 8.54,
   "city" : "Timisoara",
   "altitude" : 8848,
   "label" : "Str Marasesti 5, 300077 Timisoara, Romania",
   "latitude" : 47.37,
   "country" : "Romania"
}
```
```
{
   "label" : "Office at Institute of Molecular Life Sciences, University of Zurich",
   "longitude" : 8.54913,
   "latitude" : 47.39792,
   "precision" : "room"
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

* The optional name of the city the point location maps to. While this is a commonly used attribute and can save as sanity check for interpreting the point location, it should be considered secondary to the location values in interpreting the geographic location.

* example:

```
'city' : "Timisoara"
```

##### country

* The optional name of the country the location maps to, for sanity checks and procedural convenience (see notes for "city").

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

##### precision

* Used together with coordinate annotation, precision represents an optional label describing the precision that can be inferred from the coordinates. For a precision level of "city"", coordinates would have to be interpreted as representing any possible location within the city's administrative boundaries, not necessarily at the exact position of the point coordinates.

* example:

```
'precision' : "address"
```

