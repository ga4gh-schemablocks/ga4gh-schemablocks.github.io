---
title: "sbSchemaParser.pl Perl Code Documentation"
layout: default
www_link: 
excerpt_separator: <!--more-->
date: 2021-04-14
category:
  - howto
tags:
  - Perl
  - ProgenetixTemplate
  - code
  - documentation
---

## {{ page.title }}

<!--more-->


If a `meta_header_filename` is provided for this schema, its `meta` root parameter
is used to replace the schema's `meta`.
TODO: merge meta entries
The class name is derived from the file's "$id" value, assuming a canonical 
path structure with the class name post-pended with a version:

```
"$id": https://schemablocks.org/schemas/sb-phenopackets/Phenopacket/v0.0.1
```
Processing is skipped if the class name does contain other than word / dot / 
dash characters, or if a filter had been provided and the class name 
does not match.


The documentation is extracted from the YAML schema file and formatted into
markdown content, producing 

* a plain `.md` file in the output directories of the original repository 
(`out_dirnames.markdown`)
* the YAML header prepended file for the webpage generation

A rudimentary CURIE to URL expansion is performed for prefixes defined in the
configuration file. An example would be the linking of an ORCID id to its web 
address.




Paths for output files are created based on the values (e.g. `out_dirnames` 
provided in the configuration file.

The web files for the Jekyll / GH-pages processing receive a prefix, to ensure 
that auto-generated and normal pages can co-exist. The `permalink` parameter 
provided in the YAML header of the Jekyll file provides a "nice" and stable 
name for the generated HTML page (independent of the original file name).

#### Deparsing of the class "$id"

The class "$id" values are assumed to have a specific structure, where 

* the last component is a version id
* the second-to-last component is the class name
* elements before the class name are ignored in parsing

##### Example

```
"$id": https://schemablocks.org/schemas/sb-beacon/BeaconVariant/v1.0.1
```

The property overview is followed by the listing of the properties, including
descriptions and examples.


#### Jekyll File Header

A version of the Markdown inline documentation is added to the Github (or 
alternative), Jekyll based website source tree.

The page will only be generated into an HTML page if it contains a specific 
header written in YAML.

The `_create_jekyll_header` function will pre-pend such a header to the Markdown 
page, including some file specific parameters such as the `permalink` address of 
the page.

##### Hacking the "$ref is a solitary attribute" problem

In the current JSON Schema specification there is a problem with "$ref"-type 
attribute types: If a reference is given, additional attributes of the property 
(examples, description) are being ignored. This isn't very helpful, since 
information specific to the property's _instantiation_ will not be displayed.

This behaviour can be alleviated by wrapping the `$ref` and other attributes 
with an `allof` statement (which is interpolated in the following, to expose 
the attributes). We'll hope for a more elegant solution ...

##### Helper `_remap_allof`

This function remaps the list of property attributes required from using a 
'$ref' property definition to a standard object, which is then processed for
documentation in the usual way.

TODO: 
* be aware of the possibility of multiple "$ref" elements (not in the {S}[B]
specifications right now) which would being reduced to one
* hoping for _JSON Schema_ to fix the "$ref" format requirement ...



### Helper Subroutines

#### `_expand_CURIEs`

This function expands prefixes in identifiers, based on the parameters provided 
in `config.yaml`. This is thought as a helper for some script/website specific 
linking, not as a general CURIE expansion utility.

