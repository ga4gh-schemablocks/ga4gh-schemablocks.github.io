---
title: Individual
layout: default
permalink: "/schemas/ga4gh/Individual.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Individual

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/individual.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/individual.rst)  

<!--more-->

* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  

### Source (v0.0.1)

* raw source [[JSON](./current/Individual.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Individual.yaml)

### Attributes
  
__Type:__ object  
__Description:__ An individual is a single organism (here typically a human).


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>ageAtCollection</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>ageRangeAtCollection</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/AgeRange.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/AgeRange.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/AgeRange.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>alternateIds</td>
    <td>array of string</td>
  </tr>
  <tr>
    <td>dateOfBirth</td>
    <td>string</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>karyotypicSex</td>
    <td></td>
  </tr>
  <tr>
    <td>sex</td>
    <td></td>
  </tr>
  <tr>
    <td>taxonomy</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### ageAtCollection

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]

An age object describing the age of the individual at the time of collection.
The Age object allows the encoding of the age either as ISO8601 duration or
time interval (preferred), or as ontology term object.


##### `ageAtCollection` Value Example  

```
{
   "age" : "P14Y"
}
```

#### ageRangeAtCollection

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/AgeRange.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/AgeRange.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/AgeRange.html" target="_BLANK">HTML</a>]

An age object describing the age of the individual at the time of collection.
The Age object allows the encoding of the age either as ISO8601 duration or
time interval (preferred), or as ontology term object.


##### `ageRangeAtCollection` Value Example  

```
{
   "start" : {
      "age" : "P14Y"
   }
}
```

#### alternateIds

* type: array of string

An optional list of alternative identifiers for this individual. This field is provided
for the convenience of users who may have multiple mappings to an individual which they need to track.


##### `alternateIds` Value Example  

```
[
   "another_id"
]
```

#### dateOfBirth

* type: string

The date of birth of the individual as an ISO8601 UTC timestamp - rounded down to the closest known
year/month/day/hour/minute


##### `dateOfBirth` Value Example  

```
"2018-03-01T00:00:00Z"
```

#### id

* type: string

The local-unique identifier of this individual

##### `id` Value Example  

```
"AM_BS__NCBISKYCGH-1993"
```

#### karyotypicSex

* type: 

Karyotypic sex of the individual,
one of UNKNOWN_KARYOTYPE, XX, XY, XO, XXY, XXX, XXYY, XXXY, XXXX, XYY, OTHER_KARYO,


##### `karyotypicSex` Value Example  

```
"XX"
```

#### sex

* type: 

The phenotypic/ administrative sex of the individual, one of UNKNOWN_SEX, FEMALE, MALE, OTHER_SEX

##### `sex` Value Example  

```
"FEMALE"
```

#### taxonomy

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

NCBI taxonomic identifier. For resources where there may be more than one organism being studied
it is advisable to indicate the taxonomic identifier of that organism, to its most specific level


##### `taxonomy` Value Example  

```
{
   "id" : "NCBITaxon:9606",
   "label" : "Homo sapiens"
}
```


### `Individual` Value Example  

```
{
   "id" : "SAMN05324082-individual",
   "sex" : "MALE",
   "taxonomy" : {
      "id" : "NCBITaxon:9606",
      "label" : "Homo sapiens"
   }
}
```


