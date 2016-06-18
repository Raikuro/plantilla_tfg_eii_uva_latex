#!/bin/bash

cd /source
markdown-pp main.mdpp -o main.md
pandoc -f markdown -t latex main.md --template=./latex/main.tex -o output.pdf