# Gregors Web Page

## Install LaTeX and pandoc Ubuntu

```
sudo apt install texlive-latex-extra
# sudo apt install libghc-pandoc-prof
wget https://github.com/jgm/pandoc/releases/download/2.14.1/pandoc-2.14.1-1-amd64.deb
sudo apt install ./pandoc-2.14.1-1-amd64.deb
sudo apt install hugo

```

## Update

```
git clone git@github.com:laszewski/laszewski.github.io.git
```

or

```
git clone https://github.com/laszewski/laszewski.github.io.git
```

```
cd laszewski.github.io
pip install -r requirements.txt
make bib
make view
```

After things are ok

```
hugo
git status
```

add the new content

```
git commit -a
git push
```

To change the bib edit <https://github.com/laszewski/laszewski.github.io/blob/master/vonLaszewski-jabref.bib>
The file `vonLaszewski.bib` will be automatically generated. You can
also use that if you need to import citations.


## Hugo Academic for Web page

* uses Academic with modifications. Original academic has a [demo](https://themes.gohugo.io/theme/academic/)
  [documentation](https://sourcethemes.com/academic/docs/), [github](https://github.com/gcushen/hugo-academic/)


### Install on PC

Prerequisites:

* [Download and install Git](https://git-scm.com/downloads)
* [Download and install Hugo](https://gohugo.io/getting-started/installing/#quick-install)

1. Clone (or
   [Fork](https://github.com/sourcethemes/academic-kickstart#fork-destination-box)
   or
   [download](https://github.com/sourcethemes/academic-kickstart/archive/master.zip))
   the *Academic Kickstart* repository with Git:

       git clone https://github.com/sourcethemes/academic-kickstart.git My_Website
    
    *Note that if you forked Academic Kickstart, the above command should be edited to clone your fork.*

2. Initialize the theme:

       cd My_Website
       git submodule update --init --recursive

3. View your new website:
      
       hugo server

    Now you can go to [localhost:1313](http://localhost:1313) and your new Academic powered website should appear.
  

