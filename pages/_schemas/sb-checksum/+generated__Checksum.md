---
title: Checksum
layout: default
permalink: "/schemas/sb-checksum/Checksum.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - proposed
  - sb-checksum
---


<div id="schema-header-title">
  <h2>Checksum <span id="schema-header-title-project">sb-checksum <a href="https://github.com/ga4gh-schemablocks/sb-checksum" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">proposed</div></td>
  </tr>

  <tr>
    <th>Provenance</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh/data-repository-service-schemas/blob/release/drs-1.0.0/docs/asciidoc/front_matter.adoc">GA4GH DRS</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/ga4gh/data-repository-service-schemas/blob/master/docs/asciidoc/front_matter.adoc">GA4GH DRS</a></li>
<li><a href="https://github.com/ga4gh/tool-registry-service-schemas/blob/develop/openapi/openapi.yaml">GA4GH TRS</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li><a href="https://orcid.org/0000-0003-1687-2754">Susheel Varma</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v0.0.1)</th>
    <td>
      <ul>
        <li><a href="current/Checksum.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-checksum/blob/master/schemas/Checksum.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Checksum

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>checksum</th>
    <td>string</td>
  </tr>
  <tr>
    <th>type</th>
    <td>string</td>
  </tr>

</table>


#### checksum

* type: string

The hexadecimal encoded ([Base16](https://tools.ietf.org/html/rfc4648#section-8))
checksum for the data


##### `checksum` Value Example  

```
"77af4d6b9913e693e8d0b4b294fa62ade6054e6b2f1ffb617ac955dd63fb0182"
```

#### type

* type: string

The digest method used to create the checksum.
The value (e.g. `sha-256`) SHOULD be listed as `Hash Name String` in the 
[GA4GH Hash Algorithm Registry](https://github.com/ga4gh-discovery/ga4gh-checksum/blob/master/hash-alg.csv).
Other values MAY be used, as long as implementors are aware of the issues
discussed in [RFC6920](https://tools.ietf.org/html/rfc6920#section-9.4).

GA4GH may provide more explicit guidance for use of non-IANA-registered
algorithms in the future.


##### `type` Value Example  

```
"sha-256"
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


