PANDOC = "pandoc"

%.html: %.md style.css definitions.css
	$(PANDOC) -s --css style.css --css definitions.css -o $@ -V title:"" $<

.PHONY: all

all: *.html