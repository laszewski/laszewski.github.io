# Gregors Homepage

This directory contains Gregor's home page. I used to use hugo for it,
but found that every year I run into compatibility issues with
creating the site. THis I switched in 2026 to jekyll to hopefully keep
it simpler.

The site is created with the help of docker.

## Clone

To clone the directory use 

```bash
git clone https://laszewski.github.io
```

## Make Web page with docker

A convenient Makefile exists that helps you creating the site

```bash
make install  # installs the necessary image
```

Once you have it, you no longer need to call this command.

To create the webpage, use 

```bash
make serve
```

The site can then be viewed locally with 

```
open http://127.0.0.1:4000/
```

Or clicking on the link and open it.  When you make chnges and the
server still runs, the changes will be automatically
populated. However you need to refersh the Webpage in the browser.


## Deployment

To simplify deployment you can use 

```bash
make deploy
```

However, it is far mor transparent to do your commits individually with propper commit messages before you call the deploy.

The deploy may take some time on github, so wait till the contents changes on 

* <https://laszewski.github.io/>




## NOT SUPPORTED AT THIS TIME: Make Resume with docker container

```bash
cd resume/latex

```

# Install LaTeX and pandoc Ubuntu

```
sudo apt install texlive-latex-extra
# sudo apt install libghc-pandoc-prof
wget https://github.com/jgm/pandoc/releases/download/2.14.1/pandoc-2.14.1-1-amd64.deb
sudo apt install ./pandoc-2.14.1-1-amd64.deb
sudo apt install hugo
sudo apt install bibtool

```

## Bibliography management

TO BE UPDATED.

To change the bib edit <https://github.com/laszewski/laszewski.github.io/blob/master/vonLaszewski-jabref.bib>
The file `vonLaszewski.bib` will be automatically generated. You can
also use that if you need to import citations.


