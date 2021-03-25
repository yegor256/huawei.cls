all: tetf-charter.pdf spell qc

install:
	gem install texsc
	gem install texqc

fast:
	pdflatex --shell-escape tetf-charter.tex

qc:
	texqc tetf-charter

spell:
	texsc *.tex

clean:
	rm -rf .DS_Store *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.run.xml tetf-charter.pdf *.out
	rm -rf _minted-tetf-charter

%.pdf: %.tex *.tex
	latexmk -pdf $<
