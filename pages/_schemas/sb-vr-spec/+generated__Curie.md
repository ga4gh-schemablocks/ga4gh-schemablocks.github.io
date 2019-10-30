---
title: Curie
layout: default
permalink: "/schemas/sb-vr-spec/Curie.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
  - sb-vr-spec
---


<div id="schema-header-title">
  <h2>Curie <span id="schema-header-title-project">sb-vr-spec <a href="https://github.com/ga4gh-schemablocks/sb-vr-spec" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/ga4gh/vr-spec/blob/1.0/schema/vr.yaml">vr-spec</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh/vr-spec/blob/1.0/schema/vr.yaml">vr-spec</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li><a href="https://orcid.org/0000-0003-3463-0775">Reece Hart</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v1.0)</th>
    <td>
      <ul>
        <li><a href="current/Curie.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-vr-spec/blob/master/schemas/Curie.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ string  
__Pattern:__ ^\w[^:]+:.+$  
__Description:__ A string that refers to an object uniquely.  The lifetime and
scope of an id is defined by the sender.

VR does not impose any contraints on strings used as ids in
messages. However, to maximize sharability of data, the VR
Specification RECOMMENDS that implementations use [W3C Compact
URI (CURIE)](https://www.w3.org/TR/curie/) syntax.

String CURIEs are represented as `prefix`:`reference` (W3C
terminology), but often referred to as `namespace`:`accession`
or `namespace`:`local id` colloquially.

The VR specification also RECOMMENDS that `prefix` be defined in
identifiers.org.

The `reference` component is an unconstrained string.

A CURIE is a URI.  URIs may *locate* objects (i.e., specify
where to retrieve them) or *name* objects conceptually.  VR uses
CURIEs primarily as a naming mechanism.

Implementations MAY provide CURIE resolution mechanisms for
prefixes to make these objects locatable.

Using internal ids in public messages is strongly discouraged.


### `Curie` Value Examples  

```
"ga4gh:GA.01234abcde"
```
```
"DUO:0000004"
```
```
"orcid:0000-0003-3463-0775"
```
```
"PMID:15254584"
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


