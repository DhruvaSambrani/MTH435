#! /bin/bash

find . -name "*.md" | sed "s/.md//" | xargs -I {} pandoc {}.md -o docs/{}.pdf
cd docs
echo -e "# Notes\n" > index.md
find docs -name "*.pdf" | xargs -I{} echo -e "- [{}]({})" >> index.md
