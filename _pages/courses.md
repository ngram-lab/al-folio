---
layout: page
permalink: /courses/
title: courses
description:
order: 6
nav: true
---


<h1>Courses</h1>

<p>
Here is a list of courses and programs at UMass to study
the overlapping areas of
natural language processing, computational linguistics,
and cultural analytics,
taught by NLP <a href="../affiliates/">affiliated faculty</a>.
Some have links to syllabi or websites from some, but not necessary all, previous offerings;
if you'd like to know future availability,
ask instructors or see department websites, such as the
<a href="https://www.cics.umass.edu/content/course-offering-plan">CICS course offering plan</a>.
</p>

<ul>
{% for cc in site.data.courses %}
  <li>
    {{cc.shortname}}:
    {% if cc.url %}
      <a href="{{cc.url}}">{{cc.title}}</a>.
    {% elsif cc.offerings[0].url %}
      <a href="{{cc.offerings[0].url}}">{{cc.title}}</a>.
    {% else %}
      {{cc.title}}.
    {% endif %}
    {% if cc.note %}
      <i>{{cc.note}}</i>
    {% endif %}
    {% if cc.offerings %}
      <span class="offerings">[
      {%- for oo in cc.offerings -%}
        {%- if oo.url -%}
          <a href="{{oo.url}}">{{oo.shortyear}}</a>
        {%- else -%}
          {{oo.shortyear}}
        {%- endif -%}
        {%- if forloop.last == false -%}
          , 
        {% endif %}
      {%- endfor -%}
      ]
      </span>
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
<li><a href="https://www.umass.edu/linguistics/">Linguistics</a>, in collaboration with CICS, offers a degree in Computational Linguistics. The normal <a href="https://www.umass.edu/linguistics/linguistics-major">Linguistics major</a> may be appropriate as well.</li>
<li>NLP and NLP-related coursework can of course be included in many other majors, though be aware that availability may be an issue for certain courses.</li>
</ul>

<p>Masters:</p>
<ul>
<li><a href="https://www.cics.umass.edu/degree-program/masters">Computer Science MS</a> program in CICS.  See also its <a href="https://www.cics.umass.edu/grads/data-science-concentration-elective-requirements">Data Science concentration</a>.</li>
<li><a href="https://www.umass.edu/sbs/data-analytics-and-computational-social-science-program">Data Analytics and Computational Social Science Program</a> in <a href="https://www.umass.edu/sbs/">SBS</a>.
</li>
</ul>

<p>PhD: </p>
<ul>
<li><a href="https://www.cics.umass.edu/degree-program/doctoral">Computer Science PhD</a> program in CICS.</li>
<li><a href="https://www.umass.edu/linguistics/graduate-program-linguistics">Linguistics PhD program</a> (see the <a href="https://blogs.umass.edu/linguist/computational-linguistics/">computational linguistics research group</a>).</li>
<li>If you are considering multiple departments for PhD studies, make sure to research how the structure, content, and outcomes of study differ between departments.</li>
</ul>

<h1>Course Enrollments</h1>
<p>
Many students from a variety of departments, across humanities, social sciences, sciences, engineering, and other Five Colleges, have taken NLP and related courses at UMass.  Depending on the particular department and course, at times there can be enrollment constraints; interested students can contact instructors if they have questions.

<p>For COMPSCI and INFO courses, these CICS webpages on <a href="https://www.cics.umass.edu/ugrad-education/overrides">undergraduate enrollments</a> and <a href="https://www.cics.umass.edu/content/overrides-non-computer-science-graduate-students">graduate enrollments</a> may be relevant.
