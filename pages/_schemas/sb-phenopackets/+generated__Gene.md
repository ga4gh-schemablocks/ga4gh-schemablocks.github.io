---
title: Gene
layout: default
permalink: "/schemas/sb-phenopackets/Gene.html"
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
  <h2>Gene <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/gene.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/gene.rst">Phenopackets</a></li>
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
        <li><a href="current/Gene.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Gene.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Gene identifier

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>alternateIds</th>
    <td>array of "string"</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>symbol</th>
    <td>string</td>
  </tr>

</table>


#### alternateIds

* type: array of "string"

alternate identifiers

##### `alternateIds` Value Example  

```
[
   "HGNC:3477"
]
```

#### id

* type: string

The official gene identifier as designated by the organism gene nomenclature committee e.g. HGNC:3477 or MGI:2385071
Preferentially this should be a CURIE, however it is acceptable to use another equivalent resource identifier
such as ENSG00000120705, uc003ldc.6
refere to - https://www.genenames.org/data/gene-symbol-report/#!/hgnc_id/HGNC:3477


##### `id` Value Example  

```
"HGNC:3477"
```

#### symbol

* type: string

The official gene symbol as designated by the organism gene nomenclature committee e.g. ETF1 or Etf1


##### `symbol` Value Example  

```
"ETF1"
```


### `Gene` Value Examples  

```
{
   "id" : "HGNC:3477",
   "symbol" : "ETF1"
}
```
```
{
   "id" : "HGNC:3689",
   "symbol" : "FGFR2"
}
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


