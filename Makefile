default: build

setup:
	tlmgr install texliveonfly
	tlmgr install latexmk
	tlmgr install biber
	tlmgr install ec

#install missing CTAN packages
packages:
	texliveonfly -c pdflatex Main.tex
	rm Main.pdf # it will most probably have missing citations

build: #
	latexmk -pdf Main.tex


buildCI: setup packages build

install:
	cp Main.pdf ${out}
