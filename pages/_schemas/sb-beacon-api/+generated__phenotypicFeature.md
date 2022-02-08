---
title: phenotypicFeature
layout: default
permalink: "/schemas/sb-beacon-api/phenotypicFeature.html"
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
  <h2><span id="schema-header-title-project">sb-beacon-api</span> PhenotypicFeature <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
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
<li><a href="current/phenotypicFeature.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master//phenotypicFeature.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ Used to describe a phenotype that characterizes the subject or biosample.
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>evidence</th><td>./evidence.json</td></tr>
<tr><th>excluded</th><td>boolean</td></tr>
<tr><th>featureType</th><td>https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]</td></tr>
<tr><th>modifiers</th><td>array of "https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]"</td></tr>
<tr><th>notes</th><td>string</td></tr>
<tr><th>onset</th><td>./timeElement.json</td></tr>
<tr><th>resolution</th><td>./timeElement.json</td></tr>
<tr><th>severityLevel</th><td>./commonDefinitions.json#/definitions/SeverityLevel</td></tr>
</table>


#### evidence

* type: ./evidence.json

The evidence for an assertion of the observation of a type. RECOMMENDED.


#### excluded

* type: boolean

(from Phenopackets v.2) Flag to indicate whether the disease was observed or not. Default is ‘false’, in other words the disease was observed. Therefore it is only required in cases to indicate that the disease was looked for, but found to be absent. More formally, this modifier indicates the logical negation of the OntologyClass used in the 'featureType' field. CAUTION It is imperative to check this field for correct interpretation of the disease!


#### featureType

* type: https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]

Term denoting the phenotypic feature, preferably using a value from Human Phenotype Ontology (HPO)

##### `featureType` Value Examples  

```
{
   "id" : "HP:0000002",
   "label" : "Abnormality of body height"
}
```
```
{
   "id" : "HP:0002006",
   "label" : "Facial cleft"
}
```
```
{
   "id" : "HP:0012469",
   "label" : "Infantile spasms"
}
```

#### modifiers

* type: array of "https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json [<a href="https://raw.githubusercontent.com/ga4gh-beacon/beacon-framework-v2/main/common/ontologyTerm.json">LINK</a>]"

For instance one or more terms from HPO Clinical Modifier (HP:0012823). This subontology is designed to provide terms to characterize and specify the phenotypic abnormalities defined in the Phenotypic abnormality subontology, with respect to severity, laterality, age of onset, and other aspects. [ HPO:probinson ] 

##### `modifiers` Value Examples  

```
{
   "id" : "HP:0032500",
   "label" : "Exacerbated by tobacco use"
}
```
```
{
   "id" : "HP:4000053",
   "label" : "Displaced fracture"
}
```

#### notes

* type: string

Unstructured text to describe additional properties of this phenotypic feature.

##### `notes` Value Example  

```
"Some free text"
```

#### onset

* type: ./timeElement.json

Age or time at which the feature was first observed.


#### resolution

* type: ./timeElement.json

Age or time at which the feature resolved or abated.


#### severityLevel

* type: ./commonDefinitions.json#/definitions/SeverityLevel



<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


