all:
	xelatex template.tex

ref:
	xelatex template.tex
	bibtex template.aux
	xelatex template.tex
	xelatex template.tex

clean:
	rm *.log *.out *.aux
