index.html: main.md
	./accents.pl $< > tmp.md
	lowdown -thtml --parse-math -s -o tmp.html tmp.md
	./add-script.pl tmp.html > $@
	rm -f tmp.html tmp.md

.PHONY: clean
clean:
	rm -f index.html tmp.html tmp.md
