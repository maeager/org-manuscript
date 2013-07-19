#!/usr/bin/env bash

org_root_path=$(dirname $0)
acron=$(sed 's/\\[^{]*{\([^}]*\)}.*/\1/' $org_root_path/../misc/glossary.tex | grep -e '^\\' | sed 's_\\_[^\\\\:\{]_'  | tr '\n' '|' ) 
acron=${acron%?}

grep  -Hn --color=auto -E "\\b($acron)\\b" $1
echo $acron
