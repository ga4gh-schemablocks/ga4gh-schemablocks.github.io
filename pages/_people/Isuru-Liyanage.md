---
title: "Isuru Liyanage"
layout: default
excerpt_separator: <!--more-->
image_file: isuru.jpg
category:
  - people
  - contact
tags:
  - contributors
  - developers
  - Discovery
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 100px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

Software Developer  
GA4GH, Archival Infrastructure and Technology Team  
European Bioinformatics Institute  

<!--more-->

email [isuru@ebi.ac.uk](mailto:isuru@ebi.ac.uk)  
web [EBI](https://www.ebi.ac.uk/about/people/isuru-liyanage)  
