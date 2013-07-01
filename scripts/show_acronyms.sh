#!/usr/bin/env bash

org_root_path=$(dirname $0)
acron=$(sed 's/\\[^{]*{\([^}]*\)}.*/\1/' $org_root_path/../misc/glossary.tex | grep -e '^\\' | tr -d '\\' | tr '\n' '|' ) 
echo $acron
egrep -i -Hn --color "\\b($acron)\\b" $@

