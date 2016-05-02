LATEX = xelatex

FR = resume-fr.pdf
#MTI = resume-mti.pdf
#SCIA = resume-scia.pdf
#SRS = resume-srs.pdf

all: $(FR)

%.pdf: %.tex
	$(LATEX) $<

fr : $(FR)
mti : $(MTI)
scia : $(SCIA)
srs : $(SRS)

clean:
	$(RM) *.pdf
	$(RM) *.aux
	$(RM) *.log
	$(RM) *.out

.PHONY: fr# mti scia srs
