TEXFILE = operatoralgebren.tex

BASEDIR=$(CURDIR)/OpAlg_WS15
OUTPUTDIR=$(BASEDIR)/output

help:
	@echo 'Makefile for automatic LaTeX compilation                                  '
	@echo '                                                                          '
	@echo 'Usage:                                                                    '
	@echo '   make clean                          remove the generated files         '
	@echo '   make build	                        generate files					 '
	@echo '                                                                          '


clean:
	[ ! -d $(OUTPUTDIR) ] || rm -rf $(OUTPUTDIR)

build:
	sudo docker run -it -v $(BASEDIR):/var/texlive texlive sh -c "latexmk -pdflatex="xelatex --shell-escape %O %S" -pdf -dvi- -ps- -cd -f -interaction=nonstopmode $(TEXFILE)"


.PHONY: help clean build
