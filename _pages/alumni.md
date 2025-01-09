---
layout: page
permalink: /alumni/
title: alumni
order: 4
description:
nav: true

---

<a name="alum"></a>
<h2>Alumni</h2>

<p>Some UMass NLP PhD and postdoc alumni. (Incomplete list - still under construction. See also <a href="http://www.iesl.cs.umass.edu/people">IESL alumni</a> and <a href="https://ciir.cs.umass.edu/alumni">CIIR alumni</a>.)</p>

<ul>
  {% assign sorted = site.data.alumni | sort: "year" | reverse %}
  {% for person in sorted %}
    <li>
      {% if person.website %}
        <a href="{{person.website}}" target="_blank">{{person.name}}</a>
      {% else %}
        {{person.name}}
      {% endif %}
      ({{person.degree | replace: "Wendy Lehnert", "<a href='https://en.wikipedia.org/wiki/Wendy_Lehnert'>Wendy Lehnert</a>" }})
      {% if person.firstjob %}
        → {{person.firstjob}}
      {% endif %}
      {% if person.nextjob %}
        → {{person.nextjob}}
      {% endif %}
      {% if person.currentjob %}
        {% unless person.firstjob %}
          → &hellip;
        {% endunless %}
        → {{person.currentjob}}
      {% endif %}
    </li>
  {% endfor %}
</ul>

  
