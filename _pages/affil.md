---
layout: page
permalink: /affiliates/
title: affiliates
description:
order: 3
nav: true
news: true  # includes a list of news items

---


<h1 style="padding-bottom:10px">Affiliated Faculty in Computation and Language</h1>

<p>
Natural language processing is part of a broader multidisciplinary study of <b>computation and language</b>: 
</p>

<ul>
  <li>Computational methods to effectively generate, analyze, and ideally understand natural language (<i>natural language processing</i>).</li>
  <li>Computational modeling of how humans process and use language (<i>computational linguistics</i>; e.g., in linguistics, psychology, etc.).</li>
  <li>Computational study of language in society and culture, and NLP for automated content analysis (<i>cultural analytics</i>; e.g. in political science, literature, media studies, etc.).</li>
  <li>Using NLP to make practical tools for users (e.g. in information retrieval, human-computer interaction, educational technology, multimodal systems, etc.).</li>
</ul>

{% comment %}
<p>These topics closely interact: for example, since language is specific to humans, methods that work with it (as studied in NLP) are deeply affected by fundamental characteristics of language (as studied in linguistics). Models developed in NLP are often useful to yield deeper insights about language (as studied in computational linguistics). 
Humans' internal language facility is designed for communication, and thus are closely aligned with social factors in language use (as studied in sociolinguistics). And user applications — whether for health scientists, social scientists, or in other domains -- motivate important NLP problems and methods.
{% endcomment %}

<p>We list below many faculty at UMass Amherst who teach, research, and collaborate across these related areas.
{% comment %}
This is a list of some NLP-adjacent faculty across the UMass Amherst campus from many different departments, who use or interact with NLP methods in their studies along these lines, and often collaborate and teach related courses as well.
{% endcomment %}
While dividing a multidisciplinary space is always imperfect, for convenience
we show faculty in three roughly disciplinary groups:
<a href="#cics">CICS</a>,
<a href="#ling">Linguistics</a>, and 
the <a href="#socsci">Social Sciences and Humanities</a>.
</p>

<a name="cics"></a>
<h2>Information and Computer Sciences</h2>
<div class="row">
{% assign sorted = site.data.affil.cics.members | sort: 'name' %}
{% for person in sorted %}
  {{person | personfilter}}
{% endfor %}
</div>

<a name="ling"></a>
<h2>Linguistics</h2>
<p>See also the
  <a
  href="https://blogs.umass.edu/linguist/computational-linguistics/">Computational
  Linguistics research area</a> page on the
  <a href="https://www.umass.edu/linguistics/">Linguistics website</a>.
</p>
<div class="row">
{% assign sorted = site.data.affil.ling.members | sort: 'name' %}
{% for person in sorted %}
  {{person | personfilter}}
{% endfor %}
</div>

<a name="socsci"></a>
<h2>Social Sciences and Humanities</h2>
<div class="row">
{% assign sorted = site.data.affil.socsci.members | sort: 'name' %}
{% for person in sorted %}
  {{person | personfilter}}
{% endfor %}
</div>

