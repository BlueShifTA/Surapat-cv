default: build-all

onepage_tex := "cv-surapat-onepage.tex"
main_tex := "cv-surapat-main.tex"
freelance_tex := "cv-surapat-freelance.tex"

build-all: build-onepage build-main build-freelance

build-onepage:
	latexmk -pdf -interaction=nonstopmode -halt-on-error -jobname=Surapat_CV_OnePage {{onepage_tex}}

build-main:
	latexmk -pdf -interaction=nonstopmode -halt-on-error -jobname=Surapat_CV_Main {{main_tex}}

build-freelance:
	latexmk -pdf -interaction=nonstopmode -halt-on-error -jobname=Surapat_CV_Freelance_Consulting {{freelance_tex}}

clean:
	latexmk -C {{onepage_tex}}
	latexmk -C {{main_tex}}
	latexmk -C {{freelance_tex}}
	rm -f Surapat_CV_OnePage.pdf Surapat_CV_Main.pdf Surapat_CV_Freelance_Consulting.pdf cv-surapat-main.pdf
