index.html: main.md
	./accents.pl $< > tmp.md
	lowdown -thtml --html-no-skiphtml --html-no-escapehtml --parse-math -s -o tmp.html tmp.md
	./add-script.pl tmp.html > $@
	rm -f tmp.html tmp.md

.PHONY: clean
clean:
	rm -f index.html tmp.html tmp.md
