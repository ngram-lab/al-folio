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

<h2>Faculty</h2>

<div class="row">
  {% for person in site.data.faculty %}
    {{person | personfilter}}
  {% endfor %}
</div>


<hr>

<h2>Postdocs</h2>
<div class="row">
  {% for person in site.data.postdocs %}
    {{person | personfilter}}
  {% endfor %}
</div>

<hr>

<h2>PhD students</h2>
<div class="row">
  {% for person in site.data.students %}
    {{person | personfilter}}
  {% endfor %}
</div>
<hr>

<h2>Alumni</h2>

<p>A few recent UMass NLP alumni. (Incomplete list - still under construction. See also <a href="http://www.iesl.cs.umass.edu/people">IESL alumni list</a>.)</p>

<ul>
  {% assign sorted = site.data.alumni | sort: "year" | reverse %}
  {% for person in sorted %}
    <li>
      {% if person.website %}
        <a href="{{person.website}}" target="_blank">{{person.name}}</a>
      {% else %}
        {{person.name}}
      {% endif %}
      ({{person.degree}})
      {% if person.firstjob %}
        → {{person.firstjob}}
      {% endif %}
    </li>
  {% endfor %}
</ul>

  
