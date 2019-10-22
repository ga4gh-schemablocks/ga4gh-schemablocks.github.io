---
title: Person
layout: default
permalink: "/schemas/ga4gh/Person.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Person

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/person.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/person.rst)  

<!--more-->

* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  

### Source (v0.0.1)

* raw source [[JSON](./current/Person.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Person.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Person

### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>affectedStatus</td>
    <td></td>
  </tr>
  <tr>
    <td>familyId</td>
    <td>string</td>
  </tr>
  <tr>
    <td>individualId</td>
    <td>string</td>
  </tr>
  <tr>
    <td>maternalId</td>
    <td>string</td>
  </tr>
  <tr>
    <td>paternalId</td>
    <td>string</td>
  </tr>
  <tr>
    <td>sex</td>
    <td></td>
  </tr>

</table>


#### affectedStatus

* type: 

one of MISSING, UNAFFECTED, AFFECTED

##### `affectedStatus` Value Example  

```
"MISSING"
```

#### familyId

* type: string

add description

##### `familyId` Value Example  

```
"add example"
```

#### individualId

* type: string

add description

##### `individualId` Value Example  

```
"add example"
```

#### maternalId

* type: string

add description

##### `maternalId` Value Example  

```
"add example"
```

#### paternalId

* type: string

add description

##### `paternalId` Value Example  

```
"add example"
```

#### sex

* type: 

one of UNKNOWN_SEX, FEMALE, MALE, OTHER_SEX

##### `sex` Value Example  

```
"FEMALE"
```


### `Person` Value Example  

```
{
   "individualId" : "add example"
}
```


