---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: A Parallel Data Assimilation System and Its Implications on a Metacomputing
  Environment
subtitle: ''
summary: ''
authors:
- Gregor von Laszewski
tags: []
categories: []
date: '1996-01-01'
lastmod: 2023-03-31T11:29:03-04:00
featured: false
draft: false

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder.
# Focal points: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight.
image:
  caption: ''
  focal_point: ''
  preview_only: false

# Projects (optional).
#   Associate this post with one or more of your projects.
#   Simply enter your project's folder or file name without extension.
#   E.g. `projects = ["internal-project"]` references `content/project/deep-learning/index.md`.
#   Otherwise, set `projects = []`.
projects: []
publishDate: '2023-03-31T15:29:03.371366Z'
publication_types:
- '7'
abstract: This thesis contributes to the area of data analysis as used in atmospheric
  science and provides a metacomputing environment for grand challenge problems. In
  order to achieve a valid climate forecast, an accurate initial condition is needed
  to apply the governing equations describing the model. Data analysis techniques
  are able to derive this initial state from irregular distributed observations. This
  thesis provides a parallel algorithm for the data analysis. Algorithms using static
  and dynamic decomposition are introduced and their performance is analyzed. A decomposition
  with linear speedup is presented.During the parallelization many different computers
  and programming paradigms have been utilized. In order to simplify the access for
  the user and developer a metacomputing environment has been developed. The meta-computing
  environment allows one to generate message passing parallel programs from a visual
  representation of a task graph. Besides the creation of stand-alone parallel programs,
  the task graph can be transferred into separate jobs executed on different supercomputers.
  Messages between the jobs are exchanged with the help of files. The underlying concept
  for this metacomputing environment is a dynamical dataflow model allowing multi-paradigm
  programming. A dynamical task scheduling algorithm determines on which component
  of the metacomputer a task is scheduled and which algorithm performs the task. The
  execution of the program is visually animated.
publication: '*Syracuse University*'
url_pdf: https://laszewski.github.io/papers/laszewskithesis.pdf
---
