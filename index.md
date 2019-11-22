---
layout: default
permalink: /index.html
---

{% comment %}
################################################################################
	
	The template for the index page is thought to provide both the option for
	custom content, as well as a mechanism for the automated adding of excerpt
	page links for other pages labeled for the "index" category.
	
	Please add your content in Markdown or HTML below.

################################################################################
{% endcomment %}

## GA4GH SchemaBlocks Home

SchemaBlocks is a "__cross-workstreams, cross-drivers__" initiative to document 
GA4GH object standards and prototypes, as well as common data formats and 
semantics.

<img style="float: left; margin: 20px 20px 10px 0px; width: 60px; clear: none;" src="{{ "assets/img/logo-schemablocks-120x120-no-logo.png" | relative_url}}" />Launched in December 2018, this project is still to be considered a "community 
initiative", with developing participation, leadership and governance 
structures. At its current stage, the documents can __not__ be considered 
"__authoritative GA4GH recommendations__" but rather represent documentation 
and implementation examples provided by GA4GH members.

While future products and implementations may be completely based on 
_SchemaBlocks_ components, this project does not attempt to develop a rigid, 
complete data schema but rather to provide the object vocabulary and semantics 
for a large range of developments.

The SchemaBlocks site can be accessed though the permanent link 
[schemablocks.org](http://schemablocks.org). More information about the 
different products & formats can be found on the workstream sites. For 
reference, some of the original information about recommended formats and 
object hierarchies is kept in the 
[GA4GH Metadata repositories](https://ga4gh-metadata.github.io/SchemaBlocks/).

For more information on GA4GH, please visit the 
[GA4GH Website](https://ga4gh.org).

----

{% comment %}
################################################################################

	Below this will page excerpts for pages with the "index" category appear.

################################################################################
{% endcomment %}

{%- assign this_name = "index" -%}
{%- assign this_category = "index" -%}

{%- assign cat_posts = site.emptyArray -%}
{%- for post in site.documents -%}
  {%- if post.categories contains this_category -%}
    {%- assign cat_posts = cat_posts | push: post -%}
  {%- endif -%}
{%- endfor -%}

{%- assign cat_posts = cat_posts | sort: 'date' | reverse -%}

{%- comment -%}
  * special posts for prepending content to the listing pages
  * they are processed first, so separate loops are needed  
{%- endcomment -%}

{% comment %}
	Please keep this for an HTML break...	
{% endcomment %}

{%- for post in cat_posts -%}
  {%- if post.tags contains '.prepend' -%}
<div style="margin-bottom: 20px;">
{{ post.content | markdownify }}
</div>
  {%- endif -%}
{%- endfor -%}

{%- comment -%}
  * no separate treatment of featured posts
{%- endcomment -%}

{%- for post in cat_posts -%}
  {% unless post.tags contains '.prepend' or post.tags contains '.append' %} 
    {%- assign post_author = post.author | downcase -%}
    {%- assign excerpt_link = post.url | relative_url -%}
    {%- if post.excerpt_link contains '/' -%}
      {%- assign excerpt_link = post.excerpt_link -%}
    {%- endif -%}
<div class="excerpt">
<a href="{{ excerpt_link }}">{{ post.excerpt }}</a>
  <p class="footnote">
    {%- if post.author -%}{{ post.author | join: " | " }}&nbsp;{%- endif -%}
    {%- if post.date -%}{{ post.date | date: "%Y-%m-%d" }}: {% endif %}
 <a href="{{ excerpt_link }}">more ...</a>
  </p>
</div>
  {% endunless %}  
{%- endfor -%}

{%- for post in cat_posts -%}
  {%- if post.tags contains '.append' -%}
<div style="margin-top: 20px;">
{{ post.content | markdownify }}
</div>
  {%- endif -%}
{%- endfor -%}
