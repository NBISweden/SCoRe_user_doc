#!/bin/bash
#
# Create the page other.md,
# by stitching together other_1.md and other_2.md
#
# Usage:
#
#   ./scripts/create_other_page.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/create_other_page.sh"
    echo " "
    exit 42
fi

cat docs/other_1.md docs/other_2.md > docs/other.md
Rscript -e "scoreto::mark_file_as_computer_generated(\"docs/other.md\")"
