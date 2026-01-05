default: build

pdf := "Surapat_Business_CV2.pdf"
tex := "cv-surapat.tex"

build:
	pdflatex -jobname=Surapat_Business_CV2 {{tex}}

clean:
	rm -f cv-surapat.aux cv-surapat.log cv-surapat.out cv-surapat.synctex.gz {{pdf}}
