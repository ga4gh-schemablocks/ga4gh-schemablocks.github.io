---
title: 'Curie'
layout: default
permalink: "/schemas/ga4gh/Curie.html"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
---


## Curie

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__


* Provenance  

    - [vr-spec](https://github.com/ga4gh/vr-spec/blob/master/schema/vr.yaml)  

* Used by  

    - [vr-spec](https://github.com/ga4gh/vr-spec/blob/master/schema/vr.yaml)  

* Contributors  

    - [Reece Hart](https://orcid.org/0000-0003-3463-0775)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  
<!--more-->

### Source

* raw source [[JSON](./Curie.json)] 
* [Github](https://github.com/ga4gh-schemablocks/blocks/blob/master/src/Curie.yaml)

### Attributes
  
__Type:__ string  
__Pattern:__ ^\w[^:]+:.+$  
__Description:__ A CURIE constitutes a "Compact URI" or Abbreviated syntax for expressing 
Uniform Resource Identifiers (URIs). CURIEs consist of a prefix and a private 
ID part, separated by a colon.

Some design considerations:    

* Prefixes should *not* be concatenated; there should only be a single colon 
in the CURIE.
* While the underscore `_` character is considered a "safe" character in all 
computing environments and is a "word character" in regular expression 
matching, it nevertheless should be _avoided_ as part of the private portion 
of a CURIE, since in some environments it has been used as replacement for 
the prefix separation (in replacement for the colon character `:`).


### `Curie` Value Examples  

```
"DUO:0000004"
```
```
"orcid:0000-0003-3463-0775"
```
```
"PMID:15254584"
```

