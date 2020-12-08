#!/bin/bash

pandoc \
    --standalone \
    --to=revealjs \
    --output=journal-club-vqs.pdf \
    --from=markdown_mmd+tex_math_dollars+citations \
    --to=beamer \
    --citeproc \
    --bibliography=literature.bib \
    --variable=theme:metropolis \
    journal-club-vqs.md
