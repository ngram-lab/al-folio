---
layout: page
permalink: /courses/
title: courses
description:
order: 5
nav: true
---

<p>
Here is a list of courses and programs to study
natural language processing and computational linguistics at UMass.
</p>

<h1>Courses</h1>


<ul>
{% for cc in site.data.courses %}
  <li>
    {{cc.shortname}}:
    {% if cc.url %}
      <a href="{{cc.url}}">{{cc.title}}</a>.
    {% else %}
      {{cc.title}}.
    {% endif %}
    {% if cc.note %}
      <i>({{cc.note}})</i>
    {% endif %}
  </li>
{% endfor %}
</ul>

<h1>Degree Programs</h1>

<p>These courses can be taken as part of a number of different degree programs at UMass. We list several below that are an especially good fit for studying NLP and related topics.</p>

<p>Undergraduate:</p>
<ul>
<li><a href="https://www.cics.umass.edu/">CICS</a> offers <a href="https://www.cics.umass.edu/degrees">several undergraduate majors</a>, including both Computer Science and Informatics.
<!-- The CS major includes an NLP concentration [TODO updated link?]. -->
</li>
<li>Linguistics, in collaboration with CICS, offers a degree in Computational Linguistics. The normal <a href="https://www.umass.edu/linguistics/linguistics-major">Linguistics major</a> may be appropriate as well.</li>
<li>NLP and NLP-related coursework can of course be included in many other majors, though be aware that availability may be an issue for certain courses.</li>
</ul>

<p>Masters:</p>
<ul>
<li><a href="https://www.cics.umass.edu/degree-program/masters">Computer Science MS</a> program in CICS.  See also its <a href="https://www.cics.umass.edu/grads/data-science-concentration-elective-requirements">Data Science concentration</a>.</li>
<li><a href="https://www.umass.edu/sbs/data-analytics-and-computational-social-science-program">Data Analytics and Computational Social Science Program</a>.
</li>
</ul>

<p>PhD: </p>
<ul>
<li><a href="https://www.cics.umass.edu/degree-program/doctoral">Computer Science PhD</a> program in CICS.</li>
<li><a href="https://www.umass.edu/linguistics/graduate-program-linguistics">Linguistics PhD program</a> (see the <a href="https://blogs.umass.edu/linguist/computational-linguistics/">computational linguistics research group</a>).</li>
<li>If you are considering multiple departments for PhD studies, make sure to research how the structure, content, and outcomes of study differ between departments.</li>
</ul>
