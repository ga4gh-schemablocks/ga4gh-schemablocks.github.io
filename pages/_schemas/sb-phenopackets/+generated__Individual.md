---
title: Individual
layout: default
permalink: "/schemas/sb-phenopackets/Individual.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
  - sb-phenopackets
---


<div id="schema-header-title">
  <h2>Individual <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/individual.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/individual.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li>GA4GH Data Working Group</li>
<li><a href="https://orcid.org/0000-0002-3265-15918">Jules Jacobsen</a></li>
<li><a href="https://orcid.org/0000-0002-0736-91998">Peter Robinson</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li><a href="https://orcid.org/0000-0002-9551-6370">Melanie Courtot</a></li>
<li><a href="https://orcid.org/0000-0002-4839-5158">Isuru Liyanage</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v1.0.0)</th>
    <td>
      <ul>
        <li><a href="current/Individual.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Individual.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ An individual is a single organism (here typically a human).


### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>ageAtCollection</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Age.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>ageRangeAtCollection</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/AgeRange.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>alternateIds</th>
    <td>array of string</td>
  </tr>
  <tr>
    <th>dateOfBirth</th>
    <td>string</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>karyotypicSex</th>
    <td></td>
  </tr>
  <tr>
    <th>sex</th>
    <td></td>
  </tr>
  <tr>
    <th>taxonomy</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### ageAtCollection

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Age.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/AgeRange.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

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
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


