---
layout: page
permalink: /songs/index.html
title: Songs
description: "Songs I've recorded"
---
<strong>A collection of recordings, mostly with me singing and playing piano. Occasional collaboration.</strong>

<ul class="post-list">
{% for post in site.categories.songs %}
  <li><article><a href="{{ site.url }}{{ post.url }}">{{ post.title }} <span class="entry-date"><time datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date: "%B %d, %Y" }}</time></span></a></article></li>
{% endfor %}
</ul>
