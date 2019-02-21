---
title: 'Phenotype'
layout: default
permalink: "/schemas/blocks/Phenotype.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## Phenotype

#### Status: __proposed__

<!--more-->

  
<h4>Properties of the <i>Phenotype</i> class</h4>

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
    <th>Format</th>
    <th>Description</th>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
    <td></td>
    <td>Free-text description of the phenotype.
Note this is not a acceptable place to document/describe the phenotype the type and onset etc... fields should be used for this purpose.
</td>
  </tr>
  <tr>
    <td>evidence</td>
    <td>array</td>
    <td></td>
    <td>Evidences for how the phenotype was determined</td>
  </tr>
  <tr>
    <td>negated</td>
    <td>boolean</td>
    <td></td>
    <td>Flag to indicate whether the phenotype was observed or not. Default is 'false', in other words the phenotype was observed.
It is only required in cases to indicate that the phenotype was looked for, but __not__ observed.
</td>
  </tr>
  <tr>
    <td>severity</td>
    <td></td>
    <td></td>
    <td>Severity of the condition e.g. subclasses of HP:0012824-Severity or SNOMED:272141005-Severities.
FHIR mapping: Condition.severity
</td>
  </tr>
  <tr>
    <td>type</td>
    <td></td>
    <td></td>
    <td>The ontology term as Ontology_term. The primary ontology class which describes the phenotype.</td>
  </tr>

</table>An individual phenotypic feature, observed as either present or absent (negated), with possible onset, modifiers and frequency.
FHIR mapping: Condition (https://www.hl7.org/fhir/condition.html) or Observation (https://www.hl7.org/fhir/observation.html)



#### Examples

```
{
   "description" : "DUO:0000004",
   "severity" : {
      "label" : "Mild",
      "id" : "HP:0012825"
   },
   "negated" : "",
   "type" : {
      "label" : "Pancreatic Adenocarcinoma",
      "id" : "ncit:C8294"
   },
   "evidence" : [
      {
         "id" : "",
         "label" : ""
      }
   ]
}
```
--------------------------------------------------------------------------------

<h4>Notes and examples on the <i>Phenotype</i> properties</h4>

##### description

* Free-text description of the phenotype.
Note this is not a acceptable place to document/describe the phenotype the type and onset etc... fields should be used for this purpose.

* example:

```
'description' : "Pancreatic Adenocarcinoma"
```
  
The original schema definitions are provided in the [YAML file]($yaml_src_web_link).
##### evidence

* Evidences for how the phenotype was determined
* example:

```
'evidence' : [
  {
    'label' => '',
    'id' => ''
  }
]
```
  
The original schema definitions are provided in the [YAML file]($yaml_src_web_link).
##### negated

* Flag to indicate whether the phenotype was observed or not. Default is 'false', in other words the phenotype was observed.
It is only required in cases to indicate that the phenotype was looked for, but __not__ observed.

* example:

```
'negated' : ""
```
  
The original schema definitions are provided in the [YAML file]($yaml_src_web_link).
##### severity

* Severity of the condition e.g. subclasses of HP:0012824-Severity or SNOMED:272141005-Severities.
FHIR mapping: Condition.severity

* example:

```
'severity' : {
  'label' => 'Mild',
  'id' => 'HP:0012825'
}
```
  
The original schema definitions are provided in the [YAML file]($yaml_src_web_link).
##### type

* The ontology term as Ontology_term. The primary ontology class which describes the phenotype.
* example:

```
'type' : {
  'label' => 'Pancreatic Adenocarcinoma',
  'id' => 'ncit:C8294'
}
```
  
The original schema definitions are provided in the [YAML file]($yaml_src_web_link).
