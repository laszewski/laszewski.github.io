+++
title = "Bookmanager"
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
{icon_pack = "fab", icon="file", name="Manual", url = "https://github.com/cyberaide/bookmanager"},
{icon_pack = "fab", icon="github", name="Github", url = "https://github.com/cyberaide/bookmanager"},
{icon_pack = "fab", icon="github", name="YAML Example", url = "https://github.com/cyberaide/bookmanager/blob/master/tests/python.yml"},
{icon_pack = "fab", icon="github", name="Cover Example", url = "https://github.com/cyberaide/bookmanager/blob/master/tests/example/cover.png"},
{icon_pack = "fab", icon="github", name="ePub Example", url = "https://cloudmesh-community.github.io/book//vonLaszewski-python.epub"},
{icon_pack = "fab", icon="github", name="PDF Example", url = "https://cloudmesh-community.github.io/book//vonLaszewski-python.pdf"}
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


# Bookmanager


Bookmanager is a tool to create a publication from a number of sources on the
internet. It is especially useful to create customized books, lecture notes, or
handouts. Content is best integrated in markdown format as it is very fast to
produce the output. At present we only produce epubs, but it will be easy to
also create pdf, html, work, odt and others. As we use pandoc we can support the
formats supported by it.

Implemented Features:

* Table of contents with indentation levels can be specified via yaml
* Special variable substitution of elements defined in the yaml file
* Documents are fetched from github 
* The documents will be inspected and the images found in them are fetched 
  (we assume the images are relative to the document, http links will not be modified)
* Automatic generation of a cover page
* Output is generated in a dest directory

Planed enhancements:

* integration of References via pandoc citeref
* integration of Section, Table, Image references via pandoc crossref

If you like to help get in contact with Gregor von Laszewski
<laszewski@gmail.com>

```bash
$ pip install cyberaide-bookmanager
```

## Usage

```
bookmanager -- a helper to create books from markdown files in a yaml TOC.

Usage:
  bookmanager version
  bookmanager YAML cover
  bookmanager YAML get [--format=FORMAT] [--force]
  bookmanager YAML download
  bookmanager YAML level
  bookmanager YAML epub [--force]
  bookmanager YAML pdf
  bookmanager YAML html
  bookmanager YAML docx
  bookmanager YAML check [--format=FORMAT]
  bookmanager YAML urls [--format=FORMAT]
  bookmanager YAML list [--format=FORMAT] [--details]

```  
