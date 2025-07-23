#!/bin/bash
#
# Create the page web_host.md,
# by stitching together web_host_1.md and web_host_2.md
#
# Usage:
#
#   ./scripts/create_web_host_page.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/create_web_host_page.sh"
    echo " "
    exit 42
fi

cat docs/web_host_1.md docs/web_host_2.md > docs/web_host.md

