MAIN = vim_cheat_mug

$(MAIN).pdf: $(MAIN).tex
	xelatex $(MAIN)

preview/$(MAIN).png: $(MAIN).pdf
	pdftoppm -png $^ > $@

clean:
	rm -f $(MAIN).pdf preview/$(MAIN).png
