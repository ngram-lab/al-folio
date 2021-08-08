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

{{page.groups | myfilter}}

<h1 style="padding-bottom:10px">Faculty</h1>

{% for person in site.data.faculty %}

<!-- The paddingtop and margin-top edits allow anchors to link properly. -->
<div id = "{{person.name | replace: ' ', '-'}}" class="row" style="padding-top: 60px; margin-top: -60px;">
    <img style="float: right; max-width: 20%; padding-left: 20px; padding-right:20px;" src="{{ person.image | prepend: '/assets/img/' | prepend: site.baseurl | prepend: site.url }}" alt="photo of {{person.name}}">
    <div>
        <h4>{{person.name}}{% if person.degrees %}, {{person.degrees}} {% endif %}</h4> 
        {{person.position}} <br>
        <i class="fa fa-envelope"></i> <em>{{person.email}}</em> <br>
        {% if person.twitter %}
          <i class="fab fa-twitter"></i> <a href= "http://twitter.com/{{person.twitter}}" target="_blank"> @{{person.twitter}} </a> <br>
        {% endif %}
        {% if person.website %}
          <i class="fa fa-globe"></i> <a href= "{{person.website}}" target="_blank">{{person.website}}</a> <br>
        {% endif %}
        {% if person.github %}
          <i class="fab fa-github"></i> <a href= "https://github.com/{{person.github}}" target="_blank"> {{person.github}} </a> <br>
        {% endif %}
        {% if person.scholar %}
          <i class="ai ai-google-scholar"></i> <a href= "http://scholar.google.com/citations?user={{person.scholar}}" target="_blank"> Scholar Citations </a> <br>
        {% endif %}
        {% if person.orcid %}
          <i class="ai ai-orcid"></i> <a href="http://{{person.orcid}}" target="_blank"> {{person.orcid}}</a> <br>
        {% endif %}
    </div>
</div>
<hr>
{% endfor %}

{% if site.data.postdocs %}
<h1 style="padding-bottom:10px">Postdocs</h1>
  {% for person in site.data.postdocs %}
<div id = "{{person.name | replace: ' ', '-'}}" class="row" style="padding-top: 60px; margin-top: -60px;">
    <img style="float: right; max-width: 20%; padding-left: 20px; padding-right:20px;" src="{{ person.image | prepend: '/assets/img/' | prepend: site.baseurl | prepend: site.url }}" alt="photo of {{person.name}}">
    <div>
        <h4>{{person.name}}{% if person.degrees %}, {{person.degrees}} {% endif %}</h4> 
        {{person.position}} <br>
        <i class="fa fa-envelope"></i> <em>{{person.email}}</em> <br>
        {% if person.twitter %}
          <i class="fab fa-twitter"></i> <a href= "http://twitter.com/{{person.twitter}}" target="_blank"> @{{person.twitter}} </a> <br>
        {% endif %}
        {% if person.website %}
          <i class="fa fa-globe"></i> <a href= "{{person.website}}" target="_blank">{{person.website}}</a> <br>
        {% endif %}
        {% if person.github %}
          <i class="fab fa-github"></i> <a href= "https://github.com/{{person.github}}" target="_blank"> {{person.github}} </a> <br>
        {% endif %}
        {% if person.scholar %}
          <i class="ai ai-google-scholar"></i> <a href= "http://scholar.google.com/citations?user={{person.scholar}}" target="_blank"> Scholar Citations </a> <br>
        {% endif %}
        {% if person.orcid %}
          <i class="ai ai-orcid"></i> <a href="http://{{person.orcid}}" target="_blank"> {{person.orcid}}</a> <br>
        {% endif %}

    </div>
    <div class="col-sm-8">
        <p class="text-justify">{{person.description | markdownify}}</p>
    </div>
</div>
<hr>
  {% endfor %}
{% endif %}

  <h1 stylep="padding-bottom:10px">Students</h1>


  {% for row in site.data.zcompiled.students %}
  <div class="row">
    {% for person in row %}
      {{person | personfilter}}
    {% endfor %}
  </div>
  {% endfor %}

<hr>


{% if site.data.alumni %}
  <h1 style="padding-bottom:10px">Alumni</h1>
  {% for person in site.data.alumni %}
<div id = "{{person.name | replace: ' ', '-'}}" class="row" style="padding-top: 60px; margin-top: -60px;">
    <img style="float: right; width: 42%; padding-left: 20px;" src="{{ person.image | prepend: '/assets/img/' | prepend: site.baseurl | prepend: site.url }}" alt="photo of {{person.name}}">
    <div>
        <h4>{{person.name}}{% if person.degrees %}, {{person.degrees}} {% endif %}</h4> 
        {{person.position}} <br>
        <i class="fa fa-envelope"></i> <em>{{person.email}}</em> <br>
        {% if person.twitter %}
          <i class="fab fa-twitter"></i> <a href= "http://twitter.com/{{person.twitter}}" target="_blank"> @{{person.twitter}} </a> <br>
        {% endif %}
        {% if person.website %}
          <i class="fa fa-globe"></i> <a href= "{{person.website}}" target="_blank">{{person.website}}</a> <br>
        {% endif %}
        {% if person.github %}
          <i class="fab fa-github"></i> <a href= "https://github.com/{{person.github}}" target="_blank"> {{person.github}} </a> <br>
        {% endif %}
        {% if person.scholar %}
          <i class="ai ai-google-scholar"></i> <a href= "http://scholar.google.com/citations?user={{person.scholar}}" target="_blank"> Scholar Citations </a> <br>
        {% endif %}
        {% if person.orcid %}
          <i class="ai ai-orcid"></i> <a href="http://{{person.orcid}}" target="_blank"> {{person.orcid}}</a> <br>
        {% endif %}

    </div>
    <div class="col-sm-8">
        <p class="text-justify">{{person.description | markdownify}}</p>
    </div>
</div>
<hr>
  {% endfor %}
{% endif %}
