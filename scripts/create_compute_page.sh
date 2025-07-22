#!/bin/bash
#
# Create the page compute.md,
# by stitching together compute_1.md and compute_2.md
#
# Usage:
#
#   ./scripts/compute_page.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/create_compute_page.sh"
    echo " "
    exit 42
fi

cat docs/compute_1.md docs/compute_2.md > docs/compute.md
