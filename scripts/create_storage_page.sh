#!/bin/bash
#
# Create the page storage.md,
# by stitching together storage_1.md and storage_2.md
#
# Usage:
#
#   ./scripts/create_storage_page.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/create_storage_page.sh"
    echo " "
    exit 42
fi

cat docs/storage_1.md docs/storage_2.md > docs/storage.md

./scripts/mark_computer_generated_file.R docs/storage.md
