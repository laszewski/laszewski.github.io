---
# Documentation: https://sourcethemes.com/academic/docs/managing-content/

title: Supercharging distributed computing environments for high-performance data
  engineering
subtitle: ''
summary: ''
authors:
- Niranda Perera
- Arup Kumar Sarker
- Kaiying Shan
- Alex Fetea
- Supun Kamburugamuve
- Thejaka Amila Kanewala
- Chathura Widanage
- Mills Staylor
- Tianle Zhong
- Vibhatha Abeykoon
- Gregor von Laszewski
- Geoffrey Fox
tags: []
categories: []
date: '2024-01-01'
lastmod: 2024-08-22T23:09:50Z
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
publishDate: '2024-08-22T23:09:50.345453Z'
publication_types:
- '2'
abstract: The data engineering and data science community has embraced the idea of
  using Python and R dataframes for regular applications. Driven by the big data revolution
  and artificial intelligence, these frameworks are now ever more important in order
  to process terabytes of data. They can easily exceed the capabilities of a single
  machine but also demand significant developer time and effort due to their convenience
  and ability to manipulate data with high-level abstractions that can be optimized.
  Therefore it is essential to design scalable dataframe solutions. There have been
  multiple efforts to be integrated into the most efficient fashion to tackle this
  problem, the most notable being the dataframe systems developed using distributed
  computing environments such as Dask and Ray. Even though Dask and Ray's distributed
  computing features look very promising, we perceive that the Dask Dataframes and
  Ray Datasets still have room for optimization In this paper, we present CylonFlow,
  an alternative distributed dataframe execution methodology that enables state-of-the-art
  performance and scalability on the same Dask and Ray infrastructure (<italic>supercharging</italic>
  them!). To achieve this, we integrate a <italic>high-performance dataframe</italic>
  system Cylon, which was originally based on an entirely different execution paradigm,
  into Dask and Ray. Our experiments show that on a pipeline of dataframe operators,
  CylonFlow achieves 30 times more distributed performance than Dask Dataframes. Interestingly,
  it also enables superior sequential performance due to leveraging the native C++
  execution of Cylon. We believe the performance of Cylon in conjunction with CylonFlow
  extends beyond the data engineering domain and can be used to consolidate high-performance
  computing and distributed computing ecosystems.
publication: '*Frontiers in High Performance Computing*'
doi: 10.3389/fhpcp.2024.1384619
links:
- name: URL
  url: https://www.frontiersin.org/journals/high-performance-computing/articles/10.3389/fhpcp.2024.1384619
---
