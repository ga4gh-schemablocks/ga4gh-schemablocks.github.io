---
title: HgvsAllele
layout: default
permalink: "/schemas/playground/HgvsAllele.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
categories:
  - schemas
tags:
  - implemented
  - phenopackets
  - sb-phenopackets
  - schemas
---

<div id="schema-header-title">
  <h2><span id="schema-header-title-project">sb-phenopackets</span> HgvsAllele <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">implemented</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/variant.rst">Phenopackets</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/variant.rst">Phenopackets</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li><a href="https://orcid.org/0000-0002-3265-15918">Jules Jacobsen</a></li>
<li><a href="https://orcid.org/0000-0002-0736-91998">Peter Robinson</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li><a href="https://orcid.org/0000-0002-9551-6370">Melanie Courtot</a></li>
<li><a href="https://orcid.org/0000-0002-4839-5158">Isuru Liyanage</a></li>
</ul></td></tr>
<tr><th>Source (v1.0.0)</th><td><ul>
<li><a href="current/HgvsAllele.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/HgvsAllele.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ A single HGVS allele.
It is recommended that the string is validated using the VariantValidator - https://variantvalidator.org/
See http://varnomen.hgvs.org/recommendations/DNA/variant/alleles/

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>hgvs</th><td>string</td></tr>
<tr><th>id</th><td>string</td></tr>
</table>


#### hgvs

* type: string

add description

##### `hgvs` Value Example  

```
"NM_001848.2:c.877G>A"
```

#### id

* type: string

add description

##### `id` Value Example  

```
"add example"
```


### `HgvsAllele` Value Example  

```
{
   "hgvs" : "NM_001848.2:c.877G>A",
   "id" : "add example"
}
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


