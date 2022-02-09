---
title: entryTypeDefinition
layout: default
permalink: "/schemas/sb-beacon-api/entryTypeDefinition.html"
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
<li><a href="current/entryTypeDefinition.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/framework/configuration/entryTypeDefinition.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Definition of an element or entry type including the Beacon v2 required and suggested attributes. This schema purpose is to  describe each type of entities included in a Beacon, hence Beacon clients could have some metadata about such entities.

The `id` attribute is the key that should be used in other parts of the Beacon Model to allow Beacon clients to identify the different parts (e.g. endpoints, filteringTerms, request parameters, etc.) that fully describe an entry type.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>$schema</th><td>../common/beaconCommonComponents.json#/definitions/$schema</td></tr>
<tr><th>aCollectionOf</th><td></td></tr>
<tr><th>additionallySupportedSchemas</th><td>array of "../common/referenceToAnSchema.json"</td></tr>
<tr><th>defaultSchema</th><td>../common/referenceToAnSchema.json</td></tr>
<tr><th>description</th><td>string</td></tr>
<tr><th>filteringTerms</th><td>string</td></tr>
<tr><th>id</th><td>string</td></tr>
<tr><th>name</th><td>string</td></tr>
<tr><th>nonFilteredQueriesAllowed</th><td>../common/beaconCommonComponents.json#/definitions/NonFilteredQueriesAllowed</td></tr>
<tr><th>ontologyTermForThisType</th><td>../common/ontologyTerm.json</td></tr>
<tr><th>partOfSpecification</th><td>string</td></tr>
</table>


#### $schema

* type: ../common/beaconCommonComponents.json#/definitions/$schema




#### aCollectionOf

* type: 

If the entry type is a collection of other entry types, (e.g. a Dataset is a collection of Records), then this attribute must list the entry types that could be included. One collection type could be defined as included more than one entry type (e.g. a Dataset could include Individuals or Genomic Variants), in such cases the entries are alternative, meaning that a given instance of this entry type could be of only one of the types (e.g. a given Dataset contains Individuals, while another Dataset could contain Genomic Variants, but not both at once).


#### additionallySupportedSchemas

* type: array of "../common/referenceToAnSchema.json"

List of additional schemas that could be used for this concept in this instance of Beacon.


#### defaultSchema

* type: ../common/referenceToAnSchema.json

Description of the default schema used for this concept.


#### description

* type: string

A textual description for the element.


#### filteringTerms

* type: string

Reference to the file with the list of filtering terms that could be used to filter this concept in this instance of Beacon. The referenced file could be used to populate the `filteringTerms`endpoint. Having it independently should allow for updating the list of accepted filtering terms when it is necessary.


#### id

* type: string

A (unique) identifier of the element.


#### name

* type: string

A distinctive name for the element.


#### nonFilteredQueriesAllowed

* type: ../common/beaconCommonComponents.json#/definitions/NonFilteredQueriesAllowed




#### ontologyTermForThisType

* type: ../common/ontologyTerm.json




#### partOfSpecification

* type: string

This is label to group together entry types that are part of the same specification.

##### `partOfSpecification` Value Example  

```
"Beacon v2.0-draft3"
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


