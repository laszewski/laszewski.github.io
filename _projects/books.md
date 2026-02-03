---
layout: project
title: "Online Books"
image: "/img/books.jpg"
description: "Online books edited by Gregor von Laszewski for educational purposes."
date: 2026-01-01
---


This collection containa a number of online books that have been edited by Gregor von Laszewski and contain many contributions from students.


## Selected Publications

More refernces can be found at the [Publications Page](/publications/)

<ol>
  {% bibliography --query @*[keywords ~= book] --sort_by year --order descending %}
</ol>

