MSG="Deploy Web Site"

deploy: 
	rm -rf public
	@echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
	hugo 
	#git pull --recurse-submodules
	#cd ../laszewski.github.io; git submodule update --remote --recursive
	#cp -rv public/* ../laszewski.github.io
	#cd ../laszewski.github.io; git add .
	#cd ../laszewski.github.io; git commit -m $(MSG) .
	#cd ../laszewski.github.io; git push

#install:
#	rm -rf tmp
#	mkdir tmp
#	cd tmp; wget https://github.com/sourcethemes/academic-kickstart/archive/master.zip
#	cd tmp; unzip master.zip
#	cp -r tmp/academic-kickstart-master/themes/academic themes

papers:
	cp -r ../papers ../laszewski.github.io
	cd ../laszewski.github.io; git add .
	cd ../laszewski.github.io; git commit -m $(MSG) .
	cd ../laszewski.github.io; git push

check:
	cat vonLaszewski-jabref.bib | \
        sed -e 's/ +/ /g' | \
	grep -i "url =" | \
        sed -e 's/url *=//g' | \
	sed -e 's/Url *=//g' | \
	sed -e 's/}//g' | \
	sed -e 's/{http/http/g' | \
	sed -e 's/^/\.\/chech-url\.sh  /' > link.sh
	@cat link.sh
	@echo "Broken URLS"
	@echo "==========="
	@sh link.sh

# GET-bib:
#	wget https://raw.githubusercontent.com/cyberaide/bib/master/vonLaszewski-jabref.bib

bibclean:
	rm -rf public
	cp content/publication/_index.md /tmp/_index.md
	rm -rf content/publication/*
	cp /tmp/_index.md content/publication/_index.md

bib: bibclean
	cat vonLaszewski-jabref.bib | \
	bibtool -s -r iso2tex -- print.line.length=1000 | \
	sed -e 's/jan,/{January},/g' | \
	sed -e 's/feb,/{February},/g' | \
	sed -e 's/mar,/{March},/g' | \
	sed -e 's/apr,/{April},/g' | \
	sed -e 's/may,/{May},/g' | \
	sed -e 's/jun,/{June},/g' | \
	sed -e 's/jul,/{July},/g' | \
	sed -e 's/aug,/{August},/g' | \
	sed -e 's/sep,/{September},/g' | \
	sed -e 's/oct,/{October},/g' | \
	sed -e 's/nov,/{November},/g' |\
	sed -e 's/dec,/{December},/g' |\
	sed -e 's/jan #/{January} #/g' | \
	sed -e 's/feb #/{February} #/g' | \
	sed -e 's/mar #/{March} #/g' | \
	sed -e 's/apr #/{April} #/g' | \
	sed -e 's/may #/{May} #/g' | \
	sed -e 's/jun #/{June} #/g' | \
	sed -e 's/jul #/{July} #/g' | \
	sed -e 's/aug #/{August} #/g' | \
	sed -e 's/sep #/{September} #/g' | \
	sed -e 's/oct #/{October} #/g' | \
	sed -e 's/nov #/{November} #/g' |\
	sed -e 's/dec #/{December} #/g' > vonLaszewski.bib 
	academic import --overwrite --bibtex vonLaszewski.bib 
	hugo

view:
	hugo serve --debug
