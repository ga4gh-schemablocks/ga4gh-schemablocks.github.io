---
title: Curie
layout: default
permalink: "/schemas/ga4gh/Curie.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
  - ga4gh
---


<div id="schema-header-title">
  <h2>Curie <span id="schema-header-title-project">ga4gh <a href="https://github.com/ga4gh-schemablocks/blocks" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/ga4gh/vr-spec/blob/master/schema/vr.yaml">vr-spec</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh/vr-spec/blob/master/schema/vr.yaml">vr-spec</a></li>
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
<li><a href="https://orcid.org/0000-0002-4839-5158">Isuru Liyanage</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v0.0.1)</th>
    <td>
      <ul>
        <li><a href="current/Curie.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/blocks/blob/master/schemas/Curie.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ string  
__Pattern:__ ^\w[^:]+:.+$  
__Description:__ A CURIE constitutes a "Compact URI" or Abbreviated syntax for expressing 
Uniform Resource Identifiers (URIs). CURIEs consist of a prefix and a private 
ID part, separated by a colon.

Some design considerations:    

* Prefixes should *not* be concatenated; there should only be a single colon 
in the CURIE.
* While the underscore `_` character is considered a "safe" character in all 
computing environments and is a "word character" in regular expression 
matching, it nevertheless should be _avoided_ as part of the private portion 
of a CURIE, since in some environments it has been used as replacement for 
the prefix separation (in replacement for the colon character `:`).


### `Curie` Value Examples  

```
"DUO:0000004"
```
```
"orcid:0000-0003-3463-0775"
```
```
"PMID:15254584"
```


