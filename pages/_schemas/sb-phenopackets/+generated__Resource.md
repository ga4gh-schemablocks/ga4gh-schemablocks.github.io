---
title: Resource
layout: default
permalink: "/schemas/sb-phenopackets/Resource.html"
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
  <h2>Resource <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/resource.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/resource.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li>GA4GH Data Working Group</li>
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
        <li><a href="current/Resource.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Resource.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ Description of an external resource used for referencing an object. For example the resource may be an ontology such
as the HPO or SNOMED.
FHIR mapping: CodeSystem (http://www.hl7.org/fhir/codesystem.html)


### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>iriPrefix</th>
    <td>string</td>
  </tr>
  <tr>
    <th>name</th>
    <td>string</td>
  </tr>
  <tr>
    <th>namespacePrefix</th>
    <td>string</td>
  </tr>
  <tr>
    <th>url</th>
    <td>string</td>
  </tr>
  <tr>
    <th>version</th>
    <td>string</td>
  </tr>

</table>


#### id

* type: string

for OBO Ontologies, the value of this string MUST always be the official
OBO ID, which is always equivalent to the ID prefix in lower case.
Examples: hp, go, mp, mondo
Consult http://obofoundry.org for a complete list
For other ontologies (e.g. SNOMED), use the prefix in identifiers.org


##### `id` Value Example  

```
"pato"
```

#### iriPrefix

* type: string

Full IRI prefix which can be used with the namespacePrefix and the OntologyClass::id to resolve to an IRI for a
term. Tools such as the curie-util (https://github.com/prefixcommons/curie-util) can utilise this to produce
fully-resolvable IRIs for an OntologyClass.
e.g. Using the HPO term encoding the concept of 'Severe'
  OntologyClass:
    id: 'HP:0012828'
    label: 'Severe'
  Resource:
    namespacePrefix: 'HP'
    iriPrefix: 'http://purl.obolibrary.org/obo/HP_'
the term can be resolved to http://purl.obolibrary.org/obo/HP_0012828


##### `iriPrefix` Value Example  

```
"http://purl.obolibrary.org/obo/HP_"
```

#### name

* type: string

for OBO Ontologies, the value of this string SHOULD be the same as the title
field on http://obofoundry.org
however, this field is purely for information purposes and software
should not encode any assumptions


##### `name` Value Example  

```
"The Human Phenotype Ontology"
```

#### namespacePrefix

* type: string

The prefix used in the CURIE of an OntologyClass e.g. HP, MP, ECO
For example an HPO term will have a CURIE like this - HP:0012828 which should be used in combination with
he iriPrefix to form a fully-resolvable IRI


##### `namespacePrefix` Value Example  

```
"HP"
```

#### url

* type: string

For OBO ontologies, this should always be the PURL


##### `url` Value Examples  

```
"http://purl.obolibrary.org/obo/hp.owl"
```
```
"http://purl.obolibrary.org/obo/hp.obo"
```

#### version

* type: string

for OBO ontologies, this should be the versionIRI

##### `version` Value Example  

```
"2.97"
```


### `Resource` Value Examples  

```
{
   "id" : "pato",
   "name" : "PhenotypicFeature And Trait Ontology",
   "namespacePrefix" : "PATO",
   "url" : "http://purl.obolibrary.org/obo/pato.owl",
   "version" : "2018-03-28"
}
```
```
{
   "id" : "efo",
   "name" : "Experimental Factor Ontology",
   "namespacePrefix" : "EFO",
   "url" : "http://purl.obolibrary.org/obo/pato.owl",
   "version" : "2.97"
}
```
```
{
   "id" : "ncbitaxon",
   "name" : "NCBI organismal classification",
   "namespacePrefix" : "NCBITaxon",
   "url" : "http://purl.obolibrary.org/obo/ncbitaxon.owl",
   "version" : "2018-03-02"
}
```
```
{
   "id" : "hp",
   "iriPrefix" : "http://purl.obolibrary.org/obo/HP_",
   "name" : "human phenotype ontology",
   "namespacePrefix" : "HP",
   "url" : "http://purl.obolibrary.org/obo/hp.owl",
   "version" : "2018-03-08"
}
```


