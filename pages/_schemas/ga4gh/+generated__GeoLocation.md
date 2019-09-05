---
title: GeoLocation
layout: default
permalink: "/schemas/ga4gh/GeoLocation.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---


## GeoLocation

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __proposed__

* Provenance  

    - [Developer branch of original GA4GH schema](https://github.com/ga4gh-metadata/metadata-schemas/blob/master/schemas/shared.proto#L60)  
* Used by  

    - [Progenetix database schema (Beacon+ backend)](https://github.com/progenetix/schemas/tree/master/main/yaml)  
* Contributors  

    - GA4GH Metadata Task Team  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
<!--more-->

### Source

* raw source [[JSON](./GeoLocation.json)]
* [Github](https://github.com/ga4gh-schemablocks/blocks/blob/master/schemas/ga4gh/v0.0.1/GeoLocation.yaml)

### Attributes
  
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

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>altitude</td>
    <td>number</td>
  </tr>
  <tr>
    <td>city</td>
    <td>string</td>
  </tr>
  <tr>
    <td>country</td>
    <td>string</td>
  </tr>
  <tr>
    <td>label</td>
    <td>string</td>
  </tr>
  <tr>
    <td>latitude</td>
    <td>number</td>
  </tr>
  <tr>
    <td>longitude</td>
    <td>number</td>
  </tr>
  <tr>
    <td>precision</td>
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


