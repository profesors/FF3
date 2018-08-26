#
GNUPLOT = gnuplot
PDFLATEX = pdflatex
AUX_DIRECTORY = tmp
ALL_GNUPLOT_FILES = moleculaDiatomica probabilidadRadioElectron

all: directorio clean graficos latex clean_at_the_end

directorio:
	@mkdir -p $(AUX_DIRECTORY)

clean:
	rm -f *.eps *.pdf graf* $(AUX_DIRECTORY)/*

graficos: moleculaDiatomica.gnuplot probabilidadRadioElectron.gnuplot
	$(GNUPLOT) $?

latex: graficos FF3_2014_2015_Resuelto.tex
	@$(PDFLATEX) --output-directory=$(AUX_DIRECTORY) FF3_2014_2015_Resuelto.tex
	@$(PDFLATEX) --output-directory=$(AUX_DIRECTORY) FF3_2014_2015_Resuelto.tex
	@mv $(AUX_DIRECTORY)/FF3_2014_2015_Resuelto.pdf .

clean_at_the_end:
	rm -f *.eps graf*	
	rm -Rf $(AUX_DIRECTORY)
