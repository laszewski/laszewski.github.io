---
layout: project
title: "Bookmanager"
image: "/img/bookmanager.png"
description: "Tool to create a publication from a number of sources."
date: 2026-01-01
---

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
