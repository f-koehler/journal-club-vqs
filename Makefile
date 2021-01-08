journal-club-vqs.pdf: journal-club-vqs.md header.tex literature.bib $(wildcard *.svg)
	pandoc \
		--standalone \
		--to=revealjs \
		--output=journal-club-vqs.pdf \
		--from=markdown+tex_math_dollars+citations \
		--to=beamer \
		--citeproc \
		--variable=theme:metropolis \
		--include-in-header header.tex \
		journal-club-vqs.md

.PHONY: clean
clean:
	rm -f journal-club-vqs.pdf
