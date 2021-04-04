PANDOC = "pandoc"

%.html: %.md style.css
	$(PANDOC) -s --css style.css -o $@ -V title:"" $<

.PHONY: all

all: *.html