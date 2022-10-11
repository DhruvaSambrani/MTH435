#! /bin/bash

find . -maxdepth 1 -name "*.md"  | sed "s/.md//" | xargs -I {} pandoc {}.md -o docs/{}.pdf
cd docs
echo -e "# Notes\n" > index.md
find . -name "*.pdf" | sort | xargs -I{} echo -e "- [{}]({})" >> index.md
