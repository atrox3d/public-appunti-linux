#!/bin/bash
#for f in */*.txt; do echo "[- ${f%.*}]($f)  ";done > README.md 
#find . -name '*.txt' -exec bash -c 'echo "[- ${0%.*}]($0)"' {} \; > README.md
#find . -name '*.txt' -exec bash -c 'f=${0%.*};f=${f:2};echo "[- ${f}]($0)"' {} \; > README.md
find . -name '*.txt' -exec bash -c 'f=${0%.*};f=${f:2};echo "[- ${f}](${0:2})"' {} \; | sort | sed 's/$/\n/' > README.md

