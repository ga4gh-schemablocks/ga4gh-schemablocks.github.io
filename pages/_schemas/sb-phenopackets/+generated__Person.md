---
title: Person
layout: default
permalink: "/schemas/sb-phenopackets/Person.html"
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
  <h2>Person <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/person.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/person.rst">Phenopackets</a></li>
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
        <li><a href="current/Person.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Person.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Person

### Properties

<table id="schema-property-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>affectedStatus</th>
    <td></td>
  </tr>
  <tr>
    <th>familyId</th>
    <td>string</td>
  </tr>
  <tr>
    <th>individualId</th>
    <td>string</td>
  </tr>
  <tr>
    <th>maternalId</th>
    <td>string</td>
  </tr>
  <tr>
    <th>paternalId</th>
    <td>string</td>
  </tr>
  <tr>
    <th>sex</th>
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


