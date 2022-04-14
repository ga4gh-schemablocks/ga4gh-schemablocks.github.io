---
title: ga4gh-service-info-1-0-0-schema
layout: default
permalink: "/schemas/sb-beacon-api/ga4gh-service-info-1-0-0-schema.html"
sb_status: "proposed"
excerpt_separator: <!--more-->
categories:
  - specification
tags:
  - Beacon-v2
  - beacon
  - proposed
  - sb-beacon-api
  - schemas
---

<div id="schema-header-title">
  <h2><span id="schema-header-title-project">sb-beacon-api</span> GA4GH service-info API specification <a href="https://github.com/ga4gh-schemablocks/sb-beacon-api" target="_BLANK">[ &nearr; ]</a></h2>
</div>

<table id="schema-header-table">
<tr>
<th>{S}[B] Status <a href="https://schemablocks.org/about/sb-status-levels.html">[i]</a></th>
<td><div id="schema-header-status">proposed</div></td>
</tr>
<tr><th>Provenance</th><td><ul>
<li><a href="https://github.com/ga4gh-beacon/beacon-v2">Beacon v2</a></li>
<li><a href="http://docs.genomebeacons.org">Beacon v2 documentation</a></li>
</ul></td></tr>
<tr><th>Used by</th><td><ul>
<li><a href="https://ga4gh-approval-service-registry.ega-archive.org">Beacon v2 frontline implementers</a></li>
<li><a href="https://docs.progenetix.org/beaconplus/">Progenetix database schema (Beacon+ backend)</a></li>
</ul></td></tr>


<!--more-->
<tr><th>Contributors</th><td><ul>
<li><a href="https://beacon-project.io/categories/people.html">ELIXIR Beacon project team</a></li>
</ul></td></tr>
<tr><th>Source (2.0.0)</th><td><ul>
<li><a href="current/ga4gh-service-info-1-0-0-schema.json" target="_BLANK">raw source [JSON]</a></li>
<li><a href="https://github.com/ga4gh-schemablocks/sb-beacon-api/blob/master/schemas/framework/responses/ga4gh-service-info-1-0-0-schema.yaml" target="_BLANK">Github</a></li>
</ul></td></tr>
</table>

<div id="schema-attributes-title"><h3>Attributes</h3></div>

  
__Type:__ object  
__Description:__ A way for a service to describe basic metadata concerning a service alongside a set of capabilities and/or limitations of the service. More information on [GitHub](https://github.com/ga4gh-discovery/ga4gh-service-info/).
### Properties

<table id="schema-properties-table">
<tr><th>Property</th><th>Type</th></tr>
<tr><th>contactUrl</th><td>string (uri)</td></tr>
<tr><th>createdAt</th><td>string (date-time)</td></tr>
<tr><th>description</th><td>string</td></tr>
<tr><th>documentationUrl</th><td>string (uri)</td></tr>
<tr><th>environment</th><td>string</td></tr>
<tr><th>id</th><td>string</td></tr>
<tr><th>name</th><td>string</td></tr>
<tr><th>organization</th><td>object</td></tr>
<tr><th>type</th><td>#/definitions/ServiceType</td></tr>
<tr><th>updatedAt</th><td>string (date-time)</td></tr>
<tr><th>version</th><td>string</td></tr>
</table>


#### contactUrl

* type: string (uri)

URL of the contact for the provider of this service, e.g. a link to a contact form (RFC 3986 format), or an email (RFC 2368 format).

##### `contactUrl` Value Example  

```
"mailto:support@example.com"
```

#### createdAt

* type: string (date-time)

Timestamp describing when the service was first deployed and available (RFC 3339 format)

##### `createdAt` Value Example  

```
"2019-06-04T12:58:19Z"
```

#### description

* type: string

Description of the service. Should be human readable and provide information about the service.

##### `description` Value Example  

```
"This service provides..."
```

#### documentationUrl

* type: string (uri)

URL of the documentation of this service (RFC 3986 format). This should help someone learn how to use your service, including any specifics required to access data, e.g. authentication.

##### `documentationUrl` Value Example  

```
"https://docs.myservice.example.com"
```

#### environment

* type: string

Environment the service is running in. Use this to distinguish between production, development and testing/staging deployments. Suggested values are prod, test, dev, staging. However this is advised and not enforced.

##### `environment` Value Example  

```
"test"
```

#### id

* type: string

Unique ID of this service. Reverse domain name notation is recommended, though not required. The identifier should attempt to be globally unique so it can be used in downstream aggregator services e.g. Service Registry.

##### `id` Value Example  

```
"org.ga4gh.myservice"
```

#### name

* type: string

Name of this service. Should be human readable.

##### `name` Value Example  

```
"My project"
```

#### organization

* type: object

Organization providing the service


#### type

* type: #/definitions/ServiceType




#### updatedAt

* type: string (date-time)

Timestamp describing when the service was last updated (RFC 3339 format)

##### `updatedAt` Value Example  

```
"2019-06-04T12:58:19Z"
```

#### version

* type: string

Version of the service being described. Semantic versioning is recommended, but other identifiers, such as dates or commit hashes, are also allowed. The version should be changed whenever the service is updated.

##### `version` Value Example  

```
"1.0.0"
```
<div id="schema-footer"> This schema representation is for information purposes. The authorative  version remains with the developing project (see "provenance"). </div>


