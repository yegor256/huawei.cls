all: call-for-proposal.pdf spell qc

install:
	gem install texsc
	gem install texqc

fast:
	pdflatex --shell-escape call-for-proposal.tex

qc:
	texqc call-for-proposal

spell:
	texsc *.tex

clean:
	rm -rf .DS_Store *.aux *.bbl *.bcf *.blg *.fdb_latexmk *.fls *.log *.run.xml call-for-proposal.pdf *.out
	rm -rf _minted-call-for-proposal

%.pdf: %.tex *.tex ../../huawei.cls
	latexmk -pdf $<
