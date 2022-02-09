---
title: beaconRequestMeta
layout: default
permalink: "/schemas/sb-beacon-api/beaconRequestMeta.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
categories:
  - specification
tags:
  - Beacon-v2
  - beacon
  - proposed
  - sb-beacon-api
  - schemas
---

<div id="schema-header-title">
  <h2><span id="schema-header-title-project">sb-beacon-api</span>  <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">proposed</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/ga4gh-beacon/">Beacon v2 provisional version</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://ga4gh-approval-service-registry.ega-archive.org">Beacon v2 frontline implementers</a></li>
<li><a href="https://docs.progenetix.org/beaconplus/">Progenetix database schema (Beacon+ backend)</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li><a href="https://beacon-project.io/categories/people.html">ELIXIR Beacon project team</a></li>
</ul></td></tr>
<tr><th>Source (2.0.0-draft.4)</th><td><ul>
<li><a href="current/beaconRequestMeta.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/framework/requests/beaconRequestMeta.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Meta section of the Beacon request. It includes request context details relevant for the Beacon server when processing the request.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>$schema</th><td>../common/beaconCommonComponents.json#/definitions/$schema</td></tr>
<tr><th>apiVersion</th><td>../common/beaconCommonComponents.json#/definitions/ApiVersion</td></tr>
<tr><th>requestedSchemas</th><td>../common/beaconCommonComponents.json#/definitions/ListOfSchemas</td></tr>
</table>


#### $schema

* type: ../common/beaconCommonComponents.json#/definitions/$schema




#### apiVersion

* type: ../common/beaconCommonComponents.json#/definitions/ApiVersion

API version expected by the client to be supported by the server and used in the response format.


#### requestedSchemas

* type: ../common/beaconCommonComponents.json#/definitions/ListOfSchemas

Set of schemas to be used in the response.

<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


