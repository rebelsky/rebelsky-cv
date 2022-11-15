LaTeX = xelatex

CV_FILES = rebelsky-cv-full.tex \
	education.tex \
	honors.tex \
	professional.tex \
        professional-activities.tex \
	publications.tex \
	research-interests.tex \
        research.tex \
        teaching.tex \
        miscellaneous.tex

default: rebelsky-cv-full.pdf

rebelsky-cv-full.pdf: $(CV_FILES) samr-cv.cls Awesome-CV rebelsky.bib
	$(LaTeX) rebelsky-cv-full
	bibtex rebelsky-cv-full
	$(LaTeX) rebelsky-cv-full
	$(LaTeX) rebelsky-cv-full

Awesome-CV: 
	git clone https://github.com/posquit0/Awesome-CV
