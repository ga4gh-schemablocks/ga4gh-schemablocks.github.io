---
title: "Ben Hutton"
layout: default
excerpt_separator: <!--more-->
image_file: 
category:
  - team
tags:
  - team
  - developers
  - Discovery
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 100px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

Lead, Discovery Search API
European Bioinformatics Institute, Hinxton  

<!--more-->

email []()
web []()

