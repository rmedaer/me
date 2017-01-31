# Subject: Build myself stuff
# Author: Raphael Medaer <r.medaer@gmail.com>

all: build

build: resume

clean: clean-resume

# Resume part
resume: RaphaelMedaerCV.pdf
clean-resume:
	rm -rf resume.pdf
	rm -rf resume.aux
	rm -rf resume.out
	rm -rf resume.bcf
	rm -rf resume.log
	rm -rf resume.run.xml
	rm -rf ucharcat.log
	rm -rf ucharcat.sty
	rm -rf RaphaelMedaerCV.pdf
	rm -rf personal.tex
	rm -rf personal.tex.aux

resume.pdf: resume.tex friggeri-cv.cls ucharcat.sty personal.tex
	xelatex -etex $<
	xelatex -etex $<

RaphaelMedaerCV.pdf: resume.pdf
	cp $< $@

personal.tex: personal.tex.gpg
	gpg --output personal.tex --decrypt personal.tex.gpg

ucharcat.sty: ucharcat.ins ucharcat.dtx
	tex $<


.PHONY: resume build all clean
