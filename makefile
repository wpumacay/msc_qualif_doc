

DOC_NAME 	= qualif-doc
BIBFILE 	= qualif-doc.bib

all::
	latexmk -pdf ${DOC_NAME}.tex

view: $(DOC_NAME).pdf
	xdg-open $(DOC_NAME).pdf

spell::
	ispell ./chapters/chapter_1/chapter_1.tex
	ispell ./chapters/chapter_2/chapter_2.tex
	ispell ./chapters/chapter_3/chapter_3.tex
	ispell ./chapters/chapter_4/chapter_4.tex
	ispell ./chapters/chapter_5/chapter_5.tex
	ispell ./chapters/chapter_6/chapter_6.tex

clean::
	rm -fv *.aux *.log *.bbl *.blg *.toc *.out *.lot *.lof $(DOC_NAME).pdf
	