#!/bin/bash
#
# Create the page index.md,
# by stitching together index_1.md and index_2.md
#
# Usage:
#
#   ./scripts/create_index_page.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/create_index_page.sh"
    echo " "
    exit 42
fi

cat docs/index_1.md docs/index_2.md > docs/index.md

