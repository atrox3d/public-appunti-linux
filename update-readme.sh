#!/bin/bash
#for f in */*.txt; do echo "[- ${f%.*}]($f)  ";done > README.md 
find . -name '*.txt' -exec bash -c 'echo "[- ${0%.*}]($0)"' {} \; > README.md

