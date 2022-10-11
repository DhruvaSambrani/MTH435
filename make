#! /bin/bash

find . -name "*.md" | sed "s/.md//" | xargs -I {} pandoc {}.md -o build/{}.pdf
