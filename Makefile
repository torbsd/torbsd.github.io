## -*- makefile -*- for writing with MultiMarkdown, by attila

MMD?=multimarkdown
PDFLATEX?=pdflatex
RM?=rm

# List your documents here like so:
#
# mydoc.pdf mydoc.html: mydoc.md
#
# Then you can just say e.g.:
#   $ make mydoc.pdf
# or
#   $ make mydoc.html

index.html: index.md

## The rest of this file makes the above possible...
## ... but only YOU can make it necessary.

.SUFFIXES: .pdf .md .tex .html

.md.tex:
	$(MMD) -t latex -o $@ $<
.tex.pdf:
	$(PDFLATEX) $<
.md.html:
	$(MMD) -t html -o $@ $<

# by default cleanup only pdf junk and leave html alone
clean: clean-pdf

clean-all: clean-pdf clean-html

clean-pdf:
	$(RM) -f *.{aux,glo,idx,ist,log,toc,out,tex}

clean-html:
	$(RM) -f *.html
