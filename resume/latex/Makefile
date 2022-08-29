.PHONY: vonLaszewski-resume.pdf

BROWSER=chromium

all: vonLaszewski-resume.pdf

d: clean
	pdflatex vonLaszewski-resume
	biber vonLaszewski-resume
	pdflatex vonLaszewski-resume
	pdflatex vonLaszewski-resume

# MAIN LATEXMK RULE

# -pdf tells latexmk to generate a PDF instead of DVI.
# -pdflatex="" tells latexmk to call a specific backend with specific options.
# -use-make tells latexmk to call make for generating missing files.
# -interaction=nonstopmode keeps the pdflatex backend from stopping at a
# missing file reference and interactively asking you for an alternative.
# -synctex=1 is required to jump between the source PDF and the text editor.
# -pvc (preview continuously) watches the directory for changes.
# -quiet suppresses most status messages (https://tex.stackexchange.com/questions/40783/can-i-make-latexmk-quieter).
vonLaszewski-resume.pdf: vonLaszewski-resume.tex
	latexmk -quiet -bibtex $(PREVIEW_CONTINUOUSLY) -f -pdf -pdflatex="pdflatex -synctex=1 -interaction=nonstopmode" -use-make vonLaszewski-resume.tex

# The .PHONY rule keeps make from processing a file named "watch" or "clean".
.PHONY: watch
# Set the PREVIEW_CONTINUOUSLY variable to -pvc to switch latexmk into the preview continuously mode
watch: PREVIEW_CONTINUOUSLY=-pvc
watch: vonLaszewski-resume.pdf

.PHONY: clean
# -bibtex also removes the .bbl files (http://tex.stackexchange.com/a/83384/79184).
clean:
	rm -f *.aux
	latexmk -CA -bibtex
	rm -f vonLaszewski-resume.run.xml

publish: 
	cp vonLaszewski-resume.pdf ../../docs
	#git commit -m "publish resume" ../../docs/vonLaszewski-resume.pdf
	#git push

view: clean watch
	${BROWSER} vonLaszewski-resume.pdf &

