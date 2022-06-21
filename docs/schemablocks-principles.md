# SchemaBlocks Design Principles

## Mission Statement

SchemaBlocks aims to translate the work of the workstreams into data models that:

* Are usable by other internal GA4GH deliverables, such as the Beacon API.
* Are usable by Driver Projects as an exchange format.
* Aid in aligning the work streams across GA4GH.
* Do not create a hindrance in development work by other work streams. 

<!--more-->

## {S}[B] Status Levels

SchemaBlocks schemas ("blocks") provide blueprints for consensus schemas which help with the development of code based "products" throughout the GA4GH ecosystem. We use a labeling system for those schemas, to provide
transparency about the level of support those schemas have from {S}[B] participants and observers.

**New 2022-06-15**: We have simplified the labeling by dropping the `implemented` and `proposed` levels which were somewhat redundant with `community`.

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
