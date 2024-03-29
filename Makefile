pdf : publications.tex software.tex grants.tex talks.tex press.tex teaching.tex awards.tex activities.tex
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

press.tex : press.md
	pandoc press.md -o press.tex

grants.tex : grants.md
	pandoc grants.md -o grants.tex

activities.tex : activities.md
	pandoc activities.md -o activities.tex

clean:
	-rm *.aux
	-rm *.log
	-rm *.out
	-rm *_temp.tex