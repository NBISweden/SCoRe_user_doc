#!/bin/bash
#
# Create the page courses.md,
# by stitching together courses_1.md and courses_2.md
#
# Usage:
#
#   ./scripts/create_course_page.sh

if [[ "$PWD" =~ scripts$ ]]; then
    echo "FATAL ERROR."
    echo "Please run the script from the project root. "
    echo "Present working director: $PWD"
    echo " "
    echo "Tip: like this"
    echo " "
    echo "  ./scripts/create_course_page.sh"
    echo " "
    exit 42
fi
cd scripts/warner
cargo build --release
cd -
cp scripts/warner/target/release/warner docs/warner
cd docs
cat courses_1.md courses_2.md > courses.md
./warner ./courses.md
rm ./warner
