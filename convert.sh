#!/bin/bash

pandoc \
    --standalone \
    --to=revealjs \
    --output=journal-club-vqs.pdf \
    --from=markdown_mmd+tex_math_dollars+citations+fenced_divs \
    --to=beamer \
    --citeproc \
    --variable=theme:metropolis \
    --include-in-header header.tex \
    pandoc.yml \
    journal-club-vqs.md
