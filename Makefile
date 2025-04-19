PDF=resume.pdf
TEX=resume.tex

all: $(PDF)

$(PDF): $(TEX)
	latexmk -pdf $(TEX)

watch:
	latexmk -pdf $(TEX) -pvc -view=none

clean:
	latexmk -C
