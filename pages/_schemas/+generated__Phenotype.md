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
##### From Phenopacket schema

#### Status: __proposed__

<!--more-->



#### Provenance  

* [Phenopacket schema](https://github.com/ga4gh/ga4gh-schemas/blob/master/src/main/proto/ga4gh/bio_metadata.proto#L111)  

#### Used by  

* [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/phenotype.rst)  

#### Authors  

* Phenopacket developers  
* @julesjacobsen  
* @pnrobinson  
* @mbaudis  

#### Schema source: [YAML file](https://github.com/ga4gh-schemablocks/blocks/blob/master/src/yaml/phenotype.yaml)    
#### Properties of the _Phenotype_ class    

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
Note this is not a acceptable place to document/describe the phenotype the type and onset etc... Other fields should be used for this purpose.
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
    <td>onset</td>
    <td></td>
    <td></td>
    <td>The age of the individual at time of biosample collection, as Age object. In the <i>Phenopacket</i> implementation, alternatives to the "Age" class may be used to describe "onset". 
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

</table>


#### Description 
An individual phenotypic feature, observed as either present or absent (negated), with possible onset, modifiers and frequency.
FHIR mapping: Condition (https://www.hl7.org/fhir/condition.html) or Observation (https://www.hl7.org/fhir/observation.html)



#### Examples

```
{
   "description" : "DUO:0000004",
   "evidence" : [
      {
         "label" : "",
         "id" : ""
      }
   ],
   "severity" : {
      "label" : "Mild",
      "id" : "HP:0012825"
   },
   "negated" : "",
   "type" : {
      "id" : "ncit:C8294",
      "label" : "Pancreatic Adenocarcinoma"
   }
}
```
--------------------------------------------------------------------------------

<h4>Notes and examples on the <i>Phenotype</i> properties</h4>

##### description

* Free-text description of the phenotype.
Note this is not a acceptable place to document/describe the phenotype the type and onset etc... Other fields should be used for this purpose.

* example:

```
'description' : "Pancreatic Adenocarcinoma"
```

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

##### negated

* Flag to indicate whether the phenotype was observed or not. Default is 'false', in other words the phenotype was observed.
It is only required in cases to indicate that the phenotype was looked for, but __not__ observed.

* example:

```
'negated' : ""
```

##### onset

* The age of the individual at time of biosample collection, as Age object. In the <i>Phenopacket</i> implementation, alternatives to the "Age" class may be used to describe "onset". 

* example:

```
'onset' : {
  'age_class' => {
                   'label' => 'Juvenile onset',
                   'id' => 'HP:0003621'
                 },
  'age' => 'P12Y'
}
```

##### severity

* Severity of the condition e.g. subclasses of HP:0012824-Severity or SNOMED:272141005-Severities.
FHIR mapping: Condition.severity

* example:

```
'severity' : {
  'id' => 'HP:0012825',
  'label' => 'Mild'
}
```

##### type

* The ontology term as Ontology_term. The primary ontology class which describes the phenotype.
* example:

```
'type' : {
  'id' => 'ncit:C8294',
  'label' => 'Pancreatic Adenocarcinoma'
}
```

