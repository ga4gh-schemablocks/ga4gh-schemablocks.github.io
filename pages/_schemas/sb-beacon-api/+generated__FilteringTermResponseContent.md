---
title: FilteringTermResponseContent
layout: default
permalink: "/schemas/sb-beacon-api/FilteringTermResponseContent.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
categories:
  - specification
tags:
  - Beacon-v2
  - beacon
  - beacon-v2
  - proposed
  - schemas
---

<div id="schema-header-title">
  <h2><span id="schema-header-title-project">beacon-v2</span> FilteringTermResponseContent <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">proposed</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/ga4gh-beacon/specification-v2">Beacon v2 provisional / developer version</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://github.com/progenetix/schemas/">Progenetix database schema (Beacon+ backend)</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li><a href="https://beacon-project.io/categories/people.html">ELIXIR Beacon project team</a></li>
<li><a href="https://github.com/jrambla">Jordi Rambla</a></li>
<li><a href="https://github.com/sdelatorrep">Sabele de la Torre</a></li>
<li><a href="https://github.com/mamanambiya">Mamana Mbiyavanga</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
</ul></td></tr>
<tr><th>Source (2.0.0-draft.3)</th><td><ul>
<li><a href="current/FilteringTermResponseContent.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/FilteringTermResponseContent.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Filtering terms available in this Beacon.

### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>error</th><td>BeaconError.yaml#/ [<a href="./BeaconError.html">HTML</a>]</td></tr>
<tr><th>info</th><td>object</td></tr>
<tr><th>numTotalResults</th><td>integer</td></tr>
<tr><th>results</th><td>array of "FilteringTerm.yaml#/ [<a href="./FilteringTerm.html">HTML</a>]"</td></tr>
</table>


#### error

* type: BeaconError.yaml#/ [<a href="./BeaconError.html">HTML</a>]




#### info

* type: object




#### numTotalResults

* type: integer




#### results

* type: array of "FilteringTerm.yaml#/ [<a href="./FilteringTerm.html">HTML</a>]"



<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


