---
layout: page
permalink: /members/
title: members
order: 2
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

<h2 style="padding-top: 20px">Faculty</h2>

<div class="row">
  {% for person in site.data.faculty %}
    {{person | personfilter}}
  {% endfor %}
</div>


<hr>

<h2 style="padding-top: 20px">Postdocs</h2>
<div class="row">
  {% for person in site.data.postdocs %}
    {{person | personfilter}}
  {% endfor %}
</div>

<hr>

<h2 style="padding-top: 20px">PhD students</h2>
<div class="row">
  {% for person in site.data.students %}
    {{person | personfilter}}
  {% endfor %}
</div>
<hr>
