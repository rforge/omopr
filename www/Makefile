# Makefile



FORCE:
	make index.html

index.html: page.md
	pandoc page.md -t html5 -s -o index.html


edit:
	emacs Makefile *.md &

view: index.html
	xdg-open index.html


# eof

