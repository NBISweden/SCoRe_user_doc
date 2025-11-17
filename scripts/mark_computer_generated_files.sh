#!/bin/bash
#
# Marks all computer-generated files as such
#
# Usage:
#
#   ./scripts/mark_computer_generated_files.sh
#
if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/mark_computer_generated_files.sh"
    echo " "
    exit 42
fi

./scripts/mark_computer_generated_file.R docs/courses.md


