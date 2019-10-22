---
title: Biosample
layout: default
permalink: "/schemas/ga4gh/Biosample.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Biosample

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/biosamples.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/biosamples.rst)  

<!--more-->

* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  

### Source (v0.0.1)

* raw source [[JSON](./current/Biosample.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Biosample.yaml)

### Attributes
  
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

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>ageOfIndividualAtCollection</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>ageRangeOfIndividualAtCollection</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/AgeRange.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/AgeRange.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/AgeRange.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>description</td>
    <td>string</td>
  </tr>
  <tr>
    <td>diagnosticMarkers</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>histologicalDiagnosis</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>htsFiles</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/HtsFile.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>id</td>
    <td>string</td>
  </tr>
  <tr>
    <td>individualId</td>
    <td>string</td>
  </tr>
  <tr>
    <td>isControlSample</td>
    <td>boolean</td>
  </tr>
  <tr>
    <td>phenotypicFeature</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/PhenotypicFeature.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/PhenotypicFeature.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/PhenotypicFeature.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>procedure</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/Procedure.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Procedure.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Procedure.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>sampledTissue</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>taxonomy</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>tumorGrade</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>tumorProgression</td>
    <td>https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]</td>
  </tr>
  <tr>
    <td>variants</td>
    <td>array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Variant.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Variant.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Variant.html" target="_BLANK">HTML</a>]</td>
  </tr>

</table>


#### ageOfIndividualAtCollection

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Age.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Age.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/AgeRange.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/AgeRange.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/AgeRange.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/HtsFile.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/HtsFile.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/PhenotypicFeature.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/PhenotypicFeature.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/PhenotypicFeature.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/Procedure.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Procedure.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Procedure.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

NCBI taxonomic identifier (NCBITaxon) of the sample e.g. NCBITaxon:9606

##### `taxonomy` Value Example  

```
{
   "description" : "Homo sapiens",
   "type" : "NCBITaxon:9606"
}
```

#### tumorGrade

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

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

* type: https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/OntologyClass.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/OntologyClass.html" target="_BLANK">HTML</a>]

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

* type: array of https://schemablocks.org/schemas/ga4gh/v0.0.1/Variant.json [<a href="https://schemablocks.org/schemas/ga4gh/v0.0.1/Variant.json" target="_BLANK">SRC</a>] [<a href="https://schemablocks.org/schemas/ga4gh/Variant.html" target="_BLANK">HTML</a>]

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


