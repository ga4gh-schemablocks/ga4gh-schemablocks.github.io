---
title: SpdiAllele
layout: default
permalink: "/schemas/sb-phenopackets/SpdiAllele.html"
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
  <h2>SpdiAllele <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/variant.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/variant.rst">Phenopackets</a></li>
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
        <li><a href="current/SpdiAllele.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/SpdiAllele.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ A single SPDI allele.
The SPDI notation uses four fields and is written out as four elements delimited by colons S:P:D:I, where
S = SequenceId
P = Position , a 0-based coordinate for where the Deleted Sequence starts
D = DeletedSequence , sequence for the deletion, can be empty
I = InsertedSequence , sequence for the insertion, can be empty
The SPDI notation represents variation as deletion of a sequence (D) at a given position (P) in reference sequence (S)
followed by insertion of a replacement sequence (I) at that same position. Position 0 indicates a deletion that
starts immediately before the first nucleotide, and position 1 represents a deletion interval that starts between the
first and second residues, and so on. Either the deleted or the inserted interval can be empty, resulting a pure
insertion or deletion.
The deleted and inserted sequences in SPDI are all written on the positive strand for two-stranded molecules.
See https://www.ncbi.nlm.nih.gov/variation/notation/


### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>deletedSequence</th>
    <td>string</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>insertedSequence</th>
    <td>string</td>
  </tr>
  <tr>
    <th>position</th>
    <td>integer</td>
  </tr>
  <tr>
    <th>seqId</th>
    <td>string</td>
  </tr>

</table>


#### deletedSequence

* type: string

add description

##### `deletedSequence` Value Example  

```
"T"
```

#### id

* type: string

add description

##### `id` Value Example  

```
"add example"
```

#### insertedSequence

* type: string

add description

##### `insertedSequence` Value Example  

```
"G"
```

#### position

* type: integer

add description

##### `position` Value Example  

```
"123256214"
```

#### seqId

* type: string

add description

##### `seqId` Value Example  

```
"NC_000010.10"
```


### `SpdiAllele` Value Example  

```
{
   "deletedSequence" : "T",
   "id" : "id_abc_123",
   "insertedSequence" : "G",
   "position" : "123256214",
   "seqId" : "NC_000010.10"
}
```


