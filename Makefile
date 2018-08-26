#
GNUPLOT = gnuplot
PDFLATEX = pdflatex
OUTPUT_DIRECTORY = output
ALL_GNUPLOT_FILES = moleculaDiatomica probabilidadRadioElectron

all: clean graficos latex clean_at_the_end


latex: graficos FF3_2014_2015_Resuelto.tex
	$(PDFLATEX) --output-directory=$(OUTPUT_DIRECTORY) FF3_2014_2015_Resuelto.tex
	$(PDFLATEX) --output-directory=$(OUTPUT_DIRECTORY) FF3_2014_2015_Resuelto.tex
	mv $(OUTPUT_DIRECTORY)/FF3_2014_2015_Resuelto.pdf .

graficos: moleculaDiatomica.gnuplot probabilidadRadioElectron.gnuplot
	$(GNUPLOT) $?


clean:
	rm -f *.eps *.pdf
	rm -f graf*
	rm -f $(OUTPUT_DIRECTORY)/*

clean_at_the_end:
	rm -f *.eps
	rm -f graf*
