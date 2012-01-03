# clean up
rm paper.aux
rm paper.log
rm paper.pdf
# produce the output, the extra parameters, shell-espace is
# for pdflatex understand .eps graphics directly.
pdflatex --shell-escape --synctex=1 paper.tex
bibtex paper
pdflatex --shell-escape --synctex=1 paper.tex
pdflatex --shell-escape --synctex=1 paper.tex
evince paper.pdf
