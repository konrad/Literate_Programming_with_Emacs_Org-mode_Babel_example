EMACS_BIN=emacs
ORG_FILE=Literate_Programming_with_Emacs_Org-mode_Babel_example.org
SENDING_PACKAGE_FOLDER=2016-10-XX-Folder_name_for_colaborator

clean:
	rm -f *pdf *png *tex *html *zip *tar.xz $(SENDING_PACKAGE_FOLDER)
pdf:
	$(EMACS_BIN) $(ORG_FILE) --batch -q --load init.el -f org-latex-export-to-pdf --kill

html:
	$(EMACS_BIN) $(ORG_FILE) --batch -q --load init.el -f org-html-export-to-html --kill

package_to_send:
	mkdir -p $(SENDING_PACKAGE_FOLDER)
	cp -r output/* $(SENDING_PACKAGE_FOLDER)
	tar vcJf $(SENDING_PACKAGE_FOLDER).tar.xz $(SENDING_PACKAGE_FOLDER)
	# zip -r $(SENDING_PACKAGE_FOLDER).zip $(SENDING_PACKAGE_FOLDER)
