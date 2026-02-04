+++
title = "Raspberry Pi Cloud Cluster"
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
url_code = "https://github.com/cloudmesh-community/cm-burn"
url_dataset = ""
url_project = ""
url_slides = ""
url_video = ""
url_poster = ""

# Custom links (optional).
#   Uncomment line below to enable. For multiple links, use the form `[{...}, {...}, {...}]`.
# url_custom = [{icon_pack = "fab", icon="twitter", name="Follow", url = "https://twitter.com"}]

# Featured image
# To use, add an image named `featured.jpg/png` to your page's folder. 
[image]
  # Caption (optional)
  caption = ""

  # Focal point (optional)
  # Options: Smart, Center, TopLeft, Top, TopRight, Left, Right, BottomLeft, Bottom, BottomRight
  focal_point = ""
+++

## Raspberry Pi Cloud Cluster

THis project is open to anyone wanting to work with me on building a
Raspberry Pi Cloud Cluster. We have 100-200 Raspberry Pis which provide
an ideal playground for building your own cluster and explore
distributed computing algorithms on real hardware. In this project you
would be building a cluster and than putting cloud software on the
cluster to make it our own cloud service.

Such software can include but is not limited to 

* Docker
* Kubernetwes
* Map/Reduce

When chosing this project one must address the issue of dealing with
many compute resources at a time. THis can be done with PXE boot or with
our cm-burn.

Students that chose this project will have an office space in the
building that I sit. In addition each student will be given a 5 node
cluster thay can work at home on (non smoking environment) that must be
returned after the project is completed.



### cm-burn


`cm-burn` is a program to burn many SD cards for the preparation of
building clusters with Raspberry Pi's.  The program is developed in
Python and is portable on Linux, Windows, and OSX. It allows users to
create readily bootable SD cards that have the network configured,
contain a public ssh key from your machine that you used to configure
the cards.  The unique feature is that you can burn multiple cards in
a row.

A sample command invocation looks like:

```
cm-burn —-name  red[5-7] \
        --key ~/.ssh/id_rsa.pub \
        —-ips 192.168.1.[5-7] \
        —-image 2018-06-27-raspbian-stretch
```
        
This command creates 3 SD cards where the hostnames `red5`, `red6`, `red 7`
with the network addresses `192.168.1.5`, `192.168.1.6`,
and `192.168.1.7`. The public key is added to the authorized_keys file
of the pi user.  The password login is automatically disabled and only
the ssh key authentication is enabled.

## References

* <https://github.com/cloudmesh-community/cm-burn>


