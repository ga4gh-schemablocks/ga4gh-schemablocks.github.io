---
title: File
layout: default
permalink: "/schemas/ga4gh/File.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
  - ga4gh
---


<div id="schema-header-title">
  <h2>File <span id="schema-header-title-project">ga4gh <a href="https://github.com/ga4gh-schemablocks/blocks" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/file.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/file.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>

<!--more-->

  <tr>
    <th>Contributors</th>
    <td>
      <ul>
<li><a href="https://orcid.org/0000-0002-3265-15918">Jules Jacobsen</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Source (v0.0.1)</th>
    <td>
      <ul>
        <li><a href="current/File.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/blocks/blob/master/schemas/File.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ A file of an unspecified type.


### Properties

<table id="schema-property-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>description</th>
    <td>string</td>
  </tr>
  <tr>
    <th>path</th>
    <td>string</td>
  </tr>
  <tr>
    <th>uri</th>
    <td>string</td>
  </tr>

</table>


#### description

* type: string

description of the file contents

##### `description` Value Example  

```
"file of project x"
```

#### path

* type: string

Full system path to the file

##### `path` Value Example  

```
"/data/genomes/file1.vcf.gz"
```

#### uri

* type: string

URI for the file

##### `uri` Value Examples  

```
"file://data/genomes/file1.vcf.gz"
```
```
"https://opensnp.org/data/60.23andme-exome-vcf.231?1341012444"
```


### `File` Value Example  

```
{
   "description" : "file of project x",
   "path" : "/data/genomes/file1.vcf.gz",
   "uri" : "file://data/genomes/file1.vcf.gz"
}
```


