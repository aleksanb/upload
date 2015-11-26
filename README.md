# upload
Utility shellscript for uploading of files

To use, clone down this repository, and source the file in your .bashrc like this:
`[[ -s "$HOME/Projects/upload/upload.sh" ]] && source "$HOME/Projects/upload/upload.sh"`

# Example usage in latex project

This is my Makefile:
```
file = forprosjekt-report.tex
bibfile = forprosjekt-report.aux

.PHONY: all
all: build upload

.PHONY: build
build:
▸ pdflatex $(file)
▸ bibtex $(bibfile)
▸ pdflatex $(file)
▸ pdflatex $(file)

.PHONY: upload
upload:
▸ bash -i -c "upload $(file:.tex=.pdf)"
```
