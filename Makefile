all: en zh clean

en: software_engineer_dongpo_liu.tex
	xelatex software_engineer_dongpo_liu.tex
	cp software_engineer_dongpo_liu.pdf resume.pdf

zh: resume-zh
	xelatex 软件工程师_刘东坡.tex
	cp 软件工程师_刘东坡.pdf resume-zh.pdf

resume-zh: software_engineer_dongpo_liu.tex
	cat software_engineer_dongpo_liu.tex | sed 's/zh}\[1\]{}/zh}\[1\]{#1}/g' | sed 's/en}\[1\]{#1}/en}\[1\]{}/g' > 软件工程师_刘东坡.tex

clean:
	rm -f *.log *.aux *.bbl *.blg *.synctex.gz *.out *.toc *.lof *.idx *.ilg *.ind *.cut *.fls *.fdb_latexmk 软件工程师_刘东坡.tex __latexindent_temp.tex

.PHONY: clean
