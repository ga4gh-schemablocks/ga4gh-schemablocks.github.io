---
title: OntologyClass
layout: default
permalink: "/schemas/sb-phenopackets/OntologyClass.html"
sb_status: "core"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - core
  - sb-phenopackets
---


<div id="schema-header-title">
  <h2>OntologyClass <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">core</div></td>
  </tr>

  <tr>
    <th>Provenance</th>
    <td>
      <ul>
<li>Original GA4GH schema</li>
<li>additional discussions with @cmungall and phenopackets developers</li>
<li>Phenopackets alignment</li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li>Phenopackets</li>
<li>Progenetix database schema (Beacon+ backend)</li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li>GA4GH Metadata Task Team</li>
<li><a href="https://orcid.org/0000-0002-6601-2165">Christopher Mungall</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li><a href="https://orcid.org/0000-0002-9551-6370">Melanie Courtot</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v1.0.0)</th>
    <td>
      <ul>
        <li><a href="current/OntologyClass.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/OntologyClass.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ OntologyClass represents the core object used to reference domain-specific
entities, as well as to identify their domains through the appropriate
prefix.
CURIES are case sensitive, although for prefixes this practice is
inconsistently followed.


### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>label</th>
    <td>string</td>
  </tr>

</table>


#### id

* type: string

CURIE of the ontology class

##### `id` Value Example  

```
"ncit:C8294"
```

#### label

* type: string

the text label associated with the ontology class

##### `label` Value Example  

```
"Pancreatic Adenocarcinoma"
```


### `OntologyClass` Value Examples  

```
{
   "id" : "DUO:0000004",
   "label" : "no restriction"
}
```
```
{
   "id" : "HP:0003621",
   "label" : "Juvenile onset"
}
```


