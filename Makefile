DOCUMENT=thesis
MODE=--shell-escape

.PHONY: all clean

all: 
	pdflatex $(MODE) $(DOCUMENT)
	bibtex $(DOCUMENT) 
	pdflatex $(MODE) $(DOCUMENT)

clean:
	latexmk -c
