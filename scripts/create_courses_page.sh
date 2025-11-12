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
cd warner
cargo build --release
cd ..
cp warner/target/release/warner ../docs/warner
cd ../docs
cat docs/courses_1.md docs/courses_2.md > docs/courses.md
./warner ./courses.md
rm ./warner