#!/bin/bash
#
# Check if there is no number in the Markdown files.
#
#
# For example, this is how numbering looks like:
#
# [1] "<!-- markdownlint-disable MD060 --><!-- The pipes must not line up -->"                                                                                                                                                                                                                                                                                                      
# [2] ""                                                                                                                                                                                                                                                                                                                                                                            
# [3] "|**From**|**To**|**Course name**|**Course site**|**Provider site**|**Provider name**|"                                                                                                                                                                                                                                                                                       
# [4] "|:----------|:----------|:--------------------------------------------------------------------------|:---------------|:-----------------|:-----------------|"                                                                                                                                                                                                                
# [5] "|2025-11-03 |2026-01-18 |Introduction to Bioinformatics                                             |[Course site](https://www.slubi.se/)|[Provider site](https://www.slubi.se/courses.html)|![SLUBI logo](logo/slubi_logo_20_x_24.png)|"                                                                                                                                    
#
# Usage:
#
#   ./scripts/check_no_numbering.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/check_no_numbering.sh"
    echo " "
    exit 42
fi

if [ -z $(egrep -R "^ ?\\[1\\]" --include=*.md) ]
then
  echo "OK: no numbering found in Markdown"
  exit 0
else
  echo "ERROR: numbering found in Markdown"
  echo " "
  echo "Matching results:"
  echo " "
  grep -wER "^ ?\\[1\\]" --include=*.md
  echo " "
  exit 1
fi

#n_matches=$(grep -ER "^ ?\\[1\\]" --include=*.md)
#echo "Number of matches: ${n_matches}"

# markdown_files=$(find . | grep "\\.md$")
# 
# for markdown_file in ${markdown_files}
# do
#   echo "Checking file '${markdown_file}"
#   # egrep -R "^ ?\\[1\\]" --include=*.md
#   if [[ "$TEST" =~ [a-zA-Z0-9\ ] ]]; then BLAH; fi
# done
