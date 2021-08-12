---
layout: page
permalink: /publications/
title: publications
order: 4
years: [2021, 2020, 2019, 2018, 2017, 2016, 2015]
nav: true
---

<div class="publications">

<p>This page lists most of our publications and preprints since 2015. (It includes a few non-paper citations, like invited talks or edited volumes.) Papers are also available from the personal websites of lab members.
</p>

{% for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
