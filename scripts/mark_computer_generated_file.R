#!/bin/env Rscript
#
# Mark a computer generated file as such
#
args <- commandArgs(trailingOnly = TRUE)

testthat::expect_equal(1, length(args))
filename <- args[1]

# This is the file to edit instead
filename_for_humans <- stringr::str_replace(filename, "\\.md", "_1.md")

# filename <- "~/GitHubs/score_user_doc/docs/courses_1.md"
testthat::expect_true(file.exists(filename))

lines <- readr::read_lines(filename)

is_indented <- stringr::str_detect(lines, "^    ")
is_next_indented <- is_indented[-1]
is_empty <- stringr::str_detect(lines, "^$")
is_empty <- is_empty[-length(is_empty)]

place_comment <- is_empty & !is_next_indented

comment_line <- paste0("<!-- DO NOT EDIT THIS COMPUTER GENERATED FILE. EDIT '", filename_for_humans, "' INSTEAD -->")
lines[place_comment] <- comment_line

readr::write_lines(lines, filename)
