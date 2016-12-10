##	TeX_Project Makefile

##	Build Variables and Commands

title 		= Project

main    	= Main
source  	= Source
output  	= Output
style		= Style

out_flag 	= --output-directory ${output}

latex  		= pdflatex
bibtex 		= bibtex

view 		= open

##	Main Targets

all: compile copy clean

##	Compile Latex Documents

compile:
	${latex} ${out_flag} ${source}/${main}.tex

##	View PDF Document

open:
	${view} ${output}/${main}.pdf

## 	Copy Main to Title

copy:
	cp ${output}/${main}.pdf ./${title}.pdf

##	Clean

clean:
	rm -f ${output}/${main}*;
	rm -f ${output}/*.log;
	rm -f ${output}/*.bib;
	cln ${source};
	cln ${output};
	cln;
