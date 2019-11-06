---
title: Evidence
layout: default
permalink: "/schemas/sb-phenopackets/Evidence.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
  - sb-phenopackets
---


<div id="schema-header-title">
  <h2>Evidence <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
</div>

<table id="schema-header-table">
  <tr>
    <th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
    <td><div id="schema-header-status">implemented</div></td>
  </tr>

  <tr>
    <th>Provenance</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/evidence.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/evidence.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li><a href="https://orcid.org/0000-0002-3265-15918">Jules Jacobsen</a></li>
<li><a href="https://orcid.org/0000-0002-0736-91998">Peter Robinson</a></li>
<li><a href="https://orcid.org/0000-0002-9903-4248">Michael Baudis</a></li>
<li><a href="https://orcid.org/0000-0002-9551-6370">Melanie Courtot</a></li>
<li><a href="https://orcid.org/0000-0002-4839-5158">Isuru Liyanage</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v1.0.0)</th>
    <td>
      <ul>
        <li><a href="current/Evidence.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Evidence.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Evidence, FHIR mapping: Condition.evidence (https://www.hl7.org/fhir/condition-definitions.html#Condition.evidence)

### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>evidenceCode</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>reference</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/ExternalReference.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/ExternalReference.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/ExternalReference.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### evidenceCode

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

The encoded evidence type using, for example the Evidence & Conclusion Ontology
(ECO - http://purl.obolibrary.org/obo/eco.owl)
FHIR mapping - Condition.evidence.code


##### `evidenceCode` Value Example  

```
{
   "id" : "add example",
   "label" : "add example"
}
```

#### reference

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/ExternalReference.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/ExternalReference.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/ExternalReference.html" target="_BLANK">HTML</a>]

FHIR mapping - Condition.evidence.detail


##### `reference` Value Example  

```
{
   "description" : "COL6A1 mutation leading to Bethlem myopathy with recurrent hematuria: a case report.",
   "id" : "PMID:30808312"
}
```


### `Evidence` Value Example  

```
{
   "evidenceCode" : {
      "id" : "add example",
      "label" : "add example"
   },
   "reference" : {
      "description" : "COL6A1 mutation leading to Bethlem myopathy with recurrent hematuria: a case report.",
      "id" : "PMID:30808312"
   }
}
```
<div id="schema-footer">
This schema representation is for information purposes. The authorative 
version remains with the developing project (see "provenance").
</div>


