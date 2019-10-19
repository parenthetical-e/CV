pdf : publications.tex software.tex talks.tex teaching.tex awards.tex
	pdflatex ep-cv.tex

publications.tex : publications.md
	pandoc publications.md -o publications.tex

software.tex : software.md
	pandoc software.md -o software.tex

talks.tex : talks.md
	pandoc talks.md -o talks.tex

teaching.tex : teaching.md
	pandoc teaching.md -o teaching.tex

awards.tex : awards.md
	pandoc awards.md -o awards.tex

clean:
	-rm *.aux
	-rm *.log
	-rm *.out