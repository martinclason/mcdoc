#!/bin/sh

pandoc "$1" \
    -f gfm \
    --include-in-header ~/mcdoc/assets/chapter_break.tex \
    -V linkcolor:blue \
    -V geometry:a4paper \
    -V geometry:margin=2cm \
    -V mainfont="Helvetica" \
    -V monofont="Fira Code" \
    --pdf-engine=xelatex \
    --highlight-style ~/mcdoc/assets/pygments.theme \
    -o "$2"
