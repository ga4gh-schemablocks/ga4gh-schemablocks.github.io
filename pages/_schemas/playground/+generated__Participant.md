---
title: Participant
layout: default
permalink: "/schemas/playground/Participant.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - proposed
  - playground
---


<div id="schema-header-title">
  <h2>Participant <span id="schema-header-title-project">playground <a href="https://github.com/ga4gh-schemablocks/playground" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">proposed</div></td>
  </tr>

  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li>Super Simple Study Schema</li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li>GA4GH Search Team</li>
<li><a href="https://orcid.org/0000-0001-9135-2164">Jonathan Fuerth</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v0.0.1)</th>
    <td>
      <ul>
        <li><a href="current/Participant.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/playground/blob/master/schemas/Participant.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Attributes relating to a participant in any kind of medical study.

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>ancestry</th>
    <td></td>
  </tr>
  <tr>
    <th>date_of_birth</th>
    <td>string</td>
  </tr>
  <tr>
    <th>family_group_id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>family_group_relation</th>
    <td>string</td>
  </tr>
  <tr>
    <th>geo_location</th>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/GeoLocation.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>sex</th>
    <td>string</td>
  </tr>

</table>


#### ancestry

* type: 

Biological ancestry of the participant. Should be used as an array item to indicate mixed ancestry.


##### `ancestry` Value Examples  

```
{
   "id" : "HANCESTRO_0552",
   "label" : "Aboriginal Australian"
}
```
```
{
   "id" : "HANCESTRO_0010",
   "label" : "African"
}
```
```
{
   "id" : "HANCESTRO_0016",
   "label" : "African American or Afro-Caribbean"
}
```
```
"Aboriginal Australian"
```
```
"African"
```
```
"Cree"
```

#### date_of_birth

* type: string

The participant's date of birth, possibly truncated to preserve anonymity.



#### family_group_id

* type: string

Unique identifier for the family group that this participant belongs to. Only relevant if the study design
includes family groupings.


##### `family_group_id` Value Examples  

```
"FAM_123446"
```
```
"f8476"
```
```
"17ab6"
```

#### family_group_relation

* type: string

Relationship of this participant within the family group. Only makes sense together with a family_group_id.


##### `family_group_relation` Value Examples  

```
"maternal grandparent"
```
```
"paternal grandparent"
```
```
"parent"
```
```
"child"
```
```
"grandchild"
```
```
"cousin"
```

#### geo_location

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/GeoLocation.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/GeoLocation.html" target="_BLANK">HTML</a>]

Participant's geographical location during the study period. Can be used as an array item if participants
move during the study.



#### id

* type: string

Uniquely identifies a participant or subject within a particular study.


##### `id` Value Examples  

```
"1837603"
```
```
"sub18"
```
```
"S47.6"
```

#### sex

* type: string

Physical sex of the participant.


##### `sex` Value Examples  

```
"female"
```
```
"male"
```
```
"other"
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


