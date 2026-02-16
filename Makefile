MAIN = main
TEX  = $(MAIN).tex

LATEXMK = latexmk
LATEXMK_FLAGS = -lualatex -interaction=nonstopmode -file-line-error -synctex=1

.PHONY: all pdf clean

all: pdf

pdf: $(MAIN).pdf

$(MAIN).pdf:
	$(LATEXMK) $(LATEXMK_FLAGS) $(TEX)

clean:
	$(LATEXMK) -c $(TEX)
	rm -f *.synctex.gz *.fls *.pdf

