---
layout: page
permalink: /publications/
title: publications
order: 5
years: [2024, 2023, 2022, 2021, 2020, 2019, 2018, 2017, 2016, 2015]
nav: true
---

<div class="publications">

<p>This page lists some of our publications and preprints since 2015. More complete lists of publications are available from the personal websites of lab members.
</p>

{% for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}

</div>
