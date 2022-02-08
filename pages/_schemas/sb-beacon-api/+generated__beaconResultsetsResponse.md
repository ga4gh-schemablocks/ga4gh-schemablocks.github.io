---
title: beaconResultsetsResponse
layout: default
permalink: "/schemas/sb-beacon-api/beaconResultsetsResponse.html"
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
<li><a href="current/beaconResultsetsResponse.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master//beaconResultsetsResponse.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Beacon response that includes record level details, grouped in Resultsets.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>beaconHandovers</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/beaconCommonComponents.json#/definitions/ListOfHandovers [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/beaconCommonComponents.json">LINK</a>]</td></tr>
<tr><th>info</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/beaconCommonComponents.json#/definitions/Info [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/beaconCommonComponents.json">LINK</a>]</td></tr>
<tr><th>meta</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconResponseMeta.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconResponseMeta.json">LINK</a>]</td></tr>
<tr><th>response</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconResultsets.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconResultsets.json">LINK</a>]</td></tr>
<tr><th>responseSummary</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconSummaryResponseSection.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconSummaryResponseSection.json">LINK</a>]</td></tr>
</table>


#### beaconHandovers

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/beaconCommonComponents.json#/definitions/ListOfHandovers [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/beaconCommonComponents.json">LINK</a>]

List of handovers that apply to the whole response, not to any resultset or result in particular.


#### info

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/beaconCommonComponents.json#/definitions/Info [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/beaconCommonComponents.json">LINK</a>]

Additional details that could be of interest. Provided to clearly enclose any attribute that is not part of the Beacon specification.


#### meta

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconResponseMeta.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconResponseMeta.json">LINK</a>]

Information about the response that could be relevant for the Beacon client in order to interpret the results.


#### response

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconResultsets.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconResultsets.json">LINK</a>]

Response for queries that recovers any result.


#### responseSummary

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconSummaryResponseSection.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/responses/sections/beaconSummaryResponseSection.json">LINK</a>]

Response summary, including Boolean and optionally results count.

<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


