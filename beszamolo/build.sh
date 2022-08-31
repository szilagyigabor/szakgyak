#!/bin/sh
cim="beszamolo"

echo "Fordítás pdflatex 1"
echo "Fordítás pdflatex 1\n\n\n" > output.txt
pdflatex -interaction=nonstopmode -halt-on-error $cim.tex >> output.txt
echo "Fordítás bibtex"
echo "\n\n\nFordítás bibtex\n\n\n" >> output.txt
bibtex $cim >> output.txt
echo "Fordítás pdflatex 2"
echo "\n\n\nFordítás pdflatex 2\n\n\n" >> output.txt
pdflatex -interaction=nonstopmode -halt-on-error $cim.tex >> output.txt
echo "Fordítás pdflatex 3"
echo "\n\n\nFordítás pdflatex 3\n\n\n" >> output.txt
pdflatex -interaction=nonstopmode -halt-on-error $cim.tex >> output.txt

if [ -e $cim.aux ]; then
	rm $cim.aux
fi
if [ -e $cim.bbl ]; then
	rm $cim.bbl
fi
if [ -e $cim.blg ]; then
	rm $cim.blg
fi
if [ -e $cim.out ]; then
	rm $cim.out
fi
if [ -e $cim.log ]; then
	rm $cim.log
fi
if [ -e $cim.toc ]; then
	rm $cim.toc
fi
if [ -e tartalom/*.aux ]; then
	rm tartalom/*.aux
fi

#rm $cim.aux $cim.bbl $cim.blg $cim.out $cim.log $cim.toc
#rm tartalom/*.aux
