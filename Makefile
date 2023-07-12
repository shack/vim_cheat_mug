MAIN = vim_cheat_mug

img/$(MAIN).png: $(MAIN).pdf
	pdftoppm -png $^ > $@

$(MAIN).pdf: $(MAIN).tex
	xelatex $(MAIN)

clean:
	rm -f $(MAIN).pdf preview/$(MAIN).png
