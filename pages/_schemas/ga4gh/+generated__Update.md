---
title: Update
layout: default
permalink: "/schemas/ga4gh/Update.html"
sb_status: "implemented"
excerpt_separator: <!--more-->
category:
  - schemas
tags:
  - code
  - implemented
---


## Update

* {S}[B] Status  [[i]](https://schemablocks.org/about/sb-status-levels.html)
    - __implemented__

* Provenance  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/update.rst)  
* Used by  

    - [Phenopackets](https://github.com/phenopackets/phenopacket-schema/blob/master/docs/update.rst)  

<!--more-->

* Contributors  

    - GA4GH Data Working Group  
    - [Jules Jacobsen](https://orcid.org/0000-0002-3265-15918)  
    - [Peter Robinson](https://orcid.org/0000-0002-0736-91998)  
    - [Michael Baudis](https://orcid.org/0000-0002-9903-4248)  
    - [Melanie Courtot](https://orcid.org/0000-0002-9551-6370)  
    - [Isuru Liyanage](https://orcid.org/0000-0002-4839-5158)  

### Source (v0.0.1)

* raw source [[JSON](./current/Update.json)]
* [Github](https://github.com/ga4gh-schemablocks/sb-phenopackets/blob/master/schemas/Update.yaml)

### Attributes
  
__Type:__ object  
__Description:__ Information about when an update to a record occurred, who or what made the update and any pertinent information
regarding the content and/or reason for the update


### Properties

<table>
  <tr>
    <th>Property</th>
    <th>Type</th>
  </tr>
  <tr>
    <td>comment</td>
    <td>string</td>
  </tr>
  <tr>
    <td>timestamp</td>
    <td>string</td>
  </tr>
  <tr>
    <td>updatedBy</td>
    <td>string</td>
  </tr>

</table>


#### comment

* type: string

Textual comment about the changes made to the content and/or reason for the update

##### `comment` Value Example  

```
"Match with current schema"
```

#### timestamp

* type: string

ISO8601 UTC timestamps at which this record was updated

##### `timestamp` Value Example  

```
"2007-12-03T10:15:30.00Z"
```

#### updatedBy

* type: string

Information about the person/organisation/network that has updated the phenopacket

##### `updatedBy` Value Example  

```
"GA4GHData working group"
```


### `Update` Value Example  

```
{
   "comment" : "Match with current schema",
   "timestamp" : "2007-12-03T10:15:30.00Z",
   "updatedBy" : "GA4GHData working group"
}
```


