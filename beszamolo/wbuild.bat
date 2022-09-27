@echo off
set doc=beszamolo
echo Building...
@del output.txt
(
pdflatex -interaction=nonstopmode -halt-on-error %doc%.tex
pdflatex -interaction=nonstopmode -halt-on-error %doc%.tex
)>>output.txt
@del %doc%.aux %doc%.bbl %doc%.blg %doc%.out %doc%.log %doc%.toc texput.log
