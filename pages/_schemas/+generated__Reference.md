---
title: 'Reference'
layout: default
permalink: "/schemas/blocks/Reference.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---
## Reference


#### Status: __proposed__

<!--more-->



#### Provenance  


#### Authors

* 

#### Schema source: [YAML file](https://github.com/ga4gh-schemablocks/blocks/blob/master/src/yaml/reference.yaml)    
#### Properties of the _Reference_ class    

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
    <td>Free text about the external reference</td>
  </tr>
  <tr>
    <td>relation</td>
    <td>string</td>
    <td></td>
    <td>the relation of the external reference to the object it was pointed from</td>
  </tr>
  <tr>
    <td>type</td>
    <td>:&nbsp;<a href="./Ontology_term.html">./Ontology_term</a></td>
    <td></td>
    <td>A properly prefixed CURIE of the external reference and an associated label,
represented as Ontoloyg_term object.
</td>
  </tr>

</table>


#### Description 
Many of the defined elements in a resource are references to other resources.
Using these references, the resources combine to build a web of information.



#### Examples

```
{
   "description" : "Cellosaurus cell line identifier",
   "relation" : "provenance",
   "type" : {
      "id" : "cellosaurus:CVCL_0312",
      "label" : "HOS"
   }
}
```
--------------------------------------------------------------------------------

<h4>Notes and examples on the <i>Reference</i> properties</h4>

##### description

* Free text about the external reference
* example:

```
'description' : "Cellosaurus cell line identifier"
```

##### relation

* the relation of the external reference to the object it was pointed from
* example:

```
'relation' : "provenance"
```

##### type

* A properly prefixed CURIE of the external reference and an associated label,
represented as Ontoloyg_term object.

* example:

```
'type' : {
  'id' => 'pubmed:25428357',
  'label' => 'arrayMap 2014'
}
```

