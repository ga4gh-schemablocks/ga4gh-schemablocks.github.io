---
title: "Andy Yates"
layout: default
excerpt_separator: <!--more-->
image_file: 'ayates.jpg'
category:
  - people
tags:
  - contributors
  - leads
  - GKS
  - .featured
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 80px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

European Bioinformatics Institute  
Team Leader, Genomics Technology Infrastructure 
Co-Chair GA4GH::GKS

<!--more-->

email [ayates@ebi.ac.uk](mailto:ayates@ebi.ac.uk)  
web [EBI](https://www.ebi.ac.uk/about/people/andy-yates)  
