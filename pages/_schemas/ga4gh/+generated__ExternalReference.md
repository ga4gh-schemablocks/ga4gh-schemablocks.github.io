---
title: ExternalReference
layout: default
permalink: "/schemas/ga4gh/ExternalReference.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## ExternalReference

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/externalreference.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/externalreference.rst)  

<!--more-->

* Contributors  

    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
### Source (v0.0.1)

* raw source [[JSON](./current/ExternalReference.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/ExternalReference.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Many of the defined elements in a resource are references to other resources.
Using these references, the resources combine to build a web of information.


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>

</table>


#### description

* type: string

Free text about the external reference

##### `description` Value Examples  

```
"Cellosaurus cell line identifier"
```
```
"Integrative genome-wide expression profiling identifies three distinct molecular subgroups of renal cell carcinoma with different patient outcome. Beleut M, Zimmermann P, Baudis M, Bruni N, Buehlmann P, Laule O, Luu VD, Gruissem W, Schraml P, Moch H. BMC Cancer 12, 2012"
```

#### id

* type: string

Identifer of the external reference. The format should be in the form
of a URI (CURIE or URL recommended).


##### `id` Value Examples  

```
"cellosaurus:CVCL_0312"
```
```
"PMID:15254584"
```


### `ExternalReference` Value Examples  

```
{
   "description" : "Cellosaurus cell line identifier",
   "id" : "cellosaurus:CVCL_0312"
}
```
```
{
   "description" : "Heterozygous Fbn1 C1039G mutation. Judge DP, et al. Evidence for a critical contribution of haploinsufficiency in the complex pathogenesis of Marfan syndrome. J Clin Invest. 2004;114(2):172-81.",
   "id" : "PMID:15254584"
}
```


