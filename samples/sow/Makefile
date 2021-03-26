all: sow.pdf spell qc

install:
	gem install texsc
	gem install texqc

fast:
	pdflatex --shell-escape sow.tex

qc:
	texqc sow

spell:
	texsc *.tex

clean:
	rm -rf .DS_Store *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.run.xml sow.pdf *.out
	rm -rf _minted-sow

%.pdf: %.tex *.tex ../../huawei.cls
	latexmk -pdf $<
