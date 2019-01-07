---
layout: default
---

{% assign this_name = page.name | split: "." %}
{% assign this_category = this_name[0] %}

<h2 class="page_title">{{ this_category | capitalize }}</h2>

<!--        pages from both _posts and collections are parsed over           -->
{% assign cat_posts = site.emptyArray %}
{% if site.categories[this_category] %}
  {% assign cat_posts = cat_posts | concat: site.categories[this_category] %}
{% endif %}
{% if site[this_category] %}
  {% assign cat_posts = cat_posts | concat: site[this_category] %}
{% endif %}

<!--        special posts for prepending content to the listing pages        -->
<!--        they are processed first, so separate loops are needed           -->

{% for post in cat_posts %}
  {% if post.tags contains '.prepend' %}
<div style="margin-bottom: 20px;">
{{ post.content | markdownify }}
</div>
  {% endif %}
{% endfor %}

<!--        featured posts on top, so new loop                               -->

{% for post in cat_posts %}
  {% if post.tags contains '.featured' %}
<div class="excerpt">
    {{ post.excerpt }}
  <p class="footnote">
    {%if post.author %}{{ post.author | remove: "@" }}, {% endif %}
    {%if post.date %}{{ post.date | date: "%Y-%m-%d" }}: {% endif %}
    <a href="{{ post.url | relative_url }}">more ...</a>
  </p>
</div>
  {% endif %}
{% endfor %}

<!--        remaining posts                                                  -->

{% for post in cat_posts %}
  {% unless post.tags contains '.featured' or post.tags contains '.prepend' %} 
<div class="excerpt">
    {{ post.excerpt }}
  <p class="footnote">
    {%if post.author %}{{ post.author | remove: "@" }}, {% endif %}
    {%if post.date %}{{ post.date | date: "%Y-%m-%d" }}: {% endif %}
    <a href="{{ post.url | relative_url }}">more ...</a>
  </p>
</div>
  {% endunless %}
{% endfor %}
