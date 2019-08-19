---
title: 'ExternalReference'
layout: default
permalink: "/schemas/blocks/ExternalReference.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---


## ExternalReference

### SchemaBlocks Metadata

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)

    - __implemented__


* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/externalreference.rst)  

* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/externalreference.rst)  

* Contributors  

    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
<!--more-->

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
"pubmed:22824167"
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
   "id" : "pubmed:15254584"
}
```

