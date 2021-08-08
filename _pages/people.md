---
layout: page
permalink: /people/
title: people
description:
nav: true
news: true  # includes a list of news items

---
<!-- <article>
    {% if page.news %}
      {% include news.html %}
    {% endif %}
</article> -->

  <h1 style="padding-bottom:10px">Faculty</h1>
  {% for row in site.data.zcompiled.faculty %}
  <div class="row">
    {% for person in row %}
      {{person | personfilter}}
    {% endfor %}
  </div>
  {% endfor %}

<hr>

  <h1 style="padding-bottom:10px">Postdocs</h1>
  {% for row in site.data.zcompiled.postdocs %}
  <div class="row">
    {% for person in row %}
      {{person | personfilter}}
    {% endfor %}
  </div>
  {% endfor %}

  <hr>

  <h1 stylep="padding-bottom:10px">Ph.D Students</h1>
  {% for row in site.data.zcompiled.students %}
  <div class="row">
    {% for person in row %}
      {{person | personfilter}}
    {% endfor %}
  </div>
  {% endfor %}

  <hr>
