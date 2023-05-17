---
template: post_list.html
path_element: news
---

# GA4GH SchemaBlocks {S}[B] Community

The [website](http://schemablocks.org) of the _GA4GH SchemaBlocks Community_ ({S}[B])
represents information about data schema components with consensus support from
GA4GH members. The documents should __not__ be considered "__authoritative GA4GH recommendations__"
but rather represent community-provide documentation and implementation examples. For more information on GA4GH, please visit the [GA4GH Website](https://ga4gh.org).

!!! warning "Non-authorative documentation"

    At this time the documents should __not__ be considered "__authoritative GA4GH
    recommendations__" and are not managed through the GA4GH TASC team. They rather
    represent prototype documentation and implementation examples contributed by
    GA4GH members. For more information on GA4GH, please visit the [GA4GH Website](https://ga4gh.org).

## Mission Statement

SchemaBlocks aims to translate the work of the workstreams into data models that:

* Are usable by other internal GA4GH deliverables, such as the [Beacon API](http://docs.genomebeacons.org).
* Are usable by Driver Projects as an exchange format.
* Aid in aligning the work streams across GA4GH.
* Do not create a hindrance in development work by other work streams. 

## {S}[B] Status Levels

SchemaBlocks schemas ("blocks") provide blueprints for consensus schemas which
help with the development of code based "products" throughout the GA4GH ecosystem.
We use a labeling system for those schemas, to provide transparency about the
level of support those schemas have from {S}[B] participants and observers[^1].

* `core`
    - a schema block with recommended use
    - stable through minor version changes
    - has to be used in at least 2 standards/products approved by the GA4GH Steering Committee 
* `community`
    - reserved for schemas from GA4GH community contributors which are used in production (i.e. not individual ideas or concepts)
    - can serve as use-case based demonstrators and inspire GA44GH project modifications
    - the code may undergo considerable maturation
    - contributions and discussions are encouraged
* `playground`
    - early development or import stage, of any quality
    - no recommendation; existence does not mean any current or future {S}[B] support

## News and Announcements