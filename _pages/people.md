---
layout: page
permalink: /members/
title: members
description:
nav: true
news: true  # includes a list of news items

---
<!-- <article>
    {% if page.news %}
      {% include news.html %}
    {% endif %}
</article> -->

<p>
  We are the members of the UMass Natural Language Processing lab in CICS!  See also our broader list of <a href="../affiliates/">multidisciplinary affiliates</a>.
</p>

<h1 style="padding-bottom:10px">Faculty</h1>

<div class="row">
  {% for person in site.data.faculty %}
    {{person | personfilter}}
  {% endfor %}
</div>


<hr>

<h1 style="padding-bottom:10px">Postdocs</h1>
<div class="row">
  {% for person in site.data.postdocs %}
    {{person | personfilter}}
  {% endfor %}
</div>

<hr>

<h1 stylep="padding-bottom:10px">Ph.D Students</h1>
<div class="row">
  {% for person in site.data.students %}
    {{person | personfilter}}
  {% endfor %}
</div>
<hr>
