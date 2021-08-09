---
layout: page
permalink: /affiliates/
title: affiliates
description:
nav: true
news: true  # includes a list of news items

---


<h1 style="padding-bottom:10px">Affiliated Faculty in Computation and Language</h1>

<p>
Natural language processing is part of a broader multidisciplinary study of <b>computation and language</b>: 
</p>

<ul>
  <li>Computational modeling of how humans process and use language (<i>computational linguistics</i>; e.g., in linguistics, psychology, etc.)</li>
  <li>Computational study of language in social behavior and culture, and NLP as a tool for automated content analysis (<i>cultural analytics</i>; e.g. in political science, literature, media studies, etc.)</li>
  <li>Using NLP to make practical tools for users (e.g. in information retrieval, human-computer interaction, etc.)</li>
</ul>

<p>
This is a list of NLP-adjacent faculty across UMass Amherst campus from many different departments, who use or interact with NLP methods in their studies along these lines, and often collaborate and teach related courses as well.
While dividing a multidisciplinary space is always imperfect, for convenience
we show faculty in three roughly disciplinary groups:
<a href="#cics">CICS</a>,
<a href="#ling">Linguistics</a>, and 
the <a href="#socsci">Social Sciences and Humanities</a>.
</p>

<div style="color:red">[NOTE - USING TENTATIVE PLACEHOLDER CONTENT TO SEE HOW IT LOOKS]</div>


<a name="cics"></a>
<h1 style="padding-top: 20px">College of Information and Computer Sciences</h1>
<div class="row">
{% assign sorted = site.data.affil.cics.members | sort: 'name' %}
{% for person in sorted %}
  {{person | personfilter}}
{% endfor %}
</div>

<a name="ling"></a>
<h1 style="padding-top: 20px">Linguistics</h1>
<div class="row">
{% assign sorted = site.data.affil.ling.members | sort: 'name' %}
{% for person in sorted %}
  {{person | personfilter}}
{% endfor %}
</div>

<a name="socsci"></a>
<h1 style="padding-top: 20px">Social Sciences and Humanities</h1>
<div class="row">
{% assign sorted = site.data.affil.socsci.members | sort: 'name' %}
{% for person in sorted %}
  {{person | personfilter}}
{% endfor %}
</div>

