---
title: Identifiers and CURIEs
description: GA4GH Recommendation and Comparison to Usage Practices
date: 2023-04-21
authors:
  - "@mbaudis"
template: post.html
# path_element: standards
---

!!! info "GA4GH Recommendation"

    GA4GH recommends to use CURIEs as (external) identifiers. 
    
#### Contributors

* Chris Mungall ([@cmungall](https://github.com/cmungall/)) :fontawesome-brands-github:
* Julie McMurry ([@jmcmurry](https://github.com/jmcmurry/)) :fontawesome-brands-github:
* Melissa Haendel ([@mellybelly](https://github.com/mellybelly/)) :fontawesome-brands-github:
* Michael Baudis ([@mbaudis](https://github.com/mbaudis/)) :fontawesome-brands-github:
* Reece Hart ([@reece](https://github.com/reece/)) :fontawesome-brands-github:
* cross GA4GH alignment discussions

Please see also [a previous discussion](https://github.com/ga4gh-metadata/SchemaBlocks/issues/10) on Github, and the links from there.

<!--more-->

#### CURIEs

CURIEs ("[Compact URIs](https://www.w3.org/TR/curie/)") are namespace-scoped identifiers which can be expanded to Internationalized Resource Identifiers ([IRI](https://www.w3.org/International/articles/idn-and-iri/)). A CURIE is comprised of two components, a prefix and a reference, separated by a colon symbol `:`. CURIES are case sensitive, although for prefixes this practice is inconsistently being followed.

The GA4GH recommendations are:

* use only a single prefix
* for newly generated identifiers, and specifically applying to the new `ga4gh` namespace, one should avoid the use of the underscore `_` character in the private part of an identifier
    - reason is the sometimes replacement of the colon `:` separator by `_`, in computing environments where `:` may be problematic
    - exceptions are underscore characters in _computed_ identifiers
* a reasonable separation character for structural elements of the private identifier part ("internal prefix") is the dot `.` character

#### `ga4gh` Prefix

In a "GA4GH Namespace Discussion" telecon on 2019-08-22, initiated by GKS and with the participation of different work stream and project leads, it was agreed that newly generated identifiers created and maintained in the "GA4GH ecosystem" should use a general `ga4gh` prefix, and __not__ create scoped prefixes. Details and implementation of this general concept are currently being evaluated.

#### GA4GH CURIE Use

In GA4GH schemas, CURIEs constitute the recommended syntax for the referencing ontology classes or external references. Here, usually a CURIE as `id` is combined with a `label` for the text representation of the , such in the [`OntologyClass`](/schema_pages/phenopackets/OntologyClass/) object prototype:


```json
"onset": {
   "label" : "Juvenile onset",
   "id" : "HP:0003621"
},
"external_references": [
  {
    "id" : "cellosaurus:CVCL_0312",
    "label" : "HOS"
  },
]
```

The underscore in the Cellosaurus id `cellosaurus:CVCL_0312` should usually not be problematic if it is properly prefixed; however, _de novo_ identifier designs may avoid such a syntax.

#### Further Information

* [W3C CURIE syntax](https://www.w3.org/TR/curie/) page
* [W3C IRI](https://www.w3.org/International/articles/idn-and-iri/) documentation
* [IETF IRI](https://www.ietf.org/rfc/rfc3987.txt) specification (e.g. allowed characters)
* SchemaBlocks [OntologyClass](http://schemablocks.org/schemas/ga4gh/OntologyClass.html) class documentation
* SchemaBlocks [Curie](http://schemablocks.org/schemas/ga4gh/Curie.html) class documentation
* N2T resolver [documentation](https://n2t.net/e/n2t_apidoc.html)

