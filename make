#! /bin/bash

find . -name "*.md" | sed "s/.md//" | xargs -I {} pandoc {}.md -o build/{}.pdf
echo -e "# Notes\n" > index.md
find build -name "*.pdf" | xargs -I{} echo -e "- [{}]({})" >> index.md
