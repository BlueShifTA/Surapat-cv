default: build

pdf := "Surapat_Business_CV2.pdf"
tex := "cv-surapat.tex"

build: Surapat_Business_CV2.pdf

Surapat_Business_CV2.pdf: cv-surapat.tex
	pdflatex -interaction=nonstopmode -halt-on-error -jobname=Surapat_Business_CV2 {{tex}}

clean:
	rm -f cv-surapat.aux cv-surapat.log cv-surapat.out cv-surapat.synctex.gz {{pdf}}
