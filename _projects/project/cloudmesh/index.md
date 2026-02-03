+++
title = "Multi-Cloud Mangement with Cloudmesh"
date = 2019-08-15
draft = false

# Tags: can be used for filtering projects.
# Example: `tags = ["machine-learning", "deep-learning"]`
tags = ['project']

# Project summary to display on homepage.
summary = ""

# Slides (optional).
#   Associate this page with Markdown slides.
#   Simply enter your slide deck's filename without extension.
#   E.g. `slides = "example-slides"` references 
#   `content/slides/example-slides.md`.
#   Otherwise, set `slides = ""`.
slides = ""

# Optional external URL for project (replaces project detail page).
external_link = ""


# Links (optional).
url_pdf = ""
url_code = ""
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""
url_custom = [
{icon_pack = "fab", icon="file", name="Manual", url = "https://cloudmesh.github.io/cloudmesh-manual/"},
{icon_pack = "fab", icon="github", name="Installer", url = "https://github.com/cloudmesh/cloudmesh-installer/"},
{icon_pack = "fab", icon="github", name="Repo", url = "https://github.com/cloudmesh/"},
{icon_pack = "fab", icon="github", name="Cloud", url = "https://github.com/cloudmesh/cloudmesh-cloud/"},
{icon_pack = "fab", icon="github", name="Configuration", url = "https://github.com/cloudmesh/cloudmesh-configuration/"},
{icon_pack = "fab", icon="github", name="Sys", url = "https://github.com/cloudmesh/cloudmesh-sys/"},
{icon_pack = "fab", icon="github", name="Workflow", url = "https://github.com/cloudmesh/cloudmesh-flow/"},
]

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = "Left"
+++

About
=====

Cloudmesh enables you to access multi-cloud environments such as AWS,
Azure, Google, and OpenStack Cloudsvery easily. To start a vm on AWS you
can say

```
cms set cloud=AWS cms vm boot
```

To start one on Azure, simply set the cloud accordingly

```
cms set cloud=AWS cms vm boot 
```

[Cloudmesh](https://cloudmesh-community.github.io/cm/) is an evolution
of our previous tool that has been used by hundreds of students and
cloud practitioners to interact easily with clouds to create a service
mashup to access common cloud services across a number of cloud
providers.

It is under active development and managed in github at

-   Documentation: <https://github.com/cloudmesh/cloudmesh-manual/>
-   Code: <https://github.com/cloudmesh/>

It has a variety of repositories that add features to cloudmesh based on
needs by the user.

Features
--------

| Library |   Description   |
| --- | --- |
| [Common](https://github.com/cloudmesh/cloudmesh-common)         | Simplifies system, console, and argument management        |  
| [Shell](https://github.com/cloudmesh/cloudmesh-cmd5)            | Dophisticated command shell and line interpreter with plugins |  
| [Installer](https://github.com/cloudmesh/cloudmesh-installer)   | Convenient source code installer and manager for developers    | 
| [Database](https://github.com/cloudmesh/cloudmesh-cloud)        | A database for caching cloud interactions (based on MongoDB)    |
| [Cloud Compute](https://github.com/cloudmesh/cloudmesh-cloud)   | Cloud Compute Providers for AWS, Azure, Google, Openstack    |
| [Cloud Storage](https://github.com/cloudmesh/cloudmesh-storage) | Cloud Storage Providers for AWS, Azure, Google, Openstack   |
| [Workflow](https://github.com/cloudmesh/cloudmesh-workflow)     | Plugin for managing workflows                       |      
| [Map/Reduce](https://github.com/cloudmesh/cloudmesh-emr)        | Plugin for managing AWS Elastic MapReduce (EMR)        |     
| OpenApi                                                         | OpenAPI based REST service interfaces                  |    


It is under active development and managed in github at

- Documentation: https://github.com/cloudmesh/cloudmesh-manual/
- Code: https://github.com/cloudmesh/

