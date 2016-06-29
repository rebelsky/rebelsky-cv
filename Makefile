CV_FILES = rebelsky-cv-full.tex \
        education.tex \
        honors.tex \
        professional.tex \
        research-interests.tex

default: samr-cv-full.pdf

samr-cv-full.pdf: $(CV_FILES) samr-cv.cls Awesome-CV
	xelatex rebelsky-cv-full.tex
	grep -i -s Rerun rebelsky-cv-full.log && xelatex rebelsky-cv-full.tex

Awesome-CV: 
	git clone https://github.com/posquit0/Awesome-CV
