index.html: main.md
	./accents.pl $< > tmp.md
	lowdown -thtml --html-no-skiphtml --html-no-escapehtml --parse-math -s -o tmp.html tmp.md
	./add-script.pl tmp.html > tmp2.html
	./proof.pl tmp2.html > $@
	rm -f tmp.html tmp.md tmp2.html

.PHONY: clean
clean:
	rm -f index.html tmp.html tmp.md tmp2.html
