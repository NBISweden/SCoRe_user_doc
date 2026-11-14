#!/bin/env Rscript

t <- readr::read_csv("resources.csv", show_col_types = FALSE)
names(t)
t$compute_type <- as.factor(t$compute_type)
t$compute <- as.factor(t$compute)
t$storage <- as.factor(t$storage)
t$type_of_data <- as.factor(t$type_of_data)
t$costs_for_user <- as.factor(t$costs_for_user)
t$possible_users <- as.factor(t$costs_for_user)
tree <- rpart::rpart(
  hpc_cluster ~ compute_type + compute + storage + type_of_data + costs_for_user + possible_users,
  t,
  minbucket = 1,
  # maxcompete = 1,
  method = "class",
  cp = 0.01
)

# ?rpart:::plot.rpart
plot(tree, main = "Title")
# ?rpart:::text.rpart
text(tree)


library(rattle)

svg("decision_tree.svg", width = 8, height = 8)

rattle::fancyRpartPlot(
  tree,
  # yesno = 2,
  #split.col = "black",
  #nn.col = "black",
  # palette="Set2",
  # branch.col="black"
  caption=""
)

dev.off()


