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


## Resource (sb-phenopackets)

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/resource.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/resource.rst)  

<!--more-->

* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  

### Source (v1.0.0)

* raw source [[JSON](./current/Resource.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Resource.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Description of an external resource used for referencing an object. For example the resource may be an ontology such
as the HPO or SNOMED.
FHIR mapping: CodeSystem (http://www.hl7.org/fhir/codesystem.html)


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>iriPrefix</td>
    <td>string</td>
  </tr>
  <tr>
    <td>name</td>
    <td>string</td>
  </tr>
  <tr>
    <td>namespacePrefix</td>
    <td>string</td>
  </tr>
  <tr>
    <td>url</td>
    <td>string</td>
  </tr>
  <tr>
    <td>version</td>
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


