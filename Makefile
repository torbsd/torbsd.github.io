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

PAGES=index.html contact.html relay-guides.html footer.html faq.html fbsd-relays.html obsd-relays.html fbsd-relays_dev.html obsd-relays_dev.html resources.html header.html licensing.html materials/flier-bsd.html

all: $(PAGES)

index.html: index.md

contact.html: contact.md

footer.html: footer.md

relay-guides.html: relay-guides.md

faq.html: faq.md

fbsd-relays.html: fbsd-relays.md

obsd-relays.html: obsd-relays.md

fbsd-relays_dev.html: fbsd-relays_dev.md

obsd-relays_dev.html: obsd-relays_dev.md

resources.html: resources.md

header.html: header.md

licensing.html: licensing.md

materials/flier-bsd.html: materials/flier-bsd.html

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
