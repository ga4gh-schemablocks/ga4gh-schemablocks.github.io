---
layout: default
---

{% assign this_name = page.name | split: "." %}
{% assign this_category = this_name[0] %}

## {{ this_category | capitalize }}

<!-- pages from both _posts and collections are parsed over -->
{% assign these_posts = site.emptyArray %}
{% if site.categories[this_category] %}
  {% assign these_posts = these_posts | concat: site.categories[this_category] | sort %}
{% endif %}
{% if site[this_category] %}
  {% assign these_posts = these_posts | concat: site[this_category] | sort %}
{% endif %}

<!-- there are special posts for prepending content to the listing pages -->
{% for post in these_posts %}
  {% if post.tags contains '.prepend' %}
<div style="margin-bottom: 20px;">
{{ post.content | markdownify }}
</div>
  {% endif %}
{% endfor %}

{% for post in these_posts %}
  {% if post.tags contains '.featured' %}
<div class="excerpt">
    {{ post.excerpt }}
<p class="footnote">
    {%if post.author %}
      {{post.author}}, 
    {% endif %}
  {{ post.date | date: "%Y-%m-%d" }}: <a href="{{ post.url | relative_url }}">more ...</a>
  </p>
</div>
  {% endif %}
{% endfor %}

{% for post in these_posts %}
  {% unless post.tags contains '.featured' or post.tags contains '.sticky' %} 
<div class="excerpt">
    {{ post.excerpt }}
<p class="footnote">
    {%if post.author %}
      {{post.author}}, 
    {% endif %}
  {{ post.date | date: "%Y-%m-%d" }}: <a href="{{ post.url | relative_url }}">more ...</a>
  </p>
</div>
  {% endunless %}
{% endfor %}
