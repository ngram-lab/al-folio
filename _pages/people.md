---
layout: page
permalink: /members/
title: lab
order: 3
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
We are the members of the UMass Natural Language Processing lab in <a href="https://www.cics.umass.edu/">CICS</a>! This page contains current faculty, postdocs, and PhD students; see also our <a href="../alumni/">alumni</a> and <a href="../affiliates/">faculty affiliates</a>.
</p>

<a name="fac"></a>
<h2>Faculty</h2>
<div class="row">
  {% for person in site.data.faculty %}
    {{person | personfilter}}
  {% endfor %}
</div>


<hr>

<a name="postdocs"></a>
<h2>Postdocs</h2>
<div class="row">
  {% for person in site.data.postdocs %}
    {{person | personfilter}}
  {% endfor %}
</div>

<hr>

<a name="phd"></a>
<h2>PhD students</h2>
<div class="row">
  {% for person in site.data.students %}
    {{person | personfilter}}
  {% endfor %}
</div>
<hr>

