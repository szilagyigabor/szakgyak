#!/bin/bash
#rm output.txt
echo Building...
{
pdflatex -interaction=nonstopmode -halt-on-error beszamolo.tex
pdflatex -interaction=nonstopmode -halt-on-error beszamolo.tex
} > output.txt
rm beszamolo.aux beszamolo.bbl beszamolo.blg beszamolo.out beszamolo.log beszamolo.toc texput.log
