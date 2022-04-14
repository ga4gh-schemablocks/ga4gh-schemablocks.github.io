---
title: beaconConfigurationSchema
layout: default
permalink: "/schemas/sb-beacon-api/beaconConfigurationSchema.html"
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
  <h2><span id="schema-header-title-project">sb-beacon-api</span> Beacon Configuration <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">proposed</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/ga4gh-beacon/beacon-v2">Beacon v2</a></li>
<li><a href="http://docs.genomebeacons.org">Beacon v2 documentation</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://ga4gh-approval-service-registry.ega-archive.org">Beacon v2 frontline implementers</a></li>
<li><a href="https://docs.progenetix.org/beaconplus/">Progenetix database schema (Beacon+ backend)</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li><a href="https://beacon-project.io/categories/people.html">ELIXIR Beacon project team</a></li>
</ul></td></tr>
<tr><th>Source (2.0.0)</th><td><ul>
<li><a href="current/beaconConfigurationSchema.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/framework/configuration/beaconConfigurationSchema.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Files complaint with this schema are the configuration ones. The details returned in `service-info` are mirroring the ones in this configuration file.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>$schema</th><td>../common/beaconCommonComponents.json#/definitions/$schema</td></tr>
<tr><th>entryTypes</th><td>#/definitions/EntryTypes</td></tr>
<tr><th>maturityAttributes</th><td>object</td></tr>
<tr><th>securityAttributes</th><td>object</td></tr>
</table>


#### $schema

* type: ../common/beaconCommonComponents.json#/definitions/$schema




#### entryTypes

* type: #/definitions/EntryTypes




#### maturityAttributes

* type: object

Declares the level of maturity of the Beacon instance.


#### securityAttributes

* type: object

Configuration of the security aspects of the Beacon. By default, a Beacon that does not declare the configuration settings would return `boolean` (true/false) responses, and only if the user is authenticated and explicitly authorized to access the Beacon resources. Although this is the safest set of settings, it is not recommended unless the Beacon shares very sensitive information. Non sensitive Beacons should preferably opt for a `record` and `PUBLIC` combination.

<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


