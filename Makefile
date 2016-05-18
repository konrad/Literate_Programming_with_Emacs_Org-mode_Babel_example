EMACS_BIN=emacs
ORG_FILE=Literate_Programming_with_Emacs_Org-mode_Babel_example.org

clean:
	rm -f *pdf *png *tex *html
pdf:
	$(EMACS_BIN) $(ORG_FILE) --batch -Q -f org-latex-export-to-pdf --kill

html:
	$(EMACS_BIN) $(ORG_FILE) --batch -Q -f org-html-export-to-html --kill
