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

  
<h4>Properties of the <i>Reference</i> class</h4>

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
    <td></td>
    <td></td>
    <td>A properly prefixed CURIE of the external reference and an associated label,
represented as Ontoloyg_term object.
</td>
  </tr>

</table>Many of the defined elements in a resource are references to other resources.
Using these references, the resources combine to build a web of information.



#### Examples

```
{
   "type" : {
      "label" : "HOS",
      "id" : "cellosaurus:CVCL_0312"
   },
   "relation" : "provenance",
   "description" : "Cellosaurus cell line identifier"
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
  
The original schema definitions are provided in the [YAML file]($yaml_src_web_link).
##### relation

* the relation of the external reference to the object it was pointed from
* example:

```
'relation' : "provenance"
```
  
The original schema definitions are provided in the [YAML file]($yaml_src_web_link).
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
  
The original schema definitions are provided in the [YAML file]($yaml_src_web_link).
