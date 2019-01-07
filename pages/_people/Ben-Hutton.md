---
title: "Ben Hutton"
layout: default
excerpt_separator: <!--more-->
image_file: bhutton.jpg
category:
  - people
tags:
  - contributors
  - leads
  - developers
  - Discovery
  - MME
---

{% for static_file in site.static_files %}
  {% if static_file.path contains page.image_file %}
<img style="float: right; width: 100px;" src="{{ static_file.path | relative_url}}" />
  {% endif %}
{% endfor %}

## {{ page.title }}

Lead, Discovery Search API  
Senior Web Developer, Wellome Sanger Institute, Hinxton  
Primary work: [DECIPHER](https://www.sanger.ac.uk/science/tools/decipher-mapping-clinical-genome)  

<!--more-->

github: [https://github.com/Relequestual](https://github.com/Relequestual)  
twitter: [https://twitter.com/relequestual](https://twitter.com/relequestual)  

