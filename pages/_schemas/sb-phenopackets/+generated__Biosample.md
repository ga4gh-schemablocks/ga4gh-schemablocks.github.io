---
title: Biosample
layout: default
permalink: "/schemas/sb-phenopackets/Biosample.html"
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
  <h2>Biosample <span id="schema-header-title-project">sb-phenopackets <a href="https://github.com/ga4gh-schemablocks/sb-phenopackets" target="_BLANK">&nearr;</a></span> </h2>
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
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/biosamples.rst">Phenopackets</a></li>
      </ul>
    </td>
  </tr>
  <tr>
    <th>Used by</th>
    <td>
      <ul>
<li><a href="https://github.com/phenopackets/phenopacket-schema/blob/master/docs/biosamples.rst">Phenopackets</a></li>
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
        <li><a href="current/Biosample.json" target="_BLANK">raw source [JSON]</a></li>
        <li><a href="https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Biosample.yaml" target="_BLANK">Github</a></li>
      </ul>
    </td>
  </tr>
</table>

<div id="schema-attributes-title">
  <h3>Attributes</h3>
</div>

  
__Type:__ object  
__Description:__ A Biosample refers to a unit of biological material from which the substrate
  molecules (e.g. genomic DNA, RNA, proteins) for molecular analyses (e.g.
  sequencing, array hybridisation, mass-spectrometry) are extracted.

  Examples would be a tissue biopsy, a single cell from a culture for single
  cell genome sequencing or a protein fraction from a gradient centrifugation.

  Several instances (e.g. technical replicates) or types of experiments (e.g.
  genomic array as well as RNA-seq experiments) may refer to the same Biosample.

  FHIR mapping: [Specimen](http://www.hl7.org/fhir/specimen.html).


### Properties

<table id="schema-properties-table">
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <th>ageOfIndividualAtCollection</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Age.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>ageRangeOfIndividualAtCollection</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/AgeRange.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>description</th>
    <td>string</td>
  </tr>
  <tr>
    <th>diagnosticMarkers</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>histologicalDiagnosis</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>htsFiles</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/HtsFile.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>id</th>
    <td>string</td>
  </tr>
  <tr>
    <th>individualId</th>
    <td>string</td>
  </tr>
  <tr>
    <th>isControlSample</th>
    <td>boolean</td>
  </tr>
  <tr>
    <th>phenotypicFeature</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/PhenotypicFeature.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/PhenotypicFeature.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/PhenotypicFeature.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>procedure</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Procedure.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Procedure.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Procedure.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>sampledTissue</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>taxonomy</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>tumorGrade</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>tumorProgression</th>
    <td>https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <th>variants</th>
    <td>array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Variant.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Variant.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Variant.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### ageOfIndividualAtCollection

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Age.html" target="_BLANK">HTML</a>]

An age object describing the age of the individual this biosample was
derived from at the time of collection. The Age object allows the encoding
of the age either as ISO8601 duration or time interval (preferred), or
as ontology term object.
See http://build.fhir.org/datatypes


##### `ageOfIndividualAtCollection` Value Example  

```
{
   "age" : "P48Y3M"
}
```

#### ageRangeOfIndividualAtCollection

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/AgeRange.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/AgeRange.html" target="_BLANK">HTML</a>]

An age range object describing the age of the individual this biosample was
derived from at the time of collection. The Age object allows the encoding
of the age either as ISO8601 duration or time interval (preferred), or
as ontology term object.
See http://build.fhir.org/datatypes


##### `ageRangeOfIndividualAtCollection` Value Example  

```
{
   "end" : {
      "age" : "P18Y"
   },
   "start" : {
      "age" : "P12Y"
   }
}
```

#### description

* type: string

The biosample's description. This attribute contains human readable text.
The "description" attributes should not contain any structured data.


##### `description` Value Example  

```
"THP-1; 6 hours; DMSO; Replicate 1"
```

#### diagnosticMarkers

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

Clinically relevant bio markers. Most of the assays such as IHC are covered by the NCIT under the sub-hierarchy
NCIT:C25294 (Laboratory Procedure).
e.g. NCIT:C68748 (HER2/Neu Positive), NCIT:C131711 (Human Papillomavirus-18 Positive)


##### `diagnosticMarkers` Value Example  

```
[
   {
      "id" : "NCIT:C131711",
      "label" : "Human Papillomavirus-18 Positive"
   }
]
```

#### histologicalDiagnosis

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

This is the pathologist’s diagnosis and may often represent a refinement of the clinical diagnosis given in the
Patient/Clinical module. Should use the same terminology as diagnosis, but represent the pathologist’s findings.
Normal samples would be tagged with the term "NCIT:C38757", "Negative Finding"


##### `histologicalDiagnosis` Value Example  

```
{
   "id" : "EFO:0000221",
   "label" : "Acute Monocytic Leukemia"
}
```

#### htsFiles

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/HtsFile.html" target="_BLANK">HTML</a>]

Pointer to the relevant HTS file(s) for the biosample


##### `htsFiles` Value Example  

```
[
   {
      "file" : {
         "path" : "/data/genomes/file1.vcf.gz",
         "uri" : "file://data/genomes/file1.vcf.gz"
      },
      "htsFormat" : "GVCF"
   }
]
```

#### id

* type: string

The local-unique identifier of this biosample (referenced as
"biosample_id"). This is unique in the context of the local (e.g.
server, resource) instance.


##### `id` Value Example  

```
"SAMN05324082"
```

#### individualId

* type: string

In a complete data model "individual_id" points to the "id" of the
individual ("donor", "subjerct"...) this _Biosample_ was derived from.

In a local context this could be the _id_ attribute in a corresponding
"individuals" collection.


##### `individualId` Value Example  

```
"SAMN05324082-individual"
```

#### isControlSample

* type: boolean

if true, this sample is being use as a normal control, often in combination with
another sample that is thought to contain a pathological finding the default value is false


##### `isControlSample` Value Example  

```
""
```

#### phenotypicFeature

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/PhenotypicFeature.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/PhenotypicFeature.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/PhenotypicFeature.html" target="_BLANK">HTML</a>]

Phenotypic characteristics of the BioSample, for example histological findings of a biopsy

##### `phenotypicFeature` Value Example  

```
[
   {
      "type" : {
         "id" : "EFO:0001253",
         "label" : "THP-1"
      }
   }
]
```

#### procedure

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Procedure.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Procedure.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Procedure.html" target="_BLANK">HTML</a>]

Clinical procedure performed on the subject in order to extract the biosample.


##### `procedure` Value Example  

```
{
   "bodySite" : {
      "id" : "UBERON:0003403",
      "label" : "skin of forearm"
   },
   "code" : {
      "id" : "NCIT:C28743",
      "label" : "Funch Biopsy"
   }
}
```

#### sampledTissue

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

UBERON class describing the tissue from which the specimen was collected.
PDX-MI mapping: 'Specimen tumor tissue'
FHIR mapping: Specimen.type


##### `sampledTissue` Value Example  

```
{
   "id" : "UBERON:0000178",
   "label" : "peripheral blood"
}
```

#### taxonomy

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

NCBI taxonomic identifier (NCBITaxon) of the sample e.g. NCBITaxon:9606

##### `taxonomy` Value Example  

```
{
   "description" : "Homo sapiens",
   "type" : "NCBITaxon:9606"
}
```

#### tumorGrade

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

Potentially a child term of NCIT:C28076 (Disease Grade Qualifier) or equivalent
See https://www.cancer.gov/about-cancer/diagnosis-staging/prognosis/tumor-grade-fact-sheet


##### `tumorGrade` Value Example  

```
{
   "id" : "NCIT:C28091",
   "label" : "Gleason Score 7"
}
```

#### tumorProgression

* type: https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/OntologyClass.html" target="_BLANK">HTML</a>]

Is the specimen tissue from the primary tumor, a metastasis or a recurrence?
Most likely a child term of NCIT:C7062 (Neoplasm by Special Category)
NCIT:C3677 (Benign Neoplasm)
NCIT:C84509 (Primary Malignant Neoplasm)
NCIT:C95606 (Second Primary Malignant Neoplasm)
NCIT:C3261 (Metastatic Neoplasm)
NCIT:C4813 (Recurrent Malignant Neoplasm)


##### `tumorProgression` Value Example  

```
{
   "id" : "NCIT:C84509",
   "label" : "Primary Malignant Neoplasm"
}
```

#### variants

* type: array of https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Variant.json [<a href="https://schemablocks.org/schemas/sb-phenopackets/v1.0.0/Variant.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/sb-phenopackets/Variant.html" target="_BLANK">HTML</a>]

Field for variants relevant to this biosample


##### `variants` Value Example  

```
[
   {
      "background" : "add example",
      "hgvsAllele" : "add example"
   }
]
```


### `Biosample` Value Examples  

```
{
   "ageOfIndividualAtCollection" : {
      "age" : "P1Y"
   },
   "description" : "THP-1; 6 hours; DMSO; Replicate 1",
   "histologicalDiagnosis" : {
      "id" : "EFO:0000221",
      "label" : "Acute Monocytic Leukemia"
   },
   "id" : "SAMN05324082",
   "individualId" : "SAMN05324082-individual",
   "phenotypicFeature" : [
      {
         "type" : {
            "id" : "EFO:0001253",
            "label" : "THP-1"
         }
      }
   ],
   "sampledTissue" : {
      "id" : "UBERON:0000178",
      "label" : "peripheral blood"
   },
   "taxonomy" : {
      "id" : "NCBITaxon:9606",
      "label" : "Homo sapiens"
   }
}
```
```
{
   "ageOfIndividualAtCollection" : {
      "age" : "P1Y"
   },
   "diagnosticMarkers" : [
      {
         "id" : "NCIT:C131711",
         "label" : "Human Papillomavirus-18 Positive"
      }
   ],
   "histologicalDiagnosis" : {
      "id" : "EFO:0000221",
      "label" : "Acute Monocytic Leukemia"
   },
   "id" : "SAMN05324083",
   "individualId" : "SAMN05324083-individual",
   "procedure" : {
      "code" : {
         "id" : "NCIT:C15189",
         "label" : "Biopsy"
      }
   },
   "sampledTissue" : {
      "id" : "NCIT:C139196",
      "label" : "Esophageal Lymph Node"
   },
   "tumorProgression" : {
      "id" : "NCIT:C84509",
      "label" : "Primary Malignant Neoplasm"
   },
   "tumorStage" : [
      {
         "id" : "NCIT:C48724",
         "label" : "T2 Stage Finding"
      },
      {
         "id" : "NCIT:C48706",
         "label" : "N1 Stage Finding"
      },
      {
         "id" : "NCIT:C48699",
         "label" : "M0 Stage Finding"
      }
   ]
}
```


