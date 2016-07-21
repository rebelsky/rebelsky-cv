CV_FILES = rebelsky-cv-full.tex \
	education.tex \
	honors.tex \
	professional.tex \
        professional-activities.tex \
	publications.tex \
	research-interests.tex \
        research.tex \
        miscellaneous.tex

default: rebelsky-cv-full.pdf

rebelsky-cv-full.pdf: $(CV_FILES) samr-cv.cls Awesome-CV rebelsky.bib
	xelatex rebelsky-cv-full
	bibtex rebelsky-cv-full
	xelatex rebelsky-cv-full
	xelatex rebelsky-cv-full

Awesome-CV: 
	git clone https://github.com/posquit0/Awesome-CV
