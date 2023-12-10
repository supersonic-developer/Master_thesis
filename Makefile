DOCUMENT=thesis

.PHONY: all clean

all: 
	latexmk -pdf --shell-escape $(DOCUMENT)
	bibtex $(DOCUMENT) 

clean:
	latexmk -c
